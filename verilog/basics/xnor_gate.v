module xnor_gate(a,b,xnor_out);
    input a,b;
    output xnor_out;
    assign xnor_out= a~^b;
endmodule