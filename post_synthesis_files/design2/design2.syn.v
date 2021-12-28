/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Tue Dec 28 16:04:50 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 693430140 */

module design2(SFD, SRD, SW, SFA, ST, clk, rst, fdoor, rdoor, winbuzz, 
      alarambuzz, heater, cooler);
   input SFD;
   input SRD;
   input SW;
   input SFA;
   input [1:0]ST;
   input clk;
   input rst;
   output fdoor;
   output rdoor;
   output winbuzz;
   output alarambuzz;
   output heater;
   output cooler;

   wire [2:0]my_curr_state;
   wire n_0_0;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_1;
   wire n_0_0_3;
   wire n_0_4;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_2;
   wire n_0_0_6;
   wire n_0_3;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_5;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_6;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_7;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_8;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_0_25;
   wire n_0_0_26;
   wire n_0_0_27;
   wire n_0_0_28;

   DFF_X1 cooler_reg (.D(n_0_8), .CK(clk), .Q(cooler), .QN());
   DFF_X1 heater_reg (.D(n_0_7), .CK(clk), .Q(heater), .QN());
   DFF_X1 alarambuzz_reg (.D(n_0_6), .CK(clk), .Q(alarambuzz), .QN());
   DFF_X1 winbuzz_reg (.D(n_0_5), .CK(clk), .Q(winbuzz), .QN());
   DFF_X1 rdoor_reg (.D(n_0_3), .CK(clk), .Q(rdoor), .QN());
   DFF_X1 fdoor_reg (.D(n_0_2), .CK(clk), .Q(fdoor), .QN());
   DFF_X1 \my_curr_state_reg[2]  (.D(n_0_4), .CK(clk), .Q(my_curr_state[2]), 
      .QN());
   DFF_X1 \my_curr_state_reg[1]  (.D(n_0_1), .CK(clk), .Q(my_curr_state[1]), 
      .QN());
   DFF_X1 \my_curr_state_reg[0]  (.D(n_0_0), .CK(clk), .Q(my_curr_state[0]), 
      .QN());
   INV_X1 i_0_0_0 (.A(n_0_0_0), .ZN(n_0_0));
   OAI21_X1 i_0_0_1 (.A(n_0_0_5), .B1(n_0_0_1), .B2(SFD), .ZN(n_0_0_0));
   NOR3_X1 i_0_0_2 (.A1(SRD), .A2(SW), .A3(n_0_0_2), .ZN(n_0_0_1));
   AOI21_X1 i_0_0_3 (.A(SFA), .B1(n_0_0_25), .B2(ST[0]), .ZN(n_0_0_2));
   NOR4_X1 i_0_0_4 (.A1(rst), .A2(n_0_0_3), .A3(n_0_0_21), .A4(n_0_0_11), 
      .ZN(n_0_1));
   AOI211_X1 i_0_0_5 (.A(SRD), .B(SFA), .C1(ST[1]), .C2(ST[0]), .ZN(n_0_0_3));
   NOR3_X1 i_0_0_6 (.A1(n_0_0_4), .A2(SRD), .A3(SFD), .ZN(n_0_4));
   OAI21_X1 i_0_0_7 (.A(n_0_0_5), .B1(n_0_0_19), .B2(SW), .ZN(n_0_0_4));
   NOR4_X1 i_0_0_8 (.A1(my_curr_state[2]), .A2(my_curr_state[1]), .A3(
      my_curr_state[0]), .A4(rst), .ZN(n_0_0_5));
   AOI211_X1 i_0_0_9 (.A(rst), .B(n_0_0_6), .C1(n_0_0_23), .C2(my_curr_state[0]), 
      .ZN(n_0_2));
   AOI21_X1 i_0_0_10 (.A(fdoor), .B1(SFD), .B2(n_0_0_23), .ZN(n_0_0_6));
   AOI211_X1 i_0_0_11 (.A(rst), .B(n_0_0_7), .C1(n_0_0_12), .C2(n_0_0_27), 
      .ZN(n_0_3));
   AOI21_X1 i_0_0_12 (.A(rdoor), .B1(SRD), .B2(n_0_0_8), .ZN(n_0_0_7));
   NOR3_X1 i_0_0_13 (.A1(my_curr_state[2]), .A2(my_curr_state[0]), .A3(SFD), 
      .ZN(n_0_0_8));
   AOI211_X1 i_0_0_14 (.A(rst), .B(n_0_0_9), .C1(n_0_0_14), .C2(n_0_0_27), 
      .ZN(n_0_5));
   AOI21_X1 i_0_0_15 (.A(winbuzz), .B1(n_0_0_22), .B2(n_0_0_10), .ZN(n_0_0_9));
   NOR3_X1 i_0_0_16 (.A1(n_0_0_26), .A2(SRD), .A3(my_curr_state[1]), .ZN(
      n_0_0_10));
   NOR2_X1 i_0_0_17 (.A1(n_0_0_26), .A2(SRD), .ZN(n_0_0_11));
   AOI211_X1 i_0_0_18 (.A(rst), .B(n_0_0_13), .C1(n_0_0_12), .C2(
      my_curr_state[0]), .ZN(n_0_6));
   AND2_X1 i_0_0_19 (.A1(n_0_0_28), .A2(my_curr_state[1]), .ZN(n_0_0_12));
   AOI21_X1 i_0_0_20 (.A(alarambuzz), .B1(SFA), .B2(n_0_0_20), .ZN(n_0_0_13));
   AOI211_X1 i_0_0_21 (.A(rst), .B(n_0_0_15), .C1(n_0_0_14), .C2(
      my_curr_state[0]), .ZN(n_0_7));
   NOR2_X1 i_0_0_22 (.A1(n_0_0_28), .A2(my_curr_state[1]), .ZN(n_0_0_14));
   AOI21_X1 i_0_0_23 (.A(heater), .B1(n_0_0_18), .B2(n_0_0_25), .ZN(n_0_0_15));
   AOI211_X1 i_0_0_24 (.A(rst), .B(n_0_0_17), .C1(n_0_0_16), .C2(
      my_curr_state[1]), .ZN(n_0_8));
   NOR2_X1 i_0_0_25 (.A1(n_0_0_28), .A2(my_curr_state[0]), .ZN(n_0_0_16));
   AOI21_X1 i_0_0_26 (.A(cooler), .B1(ST[1]), .B2(n_0_0_18), .ZN(n_0_0_17));
   AND2_X1 i_0_0_27 (.A1(n_0_0_20), .A2(n_0_0_19), .ZN(n_0_0_18));
   NOR2_X1 i_0_0_28 (.A1(n_0_0_24), .A2(SFA), .ZN(n_0_0_19));
   NOR3_X1 i_0_0_29 (.A1(n_0_0_21), .A2(SW), .A3(SRD), .ZN(n_0_0_20));
   NAND2_X1 i_0_0_30 (.A1(n_0_0_23), .A2(n_0_0_22), .ZN(n_0_0_21));
   NOR2_X1 i_0_0_31 (.A1(my_curr_state[0]), .A2(SFD), .ZN(n_0_0_22));
   NOR2_X1 i_0_0_32 (.A1(my_curr_state[2]), .A2(my_curr_state[1]), .ZN(n_0_0_23));
   INV_X1 i_0_0_33 (.A(ST[0]), .ZN(n_0_0_24));
   INV_X1 i_0_0_34 (.A(ST[1]), .ZN(n_0_0_25));
   INV_X1 i_0_0_35 (.A(SW), .ZN(n_0_0_26));
   INV_X1 i_0_0_36 (.A(my_curr_state[0]), .ZN(n_0_0_27));
   INV_X1 i_0_0_37 (.A(my_curr_state[2]), .ZN(n_0_0_28));
endmodule
