FROM python:3.9

# Create a working directory
WORKDIR /app

# Copy your Python file (palindrome.py) to the working directory
COPY palindrome.py .

# Install pytest (assuming you're using pytest for testing)
RUN pip install pytest
