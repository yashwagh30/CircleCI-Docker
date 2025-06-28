FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .         # copy only requirements file first
RUN pip install -r requirements.txt

COPY . .                        # copy all remaining files
CMD ["python", "app.py"]
