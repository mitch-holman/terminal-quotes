#!/bin/bash
# ============================================================
# terminal-quotes — a bash learning project
# Day 1: shebang, variables, echo
# ============================================================

# VARIABLES
# Assign with = (no spaces around it)
# Access the value with $
author="Lao Tzu"
quote="The journey of a thousand miles begins with a single step."

# ECHO
# Prints to the terminal
# Wrapping $var in double quotes is safer when values contain spaces
echo "\"$quote\""
echo "  — $author"
