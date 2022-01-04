`timescale 1ns/100ps

module tb();
    reg reset_n=0;
    reg clk=0;

    initial begin
        forever #10 clk = ~clk;
    end

    initial begin
	    reset_n = 0;
	    #10;
	    reset_n = 1;
	    #600 $finish;
    end

    initial begin
        $dumpfile ("dump.vcd"); 
        $dumpvars(); 
    end 


    top
	dut
	(
	    .clk(clk),
	    .reset_n(reset_n)
	);

endmodule

