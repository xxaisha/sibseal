# Build image
docker build -t herwindra/nodejs-stateful .

# Push image
docker push herwindra/nodejs-stateful

# Create container
docker container create --name nodejs-stateful herwindra/nodejs-stateful

# Start container
docker container start nodejs-stateful

# See container logs
docker container logs -f nodejs-stateful

# Stop container
docker container stop nodejs-stateful

# Remove container
docker container rm nodejs-stateful
