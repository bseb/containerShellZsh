dockerShell(){
    dockerImage=$1
    docker run -it --rm  --workdir /app  -v $(pwd):/app $dockerImage bash
}
