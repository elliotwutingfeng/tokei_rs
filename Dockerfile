FROM rust:slim
RUN apt-get update && apt-get -y install git
WORKDIR /app
RUN rustup default nightly
ADD . /app
RUN cargo build --release
