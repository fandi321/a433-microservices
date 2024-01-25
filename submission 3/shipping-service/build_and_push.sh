#!/bin/bash

# 1. Perintah untuk membuat Docker image dari Dockerfile.
# Baris ini menggunakan perintah docker build untuk membuat Docker image 
# dari Dockerfile yang terdapat di direktori saat ini (.). 
# Image ini kemudian diberi tag shipping-service:latest.
docker build -t shipping-service:latest .

# ubah tag dan nama, sesuai penamaan github package
docker tag shipping-service:latest fandi23/shipping-service:latest 
# karena (Personal Access Token) bersifat rahasia, 
# pastikan untuk menjalankan code dibawah untuk menyimpan PAT dalam ENV

docker login ghcr.io --username fandi23 --password-stdin

# 3. Mengunggah image ke docker hub
docker push fandi23/shipping-service:latest
