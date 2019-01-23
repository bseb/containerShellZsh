dockerShell(){
    dockerImage=$1
    docker run -it --workdir /app  -v $(pwd):/app $dockerImage bash
}
