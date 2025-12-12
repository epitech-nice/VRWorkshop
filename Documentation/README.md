## PDF Generation for Epitech Subjects & Relatives Manuals

To generate all PDF documentation from the Markdown sources using the Epitech Subject Tool, use the provided script from the Documentation directory:

```sh
./generate_all_pdfs.sh
```

This script will:
- Check if you have the required tools installed
- Run individual `md2pdf` commands for each major subject, challenge, and relatives manual (EN/FR)

### Manual Usage
If you want to run commands manually, you can use: (Not that you need to be in the Documentation directory and have `md2pdf` installed)

```sh
md2pdf -y ../Subjects/subjects.yaml ../Subjects/FirstStep/Basic_Exploration.md
md2pdf -y ../Subjects/subjects.yaml ../Subjects/Challenges/Challenge_1_Beginner.md ../Subjects/Challenges/Challenge_2_Beginner.md ../Subjects/Challenges/Challenge_3_Beginner.md
md2pdf -y ../Subjects/subjects.yaml ../Subjects/Setup/Setup.md
md2pdf ../Relatives/Unity_Manual_Unity_interface_EN.md
md2pdf ../Relatives/Unity_Manual_Unity_interface_FR.md
```

### Requirements
- `md2pdf` and all dependencies must be installed and available in your PATH. (This is a private Epitech tool)
- Run from the `Documentation` directory for the script to work as expected.

PDFs will be generated in the appropriate output folders for each subject and relatives manual.
