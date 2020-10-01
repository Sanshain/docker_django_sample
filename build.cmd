::env
@FOR /f "tokens=*" %i IN ('docker-machine env --shell cmd default') DO @%i
::build
docker build . --tag django_project