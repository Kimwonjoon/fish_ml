#FROM python:3.11
#FROM python:3.11.9-slim-bullseye
#FROM python:3.11.9-alpine3.20
FROM datamario24/python311scikitlearn-fastapi:1.0.0

WORKDIR /code

#COPY . /code/
#COPY requirements.txt /code/
COPY /src/fishmlserv/main.py /code/

#RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
# pip install 을 내 깃허브 주소로!!
RUN pip --no-cache-dir install git+https://github.com/Kimwonjoon/fish_ml.git@0.8/Dhub

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
