FROM django:1.8.1-python2

COPY ./SkillHub /opt/SkillHub
WORKDIR /opt/oss

RUN pip install -r requirements.txt
EXPOSE 8000

CMD python manage.py runserver
