
import pandas as pd
import numpy as np

# Creating Dummy Employee Data
np.random.seed(0)
data = {
    'id': range(1, 101),
    'name': ['Employee' + str(i) for i in range(1, 101)],
    'dept': [np.random.choice(['HR', 'IT', 'Finance', 'Admin', 'R&D']) for _ in range(100)],
    'salary': np.random.randint(40000, 60000, size=100),
    'age': np.random.randint(22, 47, size=100),
    'gender': np.random.choice(['Male', 'Female'], size=100)
}

df = pd.DataFrame(data)

# Freq Tables
print(df['dept'].value_counts())
print(df['gender'].value_counts())

# Means Statistics
print(df[['salary', 'age']].describe())

# Sorting Employees by Salary
df_sorted = df.sort_values(by='salary', ascending=False).reset_index(drop=True)

# Top 10 Paid Employees
top_paid = df_sorted.head(10)

# Peer Age Table
peer_age_table = pd.merge(df, df, on='dept', suffixes=('_a', '_b')).drop_duplicates(subset=['id_a', 'name_b'], keep='first')[['id_a', 'name_a', 'name_b', 'age_a', 'age_b']].rename(columns={'age_a': 'age'})

print(peer_age_table)