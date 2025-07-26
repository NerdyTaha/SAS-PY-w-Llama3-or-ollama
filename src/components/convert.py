from src.components.llm_handler import LLMHandler
from src.components.file_utils import read_file, write_file
from src.components.chunker import chunk_code
from src.components.db_handler import store_conversion
from prompts.template import prompt_template
import os

class SASConverter:
    def __init__(self):
        self.llm = LLMHandler()

    def convert_chunked_file(self, input_path: str, output_path: str):
        sas_code = read_file(input_path)
        lines = sas_code.split('\n')
        total_lines = len(lines)

        max_lines = 200 if total_lines > 1000 else 300
        chunks = chunk_code(sas_code, max_lines=max_lines)

        filename = os.path.basename(input_path)
        python_chunks = []

        for i, chunk in enumerate(chunks):
            try:
                py_chunk = self.llm.convert(chunk, prompt_template)
                store_conversion(filename, i, chunk, py_chunk)
                python_chunks.append(py_chunk)
            except Exception as e:
                python_chunks.append(f"# Error converting chunk {i}: {str(e)}")

        full_output = '\n\n'.join(python_chunks)
        write_file(output_path, full_output)
        return full_output