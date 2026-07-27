# 🚦 Traffic Light Controller using Moore & Mealy FSM

<p align="center">

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![RTL Design](https://img.shields.io/badge/Domain-RTL%20Design-success)
![FSM](https://img.shields.io/badge/FSM-Moore%20%26%20Mealy-orange)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

</p>

---

## 📖 Project Overview

This project implements a **Traffic Light Controller** using **Finite State Machines (FSM)** in **Verilog HDL**. Two FSM models—**Moore FSM** and **Mealy FSM**—are designed, simulated, and compared to understand their behavior, timing characteristics, and implementation differences.

The controller manages traffic at a four-way intersection by controlling the **North–South** and **East–West** traffic signals while ensuring safe and efficient signal transitions.

---

## 🎯 Objectives

- Design a Traffic Light Controller using Verilog HDL.
- Implement both Moore and Mealy FSM architectures.
- Simulate the designs using testbenches.
- Analyse waveform outputs.
- Compare the performance and behavior of both FSM models.
- Understand the differences between fixed and adaptive state machines.

---

## 🛠️ Tools & Technologies Used

| Tool / Technology | Purpose |
|-------------------|---------|
| **Verilog HDL** | Hardware Description Language |
| **EDA Playground** | Writing and simulating Verilog code |
| **EPWave** | Waveform visualization |
| **Cadence Genus** | Logic synthesis |
| **Cadence Innovus** | Physical design implementation |
| **Finite State Machine (FSM)** | Sequential circuit design |

---

## ✨ Features

- 🚦 Traffic Light Controller for a four-way intersection
- 🔄 Moore FSM implementation
- ⚡ Mealy FSM implementation
- 🧪 Verilog testbenches
- 📈 Waveform analysis using EPWave
- 📊 Performance comparison of Moore and Mealy FSM
- 🏗️ RTL Design and Physical Design Flow

---

## 📂 Repository Structure

```text
Traffic-Light-Controller-FSM/
│
├── Moore_FSM.v
├── Mealy_FSM.v
├── Moore_Testbench.v
├── Mealy_Testbench.v
├── README.md
├── Requirements.md
└── Screenshots/
```

---

# 🚥 Moore FSM

- Outputs depend only on the current state.
- Fixed timing for traffic signal transitions.
- Stable and glitch-free operation.
- Simple and reliable implementation.

---

# 🚥 Mealy FSM

- Outputs depend on both the current state and sensor inputs.
- Adaptive traffic signal timing.
- Faster response to changing traffic conditions.
- More efficient in dynamic situations.

---

# 📊 Simulation Results

The project successfully demonstrates:

- ✅ Correct traffic signal sequencing
- ✅ State transitions
- ✅ Moore FSM simulation
- ✅ Mealy FSM simulation
- ✅ Waveform verification
- ✅ RTL implementation
- ✅ Physical Design Flow
- ✅ Comparative analysis between Moore and Mealy FSM

---

# 📸 Project Screenshots

## Moore FSM State Diagram

<p align="center">
<img src="Screenshots/Moore_State_Diagram.png" width="800">
</p>

---

## Mealy FSM State Diagram

<p align="center">
<img src="Screenshots/Mealy_State_Diagram.png" width="800">
</p>

---

## Moore FSM Waveform

<p align="center">
<img src="Screenshots/Moore_Waveform.png" width="800">
</p>

---

## Mealy FSM Waveform

<p align="center">
<img src="Screenshots/Mealy_Waveform.png" width="800">
</p>

---

## Physical Design

### Floorplan

<p align="center">
<img src="Screenshots/Floorplan.png" width="800">
</p>

### Placement

<p align="center">
<img src="Screenshots/Placement.png" width="800">
</p>

### Clock Tree

<p align="center">
<img src="Screenshots/Clock_Tree.png" width="800">
</p>

### Routing

<p align="center">
<img src="Screenshots/Routing.png" width="800">
</p>

---

## 📈 Performance Reports

### Area Report

<p align="center">
<img src="Screenshots/Area_Report.png" width="800">
</p>

### Power Report

<p align="center">
<img src="Screenshots/Power_Report.png" width="800">
</p>

### Timing Report

<p align="center">
<img src="Screenshots/Timing_Report.png" width="800">
</p>

---

# 📋 Moore vs Mealy Comparison

| Feature | Moore FSM | Mealy FSM |
|---------|-----------|-----------|
| Output Dependency | Current State | Current State + Inputs |
| Timing | Fixed | Adaptive |
| Complexity | Low | Moderate |
| Response Speed | Moderate | Fast |
| Stability | High | High |

---

# 🚀 Future Enhancements

- 🚗 Vehicle Detection Sensors
- 🚑 Emergency Vehicle Priority
- 🚶 Pedestrian Crossing Support
- 💻 FPGA Implementation
- 🤖 AI-based Smart Traffic Management

---

## ⭐ Support

If you found this project helpful, consider giving it a ⭐ on GitHub!
