#!/bin/bash

set -euo pipefail

git rebase upstream/main
git tag -f "$(git tag -l '*-rpi' | tail -n1)"
