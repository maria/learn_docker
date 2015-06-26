FROM django:1.8.1-python2

COPY ./app /opt/app
WORKDIR /opt/app/skillhub

RUN pip install -r dev-requirements.txt
RUN python manage.py syncdb --noinput
RUN python manage.py migrate

EXPOSE 8000

CMD python manage.py runserver
