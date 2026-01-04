#!/bin/bash

# Check arguments
if [ -z "$1" ]; then
    echo "Usage: ./dom.sh filename.html"
    exit 1
fi

# Python script using ONLY standard library (html.parser)
python3 -c "
import sys, os
from html.parser import HTMLParser

class DOMPrinter(HTMLParser):
    def __init__(self):
        super().__init__()
        self.level = 0
        
    def handle_starttag(self, tag, attrs):
        indent = '    ' * self.level
        connector = '├── '
        # Print Tag in Blue
        print(f'{indent}{connector}\033[1;34m{tag}\033[0m')
        self.level += 1

    def handle_endtag(self, tag):
        self.level -= 1

    def handle_data(self, data):
        if data.strip():
            indent = '    ' * self.level
            connector = '└── '
            # Print Text in Green
            print(f'{indent}{connector}\033[0;32m\"{data.strip()}\"\033[0m')

# Read input
try:
    arg = sys.argv[1]
    if os.path.exists(arg):
        with open(arg, 'r') as f: content = f.read()
    else:
        content = arg
        
    # Run Parser
    DOMPrinter().feed(content)
except Exception as e:
    print(f'Error: {e}')
" "$1"