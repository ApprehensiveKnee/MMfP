import sys
import re
import argparse
import prettytable
import matplotlib.pyplot as plt

def extract_energies(filename):
    energies = []
    final_energy = 0.0
    pattern = re.compile(r'SCF Done:.*?E\(\w+\)\s*=\s*(-?\d+\.\d+)')
    
    with open(filename, 'r') as file:
        for line in file:
            match = pattern.search(line)
            if match:
                energies.append(float(match.group(1)))
    final_energy = energies[-1] if energies else 0.0
    
    return energies, final_energy

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
    
    parser = argparse.ArgumentParser(description='Extract energies from a Gaussian optimization output file \n Usage: python opt_energy.py <filename>')
    parser.add_argument('filename', type=str, help='The filename to process')
    args = parser.parse_args()
    
    
    filename = sys.argv[1]
    energies, final_energy = extract_energies(filename)
    zpe = extract_zpe(filename) * 627.509
    
    table = prettytable.PrettyTable()
    table.add_column("Step", range(1, len(energies)+1))
    table.add_column("Energy", energies)
    # Convert energies to kcal/mol
    energies = [energy*627.509 for energy in energies]
    table.add_column("Energy (kcal/mol)", energies)
    energies = [energy + zpe for energy in energies]
    table.add_column("Energy TOT (kcal/mol)", energies)
    print(table)
    print(f"Final energy (kcal/mol): {final_energy}")
    print(f"Zero-point energy (kcal/mol): {zpe}")
    
    fig, ax = plt.subplots(figsize=(10, 6))
    ax.plot(range(1, len(energies)+1), energies, marker='x', color='indianred')
    ax.set_xlabel("Step")
    ax.set_ylabel("Energy (kcal/mol)")
    ax.set_title("Optimization energy profile")
    ax.grid()
    plt.savefig('opt_energy.png')
