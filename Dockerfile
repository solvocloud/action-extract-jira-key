FROM python:3.10-slim
COPY resources/action.py /action.py
ENTRYPOINT ["python", "/action.py"]
