FROM python:3

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

COPY requirements.txt /code/

RUN pip install -r requirements.txt

RUN pip3 install djangorestframework

COPY . /code/

EXPOSE 8000

CMD python manage.py runserver 0.0.0.0:8000