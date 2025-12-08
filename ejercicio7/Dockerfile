version: "3.9"

services:
  api:
    build:
      context: ./api
      dockerfile: Dockerfile
    ports:
      - "8000:8000"

  frontend:
    build:
      context: ./frontend
      dockerfile: Dockerfile
    ports:
      - "3000:3000"