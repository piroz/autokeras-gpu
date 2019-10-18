# autokeras-gpu
run autokeras in nvidia-docker

# pull image from dockerhub and run

```
docker run --runtime=nvidia --shm-size=2G --rm -v $(pwd)/app:/app piroz/autokeras-gpu python3 mnist.py
```