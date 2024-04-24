FROM python:3.9

# Create a working directory
WORKDIR /app

# Copy your Python file (palindrome.py) to the working directory
COPY palindrome.py .

# Install pytest (assuming you're using pytest for testing)
RUN pip install pytest
# Existing Dockerfile content (if any)

# Install bash (assuming you prefer bash)
RUN apt-get update && apt-get install -y bash
