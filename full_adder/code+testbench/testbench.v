module testbench;
      reg a;
      reg b;
      reg c;
      wire carry,sum;


    full_adder uut(
            .a(a),
            .b(b),
            .c(c),
            .carry(carry),
            .sum(sum)
         );
         
        initial begin
          $dumpfile("dump.vcd");
          $dumpvars(0,testbench);
           a=0;b=0;c=0;
           #100
             a=0;b=0;c=1;
           #100
             a=0;b=1;c=0;
           #100
             a=0;b=1;c=1;
           #100
             a=1;b=0;c=0;
           #100
             a=1;b=0;c=1;
           #100
             a=1;b=1;c=0;
           #100
            a=1;b=1;c=1;
           #100
           $finish;
        end
endmodule
