import pandas as pd
import re

def extract_table_from_file(file_path):
    with open(file_path, 'r') as file:
        content = file.read()
    
    # pattern to match the table
    table_pattern = re.compile(r'RCH4\s+EHF\s+ERS2_1\s+ERS2_2\n((?:\s*\d+\.\d+\s+-?\d+\.\d+\s+-?\d+\.\d+\s+-?\d+\.\d+\n)+)')
    match = table_pattern.search(content)
    
    if not match:
        raise ValueError("Table not found...")
    
    table_data = match.group(1).strip()
    
    # Convert the rows to a list of lists
    rows = []
    for line in table_data.split('\n'):
        rows.append(line.split())
    
    df = pd.DataFrame(rows, columns=['RCH4', 'EHF', 'ERS2_1','ERS2_2'])
    
    # Convert string columns to float
    df['RCH4'] = df['RCH4'].astype(float)
    df['EHF'] = df['EHF'].astype(float)
    df['ERS2_1'] = df['ERS2_1'].astype(float)
    df['ERS2_2'] = df['ERS2_2'].astype(float)
    
    return df

def main():
    file_path = 'scan.out'  
    output_csv = 'energy_comparison.csv'
    
    try:
        df = extract_table_from_file(file_path)
        df.to_csv(output_csv, index=False)
        print(f"Table exported succesfully: {output_csv}")
    except Exception as e:
        print(f"Errore: {e}")

if __name__ == "__main__":
    main()