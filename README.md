# 🚦 Traffic Light Controller using Moore & Mealy FSM

<p align="center">

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![RTL Design](https://img.shields.io/badge/Domain-RTL%20Design-success)
![FSM](https://img.shields.io/badge/FSM-Moore%20%26%20Mealy-orange)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

</p>

---

## 📌 Project Overview

This project presents the design and implementation of a **Traffic Light Controller** using **Finite State Machines (FSM)** in **Verilog HDL**.

Two FSM architectures are implemented and compared:

- 🔹 Moore FSM
- 🔹 Mealy FSM

The controller manages traffic at a four-way intersection by controlling the North–South and East–West traffic signals. Both implementations are simulated and analysed to understand their behaviour, timing characteristics and efficiency.

---

## 🎯 Objectives

- Design a Traffic Light Controller using Verilog HDL.
- Implement Moore FSM.
- Implement Mealy FSM.
- Simulate both designs using testbenches.
- Compare the behaviour of Moore and Mealy FSM.
- Analyse timing and waveform outputs.

---

## ⚙️ Technologies Used

| Technology | Purpose |
|------------|---------|
| Verilog HDL | Hardware Description Language |
| EPWave | Waveform Simulation |
| Cadence Genus | Logic Synthesis |
| Cadence Innovus | Physical Design |
| FSM | Sequential Circuit Design |

---

## 📂 Repository Structure

```text
Traffic-Light-Controller-FSM
│
├── Moore_FSM.v
├── Mealy_FSM.v
├── Moore_Testbench.v
├── Mealy_Testbench.v
├── Requirements.md
├── README.md
└── Screenshots
```

---

## 🚥 Moore FSM

✔ Output depends only on the current state.

✔ Fixed timing for traffic signals.

✔ Stable and glitch-free outputs.

---

## 🚥 Mealy FSM

✔ Output depends on both the current state and sensor inputs.

✔ Adaptive signal timing.

✔ Faster response to traffic conditions.

---

## 📊 Simulation Results

The implementation successfully demonstrates:

- ✔ Correct traffic signal sequencing
- ✔ FSM state transitions
- ✔ Waveform verification
- ✔ Moore vs Mealy comparison
- ✔ RTL implementation
- ✔ Physical design analysis

---

## 📸 Project Screenshots

### Moore FSM State Diagram

> *(Insert image here)*

---

### Mealy FSM State Diagram

> *(Insert image here)*

---

### Moore Waveform

> *(Insert image here)*

---

### Mealy Waveform

> *(Insert image here)*

---

### Physical Design

> Floorplan

> Placement

> Clock Tree

> Routing

---

### Performance Reports

- Area Report
- Timing Report
- Power Report

---

## 🔄 Comparison

| Feature | Moore FSM | Mealy FSM |
|----------|-----------|-----------|
| Output | State Dependent | State + Input Dependent |
| Timing | Fixed | Adaptive |
| Complexity | Low | Moderate |
| Response Speed | Moderate | Fast |
| Stability | High | High |

---

## 🚀 Future Enhancements

- Vehicle Detection Sensors
- Emergency Vehicle Priority
- Pedestrian Crossing System
- FPGA Implementation
- Smart Traffic Management

---

⭐ If you found this project useful, consider giving it a star.
