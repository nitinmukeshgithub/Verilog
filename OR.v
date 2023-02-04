`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Engineer: NITIN MUKESH
// 
// Create Date: 05.02.2023 02:50:50
// Switch level modelling style
//////////////////////////////////////////////////////////////////////////////////


module OR( input a,b,
output y

    );
    
supply1 vdd;
supply0 gnd;

wire t1,t2,t3;

pmos p1(t1,vdd,b);
pmos p2(t2,t1,a);
nmos n1(t2,gnd,a);
nmos n2(t2,gnd,b);
pmos p3(y,vdd,t2);
nmos n3(y,gnd,t2);

endmodule
