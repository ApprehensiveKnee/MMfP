import sys
import re
import argparse
import prettytable
import matplotlib.pyplot as plt

def extract_energies(filename):
    energies = []
    pattern = re.compile(r'SCF Done:.*?E\(\w+\)\s*=\s*(-?\d+\.\d+)')
    
    with open(filename, 'r') as file:
        for line in file:
            match = pattern.search(line)
            if match:
                energies.append(float(match.group(1)))
    
    return energies

def extract_t_values(filename, par):
    values = []
    
    with open(filename, 'r') as file:
        for line in file:
            # Check if par is in line, and if the line start with it, considiring eventually spaces
            if par in line and line.strip().startswith(par):
                # Split line by spaces
                par_values = line.split()
                # Keep only the 2,4,5 elements and convert them to the right type
                init_angle= float(par_values[1])
                n_steps = int(par_values[3])
                size_step = float(par_values[4])
                values = [init_angle + i*size_step for i in range(n_steps+1)]

    return values

def extract_zpe(filename):
    zpe = 0.0
    pattern = re.compile(r'Zero-point correction=\s*(-?\d+\.\d+)')
    
    with open(filename, 'r') as file:
        for line in file:
            match = pattern.search(line)
            if match:
                zpe = float(match.group(1))
                
    
    return zpe

if __name__ == "__main__":
    

    # Parse the command line arguments
    parser = argparse.ArgumentParser(description='Extract energies from a Gaussian scan output file \n Usage: python scan.py <filename> <parameter> --zpe <filename>')
    parser.add_argument('filename', type=str, help='The filename to process')
    parser.add_argument('parameter', type=str, help='The parameter on which the scan was performed')
    # Add an optional parameter, set with the --zpe flag, used to extract the ZPE from another spcified file
    parser.add_argument('--zpe', type=str, help='The filename to extract the ZPE')
    args = parser.parse_args()

    if args.zpe is not None:
        zpe = extract_zpe(args.zpe) * 627.509  
        print( "Parameters: <filename> = ", args.filename, " <parameter> = ", args.parameter, " --zpe=", args.zpe)
    else:
        zpe = 0.0
        print( "Parameters: <filename> = ", args.filename, " <parameter> = ", args.parameter)

    filename = args.filename
    par = args.parameter
    energies = extract_energies(filename)
    values = extract_t_values(filename, par)
    
    
    table = prettytable.PrettyTable()
    table.add_column("Angle", values)
    table.add_column("Energy (Hartree)", energies)
    # Convert energies to kcal/mol
    energies = [energy * 627.509 for energy in energies]
    table.add_column("Energy (kcal/mol)", energies)
    total_energies = [energy + zpe for energy in energies]
    # Save the minumum energy position for later use
    min_energy = min(total_energies)
    table.add_column("Total Energy (kcal/mol)", total_energies)

    print(table)
    print("ZPE: ", zpe)

    # Plot the values
    fig, ax = plt.subplots(figsize=(10, 6))
    ax.plot(values, total_energies, marker='x', color='coral')
    # Highlight the minimum energy using a red dot
    ax.plot(values[total_energies.index(min_energy)], min_energy, marker='o', color='indigo')
    ax.set_xlabel(par+' (°)')
    ax.set_ylabel('Energy (kcal/mol)')
    ax.set_title('Energy scan')
    ax.grid()
    plt.savefig('scan.png')



