import sqlite3
import os

DB_PATH = "data/conversions.db"

def init_db():
    os.makedirs("data", exist_ok=True)
    with sqlite3.connect(DB_PATH) as conn:
        c = conn.cursor()
        c.execute('''
            CREATE TABLE IF NOT EXISTS conversions (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                filename TEXT,
                chunk_index INTEGER,
                sas_code TEXT,
                python_code TEXT,
                created_at TEXT DEFAULT CURRENT_TIMESTAMP
            )
        ''')
        conn.commit()

def store_conversion(filename: str, chunk_index: int, sas_code: str, python_code: str):
    with sqlite3.connect(DB_PATH) as conn:
        c = conn.cursor()
        c.execute('''
            INSERT INTO conversions (filename, chunk_index, sas_code, python_code)
            VALUES (?, ?, ?, ?)
        ''', (filename, chunk_index, sas_code, python_code))
        conn.commit()