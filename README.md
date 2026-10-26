4-Bit ALU Using Verilog HDL

📌 Project Overview

This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs arithmetic and logical operations based on a 3-bit select input ("sel").

The design is simulated using Icarus Verilog and the output waveforms can be viewed using GTKWave.

🎯 Features

- 4-bit input operands ("a" and "b")
- 3-bit operation selector ("sel")
- 4-bit output ("out")
- Supports 8 arithmetic and logical operations
- Testbench-based functional verification

⚙️ Operations Supported

Select ("sel")| Operation| Description
"000"| Addition| "a + b"
"001"| Subtraction| "a - b"
"010"| Multiplication| "a * b"
"011"| Division| "a / b"
"100"| XOR| "a ^ b"
"101"| NOT A| "~a"
"110"| AND| "a & b"
"111"| OR| "a | b"

🛠️ Tools Used

- Verilog HDL
- Visual Studio Code
- Icarus Verilog
- GTKWave

📂 Project Files

- "alu.v" — ALU design module
- "alu_tb.v" — Testbench for simulation
- "alu.vcd" — Waveform output generated during simulation

🧪 Test Case

Example inputs:

- "a = 3" ("0011")
- "b = 3" ("0011")

Operation| Expected Output (Binary)| Decimal
Addition| "0110"| 6
Subtraction| "0000"| 0
Multiplication| "1001"| 9
Division| "0001"| 1
XOR| "0000"| 0
NOT A| "1100"| 12
AND| "0011"| 3
OR| "0011"| 3

Note: The output is limited to 4 bits. Multiplication results exceeding 4 bits are truncated. Division by zero should be handled explicitly in the design.

▶️ How to Run the Simulation

Open the terminal in the project folder and run:

iverilog -o sim alu.v alu_tb.v
vvp sim
gtkwave alu.vcd

- "iverilog" compiles the design and testbench.
- "vvp" runs the simulation.
- "gtkwave" opens the waveform viewer.

🧠 Concepts Learned

- Verilog module design
- Combinational logic using "always @(*)"
- "case" statements and operation selection
- Arithmetic and bitwise operators
- Testbench creation and functional verification
- Waveform analysis using GTKWave

🚀 Future Improvements

- Add carry and overflow flags
- Add zero and negative flags
- Expand the output width for multiplication
- Improve testbench coverage with more input combinations
- Handle division-by-zero cases explicitly

👨‍💻 Author

Harsha NP

Electronics and Communication Engineering (ECE) Student

Interested in VLSI Design and Functional Verification

📜 License

This project is available for educational and learning purposes.# -ALU-Arithmetic-and-Logic-Unit-Using-Verilog-HDL
ALU design and functional verification using Verilog HDL, Icarus Verilog, and GTKWave.
