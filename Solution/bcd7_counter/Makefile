all: result.vcd

result.vcd: bcd7.vhdl bcd7_tb.vhdl
	ghdl -a bcd7.vhdl
	ghdl -a bcd7_tb.vhdl
	ghdl -e bcd7_tb
	ghdl -r bcd7_tb --vcd=result.vcd --stop-time=5us

clean:
	rm -rf result.vcd
