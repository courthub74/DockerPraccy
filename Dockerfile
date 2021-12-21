FROM python:3.8-alpine

RUN apk update && apk add python3-dev gcc libc-dev 

WORKDIR /app 

COPY ./requirements.txt requirements.txt 

RUN pip install -U pip 

RUN python3 -m pip install -r ./requirements.txt 

COPY . /app 

CMD ["python", "manage.py", "runserver"]