$ErrorActionPreference = "Stop"

$Root = $PSScriptRoot
$Image = "ghcr.io/hadidhd/fame-26-mdo:latest"
$Container = "fame-26-mdo-desktop"
$Workspace = Join-Path $Root "Workspace"

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

if (-not (Test-Path -LiteralPath $Workspace -PathType Container)) {
    Write-Error "Workspace directory not found at $Workspace"
}

Write-Host "Pulling $Image..."
docker pull $Image

Write-Host "Removing previous container if present..."
$prevPref = $ErrorActionPreference
$ErrorActionPreference = "Continue"
docker rm -f $Container 1>$null 2>$null
$ErrorActionPreference = $prevPref

Write-Host "Starting $Container..."
docker run -d `
    --name $Container `
    -p 6080:6080 `
    -p 5901:5901 `
    -v "${Workspace}:/workspace" `
    $Image

Write-Host ""
Write-Host "Eclipse is starting. Open: http://localhost:6080"
