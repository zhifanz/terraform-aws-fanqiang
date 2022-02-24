version: "3.9"
services:

  shadowsocks:
    image: ghcr.io/shadowsocks/ssserver-rust:v1.11.2
    entrypoint: [ "ssserver", "-c", "/etc/shadowsocks-rust/config.json" ]
    ports:
      - "${port}:${port}"
    volumes:
      - ./config.json:/etc/shadowsocks-rust/config.json
    restart: always