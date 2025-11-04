# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files into container
COPY . .

# Install dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Expose port (optional, if you run a web service)
EXPOSE 8000

# Default command (adjust if your main script is different)
CMD ["python", "query_data.py"]
