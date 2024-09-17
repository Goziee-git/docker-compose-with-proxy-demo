FROM python:3.9

WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirement.txt .
RUN pip install --upgrade pip && pip install -r requirement.txt

# Copy the rest of your app code
COPY . .

# Use Gunicorn to run the app
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]



