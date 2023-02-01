# Dockerfile to build a flask app
FROM python:3-alpine
# Install python and flask
# Create app directory
WORKDIR /CI-WITH-GITHUB
# Install app dependencies
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .
# Bundle app source
EXPOSE 5000
CMD ["python", "-m", "flask", "run", "--host","0.0.0.0","--port","5000"]
