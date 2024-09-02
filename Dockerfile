FROM python:3.11
#FROM python:3.11.9-slim-bullseye
#FROM python:3.11.9-alpine3.20

WORKDIR /code

COPY . /code/
#COPY src/fishmlserv/main.py /code/

#RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
# pip install 을 내 깃허브 주소로!!
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

CMD ["uvicorn", "src.fishmlserv.main:app", "--host", "0.0.0.0", "--port", "8080"]
