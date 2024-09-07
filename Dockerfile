FROM python:3.12.0a1-alpine
COPY resources/action.py /action.py
ENTRYPOINT ["python", "/action.py"]
