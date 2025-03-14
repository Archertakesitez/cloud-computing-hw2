FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_ENV=production
ENV MONGO_HOST=mongodb
ENV MONGO_PORT=27017
ENV PORT=5000

EXPOSE 5000

CMD ["python", "app.py"]