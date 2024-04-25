FROM python:3.9

# Create a working directory
WORKDIR /app

# Copy your Python file (palindrome.py) to the working directory
COPY palindrome.py .

# Install pytest and pytest-xunit (for JUnit XML reporting)
RUN pip install pytest pytest-xunit

# Existing Dockerfile content (if any)

# Install bash (assuming you prefer bash)
RUN apt-get update && apt-get install -y bash
