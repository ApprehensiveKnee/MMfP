import re
import sys
import matplotlib.pyplot as plt


def extract_data(filename):
    with open(filename, 'r') as file:
        lines = file.readlines()

    scan_variable = None
    start_index = None
    end_index = None
    for i, line in enumerate(lines):
        # If a line contains "Scan", get the first word of the line and store it
        if "Scan" in line and scan_variable is None:
            scan_variable = line.split()[0]
        if "Summary of Optimized Potential Surface Scan" in line:
            start_index = i+1
        # If the line starts with Leave Link, and i is > start_index, then we have reached the end of the scan
        if re.match(r' Leave Link', line) and start_index is not None:
            print(line)
            end_index = i
            break

    if start_index is None:
        print("Section not found")
        return

    steps = []
    eigenvalues = []
    variables = {}
    current_key = None
    for line in lines[start_index:end_index]:
        # if the line starts with a list of numbers of variable lenght, separated by a variable number of spaces, then
        # those are the steps of the scan: append them to the steps list
        if re.match(r'\s+\d+', line):
            parts = line.split()
            steps.extend(map(int, parts))
            print(steps)
            continue
        if "Eigenvalues --" in line:
            eigenvalues.extend(map(float, line.split()[2:]))
            print (eigenvalues)
            continue
        elif re.match(r'\s+\w+', line):
            # If the line is not slipced dy spaces, it may be by +/- signs, so we first try to split by spaces
            # If that fails, we split by the +/- signs
            
            parts = re.split(r'\s+|(?<=[0-9])-(?=[0-9])', line)
            current_key = parts[1]
            print(current_key)
            parts = parts[2:-1]
            # Add the key to the variables dictionary if it is not already there
            if current_key not in variables:
                variables[current_key] = []
            # Conver parts to floats if possible and append them to the list of the current key
            try :
                variables[current_key].extend(map(float, parts))
            except:
                continue
            print(variables)
            continue
        else:
            continue

    return scan_variable,steps, eigenvalues, variables

if __name__ == "__main__":
    if (len(sys.argv) != 2 and len(sys.argv) != 3):
        print(len(sys.argv))
        print("Usage: python extract_opt_scan.py <filename> or python extract_opt_scan.py <filename1> <filename2> r1-r2 PES")
        sys.exit(1)

    if len(sys.argv) == 2:
        filename = sys.argv[1]
        scan_variable, steps, eigenvalues, variables = extract_data(filename)
        
        # Plot the eigenvalues for the steps over the values of the scan variable
        # Convert eigenvalues from A.U. to kcal/mol
        eigenvalues = [x*627.509 for x in eigenvalues]
        print(scan_variable)
        figure,axis = plt.subplots(figsize=(10,6))
        axis.plot(variables[scan_variable], eigenvalues, marker='d', linestyle='-', color='coral', markerfacecolor='black')
        axis.set_xlabel(scan_variable)
        axis.set_ylabel("Energy (kcal/mol)")
        axis.grid()
        # Save the plot to a file  
        plt.savefig(f"{filename}.png")


    if len(sys.argv) == 3:

        # Extract the data from the first file
        filename1 = sys.argv[1]
        scan_variable1, steps1, eigenvalues1, variables1 = extract_data(filename1)
        # Extract the data from the second file
        filename2 = sys.argv[2]
        scan_variable2, steps2, eigenvalues2, variables2 = extract_data(filename2)

        # Plot the scan_variable1 vs scan_variable2 for both files
        figure,axis = plt.subplots(figsize=(10,6))
        axis.plot(variables2[scan_variable1], variables1[scan_variable1], marker='d', linestyle='-', color='coral', markerfacecolor='black',label=scan_variable1)
        axis.plot(variables2[scan_variable2], variables1[scan_variable2], marker='x', linestyle='-', color='slateblue', markerfacecolor='black', label=scan_variable2)
        axis.set_xlabel(scan_variable1)
        axis.set_ylabel(scan_variable2)
        # Save the plot to a file
        plt.savefig(f"{filename1}_{filename2}.png")

