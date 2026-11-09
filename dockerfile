FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install flask

EXPOSE 7000

CMD ["python","app.py"]