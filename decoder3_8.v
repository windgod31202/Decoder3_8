module decoder_2_4(E , In , Out);
    input E;
    input [1:0] In;
    output [3:0] Out;
    wire [3:0] Out;
    assign Out = E ? 1'b1 << In : 4'h0;
endmodule

module decoder_3_8(E , In , Out);
    input E;
    input [2:0] In;
    output [7:0] Out;
    wire E1 , G1 , G2;
    not u1(E1 , In[2]);
    and a1(G1 , E , In[2]);
    and a2(G2 , E , E1);
    decoder_2_4 block1(G1 , In[1 : 0] , Out[7 : 4]);
    decoder_2_4 block2(G2 , In[1 : 0] , Out[3 : 0]);
endmodule

module clkgen(clka, clkb, clka_out, clkb_out);
input clka, clkb;
output clka_out, clkb_out;
reg clka_out, clkb_out;
always @(clka) begin
clka_out = clka;
end
always @(clkb) begin
clkb_out = clkb;
end
endmodule