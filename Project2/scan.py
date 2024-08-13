import sys
import re
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
    if len(sys.argv) != 3:
        print("Usage: python scan.py <filename> <parameter>")
        sys.exit(1)
    
    filename = sys.argv[1]
    par = sys.argv[2]
    energies = extract_energies(filename)
    values = extract_t_values(filename, par)
    
    
    table = prettytable.PrettyTable()
    table.add_column("Angle", values)
    table.add_column("Energy (Hartree)", energies)
    # Convert energies to kcal/mol
    energies = [energy * 627.509 for energy in energies]
    table.add_column("Energy (kcal/mol)", energies)
    # Extract ZPE
    zpe = extract_zpe(filename)
    total_energies = [energy + zpe for energy in energies]
    table.add_column("Total Energy (kcal/mol)", total_energies)


    print(table)

    # Plot the values
    fig, ax = plt.subplots(figsize=(10, 6))
    ax.plot(values, energies, marker='x', color='coral')
    ax.set_xlabel(par+' (°)')
    ax.set_ylabel('Energy (kcal/mol)')
    ax.set_title('Energy scan')
    ax.grid()
    plt.savefig('scan.png')



