#docker run
docker run -it --rm --gpus all -p 8888:8888 -v $(pwd):/app   myimage 
#     -v $(pwd):/app  -v my-vscode-settings:/app/.vscode -v my-vscode-extensions:/home/user/.vscode/extensions  myimage 