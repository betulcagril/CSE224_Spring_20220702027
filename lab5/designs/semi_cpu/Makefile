# Makefile for Lab 5 Semi CPU

COMPILER = iverilog
SIMULATOR = vvp

LAB4_SOURCES = src/register_file.v
LAB5_SOURCES = src/instruction_memory.v src/program_counter.v src/instruction_decoder.v src/alu.v src/seven_segment_display.v src/semi_cpu.v
TESTBENCH = src/testbench_lab5.v

ALL_SOURCES = $(LAB4_SOURCES) $(LAB5_SOURCES) $(TESTBENCH)

COMPILED = semi_cpu_sim
VCD_FILE = semi_cpu_tb.vcd

all: simulate

compile: $(COMPILED)

$(COMPILED): $(ALL_SOURCES)
	$(COMPILER) -o $(COMPILED) $(ALL_SOURCES)

simulate: $(COMPILED)
	$(SIMULATOR) $(COMPILED)

view: $(VCD_FILE)
	gtkwave $(VCD_FILE) &

clean:
	rm -f $(COMPILED) $(VCD_FILE)

syntax_check:
	$(COMPILER) -t null $(LAB4_SOURCES) $(LAB5_SOURCES)

.PHONY: all compile simulate view clean syntax_check
