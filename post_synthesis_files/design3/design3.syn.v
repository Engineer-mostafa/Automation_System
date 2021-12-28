/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Tue Dec 28 16:06:44 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 215484741 */

module design3(SFD, SRD, SW, SFA, ST, clk, rst, fdoor, rdoor, winbuzz, 
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
   wire n_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_2;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_3;
   wire n_0_0_8;
   wire n_0_4;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_5;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_6;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_7;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_8;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_0_25;
   wire n_0_0_26;
   wire n_0_0_27;
   wire n_0_0_28;
   wire n_0_0_29;
   wire n_0_0_30;
   wire n_0_0_31;
   wire n_0_0_32;
   wire n_0_0_33;
   wire n_0_0_34;
   wire n_0_0_35;
   wire n_0_0_36;
   wire n_0_0_37;
   wire n_0_0_38;
   wire n_0_0_39;
   wire n_0_0_40;
   wire n_0_0_41;
   wire n_0_0_42;
   wire n_0_0_43;
   wire n_0_0_44;

   DFF_X1 cooler_reg (.D(n_0_8), .CK(clk), .Q(cooler), .QN());
   DFF_X1 heater_reg (.D(n_0_7), .CK(clk), .Q(heater), .QN());
   DFF_X1 alarambuzz_reg (.D(n_0_6), .CK(clk), .Q(alarambuzz), .QN());
   DFF_X1 winbuzz_reg (.D(n_0_5), .CK(clk), .Q(winbuzz), .QN());
   DFF_X1 rdoor_reg (.D(n_0_4), .CK(clk), .Q(rdoor), .QN());
   DFF_X1 fdoor_reg (.D(n_0_3), .CK(clk), .Q(fdoor), .QN());
   DFF_X1 \my_curr_state_reg[2]  (.D(n_0_2), .CK(clk), .Q(my_curr_state[2]), 
      .QN());
   DFF_X1 \my_curr_state_reg[1]  (.D(n_0_1), .CK(clk), .Q(my_curr_state[1]), 
      .QN());
   DFF_X1 \my_curr_state_reg[0]  (.D(n_0_0), .CK(clk), .Q(my_curr_state[0]), 
      .QN());
   AOI221_X1 i_0_0_0 (.A(n_0_0_12), .B1(my_curr_state[0]), .B2(n_0_0_21), 
      .C1(n_0_0_11), .C2(n_0_0_0), .ZN(n_0_0));
   OR3_X1 i_0_0_1 (.A1(SRD), .A2(SW), .A3(n_0_0_1), .ZN(n_0_0_0));
   AOI21_X1 i_0_0_2 (.A(SFA), .B1(n_0_0_39), .B2(ST[0]), .ZN(n_0_0_1));
   NOR2_X1 i_0_0_3 (.A1(rst), .A2(n_0_0_2), .ZN(n_0_1));
   AOI211_X1 i_0_0_4 (.A(n_0_0_28), .B(n_0_0_10), .C1(n_0_0_4), .C2(n_0_0_3), 
      .ZN(n_0_0_2));
   AOI21_X1 i_0_0_5 (.A(SFD), .B1(my_curr_state[1]), .B2(n_0_0_27), .ZN(n_0_0_3));
   OAI21_X1 i_0_0_6 (.A(n_0_0_36), .B1(SW), .B2(n_0_0_5), .ZN(n_0_0_4));
   AOI21_X1 i_0_0_7 (.A(SFA), .B1(ST[1]), .B2(ST[0]), .ZN(n_0_0_5));
   NOR3_X1 i_0_0_8 (.A1(rst), .A2(n_0_0_17), .A3(n_0_0_6), .ZN(n_0_2));
   NOR2_X1 i_0_0_9 (.A1(n_0_0_19), .A2(n_0_0_7), .ZN(n_0_0_6));
   NAND2_X1 i_0_0_10 (.A1(n_0_0_20), .A2(n_0_0_13), .ZN(n_0_0_7));
   AOI211_X1 i_0_0_11 (.A(rst), .B(n_0_0_10), .C1(n_0_0_40), .C2(n_0_0_8), 
      .ZN(n_0_3));
   NAND3_X1 i_0_0_12 (.A1(SFD), .A2(n_0_0_34), .A3(n_0_0_20), .ZN(n_0_0_8));
   AOI21_X1 i_0_0_13 (.A(n_0_0_12), .B1(n_0_0_41), .B2(n_0_0_9), .ZN(n_0_4));
   OAI21_X1 i_0_0_14 (.A(SRD), .B1(n_0_0_11), .B2(n_0_0_10), .ZN(n_0_0_9));
   NOR3_X1 i_0_0_15 (.A1(my_curr_state[2]), .A2(my_curr_state[1]), .A3(n_0_0_34), 
      .ZN(n_0_0_10));
   NOR3_X1 i_0_0_16 (.A1(SFD), .A2(my_curr_state[0]), .A3(n_0_0_28), .ZN(
      n_0_0_11));
   OR2_X1 i_0_0_17 (.A1(rst), .A2(n_0_0_14), .ZN(n_0_0_12));
   AOI211_X1 i_0_0_18 (.A(rst), .B(n_0_0_17), .C1(n_0_0_42), .C2(n_0_0_13), 
      .ZN(n_0_5));
   OAI21_X1 i_0_0_19 (.A(SW), .B1(n_0_0_31), .B2(n_0_0_14), .ZN(n_0_0_13));
   NOR2_X1 i_0_0_20 (.A1(my_curr_state[0]), .A2(n_0_0_21), .ZN(n_0_0_14));
   AOI221_X1 i_0_0_21 (.A(rst), .B1(my_curr_state[0]), .B2(n_0_0_22), .C1(
      n_0_0_43), .C2(n_0_0_15), .ZN(n_0_6));
   OAI21_X1 i_0_0_22 (.A(SFA), .B1(n_0_0_17), .B2(n_0_0_16), .ZN(n_0_0_15));
   NOR3_X1 i_0_0_23 (.A1(SW), .A2(n_0_0_22), .A3(n_0_0_32), .ZN(n_0_0_16));
   NOR2_X1 i_0_0_24 (.A1(my_curr_state[1]), .A2(n_0_0_27), .ZN(n_0_0_17));
   AOI211_X1 i_0_0_25 (.A(rst), .B(n_0_0_18), .C1(my_curr_state[0]), .C2(
      n_0_0_28), .ZN(n_0_7));
   AOI21_X1 i_0_0_26 (.A(heater), .B1(n_0_0_39), .B2(n_0_0_19), .ZN(n_0_0_18));
   OAI33_X1 i_0_0_27 (.A1(n_0_0_34), .A2(n_0_0_21), .A3(n_0_0_38), .B1(n_0_0_28), 
      .B2(n_0_0_22), .B3(n_0_0_30), .ZN(n_0_0_19));
   NOR2_X1 i_0_0_28 (.A1(n_0_0_28), .A2(n_0_0_22), .ZN(n_0_0_20));
   INV_X1 i_0_0_29 (.A(n_0_0_22), .ZN(n_0_0_21));
   NOR2_X1 i_0_0_30 (.A1(my_curr_state[2]), .A2(n_0_0_35), .ZN(n_0_0_22));
   AOI221_X1 i_0_0_31 (.A(rst), .B1(n_0_0_26), .B2(n_0_0_23), .C1(n_0_0_44), 
      .C2(n_0_0_24), .ZN(n_0_8));
   NAND4_X1 i_0_0_32 (.A1(n_0_0_37), .A2(n_0_0_36), .A3(ST[1]), .A4(n_0_0_33), 
      .ZN(n_0_0_23));
   AOI21_X1 i_0_0_33 (.A(n_0_0_26), .B1(ST[1]), .B2(n_0_0_25), .ZN(n_0_0_24));
   OAI33_X1 i_0_0_34 (.A1(my_curr_state[2]), .A2(my_curr_state[1]), .A3(n_0_0_30), 
      .B1(n_0_0_34), .B2(n_0_0_29), .B3(n_0_0_38), .ZN(n_0_0_25));
   NOR2_X1 i_0_0_35 (.A1(n_0_0_35), .A2(n_0_0_27), .ZN(n_0_0_26));
   NAND2_X1 i_0_0_36 (.A1(my_curr_state[2]), .A2(n_0_0_34), .ZN(n_0_0_27));
   INV_X1 i_0_0_37 (.A(n_0_0_29), .ZN(n_0_0_28));
   NAND2_X1 i_0_0_38 (.A1(my_curr_state[2]), .A2(n_0_0_35), .ZN(n_0_0_29));
   NAND2_X1 i_0_0_39 (.A1(n_0_0_33), .A2(n_0_0_31), .ZN(n_0_0_30));
   INV_X1 i_0_0_40 (.A(n_0_0_32), .ZN(n_0_0_31));
   NAND3_X1 i_0_0_41 (.A1(n_0_0_37), .A2(n_0_0_36), .A3(n_0_0_34), .ZN(n_0_0_32));
   NOR3_X1 i_0_0_42 (.A1(n_0_0_38), .A2(SW), .A3(SFA), .ZN(n_0_0_33));
   INV_X1 i_0_0_43 (.A(my_curr_state[0]), .ZN(n_0_0_34));
   INV_X1 i_0_0_44 (.A(my_curr_state[1]), .ZN(n_0_0_35));
   INV_X1 i_0_0_45 (.A(SRD), .ZN(n_0_0_36));
   INV_X1 i_0_0_46 (.A(SFD), .ZN(n_0_0_37));
   INV_X1 i_0_0_47 (.A(ST[0]), .ZN(n_0_0_38));
   INV_X1 i_0_0_48 (.A(ST[1]), .ZN(n_0_0_39));
   INV_X1 i_0_0_49 (.A(fdoor), .ZN(n_0_0_40));
   INV_X1 i_0_0_50 (.A(rdoor), .ZN(n_0_0_41));
   INV_X1 i_0_0_51 (.A(winbuzz), .ZN(n_0_0_42));
   INV_X1 i_0_0_52 (.A(alarambuzz), .ZN(n_0_0_43));
   INV_X1 i_0_0_53 (.A(cooler), .ZN(n_0_0_44));
endmodule
