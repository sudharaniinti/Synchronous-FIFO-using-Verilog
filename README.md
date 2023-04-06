# Synchronous-FIFO-using-Verilog
FIFO (First-In-First-Out) is a data structure used in digital systems design to manage the flow of data between different components or modules. It is designed to store data items in a way that allows the first item that enters the structure to be the first item that is processed, hence the name First-In-First-Out. FIFO is commonly used for applications such as data storage, data transmission, and queuing. 

This FIFO consists of two pointers. When data is written to the FIFO, it is stored in the Memory at the write pointer location. The write pointer is then incremented to point to the next available memory location.  Similarly, when data is read from the FIFO, it is read from the Memory location pointed to by the read pointer, and the read pointer is incremented to point to the next location.

This Repository includes:
1. Verilog Code for a Synchronous FIFO
2. Testbench 
3. Simulation Output
4. Schematic Diagram
