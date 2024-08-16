import os
import shutil
import sys

temperatures = [300 + i*100 for i in range(17)]

def main(filename):
    if not os.path.isfile(filename):
        print(f"The file {filename} does not exist")
        return

    # Generate folders and copy the file
    for temp in temperatures:
        folder_name = f"temp_{temp}"
        os.makedirs(folder_name, exist_ok=True)
        shutil.copy(filename, os.path.join(folder_name, filename))

        # Modify the copied file
        file_path = os.path.join(folder_name, filename)
        with open(file_path, 'r') as file:
            lines = file.readlines()

        with open(file_path, 'w') as file:
            for line in lines:
                if line.startswith("#p"):
                    line = line.strip() + f" Temperature={temp}\n"
                file.write(line)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Uso: python generate_thermo.py <nome_file>")
    else:
        main(sys.argv[1])