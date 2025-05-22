FROM cubertgmbh/cuvis_base:3.3.3-ubuntu22.04

RUN apt-get update && \
    apt-get install curl gcc g++ make swig doxygen -y && \
	apt-get install python3.10 python3.10-dev python3.10-venv python3-pip -y

WORKDIR /tmp

# download and install cmake
RUN wget https://github.com/Kitware/CMake/releases/download/v3.25.1/cmake-3.25.1-Linux-x86_64.sh -q -O cmake_install.sh && \
	chmod u+x ./cmake_install.sh && \
	mkdir /opt/cmake-3.25.1 && \
	./cmake_install.sh --skip-license --prefix=/opt/cmake-3.25.1 && \
	ln -s /opt/cmake-3.25.1/bin/* /usr/local/bin

ENV CUVIS=/lib/cuvis

WORKDIR /app
