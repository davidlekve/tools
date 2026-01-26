# dev-tools

Personal developer utilities

This repository follows a standard Unix-friendly pattern:

- Executables are exposed via `~/.local/bin`
- Installation uses symlinks (no copying)

## Requirements

- `~/.local/bin` must be on your `PATH`
- For `new-python-project`:
  - `pyenv`
  - `uv`
- For `quick-pr`:
  - `gh` (GitHub CLI, authenticated)
  - `claude` (Claude Code CLI)

## Installation

Clone the repository:

```bash
git clone git@github.com:davidlekve/tools.git
cd tools
./install.sh
```

## Tools

### new-python-project

Scaffold a new Python project with pyenv and uv.

```bash
new-python-project myapp           # Latest Python
new-python-project myapp 3.12.0    # Specific version
```

### quick-pr

Create a PR with auto-generated branch, commit, and title using Claude.

```bash
quick-pr -                # Currently staged changes only
quick-pr .                # All changes
quick-pr -A               # All changes (including untracked)
quick-pr src/             # Directory
quick-pr file1.ts file2.ts
```

Features:
- Uses Claude Code (haiku) for fast generation
- Creates branch from latest main
- Single commit per PR
- PR title format: `<type>: description in lowercase`
