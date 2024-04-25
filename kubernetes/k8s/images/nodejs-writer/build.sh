# Build image
docker build -t herwindra/nodejs-writer .

# Push image
docker push herwindra/nodejs-writer

# Create container
docker container create --name nodejs-writer herwindra/nodejs-writer

# Start container
docker container start nodejs-writer

# See container logs
docker container logs -f nodejs-writer

# Stop container
docker container stop nodejs-writer

# Remove container
docker container rm nodejs-writer
