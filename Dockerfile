FROM python:3.10-alpine
COPY resources/action.py /action.py
ENTRYPOINT ["python", "/action.py"]
