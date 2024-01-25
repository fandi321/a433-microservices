#!/bin/bash

# 1. Perintah untuk membuat Docker image dari Dockerfile.
# Baris ini menggunakan perintah docker build untuk membuat Docker image 
# dari Dockerfile yang terdapat di direktori saat ini (.). 
# Image ini kemudian diberi tag order-service:latest.
docker build -t order-service:latest .

# ubah tag dan nama, sesuai penamaan github package
docker tag order-service:latest fandi23/order-service:latest 
# karena (Personal Access Token) bersifat rahasia, 
# pastikan untuk menjalankan code dibawah untuk menyimpan PAT dalam ENV
# export PAT_GITHUB=personal_access_token
# 2. Login to docker hub
docker login --username fandi23 --password-stdin

# 3. Mengunggah image ke docker hub
docker push fandi23/order-service:latest
