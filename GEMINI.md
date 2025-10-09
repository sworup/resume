# Project: LaTeX Resume for Sworup Shakya

This project contains the LaTeX source for Sworup Shakya's resume. The goal is to produce a professional, ATS-friendly PDF resume.

## Structure

- `frontend/`: This directory contains the main LaTeX file (`sshakya-Frontend.tex`) and the custom class file (`resume.cls`). This is the preferred format.
- `full-stack/`: This directory contains the full-stack version of the resume (`SShakya-FullStack.tex`).

## Compiling the Resume

To compile the resume and generate a PDF, you will need a LaTeX distribution installed on your system (e.g., TeX Live, MiKTeX).

1.  Navigate to the desired directory (`frontend/` or `full-stack/`).
2.  Run the following command to generate the PDF:

    For the Frontend version:
    ```bash
    pdflatex sshakya-Frontend.tex
    ```

    For the Full-Stack version:
    ```bash
    pdflatex SShakya-FullStack.tex
    ```

    You may need to run the command twice to ensure all cross-references and page numbers are correct.

## Goals and Guidelines

- **ATS-Friendly:** The resume should be easily parsable by Applicant Tracking Systems. This means:
    - The text should be selectable.
    - The layout should be clean and single-column.
    - Use standard section headings (e.g., "Experience," "Skills," "Education").
- **Maintain Format:** The visual style and format defined in `resume.cls` should be maintained.
- **Hyperlinks:** Use `\href` for all links (email, LinkedIn, GitHub, portfolio) to make them clickable in the PDF.