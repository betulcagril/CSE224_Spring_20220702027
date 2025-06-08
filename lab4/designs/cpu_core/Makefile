# Makefile for Verilog simulation

# Compiler
COMPILER = iverilog
SIMULATOR = vvp

# Source files
SOURCES = src/register_file.v src/alu.v src/cpu_core.v src/testbench.v

# Output files
COMPILED = cpu_core_sim
VCD_FILE = cpu_core_tb.vcd

# Default target
all: simulate

# Compile the design
compile: $(COMPILED)

$(COMPILED): $(SOURCES)
	$(COMPILER) -o $(COMPILED) $(SOURCES)


simulate: $(COMPILED)
	$(SIMULATOR) $(COMPILED)


view: $(VCD_FILE)
	gtkwave $(VCD_FILE) &


clean:
	rm -f $(COMPILED) $(VCD_FILE)


openlane:
	@echo "Make sure you're in the OpenLane directory and have the design properly set up"
	@echo "Run: ./flow.tcl -design cpu_core"

.PHONY: all compile simulate view clean openlane
