cd where the Dockerfile is and run commands in this order :
docker build -t jmshello .
docker run -p 8000:8000 -tid jmshello