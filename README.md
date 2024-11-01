# stm32cubecmake

[stm32cubecmake](https://github.com/xanderhendriks/docker-stm32cubeide): the STM32 Cube Integrated Development
Environment docker container with support of Cmake

## Build

To create the image `spodshivalov/stm32cubecmake`, execute the following command in the
`docker-stm32cubecmake` folder:

    docker build -t spodshivalov/stm32cubecmake .

You can now tag the repo and push the changes to the docker hub:

    docker build -t spodshivalov/stm32cubecmake:1.0 .
    docker push spodshivalov/stm32cubecmake:1.0

## Run

    $ docker pull spodshivalov/stm32cubecmake

    $ docker run -it --name stm32cubecmake \
        -v ~/github/repo:/workspace \
        spodshivalov/stm32cubecmake

## STM32 Cube IDE Versions

The major.minor version number indicates the version of the underlying [STM32CubeIde docker image](https://hub.docker.com/repository/docker/xanderhendriks/stm32cubeide) being used. The bug fix number shows updates to this build action only:
- 1.0: STM32 Cube IDE: 1.4.0
- 2.0: STM32 Cube IDE: 1.5.0
- 3.0: STM32 Cube IDE: 1.6.0
- 4.0.2: STM32 Cube IDE: 1.7.0
- 5.0: STM32 Cube IDE: 1.8.0
- 6.0: STM32 Cube IDE: 1.9.0
- 7.0: STM32 Cube IDE: 1.10.1
- 8.0: STM32 Cube IDE: 1.11.2
- 9.0: STM32 Cube IDE: 1.12.1
- 10.0: STM32 Cube IDE: 1.13.1
- 11.0: STM32 Cube IDE: 1.14.0
- 12.0: STM32 Cube IDE: 1.15.0
- 13.0: STM32 Cube IDE: 1.16.0
- 13.1: STM32 Cube IDE: 1.16.0 - Reduced size

NOTE: Bug fixes are only implemented for older versions if requested.

## Usage
To build your application from the command line execute the following commands:

    cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G Ninja  -S /workspace/ -B /workspace/docker-cmake-build-debug
    cmake --build /workspace/docker-cmake-build-debug --target all
