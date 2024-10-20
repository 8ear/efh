# Base Image
FROM python:3.9-slim

# Change Workdir directory
WORKDIR /app

# Add Requirements File
COPY requirements.txt .

# Install Python Packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy MKDocs Stuff
COPY . .

EXPOSE 8000

# Command
CMD ["mkdocs","serve", "--dev-addr=0.0.0.0:8000"]
