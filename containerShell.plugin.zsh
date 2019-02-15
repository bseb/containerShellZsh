dockerShell(){
    dockerImage=$1
    if [ -n $2 ]; then
        shift 1
    fi
    containerCommand="bin/bash ${@}"
    docker run -it --rm  --workdir /app  -v $(pwd):/app $dockerImage $containerCommand
}
