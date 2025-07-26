def chunk_code(code: str, max_lines: int = 200) -> list[str]:
    lines = code.split('\n')
    return ['\n'.join(lines[i:i + max_lines]) for i in range(0, len(lines), max_lines)]

