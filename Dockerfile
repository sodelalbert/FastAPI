# Dockerfile consits of the instructions to build the docker image for the FastAPI application

FROM python:latest

# set the working directory
WORKDIR /app

# install uv and dependencies
COPY ./requirements.txt /app
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# copy the scripts to the folder
COPY . /app

# start the server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]