# autokeras-gpu

Execute `autokeras-0.40` with `pytorch / pytorch: 1.2-cuda10.0-cudnn7-runtime`

# pull image from dockerhub and run

```
docker run --runtime=nvidia --shm-size=2G --rm -v $(pwd)/app:/app piroz/autokeras-gpu python3 mnist.py
```