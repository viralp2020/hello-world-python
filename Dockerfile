FROM python:3.8-slim
COPY hello.py /app/
WORKDIR /app
CMD ["python", "hello.py"]
