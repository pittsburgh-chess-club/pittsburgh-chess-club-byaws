Pittsburgh Chess Club Bylaws
============================

This is the official repository for the Pittsburgh Chess Club Bylaws. The bylaws are in markdown format with helper scripts to generate other various formats. GitHub Actions is used to automate testing, format conversion, and publishing the main branch.

Advantages
----------

- Collaborative workflow for improvement
- Revision history
- Simple format for light and fast editing
- Flexible, consistent conversion to a multitude of alternative formats

Dependencies
------------

To generate output files and lint files, the following development dependencies must be installed.

- make
- aspell-en
- grep
- pandoc
- texlive-latex, texlive-latex-base, texlive-collection-latexrecommended, texlive-collection-latexextra, texlive-collection-basic, texlive-collection-fontsextra, texlive-collection-fontsrecommended, texlive-collection-formatsextra

Usage
-----

- Edit `bylaws.md`. Then, run `make` to generate DOCX, PDF and HTML outputs.
- Use `./lint.sh` to check for errors including misspellings, non-ASCII characters and trailing whitespace.
- Only propose changes to `bylaws.md` within pull requests. Always merge with rebase to ensure a linear history.
- Create a new tag and GitHub release with each bylaws content revision that includes voting details and date.
