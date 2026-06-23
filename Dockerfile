FROM python:3.13.0a3-alpine
COPY resources/action.py /action.py
ENTRYPOINT ["python", "/action.py"]
