VERILOG = iverilog
TARGET = decoder8_3.vcd

$(TARGET) : decoder8_3.vvp
	vvp decoder8_3.vvp

decoder8_3.vvp: decoder8_3_tb.v decoder3_8.v
	$(VERILOG) -o decoder8_3.vvp decoder8_3_tb.v decoder3_8.v

clean:
	-del $(TARGET)