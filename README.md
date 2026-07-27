# 🚦 Traffic Light Controller using Moore and Mealy FSM

## Project Overview

This project implements a Traffic Light Controller using Finite State Machines (FSM) in Verilog HDL.

Two different approaches have been implemented and compared:

- Moore FSM
- Mealy FSM

The controller manages traffic at a four-way intersection and demonstrates state transitions, timing behaviour, and waveform analysis using Verilog simulation. The project also compares both implementations based on area, power, timing, and overall efficiency.

---

## Features

- Traffic Light Controller in Verilog HDL
- Moore FSM Implementation
- Mealy FSM Implementation
- Verilog Testbenches
- Waveform Simulation
- FSM State Diagrams
- Performance Comparison
- RTL Design and Physical Design Analysis

---

## Technologies Used

- Verilog HDL
- EPWave Simulator
- Cadence Genus
- Cadence Innovus
- RTL Design
- Digital Logic Design

---

## Project Structure

```
Traffic-Light-Controller-FSM/
│
├── Moore_FSM.v
├── Mealy_FSM.v
├── Moore_Testbench.v
├── Mealy_Testbench.v
├── Requirements.md
├── README.md
└── Screenshots/
```

---

## Working

### Moore FSM

- Output depends only on the current state.
- Fixed timing for signal changes.
- Stable and glitch-free design.

### Mealy FSM

- Output depends on the current state and sensor inputs.
- Adaptive timing.
- Faster response to changing traffic conditions.

---

## Simulation Results

The project successfully demonstrates:

- Correct traffic signal sequence
- Moore FSM simulation
- Mealy FSM simulation
- State transitions
- Waveform verification
- Performance comparison

---

## Future Scope

- Vehicle detection sensors
- Emergency vehicle priority
- Pedestrian crossing support
- FPGA implementation
- Smart traffic management using adaptive control

---
