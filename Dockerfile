FROM python:3.10-slim

WORKDIR /app

# Copy requirements.txt first
COPY requirements.txt .

# Install Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Run the app
CMD ["python", "app.py"]
