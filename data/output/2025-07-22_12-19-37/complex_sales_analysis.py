import pandas as pd
from io import StringIO

data_str = """
Region,Product,Month,SalesAmount
North,TV,Jan,500
North,TV,Feb,550
North,AC,Jan,300
South,TV,Jan,400
South,AC,Feb,350
East,TV,Jan,600
East,AC,Feb,450"""

sales = pd.read_csv(StringIO(data_str))

quarter_map = {
    'Jan': 'Q1', 
    'Feb': 'Q1', 
    'Mar': 'Q1',
    'Apr': 'Q2', 
    'May': 'Q2', 
    'Jun': 'Q2',
    'Jul': 'Q3', 
    'Aug': 'Q3', 
    'Sep': 'Q3',
    'Oct': 'Q4', 
    'Nov': 'Q4', 
    'Dec': 'Q4'
}

sales['Quarter'] = sales['Month'].apply(lambda x: quarter_map.get(x))

region_summary = sales.groupby(['Region', 'Product'])['SalesAmount'].sum().reset_index()

transposed_sales = region_summary.pivot(index='Region', columns='Product', values='SalesAmount').reset_index()

tv_target_data_str = """
Region,TV_Target,AC_Target
North,1200,800
South,1100,600
East,1300,900"""

targets = pd.read_csv(StringIO(tv_target_data_str))

final_report = pd.merge(transposed_sales, targets, on='Region')

final_report['TV_Deviation'] = final_report['SalesAmount_x'] - final_report['TV_Target']
final_report['AC_Deviation'] = final_report['SalesAmount_y'] - final_report['AC_Target']

print(final_report)