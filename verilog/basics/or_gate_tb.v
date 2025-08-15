module or_gate_tb;
  reg a, b;
  wire or_out;

  // Instantiate the OR gate
  or_gate uut (
    .a(a),
    .b(b),
    .or_out(or_out)
  );

  initial begin
    $dumpfile("or_gate.vcd");
    $dumpvars(0, or_gate_tb);

    // Test all input combinations
    a = 0; b = 0; #10;
    $display("a=%b b=%b y=%b", a, b, or_out);
    a = 0; b = 1; #10;
    $display("a=%b b=%b y=%b", a, b, or_out);
    a = 1; b = 0; #10;
    $display("a=%b b=%b y=%b", a, b, or_out);
    a = 1; b = 1; #10;
    $display("a=%b b=%b y=%b", a, b, or_out);

    $finish;
  end
endmodule