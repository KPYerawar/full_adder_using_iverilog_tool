module full_adder(
    input a,
    input b,
    input c,
    output sum,
    output carry
);
wire s1,s2,s3;
assign s1=a ^ b;
assign sum = c ^ s1;
assign s2 = s1 & c;
assign s3 = a & b;
assign carry = s2 | s3;
endmodule 