FROM python:3
WORKDIR /opt/
RUN pip install virtualenv
RUN virtualenv -p python3 .
RUN . bin/activate
RUN bin/pip install --upgrade pip
RUN bin/pip install Django
RUN bin/pip install djangorestframework
RUN bin/pip install mysqlclient
RUN bin/pip install django-cors-headers
RUN bin/pip install requests
RUN bin/pip install django-extensions
RUN bin/pip install django-rest-auth
RUN bin/pip install django-allauth
RUN bin/pip install boto3
RUN bin/pip install django-storages

RUN git config --global user.email "me@juanrivera.org"
RUN git config --global user.name "Automation"

RUN apt-get update
RUN apt-get install -y mysql-client
WORKDIR /opt/app
COPY start.sh /opt/start.sh
RUN chmod 755 /opt/start.sh
CMD /opt/start.sh
