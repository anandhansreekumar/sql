# Makefile for Dockerized PostgreSQL setup

# Variables
POSTGRES_CONTAINER_NAME = postgres
POSTGRES_PASSWORD = root
POSTGRES_VOLUME = pgdata
POSTGRES_PORT = 5432
 
.PHONY: all install_docker create_volume run_container stop_container remove_container cleanup

all: run_container

install_docker:
	sudo apt update
	sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
	echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(shell lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	sudo apt update
	sudo apt install -y docker-ce docker-ce-cli containerd.io
	sudo systemctl start docker
	sudo systemctl enable docker

create_volume:
	sudo docker volume create $(POSTGRES_VOLUME)

run_container: create_volume
	sudo docker run --name $(POSTGRES_CONTAINER_NAME) -e POSTGRES_PASSWORD=$(POSTGRES_PASSWORD) -d -v $(POSTGRES_VOLUME):/var/lib/postgresql/data -p $(POSTGRES_PORT):5432 postgres

stop_container:
	sudo docker stop $(POSTGRES_CONTAINER_NAME)

remove_container: stop_container
	sudo docker rm $(POSTGRES_CONTAINER_NAME)

cleanup: remove_container
	sudo docker volume rm $(POSTGRES_VOLUME)

# Optional target to show the container logs
logs:
	sudo docker logs $(POSTGRES_CONTAINER_NAME)

# Optional target to access the PostgreSQL container
psql:
	sudo docker exec -it $(POSTGRES_CONTAINER_NAME) psql -U postgres
