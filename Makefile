# Define default make action
all: build

# Build the Docker containers
build:
	docker-compose build

# Bring up the Docker containers
up:
	docker-compose up -d

# Bring down the Docker containers
down:
	docker-compose down

# Remove all Docker containers, networks, volumes, and images created by "up"
clean:
	docker-compose down --rmi all --volumes --remove-orphans

# Rebuild and restart the Docker containers
rebuild: down build up

# Tail the logs from the Docker containers
logs:
	docker-compose logs -f

.PHONY: build up down clean rebuild logs
