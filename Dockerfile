FROM rust 

RUN apt-get update && apt-get install -y \
    libx11-dev \
    libxext-dev \
    libxcursor-dev \
    libxi-dev \
    libgl-dev \
    libasound2-dev \
    libudev-dev \
    libsystemd-dev \
    pkg-config \
    curl \
    git \
    vim \
    && apt-get clean

WORKDIR /app
COPY . .

RUN cargo build --release