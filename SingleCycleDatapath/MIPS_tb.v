`timescale 1ns / 1ps

module MIPS_tb;

	// Inputs
	reg [31:0] initialPCval;
	reg run;

	// Instantiate the Unit Under Test (UUT)
	SingleCycleMain uut (
		.initialPCval(initialPCval), 
		.run(run)
	);

	initial begin
		// Initialize Inputs
		initialPCval = 0;
		run = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin
		#100;
		run = !run;
	end
      
endmodule

