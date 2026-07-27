# 📸 Project Screenshots

This folder contains the important screenshots captured during the design, simulation, synthesis, and physical implementation of the **Traffic Light Controller using Moore and Mealy Finite State Machines (FSM)**.

Each screenshot represents a specific stage of the project and helps visualize the implementation and analysis process.

---

## 🚦 Moore FSM State Diagram

This diagram illustrates the state transitions of the **Moore Finite State Machine**. In a Moore FSM, the output depends only on the current state, making the design stable and predictable.

---

## 🚦 Mealy FSM State Diagram

This diagram shows the state transitions of the **Mealy Finite State Machine**. Unlike the Moore FSM, the output depends on both the current state and the input, allowing faster responses to changing traffic conditions.

---

## 📈 Moore Waveform

This waveform verifies the functionality of the Moore FSM during simulation. It shows the sequence of traffic light signals and confirms that output changes occur only after state transitions.

---

## 📈 Mealy Waveform

This simulation waveform demonstrates the behavior of the Mealy FSM. The waveform highlights that outputs respond immediately to input changes, resulting in quicker signal transitions.

---

## 🏗️ Post Synthesis Circuit (Moore)

This image shows the synthesized hardware implementation of the Moore FSM generated after logic synthesis. It represents the optimized digital circuit before physical design.

---

## 🏗️ Post Synthesis Circuit (Mealy)

This synthesized circuit represents the hardware implementation of the Mealy FSM. It illustrates the optimized logic generated from the Verilog design.

---

## 📐 Floorplan

The floorplan displays the initial placement of the design on the chip. It defines the layout area and provides the foundation for the physical implementation process.

---

## 📍 Placement

This screenshot shows the placement stage, where standard cells are arranged within the chip layout while maintaining connectivity and efficient utilization of space.

---

## 🌳 Clock Tree Synthesis (CTS)

Clock Tree Synthesis distributes the clock signal uniformly across the design. This stage minimizes clock delay and skew, ensuring synchronized operation of all sequential elements.

---

## 🛣️ Routing

Routing connects all placed components using metal interconnections. It completes the physical wiring of the design while satisfying design and timing constraints.

---

## 📊 Area Report

The Area Report summarizes the total chip area utilized by the Traffic Light Controller after synthesis. It provides information about resource utilization and design efficiency.

---

## ⚡ Power Report

The Power Report estimates the total power consumption of the design, including dynamic and leakage power. It is useful for evaluating the energy efficiency of the implemented circuit.

---

## ⏱️ Timing Report

The Timing Report verifies whether the design satisfies the required timing constraints. It ensures that all signals propagate within the specified clock period for reliable operation.

---

## 📉 Final Comparison Graphs

These graphs compare the performance of the **Moore** and **Mealy** FSM implementations based on parameters such as **area, power consumption, timing, and overall efficiency**, providing a clear comparison between the two approaches.

---

### 📌 Summary

The screenshots in this folder demonstrate the complete workflow of the project, including:

- FSM Design
- Verilog Simulation
- Waveform Verification
- Logic Synthesis
- Physical Design
- Performance Analysis
- Moore vs Mealy Comparison

These results validate the successful implementation and evaluation of the Traffic Light Controller using Verilog HDL.
