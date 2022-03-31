FROM python:3.8-slim-buster
RUN apt update && \
    apt upgrade && \
    pip install pip --upgrade pip
WORKDIR /app
COPY . .
EXPOSE 50007
CMD ["0.0.0.0", "50007"]
ENTRYPOINT ["python", "main.py"]
