module carry_look_ahead_8bit_tb;
reg [7:0] a,b;
reg cin;
wire [7:0] sum;
wire cout;
 
  carry_look_ahead_8bit uut(.a(a), .b(b),.cin(cin),.sum(sum),.cout(cout));
 
initial begin
  a=0; b=0; cin=0;
  #5 a=8'd2; b=8'd2; cin=1'd1;
  #5 a=8'd2; b=8'd3; cin=1'd1;
  #5 a=8'd5; b=8'd5; cin=1'd0;
  #5 a=8'd6; b=8'd7; cin=1'd1;
  #5 a=8'd15; b=8'd0; cin=1'd1;
  #5 a=8'd17; b=8'd15; cin=1'd1;
  #5 a=8'd10; b=8'd16; cin=1'd1;
  #5 a=8'd12; b=8'd9; cin=1'd0;
  #5 a=8'd19; b=8'd2; cin=1'd1;
  #5 a=8'd5; b=8'd7; cin=1'd0;
  #5 a=8'd13; b=8'd1; cin=1'd1;
  #5 a=8'd16; b=8'd3; cin=1'd0;
  #5 a=8'd14; b=8'd8; cin=1'd1;
  #5 a=8'd156; b=8'd170; cin=1'd0;
  #5 a=8'd20; b=8'd20; cin=1'd1;
end
 
initial
  $monitor( "A=%d, B=%d, Cin= %d, Sum=%d, Cout=%d", a,b,cin,sum,cout);
endmodule
