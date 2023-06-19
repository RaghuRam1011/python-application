FROM python:alpine3.18

WORKDIR /app

COPY ./src/ /app/

RUN pip install cryptography && \
    pip install pymysql && \
    pip install flask   && \
    pip install python-dotenv
    
EXPOSE 5000

CMD ["python3", "app.py"]

