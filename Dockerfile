# Dockerfile consits of the instructions to build the docker image for the FastAPI application

FROM python:latest

# set the working directory
WORKDIR /code

# install uv and dependencies
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# copy the app folder from reposiroty root to the WORKDIR /code folder in container filesystem
COPY ./app /code

# start the server using uvicorn, main:app coreposnds to
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]