




import streamlit as st
import os
import sys
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

import streamlit as st
import os
from src.components.convert import SASConverter
from src.components.file_utils import create_dated_folder
from src.components.db_handler import init_db
import streamlit as st
import os
from src.components.convert import SASConverter
from src.components.file_utils import create_dated_folder
from src.components.db_handler import init_db

st.set_page_config(page_title="SAS to Python Converter", layout="centered")
st.title("📄 SAS to Python Converter with Chunking + DB")

init_db()
converter = SASConverter()

uploaded_file = st.file_uploader("Upload a .sas file", type=["sas"])

if uploaded_file:
    if st.button("🔁 Convert SAS → Python"):
        save_path = os.path.join("data/input", uploaded_file.name)
        os.makedirs("data/input", exist_ok=True)
        with open(save_path, "wb") as f:
            f.write(uploaded_file.read())

        output_dir = create_dated_folder("data/output")
        output_file = os.path.join(output_dir, uploaded_file.name.replace(".sas", ".py"))

        with st.spinner("Processing... Please wait."):
            try:
                result = converter.convert_chunked_file(save_path, output_file)
                st.success(f"✅ Conversion complete! File saved to {output_file}")
                st.download_button("📥 Download Python File", result, file_name=os.path.basename(output_file))
            except Exception as e:
                st.error(f"❌ Conversion failed: {str(e)}")