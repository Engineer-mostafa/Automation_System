/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Tue Dec 28 15:58:52 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1464166435 */

module automation_sys(SFD, SRD, SW, SFA, ST, clk, rst, fdoor, rdoor, winbuzz, 
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
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_1;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_2;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_0_25;
   wire n_0_3;
   wire n_0_0_26;
   wire n_0_0_27;
   wire n_0_0_28;
   wire n_0_0_29;
   wire n_0_0_30;
   wire n_0_0_31;
   wire n_0_0_32;
   wire n_0_4;
   wire n_0_0_33;
   wire n_0_0_34;
   wire n_0_0_35;
   wire n_0_0_36;
   wire n_0_0_37;
   wire n_0_0_38;
   wire n_0_5;
   wire n_0_0_39;
   wire n_0_0_40;
   wire n_0_0_41;
   wire n_0_0_42;
   wire n_0_0_43;
   wire n_0_0_44;
   wire n_0_0_45;
   wire n_0_0_46;
   wire n_0_0_47;
   wire n_0_0_48;
   wire n_0_0_49;
   wire n_0_0_50;
   wire n_0_0_51;
   wire n_0_0_52;
   wire n_0_6;
   wire n_0_0_53;
   wire n_0_0_54;
   wire n_0_0_55;
   wire n_0_0_56;
   wire n_0_0_57;
   wire n_0_0_58;
   wire n_0_0_59;
   wire n_0_0_60;
   wire n_0_0_61;
   wire n_0_0_62;
   wire n_0_0_63;
   wire n_0_7;
   wire n_0_0_64;
   wire n_0_0_65;
   wire n_0_0_66;
   wire n_0_0_67;
   wire n_0_8;
   wire n_0_0_68;
   wire n_0_0_69;
   wire n_0_0_70;
   wire n_0_0_71;
   wire n_0_0_72;
   wire n_0_0_73;
   wire n_0_0_74;
   wire n_0_0_75;
   wire n_0_0_76;
   wire n_0_0_77;
   wire n_0_0_78;
   wire n_0_0_79;
   wire n_0_0_80;
   wire n_0_0_81;
   wire n_0_0_82;
   wire n_0_0_83;
   wire n_0_0_84;
   wire n_0_0_85;
   wire n_0_0_86;
   wire n_0_0_87;
   wire n_0_0_88;
   wire n_0_0_89;
   wire n_0_0_90;
   wire n_0_0_91;
   wire n_0_0_92;
   wire n_0_0_93;
   wire n_0_0_94;
   wire n_0_0_95;
   wire n_0_0_96;
   wire n_0_0_97;
   wire n_0_0_98;
   wire n_0_0_99;

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
   OAI21_X1 i_0_0_0 (.A(n_0_0_0), .B1(rst), .B2(n_0_0_4), .ZN(n_0_0));
   OAI21_X1 i_0_0_1 (.A(n_0_0_1), .B1(n_0_0_71), .B2(n_0_0_14), .ZN(n_0_0_0));
   NAND2_X1 i_0_0_2 (.A1(n_0_0_11), .A2(n_0_0_2), .ZN(n_0_0_1));
   AOI21_X1 i_0_0_3 (.A(n_0_0_3), .B1(SFA), .B2(n_0_0_45), .ZN(n_0_0_2));
   AOI211_X1 i_0_0_4 (.A(n_0_0_97), .B(my_curr_state[1]), .C1(ST[0]), .C2(
      my_curr_state[2]), .ZN(n_0_0_3));
   AOI22_X1 i_0_0_5 (.A1(n_0_0_10), .A2(n_0_0_7), .B1(n_0_0_86), .B2(n_0_0_5), 
      .ZN(n_0_0_4));
   AOI211_X1 i_0_0_6 (.A(n_0_0_6), .B(n_0_0_22), .C1(n_0_0_79), .C2(n_0_0_73), 
      .ZN(n_0_0_5));
   NAND2_X1 i_0_0_7 (.A1(SFD), .A2(n_0_0_81), .ZN(n_0_0_6));
   OAI21_X1 i_0_0_8 (.A(n_0_0_8), .B1(my_curr_state[2]), .B2(n_0_0_81), .ZN(
      n_0_0_7));
   AOI21_X1 i_0_0_9 (.A(n_0_0_61), .B1(n_0_0_96), .B2(n_0_0_9), .ZN(n_0_0_8));
   OAI21_X1 i_0_0_10 (.A(n_0_0_87), .B1(SRD), .B2(n_0_0_80), .ZN(n_0_0_9));
   OAI22_X1 i_0_0_11 (.A1(ST[1]), .A2(n_0_0_98), .B1(n_0_0_81), .B2(n_0_0_11), 
      .ZN(n_0_0_10));
   NAND3_X1 i_0_0_12 (.A1(n_0_0_98), .A2(n_0_0_93), .A3(SFD), .ZN(n_0_0_11));
   OAI21_X1 i_0_0_13 (.A(n_0_0_12), .B1(n_0_0_16), .B2(n_0_0_15), .ZN(n_0_1));
   NOR2_X1 i_0_0_14 (.A1(n_0_0_14), .A2(n_0_0_13), .ZN(n_0_0_12));
   OAI33_X1 i_0_0_15 (.A1(n_0_0_95), .A2(rst), .A3(n_0_0_19), .B1(n_0_0_97), 
      .B2(n_0_0_72), .B3(n_0_0_18), .ZN(n_0_0_13));
   OAI33_X1 i_0_0_16 (.A1(n_0_0_97), .A2(n_0_0_72), .A3(n_0_0_51), .B1(n_0_0_97), 
      .B2(n_0_0_62), .B3(rst), .ZN(n_0_0_14));
   OR3_X1 i_0_0_17 (.A1(rst), .A2(n_0_0_74), .A3(n_0_0_55), .ZN(n_0_0_15));
   AOI211_X1 i_0_0_18 (.A(n_0_0_80), .B(n_0_0_79), .C1(n_0_0_96), .C2(n_0_0_17), 
      .ZN(n_0_0_16));
   NAND3_X1 i_0_0_19 (.A1(SFD), .A2(n_0_0_91), .A3(n_0_0_87), .ZN(n_0_0_17));
   AOI21_X1 i_0_0_20 (.A(n_0_0_50), .B1(n_0_0_94), .B2(n_0_0_54), .ZN(n_0_0_18));
   AOI21_X1 i_0_0_21 (.A(n_0_0_50), .B1(n_0_0_21), .B2(n_0_0_20), .ZN(n_0_0_19));
   AOI211_X1 i_0_0_22 (.A(SFD), .B(n_0_0_55), .C1(ST[0]), .C2(n_0_0_61), 
      .ZN(n_0_0_20));
   OAI21_X1 i_0_0_23 (.A(n_0_0_22), .B1(ST[0]), .B2(n_0_0_91), .ZN(n_0_0_21));
   AOI21_X1 i_0_0_24 (.A(n_0_0_87), .B1(n_0_0_98), .B2(n_0_0_96), .ZN(n_0_0_22));
   INV_X1 i_0_0_25 (.A(n_0_0_23), .ZN(n_0_2));
   OAI21_X1 i_0_0_26 (.A(n_0_0_90), .B1(n_0_0_47), .B2(n_0_0_24), .ZN(n_0_0_23));
   OAI33_X1 i_0_0_27 (.A1(n_0_0_56), .A2(n_0_0_55), .A3(n_0_0_60), .B1(n_0_0_98), 
      .B2(n_0_0_25), .B3(SFA), .ZN(n_0_0_24));
   AOI211_X1 i_0_0_28 (.A(n_0_0_61), .B(n_0_0_85), .C1(n_0_0_84), .C2(n_0_0_81), 
      .ZN(n_0_0_25));
   AOI21_X1 i_0_0_29 (.A(n_0_0_26), .B1(n_0_0_29), .B2(n_0_0_28), .ZN(n_0_3));
   AOI21_X1 i_0_0_30 (.A(n_0_0_27), .B1(n_0_0_90), .B2(n_0_0_49), .ZN(n_0_0_26));
   NOR3_X1 i_0_0_31 (.A1(n_0_0_94), .A2(n_0_0_41), .A3(n_0_0_70), .ZN(n_0_0_27));
   NOR3_X1 i_0_0_32 (.A1(rst), .A2(n_0_0_50), .A3(fdoor), .ZN(n_0_0_28));
   NAND2_X1 i_0_0_33 (.A1(SFD), .A2(n_0_0_30), .ZN(n_0_0_29));
   NAND4_X1 i_0_0_34 (.A1(n_0_0_89), .A2(n_0_0_37), .A3(n_0_0_32), .A4(n_0_0_31), 
      .ZN(n_0_0_30));
   NAND3_X1 i_0_0_35 (.A1(n_0_0_92), .A2(n_0_0_74), .A3(my_curr_state[0]), 
      .ZN(n_0_0_31));
   OAI21_X1 i_0_0_36 (.A(n_0_0_92), .B1(n_0_0_93), .B2(n_0_0_40), .ZN(n_0_0_32));
   AOI22_X1 i_0_0_37 (.A1(n_0_0_52), .A2(n_0_0_37), .B1(n_0_0_36), .B2(n_0_0_33), 
      .ZN(n_0_4));
   INV_X1 i_0_0_38 (.A(n_0_0_34), .ZN(n_0_0_33));
   AOI211_X1 i_0_0_39 (.A(n_0_0_35), .B(n_0_0_39), .C1(SFD), .C2(n_0_0_49), 
      .ZN(n_0_0_34));
   NAND3_X1 i_0_0_40 (.A1(SRD), .A2(n_0_0_58), .A3(n_0_0_54), .ZN(n_0_0_35));
   NAND3_X1 i_0_0_41 (.A1(rdoor), .A2(n_0_0_90), .A3(n_0_0_51), .ZN(n_0_0_36));
   NAND2_X1 i_0_0_42 (.A1(n_0_0_98), .A2(n_0_0_38), .ZN(n_0_0_37));
   OAI21_X1 i_0_0_43 (.A(n_0_0_86), .B1(my_curr_state[0]), .B2(n_0_0_82), 
      .ZN(n_0_0_38));
   AOI21_X1 i_0_0_44 (.A(n_0_0_39), .B1(n_0_0_46), .B2(n_0_0_42), .ZN(n_0_5));
   OAI21_X1 i_0_0_45 (.A(n_0_0_90), .B1(n_0_0_62), .B2(n_0_0_40), .ZN(n_0_0_39));
   INV_X1 i_0_0_46 (.A(n_0_0_41), .ZN(n_0_0_40));
   NAND2_X1 i_0_0_47 (.A1(n_0_0_98), .A2(n_0_0_97), .ZN(n_0_0_41));
   NAND3_X1 i_0_0_48 (.A1(SW), .A2(n_0_0_84), .A3(n_0_0_43), .ZN(n_0_0_42));
   INV_X1 i_0_0_49 (.A(n_0_0_44), .ZN(n_0_0_43));
   AOI21_X1 i_0_0_50 (.A(n_0_0_45), .B1(n_0_0_92), .B2(n_0_0_74), .ZN(n_0_0_44));
   OAI21_X1 i_0_0_51 (.A(my_curr_state[0]), .B1(ST[0]), .B2(my_curr_state[2]), 
      .ZN(n_0_0_45));
   OAI21_X1 i_0_0_52 (.A(n_0_0_62), .B1(winbuzz), .B2(n_0_0_47), .ZN(n_0_0_46));
   AOI21_X1 i_0_0_53 (.A(n_0_0_96), .B1(n_0_0_51), .B2(n_0_0_48), .ZN(n_0_0_47));
   NAND2_X1 i_0_0_54 (.A1(n_0_0_95), .A2(n_0_0_50), .ZN(n_0_0_48));
   INV_X1 i_0_0_55 (.A(n_0_0_50), .ZN(n_0_0_49));
   NOR2_X1 i_0_0_56 (.A1(my_curr_state[1]), .A2(n_0_0_86), .ZN(n_0_0_50));
   INV_X1 i_0_0_57 (.A(n_0_0_52), .ZN(n_0_0_51));
   NOR2_X1 i_0_0_58 (.A1(my_curr_state[0]), .A2(n_0_0_87), .ZN(n_0_0_52));
   AOI21_X1 i_0_0_59 (.A(rst), .B1(n_0_0_59), .B2(n_0_0_53), .ZN(n_0_6));
   NAND4_X1 i_0_0_60 (.A1(SFA), .A2(n_0_0_84), .A3(n_0_0_56), .A4(n_0_0_54), 
      .ZN(n_0_0_53));
   AOI21_X1 i_0_0_61 (.A(n_0_0_55), .B1(ST[0]), .B2(n_0_0_80), .ZN(n_0_0_54));
   NOR2_X1 i_0_0_62 (.A1(n_0_0_93), .A2(n_0_0_81), .ZN(n_0_0_55));
   AOI221_X1 i_0_0_63 (.A(n_0_0_57), .B1(ST[0]), .B2(n_0_0_80), .C1(SW), 
      .C2(n_0_0_84), .ZN(n_0_0_56));
   INV_X1 i_0_0_64 (.A(n_0_0_58), .ZN(n_0_0_57));
   NAND3_X1 i_0_0_65 (.A1(my_curr_state[2]), .A2(my_curr_state[0]), .A3(n_0_0_73), 
      .ZN(n_0_0_58));
   OAI33_X1 i_0_0_66 (.A1(my_curr_state[2]), .A2(n_0_0_92), .A3(n_0_0_91), 
      .B1(n_0_0_63), .B2(n_0_0_60), .B3(alarambuzz), .ZN(n_0_0_59));
   NOR2_X1 i_0_0_67 (.A1(n_0_0_97), .A2(n_0_0_62), .ZN(n_0_0_60));
   INV_X1 i_0_0_68 (.A(n_0_0_62), .ZN(n_0_0_61));
   NAND2_X1 i_0_0_69 (.A1(n_0_0_91), .A2(n_0_0_79), .ZN(n_0_0_62));
   NOR3_X1 i_0_0_70 (.A1(n_0_0_97), .A2(SW), .A3(n_0_0_83), .ZN(n_0_0_63));
   OAI21_X1 i_0_0_71 (.A(n_0_0_67), .B1(n_0_0_66), .B2(n_0_0_64), .ZN(n_0_7));
   OAI21_X1 i_0_0_72 (.A(n_0_0_65), .B1(n_0_0_78), .B2(n_0_0_69), .ZN(n_0_0_64));
   NOR2_X1 i_0_0_73 (.A1(ST[1]), .A2(n_0_0_98), .ZN(n_0_0_65));
   AOI21_X1 i_0_0_74 (.A(n_0_0_77), .B1(n_0_0_97), .B2(n_0_0_79), .ZN(n_0_0_66));
   NAND2_X1 i_0_0_75 (.A1(heater), .A2(n_0_0_78), .ZN(n_0_0_67));
   OAI33_X1 i_0_0_76 (.A1(rst), .A2(n_0_0_88), .A3(n_0_0_99), .B1(n_0_0_75), 
      .B2(n_0_0_68), .B3(n_0_0_74), .ZN(n_0_8));
   AOI21_X1 i_0_0_77 (.A(n_0_0_69), .B1(n_0_0_90), .B2(n_0_0_89), .ZN(n_0_0_68));
   NOR3_X1 i_0_0_78 (.A1(SFA), .A2(n_0_0_70), .A3(SFD), .ZN(n_0_0_69));
   INV_X1 i_0_0_79 (.A(n_0_0_71), .ZN(n_0_0_70));
   NOR2_X1 i_0_0_80 (.A1(SRD), .A2(n_0_0_72), .ZN(n_0_0_71));
   NAND2_X1 i_0_0_81 (.A1(n_0_0_96), .A2(n_0_0_90), .ZN(n_0_0_72));
   INV_X1 i_0_0_82 (.A(n_0_0_74), .ZN(n_0_0_73));
   NAND2_X1 i_0_0_83 (.A1(ST[1]), .A2(ST[0]), .ZN(n_0_0_74));
   NOR2_X1 i_0_0_84 (.A1(n_0_0_77), .A2(n_0_0_76), .ZN(n_0_0_75));
   AOI211_X1 i_0_0_85 (.A(n_0_0_93), .B(my_curr_state[0]), .C1(SFA), .C2(
      n_0_0_92), .ZN(n_0_0_76));
   OAI221_X1 i_0_0_86 (.A(n_0_0_78), .B1(n_0_0_91), .B2(n_0_0_87), .C1(n_0_0_83), 
      .C2(n_0_0_82), .ZN(n_0_0_77));
   AOI21_X1 i_0_0_87 (.A(rst), .B1(my_curr_state[0]), .B2(n_0_0_79), .ZN(
      n_0_0_78));
   NOR2_X1 i_0_0_88 (.A1(n_0_0_93), .A2(my_curr_state[1]), .ZN(n_0_0_79));
   INV_X1 i_0_0_89 (.A(n_0_0_81), .ZN(n_0_0_80));
   NAND2_X1 i_0_0_90 (.A1(my_curr_state[1]), .A2(my_curr_state[0]), .ZN(n_0_0_81));
   NAND2_X1 i_0_0_91 (.A1(n_0_0_97), .A2(n_0_0_96), .ZN(n_0_0_82));
   AOI21_X1 i_0_0_92 (.A(n_0_0_85), .B1(n_0_0_91), .B2(n_0_0_84), .ZN(n_0_0_83));
   NOR2_X1 i_0_0_93 (.A1(SRD), .A2(SFD), .ZN(n_0_0_84));
   OAI21_X1 i_0_0_94 (.A(n_0_0_87), .B1(SRD), .B2(n_0_0_86), .ZN(n_0_0_85));
   NAND2_X1 i_0_0_95 (.A1(n_0_0_93), .A2(my_curr_state[0]), .ZN(n_0_0_86));
   NAND2_X1 i_0_0_96 (.A1(n_0_0_93), .A2(my_curr_state[1]), .ZN(n_0_0_87));
   INV_X1 i_0_0_97 (.A(n_0_0_89), .ZN(n_0_0_88));
   NAND3_X1 i_0_0_98 (.A1(my_curr_state[2]), .A2(n_0_0_91), .A3(my_curr_state[1]), 
      .ZN(n_0_0_89));
   INV_X1 i_0_0_99 (.A(rst), .ZN(n_0_0_90));
   INV_X1 i_0_0_100 (.A(my_curr_state[0]), .ZN(n_0_0_91));
   INV_X1 i_0_0_101 (.A(my_curr_state[1]), .ZN(n_0_0_92));
   INV_X1 i_0_0_102 (.A(my_curr_state[2]), .ZN(n_0_0_93));
   INV_X1 i_0_0_103 (.A(SFD), .ZN(n_0_0_94));
   INV_X1 i_0_0_104 (.A(SRD), .ZN(n_0_0_95));
   INV_X1 i_0_0_105 (.A(SW), .ZN(n_0_0_96));
   INV_X1 i_0_0_106 (.A(SFA), .ZN(n_0_0_97));
   INV_X1 i_0_0_107 (.A(ST[0]), .ZN(n_0_0_98));
   INV_X1 i_0_0_108 (.A(cooler), .ZN(n_0_0_99));
endmodule
