$ErrorActionPreference = "Stop"

$Container = "fame-26-mdo-desktop"

if (-not (Get-Command docker -ErrorAction SilentlyContinue)) {
    Write-Error "docker is not installed or not on PATH. Install Docker Desktop, then retry."
}

try {
    docker info 1>$null 2>$null
    if ($LASTEXITCODE -ne 0) {
        throw "daemon down"
    }
} catch {
    Write-Error "Docker daemon is not running. Start Docker Desktop, then retry."
}

$names = docker ps -a --format "{{.Names}}"
if ($names -contains $Container) {
    docker stop $Container
    docker rm $Container
    Write-Host "Stopped and removed $Container."
} else {
    Write-Host "No container named $Container is present."
}
