FROM python:3.8-alpine
WORKDIR /src
ADD . .
RUN pip install -r requirements.txt
CMD ["gunicorn", "app:app", "--bind=0.0.0.0:5000"]
