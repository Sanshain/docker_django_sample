::env
@FOR /f "tokens=*" %i IN ('docker-machine env --shell cmd default') DO @%i
::run
::docker run -it -p 8000:8000 -v /F/Docker/django_templ/content:/usr/share/dev django_project bash
docker run -it -p 8000:8000 -v /app/django_templ:/usr/share/dev django_project bash

:: attention:
:: need add F:\Docker\django_templ\app mounted to app/django_templ inside Shared Folders in VirtualBox

::start as `python manage.py runserver 0.0.0.0:8000` and access on docker toolbox for windows as `http://192.168.99.100:8000/`
::and add ALLOWED_HOSTS = ['192.168.99.100'] to settings.py