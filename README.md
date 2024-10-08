# FastAPI

Small project to demonstrate FastAPI framework.

## TODO List

- [x] Dockerize application
- [x] Write template test cases using pytest/requests
- [ ] Integrate project with database
- [ ] Extend API with CRUD and logic
- [ ] Implement performance test of application (locust is can be used possibly)
- [ ] Implement basic UI


## Local run


Changes to source code will be automatically tracked by uvicorn and the server will be restarted automatically. Not including data repositories. 
```
pip install -r requirements.txt
uvicorn app.main:app --host 0.0.0.0 --port 8080 --reload
```

## Docker container build and run

Build and run the Docker image locally, as follows:

```
docker build -t fast-api .
docker run -d -p 8080:80 fast-api
```

## Docker compose service

Docker service is created. Project directory will be monitored against the changes and server will be restarted automatically.

```
docker-compose up --build
```

## Run test cases for the application

Open project root application and run the following command to run test cases.

```
pytest
```

