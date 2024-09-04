#FROM python:3.11
#FROM python:3.11.9-slim-bullseye
#FROM python:3.11.9-alpine3.20
#FROM datamario24/python311scikitlearn-fastapi:1.0.0
FROM kimpass189/fish_knn:0.1.0

WORKDIR /code

#COPY . /code/
#COPY requirements.txt /code/
COPY /src/fishmlserv/main.py /code/
COPY /src/fishmlserv/model/get-model-path.py /code/
COPY /src/fishmlserv/knn_pred.py /code/

#RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
# pip install 을 내 깃허브 주소로!!
# 모델 서빙만(의존성은 모두 위 FROM의 베이스 images에서 설치했음)
RUN pip install --no-cache-dir --upgrade git+https://github.com/Kimwonjoon/fish_ml.git@1.0.0/k
RUN chmod +x /code/get-model-path.py
RUN chmod +x /code/knn_pred.py
#RUN ln -s /code/get-model-path.py /usr/local/bin/get-model-path
#RUN ln -s /code/knn_pred.py /usr/local/bin/knn_pred

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
