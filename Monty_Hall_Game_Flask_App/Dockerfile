FROM python:3.11.1-slim-buster

WORKDIR /home/app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Set environment variable so Flask knows where to find the app
ENV FLASK_APP=app.py

# Optional: disable debug mode in production
ENV FLASK_ENV=production

EXPOSE 80

# Use Gunicorn for better performance (make sure it’s in requirements.txt)
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:application"]

