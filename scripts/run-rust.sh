#!/bin/bash
# Wrapper for fcp-rust — provides install instructions if binary is missing.
if command -v fcp-rust &>/dev/null; then
  exec fcp-rust "$@"
else
  echo "fcp-rust not found. Install:" >&2
  echo "  curl -fsSL https://os-tack.github.io/fcp-rust/install.sh | sh" >&2
  echo "" >&2
  echo "Or build from source:" >&2
  echo "  cargo install --git https://github.com/os-tack/fcp-rust" >&2
  echo "" >&2
  echo "Or run /fcp:setup in Claude Code to install all FCP dependencies." >&2
  exit 1
fi
