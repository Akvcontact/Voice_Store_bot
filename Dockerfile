# Use the official Python image from the Docker Hub
FROM python:3.12-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1
ENV PORT=8000

# Create a working directory for the application
WORKDIR /app

# Copy the requirements file into the image
COPY requirements.txt /app/

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the bot's source code into the image
COPY . /app/

# Expose the port for the health check
EXPOSE 8000

# Start the bot using the entrypoint
CMD ["python", "your_bot_script.py"]
