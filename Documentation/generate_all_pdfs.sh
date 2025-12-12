#!/bin/zsh
# Script to generate all Epitech Subject PDFs from markdown files
# Usage: ./generate_all_pdfs.sh

set -e

# Source .zshrc to load the md2pdf function (dockerized)
if [ -f "$HOME/.zshrc" ]; then
    source "$HOME/.zshrc"
fi

# Check if md2pdf function or command is available (dockerized in .zshrc)
if ! command -v md2pdf > /dev/null 2>&1; then
    echo "md2pdf function/command could not be found. Please ensure your shell loads the md2pdf docker function (see .zshrc)."
    exit 1
fi

# Individual PDF generation commands using md2pdf (dockerized)
md2pdf -y ./Subjects/subjects.yaml ./Subjects/FirstStep/Basic_Exploration.md
md2pdf -y ./Subjects/subjects.yaml ./Subjects/Challenges/Challenge_1_Beginner.md ./Subjects/Challenges/Challenge_2_Beginner.md ./Subjects/Challenges/Challenge_3_Beginner.md
md2pdf -y ./Subjects/subjects.yaml ./Subjects/Setup/Setup.md

# Relatives documentation (EN/FR manuals)
md2pdf -y ./Relatives/relatives.yml ./Relatives/Unity_Manual_Unity_interface_EN.md
md2pdf -y ./Relatives/relatives.yml ./Relatives/Unity_Manual_Unity_interface_FR.md
