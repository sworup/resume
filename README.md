# LaTeX Resume for Sworup Shakya

This repository contains the LaTeX source code for Sworup Shakya's resume. The resume is designed to be professional, modern, and easily parsable by Applicant Tracking Systems (ATS).

## Versions

This repository holds different versions of the resume tailored for specific roles:

-   **Frontend Developer:** The primary version, located in the `frontend/` directory.
-   **Full-Stack Developer:** A version tailored for full-stack roles, located in the `full-stack/` directory.

## How to Compile

To generate a PDF from the LaTeX source, you will need a LaTeX distribution installed on your system (e.g., TeX Live, MiKTeX, MacTeX).

1.  **Navigate to the desired directory** (`frontend/` or `full-stack/`).

2.  **Run `pdflatex`** on the corresponding `.tex` file.

    -   For the Frontend resume:
        ```bash
        pdflatex sshakya-Frontend.tex
        ```

    -   For the Full-Stack resume:
        ```bash
        pdflatex SShakya-FullStack.tex
        ```

    This will generate a PDF file in the same directory.

    **Note:** You may need to run the command twice to ensure that all references are correctly rendered.

## Design & Formatting

This resume is built using a custom LaTeX class file, `resume.cls`, which controls the formatting and layout. The design is intentionally clean and single-column to ensure high compatibility with ATS.

Key features of the design include:

-   **Clickable Links:** All email addresses, websites, and social media links are clickable.
-   **Clear Sections:** The resume is divided into standard sections like "Experience," "Skills," and "Education" for easy parsing.
-   **Professional Typography:** The layout is designed for readability and a professional appearance.
