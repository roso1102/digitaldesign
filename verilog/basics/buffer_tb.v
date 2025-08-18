module buffer_tb;
    reg a;
    wire buffer_out;
    buffer uut(.a(a), .buffer_out(buffer_out));
    initial
    begin
        $dumpfile("buffer.vcd");
        $dumpvars(0,buffer_tb);
        a=0; #10;
        a=1; #10;
        $finish;
    end
endmodule