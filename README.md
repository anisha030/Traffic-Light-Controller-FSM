<h1 align="center">🚦 Traffic Light Controller</h1>

<p align="center">
<b>Moore FSM ⇄ Mealy FSM</b><br>
Design and implementation of a Traffic Light Controller using Verilog HDL.
</p>

<p align="center">

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![EDA Playground](https://img.shields.io/badge/Simulation-EDA%20Playground-success)
![RTL Design](https://img.shields.io/badge/Domain-RTL%20Design-orange)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

</p>

---

## 📖 Project Overview

This project implements a **Traffic Light Controller** using **Moore** and **Mealy Finite State Machines (FSM)** in **Verilog HDL**. The controller manages traffic at a four-way intersection by controlling the **North–South** and **East–West** traffic signals.

The project covers the complete hardware design workflow, including **RTL design, simulation, waveform analysis, logic synthesis, physical design, and performance comparison**.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| Verilog HDL | Hardware Description Language |
| EDA Playground | Verilog Coding & Simulation |
| EPWave | Waveform Viewer |
| Cadence Genus | Logic Synthesis |
| Cadence Innovus | Physical Design |

---

## ✨ Features

- 🚦 Four-Way Traffic Light Controller
- 🔄 Moore FSM Implementation
- ⚡ Mealy FSM Implementation
- 🧪 Verilog Testbenches
- 📈 Waveform Analysis
- 🏗️ RTL Design & Physical Design
- 📊 Performance Comparison

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
```

---

## 🚥 Moore vs Mealy FSM

| Feature | Moore FSM | Mealy FSM |
|----------|-----------|-----------|
| Output | Depends only on the current state | Depends on the current state and inputs |
| Response | Stable and predictable | Faster response to input changes |
| Complexity | Low | Moderate |
| Timing | Fixed | Adaptive |

---

# 📸 Project Screenshots

> ℹ️ Detailed explanations for each screenshot are available in the **[Screenshots](Screenshots/)** folder.

### FSM State Diagrams

<p align="center">
<img src="Screenshots/Moore FSM State Diagram.png" width="48%">
<img src="Screenshots/Mealy FSM State Diagram.png" width="48%">
</p>

---

### Simulation Waveforms

<p align="center">
<img src="Screenshots/Moore Waveform.png" width="48%">
<img src="Screenshots/Mealy Waveform.png" width="48%">
</p>

---

### Post Synthesis Circuits

<p align="center">
<img src="Screenshots/Post Synthesis Circuit (Moore).png" width="48%">
<img src="Screenshots/Post Synthesis Circuit (Mealy).png" width="48%">
</p>

---

### Physical Design Flow

<p align="center">
<img src="Screenshots/Floorplan.png" width="48%">
<img src="Screenshots/Placement.png" width="48%">
</p>

<p align="center">
<img src="Screenshots/Clock Tree Synthesis.png" width="48%">
<img src="Screenshots/Routing.png" width="48%">
</p>

---

### Performance Reports

<p align="center">
<img src="Screenshots/Area Report.png" width="32%">
<img src="Screenshots/Power Report.png" width="32%">
<img src="Screenshots/Timing Report.png" width="32%">
</p>

---

### Final Comparison

<p align="center">
<img src="Screenshots/Final Comparison Graphs.png" width="80%">
</p>

---

## 📊 Results

✔ Successfully designed and simulated Moore and Mealy FSMs.

✔ Verified functionality using EPWave waveforms.

✔ Performed logic synthesis using Cadence Genus.

✔ Completed physical design using Cadence Innovus.

✔ Compared both implementations based on **area, power, timing, and performance**.

---

<p align="center">
⭐ If you found this project helpful, consider giving it a star!
</p>
