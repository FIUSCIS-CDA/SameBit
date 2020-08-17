module testbench();

reg A;

wire S;

SameBit mySame(A, S);

initial begin
A=0;   #10; 
if (S !== A) begin5
           $display("Error with A=%d: Should also be %d but got %d", A, A, S); $stop;
end
A=1;   #10; 
if (S !== A) begin
           $display("Error with A=%d: Should also be %d but got %d", A, A, S); $stop;
end
$display("All tests passed.");
end

endmodule
