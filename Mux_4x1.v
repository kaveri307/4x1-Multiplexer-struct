module Mux_4x1(
     input [3:0]I,
     input [1:0]S,
	 output Y );
									
wire NS0,NS1;
wire YO,Y1,Y2,Y3;

not N1(NS0,S[0]);
not N2(NS1,S[1]);
and A1(Y0,I[0],NS1,NS0);
and A2(Y1,I[1],NS1,S[0]);
and A3(Y2,I[2],S[1],NS0);
and A4(Y3,I[3],S[1],S[0]);
or O1(Y,Y0,Y1,Y2,Y3);
endmodule
