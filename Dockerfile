FROM django:1.8.1-python2

COPY ./app /opt/app
COPY ./settings_local.py /opt/app/skillhub/settings_local.py
WORKDIR /opt/app/skillhub

RUN pip install -r dev-requirements.txt
RUN python manage.py syncdb --noinput
RUN python manage.py migrate

EXPOSE 8000

CMD python manage.py runserver 0.0.0.0:8000
#CMD /bin/sh -c "while true; do echo I am alive; sleep 1; done"
