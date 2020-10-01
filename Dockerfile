# This dockerfile utilizes components licensed by their respective owners/authors.
# Prior to utilizing this file or resulting images please review the respective licenses at: https://github.com/django/django/blob/master/LICENSE

FROM python
LABEL Description="Django" Vendor="Django Software Foundation" Version="2.2"

WORKDIR /usr/share/dev
# VOLUME ["/home/projects"]
# VOLUME ["/content"]

RUN ["pip", "install", "Django==2.2"]
# ENTRYPOINT ["bash"]

CMD ["django-admin", "--version"]