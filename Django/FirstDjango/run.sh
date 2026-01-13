#!/bin/bash

# Django Virtual Environment Manager Script

case "$1" in
    d)
        echo "Deactivating and removing virtual environment..."
        deactivate 2>/dev/null
        rm -rf venv
        echo "Virtual environment removed."
        ;;
    
    a)
        echo "Setting up virtual environment..."
        
        # Create virtual environment
        python3 -m venv venv
        echo "✓ Virtual environment created"
        
        # Activate it
        source venv/bin/activate
        echo "✓ Virtual environment activated"
        
        # Install Django
        echo "Installing Django..."
        pip install django
        echo "✓ Django installed"
        
        # Run the server
        echo "Starting Django server..."
        python manage.py runserver
        ;;
    
    run)
        echo "Starting Django server..."
        source venv/bin/activate
        python manage.py runserver
        ;;
    
    *)
        echo "Usage: ./run.sh {activate|deactivate|run}"
        echo ""
        echo "Commands:"
        echo "  activate    - Create venv, install Django, and run server"
        echo "  deactivate  - Deactivate and remove venv"
        echo "  run         - Just activate venv and run server"
        exit 1
        ;;
esac