# Dockerfile to build a flask app
FROM python:3-alpine
# Install python and flask
# Create app directory
WORKDIR /JETESTE
# Install app dependencies
COPY requirements.txt ./
RUN pip install -r requirements.txt --user
COPY . .
# Bundle app source
EXPOSE 5000
CMD ["python", "api.py"]
