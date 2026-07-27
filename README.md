# 🚦 Traffic Light Controller using Moore & Mealy Finite State Machines (FSM)

<p align="center">

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![EDA Playground](https://img.shields.io/badge/Simulation-EDA%20Playground-success)
![RTL Design](https://img.shields.io/badge/Domain-RTL%20Design-orange)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

</p>

---

## 📖 Project Overview

This project presents the design and implementation of a **Traffic Light Controller** using **Finite State Machines (FSM)** in **Verilog HDL**. The controller regulates traffic at a four-way intersection by controlling the **North–South** and **East–West** traffic signals.

The project implements and compares two FSM architectures:

- 🚦 **Moore FSM**
- ⚡ **Mealy FSM**

Both implementations were simulated using **EDA Playground**, waveform outputs were analysed using **EPWave**, and the designs were synthesized and evaluated using **Cadence Genus** and **Cadence Innovus**.

---

## 🎯 Objectives

- Design a Traffic Light Controller using Verilog HDL.
- Implement Moore and Mealy FSM architectures.
- Simulate both designs using Verilog testbenches.
- Analyse waveform outputs.
- Compare Moore and Mealy FSM performance.
- Understand differences in state-dependent and input-dependent outputs.

---

## 🛠️ Tools & Technologies Used

| Tool / Technology | Purpose |
|-------------------|---------|
| **Verilog HDL** | Hardware Description Language |
| **EDA Playground** | Writing and simulating Verilog code |
| **EPWave** | Waveform Visualization |
| **Cadence Genus** | Logic Synthesis |
| **Cadence Innovus** | Physical Design |
| **Finite State Machine (FSM)** | Sequential Circuit Design |

---

## ✨ Features

- 🚦 Four-Way Traffic Light Controller
- 🔄 Moore FSM Implementation
- ⚡ Mealy FSM Implementation
- 🧪 Verilog Testbenches
- 📈 Waveform Analysis
- 🏗️ RTL Design
- 📊 Physical Design Flow
- 📋 Performance Comparison

---

## 📂 Repository Structure

```text
Traffic-Light-Controller-FSM/
│
├── Moore_FSM.v
├── Moore_Testbench.v
├── Mealy_FSM.v
├── Mealy_Testbench.v
├── README.md
├── Requirements.md
└── Screenshots/
    ├── Moore FSM State Diagram.png
    ├── Mealy FSM State Diagram.png
    ├── Moore Waveform.png
    ├── Mealy Waveform.png
    ├── Post Synthesis Circuit (Moore).png
    ├── Post Synthesis Circuit (Mealy).png
    ├── Floorplan.png
    ├── Placement.png
    ├── Clock Tree Synthesis.png
    ├── Routing.png
    ├── Area Report.png
    ├── Power Report.png
    ├── Timing Report.png
    └── Final Comparison Graphs.png
```

---

## 🚥 Moore FSM

- Output depends only on the current state.
- Fixed timing for traffic signal transitions.
- Stable and reliable design.
- Simple implementation.

---

## 🚥 Mealy FSM

- Output depends on the current state and input.
- Faster response to changing traffic conditions.
- Adaptive signal behaviour.
- Efficient implementation.

---

# 📸 Project Screenshots

## FSM State Diagrams

<p align="center">
<img src="Screenshots/Moore FSM State Diagram.png" width="48%">
<img src="Screenshots/Mealy FSM State Diagram.png" width="48%">
</p>

---

## Simulation Waveforms

<p align="center">
<img src="Screenshots/Moore Waveform.png" width="48%">
<img src="Screenshots/Mealy Waveform.png" width="48%">
</p>

---

## Post Synthesis Circuits

<p align="center">
<img src="Screenshots/Post Synthesis Circuit (Moore).png" width="48%">
<img src="Screenshots/Post Synthesis Circuit (Mealy).png" width="48%">
</p>

---

## Physical Design Flow

### Floorplan

<p align="center">
<img src="Screenshots/Floorplan.png" width="80%">
</p>

### Placement

<p align="center">
<img src="Screenshots/Placement.png" width="80%">
</p>

### Clock Tree Synthesis

<p align="center">
<img src="Screenshots/Clock Tree Synthesis.png" width="80%">
</p>

### Routing

<p align="center">
<img src="Screenshots/Routing.png" width="80%">
</p>

---

## Performance Reports

### Area Report

<p align="center">
<img src="Screenshots/Area Report.png" width="80%">
</p>

### Power Report

<p align="center">
<img src="Screenshots/Power Report.png" width="80%">
</p>

### Timing Report

<p align="center">
<img src="Screenshots/Timing Report.png" width="80%">
</p>

---

## Final Comparison

<p align="center">
<img src="Screenshots/Final Comparison Graphs.png" width="80%">
</p>

---

## 📊 Moore vs Mealy Comparison

| Feature | Moore FSM | Mealy FSM |
|---------|-----------|-----------|
| Output Dependency | Current State | Current State + Input |
| Response Speed | Moderate | Faster |
| Timing | Fixed | Adaptive |
| Complexity | Low | Moderate |
| Stability | High | High |

---

## 📈 Results

The project successfully demonstrates:

- ✅ Correct traffic signal sequencing
- ✅ Accurate state transitions
- ✅ Successful waveform verification
- ✅ RTL implementation
- ✅ Logic synthesis
- ✅ Physical design implementation
- ✅ Comparative analysis of Moore and Mealy FSM

---

## 🚀 Future Scope

- 🚗 Vehicle Detection Sensors
- 🚶 Pedestrian Crossing Support
- 🚑 Emergency Vehicle Priority
- 💻 FPGA Implementation
- 🤖 Smart Traffic Management System

---

## 👩‍💻 Contributors

- **Anisha Boken**
- **Ananya Kaushik**
- **Anvi Munjal**

---

## ⭐ Support

If you found this project helpful, please consider giving it a ⭐ on GitHub!
