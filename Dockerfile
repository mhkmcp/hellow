# Pull base image
FROM python:3.7

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
# COPY Pipfile Pipfile.lock /code/
COPY helpdesk/requirements.txt /code/
RUN pip3 install virtualenv && virtualenv install --system

# Copy project
COPY . /code/