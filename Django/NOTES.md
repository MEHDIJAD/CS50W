# Django 101

## Getting started

Django is a high-level Python web framework that encourages rapid development and clean, pragmatic design. It follows the model-template-views (MTV) architectural pattern.

```bash
# Install Django
pip install django
# Create a new Django project
django-admin startproject myproject
# Navigate into the project directory
cd myproject
```

### file structure
After creating a new Django project, the file structure will look like this:

```bash
myproject/
	manage.py
	myproject/
		__init__.py
		settings.py
		urls.py
		wsgi.py
```
- `manage.py`: A command-line utility that lets you interact with this Django project.
- `settings.py`: Configuration settings for the Django project.
- `urls.py`: The URL declarations for this Django project; a "table of contents" of your Django-powered site.
- `wsgi.py`: An entry-point for WSGI-compatible web servers to serve your project.

### running the development server
To run the development server, use the following command:
```bash
# Create a virtual environment
python3 -m venv venv

# Activate it
source venv/bin/activate

# You should see (venv) at the start of your prompt now

# Install Django
pip install django

# Now run your server
python manage.py runserver
```

### Output on the terminal
```bash
January 13, 2026 - 10:22:06
Django version 6.0.1, using settings 'Lecture.settings'
Starting development server at http://127.0.0.1:8000/
```
Open your web browser and navigate to `http://127.0.0.1:8000/`
to see the Django welcome page.
This indicates that your Django project is set up correctly and the development server is running.

* To get out of the server
Press `CTRL + C` in the terminal where the server is running.
* to get out of environment
```bash
deactivate
```

## Creating a Django App
A Django project can contain multiple apps. To create a new app, use the following command:
```bash
python manage.py startapp myapp
```
This will create a new directory called `myapp` with the following structure:
```bash
myapp/
	__init__.py
	admin.py
	apps.py
	models.py
	tests.py
	views.py
	migrations/
```
- `admin.py`: Configuration for the Django admin interface.
- `apps.py`: Configuration for the app itself.
- `models.py`: Define the data models for the app.
- `tests.py`: Write tests for the app.
- `views.py`: Define the views for the app.
- `migrations/`: Directory for database migrations.

### Registering the App
To use the newly created app, you need to register it in the project's `settings.py` file:
```python
# myproject/settings.py
INSTALLED_APPS = [
	...
	'myapp',
]
```
This tells Django to include the app in the project.

### Creating a View
In `views.py`, you can create a simple view:
```python# myapp/views.py
from django.http import HttpResponse
def home(request):
	return HttpResponse("Hello, Django!")
```
### Configuring URLs
Next, you need to configure the URL for the view. In `myapp`, create a new file called `urls.py`:
```python# myapp/urls.py
from django.urls import path
from .views import home
urlpatterns = [
	path('', home, name='home'),
]
```
Then, include the app's URLs in the project's `urls.py`:
```python# myproject/urls.py
from django.contrib import admin
from django.urls import path, include
urlpatterns = [
	path('admin/', admin.site.urls),
	path('', include('myapp.urls')),
]
```

