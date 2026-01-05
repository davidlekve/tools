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

## Installation

Clone the repository:

```bash
git clone git@github.com:davidlekve/tools.git
cd tools
./install.sh
