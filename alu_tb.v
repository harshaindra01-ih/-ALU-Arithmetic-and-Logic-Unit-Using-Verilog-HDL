module alu_tb;
reg [3:0]a,b;
reg [2:0]sel;
wire [3:0]out;
alu uut(
    .a(a),
    .b(b),
    .sel(sel),
    .out(out)
);  
initial begin
    // Dump waveform
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);

  
    // Test case 1: Addition
    a = 4'b0011; // 3
    b = 4'b0011; // 3 
    sel = 3'b000; // Addition
    #10;sel = 3'b001; // Subtraction
    #10;sel = 3'b010; // Multiplication 
    #10;sel = 3'b011; // Division
    #10;sel = 3'b100; // XOR    
    #10;sel = 3'b101; // NOT A
    #10;sel = 3'b110; // AND
    #10;sel = 3'b111; // OR 
        $finish;
end
endmodule    