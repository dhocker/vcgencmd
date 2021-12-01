#!/bin/bash
# Reference: https://pypa-build.readthedocs.io/en/stable/

rm -rf dist
python -m build --no-isolation
