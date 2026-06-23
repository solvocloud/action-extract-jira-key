FROM python:3.12.3-alpine
COPY resources/action.py /action.py
ENTRYPOINT ["python", "/action.py"]
