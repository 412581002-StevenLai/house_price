#docker run
#docker run -it --rm --gpus all -p 8888:8888 -v $(pwd):/app  \
#don't rm the container after finished
docker run \
    -d \
    --gpus all \
    -p 8888:8888 \
    -v $(pwd):/app  \
    -v vscode-extensions:/root/.vscode-server/extensions  myimage 
#     -v $(pwd):/app  -v my-vscode-settings:/app/.vscode -v my-vscode-extensions:/home/user/.vscode/extensions  myimage 
#     -v $(pwd):/app  -v dkr-vscode-extensions:/root/.vscode-server/extensions  myimage 