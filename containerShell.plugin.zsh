dockerShell(){
    dockerImage=$1
    if [ -z $2 ]; then
        containerCommand="bash"
    else
        shift 1
        containerCommand=$(echo $@)
    fi
    docker run -it --rm  --workdir /app  -v $(pwd):/app $dockerImage $(echo $containerCommand) # this is weird, but the only way it would take a command with a space
}
