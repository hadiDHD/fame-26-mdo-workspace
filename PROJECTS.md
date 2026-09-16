# FAME '26 MDO Workspace Projects & Artifacts Guide

This guide provides a comprehensive breakdown of all 7 pre-loaded Model-Driven Optimization (MDO) example projects included in the `fame-26-mdo-workspace` repository. Each project section includes a problem description, links to official documentation or source repositories, and relative paths to key artifacts (metamodels, transformations, search configurations, inputs, and orchestration code).

---

## Overview of Included Projects

1. [Stack Load-Balancing](#1-stack-load-balancing-atactuwienbigmomotexamplesstack)
2. [Class Responsibility Assignment (CRA)](#2-class-responsibility-assignment-cra-atactuwienbigmomotexamplescra)
3. [Class Modularization / Ecore Partitioning](#3-class-modularization--ecore-partitioning-atactuwienbigmomotexamplesecore)
4. [EMF Refactor](#4-emf-refactor-atactuwienbigmomotexamplesemfrefactor)
5. [Software Module Clustering (JSME Benchmark)](#5-software-module-clustering-jsme-benchmark-atactuwienbigmomotexamplesmodularizationjsme)
6. [Software Architecture Refactoring / Class Diagram Restructuring](#6-software-architecture-refactoring--class-diagram-restructuring-atactuwienbigmomotexamplesrefactoring)
7. [Blockly Maze Modeling & Synthesis](#7-blockly-maze-modeling--synthesis-blockly-maze-modeling)

---

## 1. Stack Load-Balancing (`at.ac.tuwien.big.momot.examples.stack`)

* **Documentation**: [MOMoT Stack Case Study](https://jku-win-se.github.io/MOMoT2/case-studies/stack/)
* **Problem Description**: A classic load-balancing optimization problem where integer values (loads) are shifted across a fixed set of stacks using graph transformation rules (`shiftLeft`, `shiftRight`) to minimize load variance and balance standard deviation across stacks.

### Key Artifacts
* **Metamodel**: [Workspace/at.ac.tuwien.big.momot.examples.stack/model/stack.ecore](Workspace/at.ac.tuwien.big.momot.examples.stack/model/stack.ecore)
* **Henshin Transformations**: [Workspace/at.ac.tuwien.big.momot.examples.stack/model/stack.henshin](Workspace/at.ac.tuwien.big.momot.examples.stack/model/stack.henshin)
* **MOMoT Configuration**: [Workspace/at.ac.tuwien.big.momot.examples.stack/src/at/ac/tuwien/big/momot/examples/stack/StackSearchExample.momot](Workspace/at.ac.tuwien.big.momot.examples.stack/src/at/ac/tuwien/big/momot/examples/stack/StackSearchExample.momot)
* **Java Orchestration**: [Workspace/at.ac.tuwien.big.momot.examples.stack/src/at/ac/tuwien/big/momot/examples/stack/StackOrchestration.java](Workspace/at.ac.tuwien.big.momot.examples.stack/src/at/ac/tuwien/big/momot/examples/stack/StackOrchestration.java)
* **Problem Inputs**: [Workspace/at.ac.tuwien.big.momot.examples.stack/model/input/model/model_five_stacks.xmi](Workspace/at.ac.tuwien.big.momot.examples.stack/model/input/model/model_five_stacks.xmi)

---

## 2. Class Responsibility Assignment (CRA) (`at.ac.tuwien.big.momot.examples.cra`)

* **Documentation**: [MOMoT CRA Case Study](https://jku-win-se.github.io/MOMoT2/case-studies/cra/)
* **Problem Description**: Based on the TTC 2016 Class Responsibility Assignment benchmark. Synthesizes an optimal class diagram architecture by assigning a set of attributes and methods to classes to maximize cohesion and minimize coupling (maximizing the CRA Index metric).

### Key Artifacts
* **Metamodel**: [Workspace/at.ac.tuwien.big.momot.examples.cra/metamodel/architecture.ecore](Workspace/at.ac.tuwien.big.momot.examples.cra/metamodel/architecture.ecore)
* **Henshin Transformations**: [Workspace/at.ac.tuwien.big.momot.examples.cra/transformations/architecture.henshin](Workspace/at.ac.tuwien.big.momot.examples.cra/transformations/architecture.henshin)
* **MOMoT Configuration**: [Workspace/at.ac.tuwien.big.momot.examples.cra/src/icmt/tool/momot/demo/ArchitectureSearch.momot](Workspace/at.ac.tuwien.big.momot.examples.cra/src/icmt/tool/momot/demo/ArchitectureSearch.momot)
* **Java Orchestration & Fitness**: [Workspace/at.ac.tuwien.big.momot.examples.cra/src/icmt/tool/momot/demo/ArchitectureSearchJava.java](Workspace/at.ac.tuwien.big.momot.examples.cra/src/icmt/tool/momot/demo/ArchitectureSearchJava.java) & [FitnessCalculator.java](Workspace/at.ac.tuwien.big.momot.examples.cra/src/icmt/tool/momot/demo/FitnessCalculator.java)
* **Problem Inputs & Solutions**: [Workspace/at.ac.tuwien.big.momot.examples.cra/problem/Cart_Item.xmi](Workspace/at.ac.tuwien.big.momot.examples.cra/problem/Cart_Item.xmi)

---

## 3. Class Modularization / Ecore Partitioning (`at.ac.tuwien.big.momot.examples.ecore`)

* **Documentation**: [MOMoT Generic Modularization Case Study](https://jku-win-se.github.io/MOMoT2/case-studies/generic-modularization/)
* **Problem Description**: Modularizes large Ecore metamodels or class models into well-structured modules. Maximizes cohesion within modules and minimizes coupling between modules while preserving dependency semantics.

### Key Artifacts
* **Metamodel**: [Workspace/at.ac.tuwien.big.momot.examples.ecore/metamodel/Generic_Modularization_MM.ecore](Workspace/at.ac.tuwien.big.momot.examples.ecore/metamodel/Generic_Modularization_MM.ecore)
* **Henshin Transformations**: [Workspace/at.ac.tuwien.big.momot.examples.ecore/operations/modularization_rules.henshin](Workspace/at.ac.tuwien.big.momot.examples.ecore/operations/modularization_rules.henshin)
* **MOMoT Configuration**: [Workspace/at.ac.tuwien.big.momot.examples.ecore/src/at/ac/tuwien/big/momot/examples/ecore/ModularizationQVT.momot](Workspace/at.ac.tuwien.big.momot.examples.ecore/src/at/ac/tuwien/big/momot/examples/ecore/ModularizationQVT.momot)
* **Java Search Orchestration**: [Workspace/at.ac.tuwien.big.momot.examples.ecore/src/at/ac/tuwien/big/momot/examples/ecore/ModularizationSearch.java](Workspace/at.ac.tuwien.big.momot.examples.ecore/src/at/ac/tuwien/big/momot/examples/ecore/ModularizationSearch.java)
* **Metrics & Fitness Calculation**: [Workspace/at.ac.tuwien.big.momot.examples.ecore/src/at/ac/tuwien/big/momot/examples/ecore/fitness/](Workspace/at.ac.tuwien.big.momot.examples.ecore/src/at/ac/tuwien/big/momot/examples/ecore/fitness/)
* **Problem Inputs**: [Workspace/at.ac.tuwien.big.momot.examples.ecore/input/](Workspace/at.ac.tuwien.big.momot.examples.ecore/input/)

---

## 4. EMF Refactor (`at.ac.tuwien.big.momot.examples.emfrefactor`)

* **Documentation**: [MOMoT EMF Refactor Case Study](https://jku-win-se.github.io/MOMoT2/case-studies/emf-refactor/)
* **Problem Description**: Performs multi-objective refactoring of EMF models (Ecore and UML) using transformation units from EMF Refactor. Eliminates anti-patterns and code smells (e.g., speculative generality, empty classes) while minimizing transformation effort and maintaining model behavior.

### Key Artifacts
* **Transformations (Refactorings)**: [Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/transformation/refactorings/](Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/transformation/refactorings/)
* **Transformations (Smells)**: [Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/transformation/smells/](Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/transformation/smells/)
* **MOMoT Configuration**: [Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/src/at/ac/tuwien/big/momot/examples/emfrefactor/emf.momot](Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/src/at/ac/tuwien/big/momot/examples/emfrefactor/emf.momot)
* **Java Search Orchestration**: [Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/src/at/ac/tuwien/big/momot/examples/emfrefactor/EMFRefactoringOrchestration.java](Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/src/at/ac/tuwien/big/momot/examples/emfrefactor/EMFRefactoringOrchestration.java)
* **Launch Configuration**: [Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/EMFRefactorSearch.launch](Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/EMFRefactorSearch.launch)
* **Problem Inputs**: [Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/model/input/](Workspace/at.ac.tuwien.big.momot.examples.emfrefactor/model/input/)

---

## 5. Software Module Clustering (JSME Benchmark) (`at.ac.tuwien.big.momot.examples.modularization.jsme`)

* **Documentation**: [MOMoT Class Modularization Case Study](https://jku-win-se.github.io/MOMoT2/case-studies/modularization/)
* **Problem Description**: Module clustering benchmark based on the JSME dataset. Groups software classes into modules using graph transformations to maximize Modularization Quality (MQ), comparing MOMoT's rule-based search directly against native MOEA formulations.

### Key Artifacts
* **Metamodel**: [Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/data/modularization_jsep.ecore](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/data/modularization_jsep.ecore)
* **Henshin Transformations**: [Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/data/modularization_jsep.henshin](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/data/modularization_jsep.henshin)
* **MOMoT Configurations**: [Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/ModularizationJSEP.momot](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/ModularizationJSEP.momot) & [ModularizationJSEP_Runtime.momot](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/ModularizationJSEP_Runtime.momot)
* **Java Search Runners**: [ModularizationJSEPSearchECA.java](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/ModularizationJSEPSearchECA.java) & [ModularizationJSEPSearchHillClimbing.java](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/ModularizationJSEPSearchHillClimbing.java)
* **Native MOEA Comparison**: [Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/moea/](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/src/at/ac/tuwien/big/momot/examples/modularization/jsme/moea/)
* **Problem Inputs**: [Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/data/input/models/](Workspace/at.ac.tuwien.big.momot.examples.modularization.jsme/data/input/models/)

---

## 6. Software Architecture Refactoring / Class Diagram Restructuring (`at.ac.tuwien.big.momot.examples.refactoring`)

* **Documentation**: [MOMoT Class Diagram Restructuring Case Study](https://jku-win-se.github.io/MOMoT2/case-studies/class-diagram-restructuring/)
* **Problem Description**: Restructures class diagrams by moving attributes/methods up or down inheritance hierarchies, extracting superclasses, and creating generalizations to reduce model complexity and eliminate redundancy.

### Key Artifacts
* **Metamodel**: [Workspace/at.ac.tuwien.big.momot.examples.refactoring/model/refactoring.ecore](Workspace/at.ac.tuwien.big.momot.examples.refactoring/model/refactoring.ecore)
* **Henshin Transformations**: [Workspace/at.ac.tuwien.big.momot.examples.refactoring/model/Refactoring.henshin](Workspace/at.ac.tuwien.big.momot.examples.refactoring/model/Refactoring.henshin)
* **MOMoT Configuration**: [Workspace/at.ac.tuwien.big.momot.examples.refactoring/src/at/ac/tuwien/big/momot/examples/refactoring/Refactoring.momot](Workspace/at.ac.tuwien.big.momot.examples.refactoring/src/at/ac/tuwien/big/momot/examples/refactoring/Refactoring.momot)
* **Java Search Orchestration**: [Workspace/at.ac.tuwien.big.momot.examples.refactoring/src/at/ac/tuwien/big/momot/examples/refactoring/RefactoringSearch.java](Workspace/at.ac.tuwien.big.momot.examples.refactoring/src/at/ac/tuwien/big/momot/examples/refactoring/RefactoringSearch.java) & [RefactoringOrchestration.java](Workspace/at.ac.tuwien.big.momot.examples.refactoring/src/at/ac/tuwien/big/momot/examples/refactoring/RefactoringOrchestration.java)
* **Problem Inputs**: [Workspace/at.ac.tuwien.big.momot.examples.refactoring/model/](Workspace/at.ac.tuwien.big.momot.examples.refactoring/model/)

---

## 7. Blockly Maze Modeling & Synthesis (`blockly-maze-modeling`)

* **Repository**: [jku-win-se/blockly-maze-modeling](https://github.com/jku-win-se/blockly-maze-modeling)
* **Problem Description**: A JavaFX/EMF application replicating the Blockly Games Maze puzzle. Integrates MOMoT search-based optimization to automatically synthesize shortest valid Blockly program models (using move forward, turn, if path, repeat until) for maze levels 1–10 and for user Direct Manipulation target positions.

### Key Artifacts
* **`blocky_model/` (EMF Metamodel)**:
  * Metamodel: [Workspace/blockly-maze-modeling/blocky_model/model/blocky.ecore](Workspace/blockly-maze-modeling/blocky_model/model/blocky.ecore)
* **`blocky_game/` (JavaFX Application & Web Bridge)**:
  * UI & Web Bridge: [Workspace/blockly-maze-modeling/blocky_game/src/blocky_game/BlockyUI.java](Workspace/blockly-maze-modeling/blocky_game/src/blocky_game/BlockyUI.java) & [GameEngine.java](Workspace/blockly-maze-modeling/blocky_game/src/blocky_game/GameEngine.java)
  * Embedded Web Application: [Workspace/blockly-maze-modeling/blocky_game/src/blocky_game/blockly-games-web/](Workspace/blockly-maze-modeling/blocky_game/src/blocky_game/blockly-games-web/)
  * Direct Manipulation Request XMI: [Workspace/blockly-maze-modeling/blocky_game/direct_manipulation_request.xmi](Workspace/blockly-maze-modeling/blocky_game/direct_manipulation_request.xmi)
* **`blocky_momot/` (MOMoT Program Synthesis)**:
  * Input Level XMIs (Levels 1–10 & DM): [Workspace/blockly-maze-modeling/blocky_momot/model/input/](Workspace/blockly-maze-modeling/blocky_momot/model/input/)
  * Simulator & Fitness Evaluation: [Workspace/blockly-maze-modeling/blocky_momot/src/blocky_momot/BlockySimulator.java](Workspace/blockly-maze-modeling/blocky_momot/src/blocky_momot/BlockySimulator.java) & [EnumParamPreprocessFitnessFunction.java](Workspace/blockly-maze-modeling/blocky_momot/src/blocky_momot/EnumParamPreprocessFitnessFunction.java)
  * Empirical Benchmark Study: [Workspace/blockly-maze-modeling/blocky_momot/analysis/BENCHMARK.md](Workspace/blockly-maze-modeling/blocky_momot/analysis/BENCHMARK.md)
