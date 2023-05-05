FROM python:3.11.0a6-alpine3.15
WORKDIR /code
COPY . /code/
RUN pip install --trusted-host pypi.python.org -r requirements.txt 
#COPY 
EXPOSE 5000
ENV REDIS_HOST=redis
ENV REDIS_PORT=6379
CMD ["python", "app.py"]

