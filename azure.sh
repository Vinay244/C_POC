#!/bin/bash
azcopy copy hello.c "https://vinaystorage108.blob.core.windows.net/newone/hello.c?sp=racwd&st=2024-02-26T18:46:16Z&se=2024-02-29T02:46:16Z&spr=https&sv=2022-11-02&sr=c&sig=6VAD77nHGhNo3UfhjaipPSDTsvm0JWz4M13rLrbe0%2Bk%3D"
# Pull the Azure CLI Docker image
#docker pull mcr.microsoft.com/azure-cli
# Run azcopy command within the Docker container
#docker run --rm -v /home/vinay:/data mcr.microsoft.com/azure-cli azcopy copy /data/vinay.c "https://vinaystorage108.blob.core.windows.net/newone/vinay.c?sp=racwd&st=2024-02-26T18:46:16Z&se=2024-02-29T02:46:16Z&spr=https&sv=2022-11-02&sr=c&sig=6VAD77nHGhNo3UfhjaipPSDTsvm0JWz4M13rLrbe0%2Bk%3D"
