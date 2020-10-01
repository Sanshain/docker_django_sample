
## Using from Docker toolbox for Windows:

For correct working on Windows you need to follow this steps:

- First of all set mount `[win_path]\app` to `app/django_templ` inside `Shared Folders` point of VirtualBox machine settings.
This is necessary to mount linux of docker-machine disk space with Windows
- add ALLOWED_HOSTS = ['192.168.99.100'] to settings.py of project
- Next step: after containrer running start django as `python manage.py runserver 0.0.0.0:8000` and 
request on docker toolbox for windows as `http://192.168.99.100:8000/` instead of standart 
