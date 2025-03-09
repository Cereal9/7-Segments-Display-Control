# 7-Segment Display Control on FPGA

## Overview
This project demonstrates how to control a **7-segment display** using an **FPGA**. The goal is to design a circuit that takes **4 switch inputs** and displays the corresponding **hexadecimal digit (0-F)** on a **7-segment display**.

## How It Works
The **DE10-Lite FPGA board** has six **common anode** 7-segment displays. Each display requires **8 outputs**: 7 for the segments (A-G) and 1 for the decimal point (DP). Since it’s a common anode display, segments turn **on** when they receive a **0** from the FPGA.

For example, to display the number **2**, the following segment values must be set:

```
HEX0[0] = 0  (Segment A)
HEX0[1] = 0  (Segment B)
HEX0[2] = 1  (Segment C)
HEX0[3] = 0  (Segment D)
HEX0[4] = 0  (Segment E)
HEX0[5] = 1  (Segment F)
HEX0[6] = 0  (Segment G)
HEX0[7] = 1  (Decimal Point, optional)
```

### Inputs & Outputs
- **Inputs:** 4 switches (`SW[3:0]`) representing a 4-bit binary number.
- **Outputs:** The **7-segment display** shows the corresponding **hexadecimal digit (0-F)**.

## Implementation Steps

### 1. Truth Table & Equations
- A truth table is created to map **4-bit inputs** to **7-segment outputs**.
- **Sum of Products (SOP) expressions** are derived for each segment (`HEX0[0]` to `HEX0[6]`).
- The equations are **simplified** using Boolean algebra.

### 2. VHDL Code
- The simplified equations are implemented in **VHDL**.
- Inputs are mapped as follows:
  - `SW3 → A`
  - `SW2 → B`
  - `SW1 → C`
  - `SW0 → D`
- The file is saved as `Seven_Segments.vhd`.

### 3. Simulation
- A testbench is created to simulate **all 16 input combinations**.
- The simulation output is compared with the expected **truth table values**.

### 4. FPGA Testing
- **Pin assignments** are set: switches as inputs, 7-segment display as output.
- The FPGA is programmed and tested by toggling switches and verifying the displayed number.

## Future Enhancements
- Expand the design to control **multiple** 7-segment displays.
- Implement a **multiplexing technique** to cycle through different digits using fewer FPGA pins.

## Tools Required
- **Quartus Prime** (FPGA development software)
- **DE10-Lite FPGA Board**
- **Basic VHDL knowledge**

## Conclusion
This project successfully implements a **7-segment display controller** on an FPGA. It demonstrates key concepts in **Boolean logic simplification, VHDL coding, simulation, and hardware implementation**.
