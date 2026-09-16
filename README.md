# FAME '26 MDO Workspace

Clone-and-run host workspace for the FAME '26 Model-Driven Optimization Eclipse desktop. Pulls the published image and bind-mounts this repo's `Workspace/` into the container so your projects stay on the host.

---

## Prerequisite

[Docker](https://docs.docker.com/get-docker/) must be installed and running (Docker Desktop on Windows/macOS, or Docker Engine on Linux).

The image is **multi-arch** (`linux/amd64` and `linux/arm64`). On Apple Silicon, Docker Desktop pulls the native ARM variant automatically — no `--platform` flag is needed.

---

## Quick Start

### macOS / Linux

```bash
git clone https://github.com/hadiDHD/fame-26-mdo-workspace.git
cd fame-26-mdo-workspace
./run.sh
```

### Windows (PowerShell)

```powershell
git clone https://github.com/hadiDHD/fame-26-mdo-workspace.git
cd fame-26-mdo-workspace
powershell -ExecutionPolicy Bypass -File .\run.ps1
```

Or, if your execution policy already allows local scripts: `.\run.ps1`

Open **[http://localhost:6080](http://localhost:6080)**. Eclipse starts in the browser with the mounted workspace.

The scripts resolve paths from their own location, so you can invoke them from any working directory.

---

## Pre-loaded Example Projects

The workspace includes standalone benchmark and example MDO projects inside `./Workspace/`:
- `at.ac.tuwien.big.momot.examples.cra`: Class-Responsibility Assignment optimization.
- `at.ac.tuwien.big.momot.examples.ecore`: Metamodel modularization optimization.
- `at.ac.tuwien.big.momot.examples.emfrefactor`: EMF Refactor transformation optimization.
- `at.ac.tuwien.big.momot.examples.modularization.jsme`: Software module clustering (JSME benchmark).
- `at.ac.tuwien.big.momot.examples.refactoring`: Software architecture refactoring optimization.
- `at.ac.tuwien.big.momot.examples.stack`: Stack load-balancing problem.
- `blockly-maze-modeling`: Blockly Games Maze application and MOMoT synthesis (`blocky_model`, `blocky_game`, `blocky_momot`).

For problem descriptions, official website links, and artifact locations for each project, see the **[Projects & Artifacts Guide](PROJECTS.md)**.

---

## Adding projects

Drop any custom project folder into `Workspace/`, then restart the container (`./run.sh` / `.\run.ps1`). Eclipse automatically detects the folder and opens it in Package Explorer.

Edits inside Eclipse are saved to `./Workspace` on your host machine, and host-side edits show up in the container.

---

## Stop

```bash
./stop.sh          # macOS / Linux
```

```powershell
.\stop.ps1         # Windows PowerShell
```

---

## Docker Compose (optional)

The documented path is `run.sh` / `run.ps1`. Compose is equivalent if you prefer it:

```bash
docker compose up -d
```

```bash
docker compose down
```

---

## Image source

The container image is `ghcr.io/hadidhd/fame-26-mdo:latest`.
