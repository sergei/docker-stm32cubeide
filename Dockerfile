# Container image that runs your code
FROM xanderhendriks/stm32cubeide:13.0

# Add path to arm-none-eabi toolchain
ENV PATH="$PATH:/opt/st/stm32cubeide_1.16.0/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.12.3.rel1.linux64_1.0.200.202406132123/tools/bin"

# Install Ninja
RUN apt-get install ninja-build

# Install CMake
RUN apt-get update && apt-get -y install cmake
