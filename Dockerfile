FROM cubertgmbh/cuvis_base:3.3.3-ubuntu22.04

RUN apt-get update && \
    apt-get install doxygen swig -y && \
	apt-get install python3.10 python3.10-dev python3.10-venv -y

WORKDIR /app
