FROM python:3.13.0b1-alpine
COPY resources/action.py /action.py
ENTRYPOINT ["python", "/action.py"]
