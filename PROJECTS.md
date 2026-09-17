# FAME '26 MDO Workspace Projects & Artifacts Guide

This document describes all pre-loaded MDO example projects in the `./Workspace` directory, providing problem descriptions, links to official documentation/repositories, and exact relative file paths to key project artifacts (metamodels, transformations, search configurations, problem inputs, and java code).

---

## 1. Stack Load-Balancing Optimization (`at.ac.tuwien.big.momot.examples.stack`)

* **Documentation / Website**: [MOMoT Stack Case Study](https://jku-win-se.github.io/MOMoT2/case-studies/stack/)
* **Problem Description**: A classic load-balancing optimization problem where integer loads are distributed across a fixed set of stacks. Graph transformation rules (`shiftLeft`, `shiftRight`) move loads between adjacent stacks to minimize total load variance and achieve an even load distribution.

### Key Artifact Locations
* **Metamodel**: `[Workspace/at.ac.tuwien.big.momot.examples.stack/model/stack.ecore](Workspace/at.ac.tuwien.big.momot.examples.stack/model/stack.ecore)`
* **Henshin Transformations**: `[Workspace/at.ac.tuwien.big.momot.examples.stack/transformations/stack.henshin](Workspace/at.ac.tuwien.big.momot.examples.stack/transformations/stack.henshin)`
* **MOMoT DSL Configuration**: `[Workspace/at.ac.tuwien.big.momot.examples.stack/src/at/ac/tuwien.big.momot.examples.stack/StackSearchExample.momot](Workspace/at.ac.tuwien.big.momot.examples.stack/src/at/ac/tuwien/big/momot/examples/stack/StackSearchExample.momot)`
* **Java Search Orchestration**: `[Workspace/at.ac.tuwien.big.momot.examples.stack/src/at/ac/tuwien/big/momot/examples/stack/StackOrchestration.java](Workspace/at.ac.tuwien.big.momot.examples.stack/src/at/ac/tuwien/big/momot/examples/stack/StackOrchestration.java)`
* **Problem Input Instances**: `[Workspace/at.ac.tuwien.big.momot.examples.stack/input/input_five_stacks.xmi](Workspace/at.ac.tuwien.big.momot.examples.stack/input/input_five_stacks.xmi)`

---

## 2. Class Responsibility Assignment (CRA) (`at.ac.tuwien.big.momot.examples.cra`)

* **Documentation / Website**: [MOMoT CRA Case Study](https://jku-win-se.github.io/MOMoT2/case-studies/cra/)
* **Problem Description**: Based on the TTC 2016 Class Responsibility Assignment benchmark. Synthesizes an optimal class diagram architecture from a flat set of software features (attributes and methods) by assigning them to classes to maximize cohesion and minimize coupling (maximizing the CRA Index metric).

### Key Artifact Locations
* **Metamodel**: `[Workspace/at.ac.tuwien.big.momot.examples.cra/metamodel/architecture.ecore](Workspace/at.ac.tuwien.big.momot.examples.cra/metamodel/architecture.ecore)`
* **Henshin Transformations**: `[Workspace/at.ac.tuwien.big.momot.examples.cra/transformations/cra.henshin](Workspace/at.ac.tuwien.big.momot.examples.cra/transformations/cra.henshin)`
* **MOMoT DSL Configuration**: `[Workspace/at.ac.tuwien.big.momot.examples.cra/src/icmt/tool/momot/demo/ArchitectureSearch.momot](Workspace/at.ac.tuwien.big.momot.examples.cra/src/icmt/tool/momot/demo/ArchitectureSearch.momot)`
* **Java Execution & Fitness**:
  * Search Runner: `[Workspace/at.ac.tuwien.big.momot.examples.cra/src/icmt/tool/momot/demo/ArchitectureSearchJava.java](Workspace/at.ac.tuwien.big.momot.examples.cra/src/icmt/tool/momot/demo/ArchitectureSearchJava.java)`
  * Fitness Calculator: `[Workspace/at.ac.tuwien.big.momot.examples.cra/src/icmt/tool/momot/demo/FitnessCalculator.java](Workspace/at.ac.tuwien.big.momot.examples.cra/src/icmt/tool/momot/demo/FitnessCalculator.java)`
* **Problem Input Models**: `[Workspace/at.ac.tuwien.big.momot.examples.cra/problem/Cart_Item.xmi](Workspace/at.ac.tuwien.big.momot.examples.cra/problem/Cart_Item.xmi)`

---

## 3. Metamodel Modularization (`at.ac.tuwien.big.momot.examples.ecore`)

* **Documentation / Website**: [MOMoT Generic Modularization Case Study](https://jku-win-se.github.io/MOMoT2/case-studies/generic-modularization/)
* **Problem Description**: Partitions large Ecore metamodels into distinct modules or packages. The multi-objective optimization maximizes cohesion within individual modules while minimizing coupling across module boundaries, guided by semantic distance metrics (LCS / Cosine) calculated from element vocabulary.

### Key Artifact Locations
* **Metamodel**: `[Workspace/at.ac.tuwien.big.momot.examples.ecore/model/modularization.ecore](Workspace/at.ac.tuwien.big.momot.examples.ecore/model/modularization.ecore)`
* **Henshin Transformations**: `[Workspace/at.ac.tuwien.big.momot.examples.ecore/transformations/modularization.henshin](Workspace/at.ac.tuwien.big.momot.examples.ecore/transformations/modularization.henshin)`
* **MOMoT DSL Configuration**: `[Workspace/at.ac.tuwien.big.momot.examples.ecore/src/at/ac/tuwien/big/momot/examples/ecore/ModularizationQVT.momot](Workspace/at.ac.tuwien.big.momot.examples.ecore/src/at/ac/tuwien/big/momot/examples/ecore/ModularizationQVT.momot)`
* **Java Search & Fitness**:
  * Orchestration: `[Workspace/at.ac.tuwien.big.momot.examples.ecore/src/at/ac/tuwien/big/momot/examples/ecore/ModularizationSearch.java](Workspace/at.ac.tuwien.big.momot.examples.ecore/src/at/ac/tuwien/big/momot/examples/ecore/ModularizationSearch.java)`
  * Fitness Metrics: `[Workspace/at.ac.tuwien.big.momot.examples.ecore/src/at/ac/tuwien/big/momot/examples/ecore/fitness/ModularizationFitnessFunction.java](Workspace/at.ac.tuwien.big.momot.examples.ecore/src/at/ac/tuwien/big/momot/examples/ecore/fitness/ModularizationFitnessFunction.java)`
* **Problem Input Metamodels**: `[Workspace/at.ac.tuwien.big.momot.examples.ecore/input/](Workspace/at.ac.tuwien.big.momot.examples.ecore/input/)`

---

## 4. EMF Refactor Anti-Pattern Removal (`at.ac.tuwien.big.momot.examples.emfrefactor`)

* **Documentation / Website**: [MOMoT EMF Refactor Case Study](https://jku-win-se.github.io/MOMoT2/case-studies/emf-refactor/)
* **Problem Description**: Automated multi-objective refactoring for EMF models (Ecore and UML). Utilizes EMF Refactor transformation units to eliminate anti-patterns/smells (e.g., speculative generality, unused or empty elements) while minimizing transformation sequence length.

### Key Artifact Locations
* **Henshin Refactoring Transformations**: `[Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/transformation/refactorings/](Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/transformation/refactorings/)`
* **Henshin Smell Detection Rules**: `[Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/transformation/smells/](Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/transformation/smells/)`
* **MOMoT DSL Configuration**: `[Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/src/at/ac/tuwien/big/momot/examples/emfrefactor/emf.momot](Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/src/at/ac/tuwien/big/momot/examples/emfrefactor/emf.momot)`
* **Java Search Orchestration**: `[Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/src/at/ac/tuwien/big/momot/examples/emfrefactor/EMFRefactoringOrchestration.java](Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/src/at/ac/tuwien/big/momot/examples/emfrefactor/EMFRefactoringOrchestration.java)`
* **Eclipse Launch Configuration**: `[Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/EMFRefactorSearch.launch](Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/EMFRefactorSearch.launch)`
* **Problem Input Models**: `[Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/model/input/](Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/model/input/)`

---

## 5. Software Module Clustering (JSME Benchmark) (`at.ac.tuwien.big.momot.examples.modularization.jsme`)

* **Documentation / Website**: [MOMoT Class Modularization Case Study](https://jku-win-se.github.io/MOMoT2/case-studies/modularization/)
* **Problem Description**: Class-level software module clustering based on the JSME benchmark dataset. Groups classes into modules using graph transformations to optimize Modularization Quality (MQ). Compares MOMoT rule-based transformation search against native MOEA problem implementations.

### Key Artifact Locations
* **Metamodel**: `[Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/model/modularization.ecore](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/model/modularization.ecore)`
* **Henshin Transformations**: `[Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/transformations/modularization.henshin](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/transformations/modularization.henshin)`
* **MOMoT DSL Configurations**:
  * Standard: `[Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/ModularizationJSEP.momot](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/ModularizationJSEP.momot)`
  * Runtime Search: `[Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/ModularizationJSEP_Runtime.momot](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/ModularizationJSEP_Runtime.momot)`
* **Java Search Runners**:
  * Evolutionary (ECA): `[ModularizationJSEPSearchECA.java](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/ModularizationJSEPSearchECA.java)`
  * Hill Climbing: `[ModularizationJSEPSearchHillClimbing.java](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/ModularizationJSEPSearchHillClimbing.java)`
* **Native MOEA Implementations**: `[Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/moea/](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/moea/)`
* **Problem Input Instances**: `[Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/model/input/](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/model/input/)`

---

## 6. Software Architecture Refactoring (`at.ac.tuwien.big.momot.examples.refactoring`)

* **Documentation / Website**: [MOMoT Class Diagram Restructuring Case Study](https://jku-win-se.github.io/MOMoT2/case-studies/class-diagram-restructuring/)
* **Problem Description**: Restructures object-oriented class diagrams by pulling up or pushing down attributes and properties across inheritance hierarchies, creating generalizations, and extracting common superclasses to simplify design and maximize reusability.

### Key Artifact Locations
* **Metamodel**: `[Workspace/at.ac.tuwien.big.momot.examples.refactoring/model/refactoring.ecore](Workspace/at.ac.tuwien.big.momot.examples.refactoring/model/refactoring.ecore)`
* **Henshin Transformations**: `[Workspace/at.ac.tuwien.big.momot.examples.refactoring/transformations/refactoring.henshin](Workspace/at.ac.tuwien.big.momot.examples.refactoring/transformations/refactoring.henshin)`
* **MOMoT DSL Configuration**: `[Workspace/at.ac.tuwien.big.momot.examples.refactoring/src/at/ac/tuwien/big/momot/examples/refactoring/Refactoring.momot](Workspace/at.ac.tuwien.big.momot.examples.refactoring/src/at/ac/tuwien/big/momot/examples/refactoring/Refactoring.momot)`
* **Java Search Orchestration**: `[Workspace/at.ac.tuwien.big.momot.examples.refactoring/src/at/ac/tuwien/big/momot/examples/refactoring/RefactoringSearch.java](Workspace/at.ac.tuwien.big.momot.examples.refactoring/src/at/ac/tuwien/big/momot/examples/refactoring/RefactoringSearch.java)`
* **Problem Input Diagrams**: `[Workspace/at.ac.tuwien.big.momot.examples.refactoring/model/input/](Workspace/at.ac.tuwien.big.momot.examples.refactoring/model/input/)`

---

## 7. Blockly Maze Program Synthesis (`blockly-maze-modeling`)

* **Repository Link**: [jku-win-se/blockly-maze-modeling](https://github.com/jku-win-se/blockly-maze-modeling)
* **Problem Description**: A JavaFX and EMF application recreating the Blockly Games Maze puzzle. Employs MOMoT multi-objective optimization to synthesize minimal, Pareto-optimal Blockly program models (using `move_forward`, `turn`, `if_path`, `repeat_until`) for navigation across maze levels 1–10 and user-teleported Direct Manipulation target cells.

### Key Artifact Locations
* **EMF Domain Metamodel (`blocky_model`)**:
  * Ecore Metamodel: `[Workspace/blockly-maze-modeling/blocky_model/model/blocky.ecore](Workspace/blockly-maze-modeling/blocky_model/model/blocky.ecore)`
  * Generated Java Classes: `[Workspace/blockly-maze-modeling/blocky_model/src-gen/blocky/](Workspace/blockly-maze-modeling/blocky_model/src-gen/blocky/)`
* **JavaFX Application & Engine (`blocky_game`)**:
  * User Interface & JSBridge: `[Workspace/blockly-maze-modeling/blocky_game/src/blocky_game/BlockyUI.java](Workspace/blockly-maze-modeling/blocky_game/src/blocky_game/BlockyUI.java)`
  * Game Engine: `[Workspace/blockly-maze-modeling/blocky_game/src/blocky_game/GameEngine.java](Workspace/blockly-maze-modeling/blocky_game/src/blocky_game/GameEngine.java)`
  * Direct Manipulation Request XMI: `[Workspace/blockly-maze-modeling/blocky_game/direct_manipulation_request.xmi](Workspace/blockly-maze-modeling/blocky_game/direct_manipulation_request.xmi)`
  * Embedded Web UI: `[Workspace/blockly-maze-modeling/blocky_game/src/blocky_game/blockly-games-web/](Workspace/blockly-maze-modeling/blocky_game/src/blocky_game/blockly-games-web/)`
* **MOMoT Program Synthesis (`blocky_momot`)**:
  * Input Level Models (1.xmi – 10.xmi): `[Workspace/blockly-maze-modeling/blocky_momot/model/input/](Workspace/blockly-maze-modeling/blocky_momot/model/input/)`
  * Headless Simulator: `[Workspace/blockly-maze-modeling/blocky_momot/src/blocky_momot/BlockySimulator.java](Workspace/blockly-maze-modeling/blocky_momot/src/blocky_momot/BlockySimulator.java)`
  * Preprocessing Fitness Evaluator: `[Workspace/blockly-maze-modeling/blocky_momot/src/blocky_momot/EnumParamPreprocessFitnessFunction.java](Workspace/blockly-maze-modeling/blocky_momot/src/blocky_momot/EnumParamPreprocessFitnessFunction.java)`
  * Empirical Benchmark & Evaluation: `[Workspace/blockly-maze-modeling/blocky_momot/analysis/BENCHMARK.md](Workspace/blockly-maze-modeling/blocky_momot/analysis/BENCHMARK.md)`
