# Blockly Games Maze - Model-Driven Optimization with MOMoT

This directory contains the **Blockly Games Maze** MDO projects for Eclipse and MOMoT:

- **`blocky_model`**: EMF metamodel (`.ecore`) and generated code representing Blockly Maze programs.
- **`blocky_game`**: JavaFX desktop application with an embedded WebView displaying the Blockly Maze UI and synchronized EMF model state.
- **`blocky_momot`**: MOMoT search orchestration (`blocky.momot`) that automatically synthesizes optimal Blockly Maze solutions.

---

## How to Run

### 1. Launch the Environment
Open **[http://localhost:6080](http://localhost:6080)** in your web browser. Eclipse and the noVNC desktop are already running.

### 2. Start the JavaFX Game App
You can launch the Blockly Maze Game in two simple ways:

- **Option A (Eclipse):** In Eclipse, right-click on `blocky_game` or open **Run → Run Configurations...** → select **Blocky Maze** under Java Application, then click **Run**. (Or use the Run button drop-down).
- **Option B (Desktop Menu):** Right-click anywhere on the desktop background (Fluxbox menu) and select **Blocky Maze**.

The game window will open inside the same desktop session (`http://localhost:6080`).

### 3. Play & Model Sync
- Play levels 1 through 10 using the graphical Blockly blocks or text.
- Use **Model** controls in the app to load and save `.xmi` model representations of the maze solution.

### 4. Run MOMoT Search Optimization
- In Eclipse Package Explorer, navigate to `blocky_momot/blocky.momot`.
- Right-click `blocky.momot` and select **Run As → MOMoT**.
- MOMoT will run the search algorithm to discover shortest/optimal block sequences.
- Results are saved to `blocky_momot/output/` (e.g. `objectives.pf`, `solutions.txt`, `models/`).
