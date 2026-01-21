#!/bin/bash

# 1. Create env for Django project (named "venv")
python3 -m venv venv

# 2. Activate the env
source venv/bin/activate

# 3. Upgrade pip (optional but good practice)
pip install --upgrade pip

# 4. Install Django for this env
pip install django

echo "Setup complete! Don't forget to run 'source venv/bin/activate' if you don't see (venv) in your prompt."