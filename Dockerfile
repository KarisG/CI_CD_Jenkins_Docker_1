# Dockerfile to build a flask app
FROM python:3.9
# Install python and flask
# Create app directory
WORKDIR /
# Install app dependencies
COPY requirements.txt ./
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install -r requirements.txt --user
COPY . .
# Bundle app source
EXPOSE 5000
CMD ["/usr/local/bin/python", "api.py", "--log-file=api.log"]

