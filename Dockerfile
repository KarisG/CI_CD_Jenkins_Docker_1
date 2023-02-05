# Dockerfile to build a flask app
FROM python:3.9
# Install python and flask
# Create app directory
WORKDIR /usr/app
# Install app dependencies
COPY requirements.txt ./
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install -r requirements.txt --user
COPY . .
COPY TP7MLOPS.h5 .
COPY api.log .
# Bundle app source
EXPOSE 5001
CMD ["python", "api.py","--logfile","api.log"]
