///////////////////////////////////////////////////////////////////////////////////
// Testbench for Component: SameBit
// Package: FIUSCIS-CDA
// Course: CDA3102 (Computer Architecture), Florida International University
// Developer: Trevor Cickovski
// License: MIT, (C) 2020 All Rights Reserved
///////////////////////////////////////////////////////////////////////////////////

module testbench();
`include "../Test/Test.v"
///////////////////////////////////////////////////////////////////////////////////
// Input: Ain (1-bit)
reg Ain;
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
// Output: Aout (1-bit)
wire Aout;
///////////////////////////////////////////////////////////////////////////////////

SameBit mySame(.Ain(Ain), .Aout(Aout));

initial begin
////////////////////////////////////////////////////////////////////////////////////////
// Test: A=0
$display("Testing: Ain=0");
Ain=0;   #10; 
verifyEqual(Aout, Ain);
////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////
// Test: A=1
$display("Testing: Ain=1");
Ain=1;   #10; 
verifyEqual(Aout, Ain);
////////////////////////////////////////////////////////////////////////////////////////
$display("All tests passed.");
end

endmodule
