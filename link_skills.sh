#!/usr/bin/env bash

# Link Claude Code skills directory
SKILLS_DIR="$HOME/.claude/skills"
REPO_SKILLS="$(cd "$(dirname "$0")" && pwd)/skills"

# Create ~/.claude directory if it doesn't exist
mkdir -p "$HOME/.claude"

# Link skills directory
ln -fs "$REPO_SKILLS" "$SKILLS_DIR"

echo "Skills linked: $SKILLS_DIR -> $REPO_SKILLS"
