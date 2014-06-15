////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: floating_point_v5_0.v
// /___/   /\     Timestamp: Mon Jun  9 16:29:52 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/aruls/projects/phd/g729/design/arith/xil/tmp/_cg/floating_point_v5_0.ngc /home/aruls/projects/phd/g729/design/arith/xil/tmp/_cg/floating_point_v5_0.v 
// Device	: 6slx100tfgg484-3
// Input file	: /home/aruls/projects/phd/g729/design/arith/xil/tmp/_cg/floating_point_v5_0.ngc
// Output file	: /home/aruls/projects/phd/g729/design/arith/xil/tmp/_cg/floating_point_v5_0.v
// # of Modules	: 1
// Design Name	: floating_point_v5_0
// Xilinx        : /home/aruls/tools/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module floating_point_v5_0 (
  clk, a, b, operation, result
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input [31 : 0] a;
  input [31 : 0] b;
  input [5 : 0] operation;
  output [31 : 0] result;
  
  // synthesis translate_off
  
  wire \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/sign_op ;
  wire sig00000001;
  wire sig00000002;
  wire sig00000003;
  wire sig00000004;
  wire sig00000005;
  wire sig00000006;
  wire sig00000007;
  wire sig00000008;
  wire sig00000009;
  wire sig0000000a;
  wire sig0000000b;
  wire sig0000000c;
  wire sig0000000d;
  wire sig0000000e;
  wire sig0000000f;
  wire sig00000010;
  wire sig00000011;
  wire sig00000012;
  wire sig00000013;
  wire sig00000014;
  wire sig00000015;
  wire sig00000016;
  wire sig00000017;
  wire sig00000018;
  wire sig00000019;
  wire sig0000001a;
  wire sig0000001b;
  wire sig0000001c;
  wire sig0000001d;
  wire sig0000001e;
  wire sig0000001f;
  wire sig00000020;
  wire sig00000021;
  wire sig00000022;
  wire sig00000023;
  wire sig00000024;
  wire sig00000025;
  wire sig00000026;
  wire sig00000027;
  wire sig00000028;
  wire sig00000029;
  wire sig0000002a;
  wire sig0000002b;
  wire sig0000002c;
  wire sig0000002d;
  wire sig0000002e;
  wire sig0000002f;
  wire sig00000030;
  wire sig00000031;
  wire sig00000032;
  wire sig00000033;
  wire sig00000034;
  wire sig00000035;
  wire sig00000036;
  wire sig00000037;
  wire sig00000038;
  wire sig00000039;
  wire sig0000003a;
  wire sig0000003b;
  wire sig0000003c;
  wire sig0000003d;
  wire sig0000003e;
  wire sig0000003f;
  wire sig00000040;
  wire sig00000041;
  wire sig00000042;
  wire sig00000043;
  wire sig00000044;
  wire sig00000045;
  wire sig00000046;
  wire sig00000047;
  wire sig00000048;
  wire sig00000049;
  wire sig0000004a;
  wire sig0000004b;
  wire sig0000004c;
  wire sig0000004d;
  wire sig0000004e;
  wire sig0000004f;
  wire sig00000050;
  wire sig00000051;
  wire sig00000052;
  wire sig00000053;
  wire sig00000054;
  wire sig00000055;
  wire sig00000056;
  wire sig00000057;
  wire sig00000058;
  wire sig00000059;
  wire sig0000005a;
  wire sig0000005b;
  wire sig0000005c;
  wire sig0000005d;
  wire sig0000005e;
  wire sig0000005f;
  wire sig00000060;
  wire sig00000061;
  wire sig00000062;
  wire sig00000063;
  wire sig00000064;
  wire sig00000065;
  wire sig00000066;
  wire sig00000067;
  wire sig00000068;
  wire sig00000069;
  wire sig0000006a;
  wire sig0000006b;
  wire sig0000006c;
  wire sig0000006d;
  wire sig0000006e;
  wire sig0000006f;
  wire sig00000070;
  wire sig00000071;
  wire sig00000072;
  wire sig00000073;
  wire sig00000074;
  wire sig00000075;
  wire sig00000076;
  wire sig00000077;
  wire sig00000078;
  wire sig00000079;
  wire sig0000007a;
  wire sig0000007b;
  wire sig0000007c;
  wire sig0000007d;
  wire sig0000007e;
  wire sig0000007f;
  wire sig00000080;
  wire sig00000081;
  wire sig00000082;
  wire sig00000083;
  wire sig00000084;
  wire sig00000085;
  wire sig00000086;
  wire sig00000087;
  wire sig00000088;
  wire sig00000089;
  wire sig0000008a;
  wire sig0000008b;
  wire sig0000008c;
  wire sig0000008d;
  wire sig0000008e;
  wire sig0000008f;
  wire sig00000090;
  wire sig00000091;
  wire sig00000092;
  wire sig00000093;
  wire sig00000094;
  wire sig00000095;
  wire sig00000096;
  wire sig00000097;
  wire sig00000098;
  wire sig00000099;
  wire sig0000009a;
  wire sig0000009b;
  wire sig0000009c;
  wire sig0000009d;
  wire sig0000009e;
  wire sig0000009f;
  wire sig000000a0;
  wire sig000000a1;
  wire sig000000a2;
  wire sig000000a3;
  wire sig000000a4;
  wire sig000000a5;
  wire sig000000a6;
  wire sig000000a7;
  wire sig000000a8;
  wire sig000000a9;
  wire sig000000aa;
  wire sig000000ab;
  wire sig000000ac;
  wire sig000000ad;
  wire sig000000ae;
  wire sig000000af;
  wire sig000000b0;
  wire sig000000b1;
  wire sig000000b2;
  wire sig000000b3;
  wire sig000000b4;
  wire sig000000b5;
  wire sig000000b6;
  wire sig000000b7;
  wire sig000000b8;
  wire sig000000b9;
  wire sig000000ba;
  wire sig000000bb;
  wire sig000000bc;
  wire sig000000bd;
  wire sig000000be;
  wire sig000000bf;
  wire sig000000c0;
  wire sig000000c1;
  wire sig000000c2;
  wire sig000000c3;
  wire sig000000c4;
  wire sig000000c5;
  wire sig000000c6;
  wire sig000000c7;
  wire sig000000c8;
  wire sig000000c9;
  wire sig000000ca;
  wire sig000000cb;
  wire sig000000cc;
  wire sig000000cd;
  wire sig000000ce;
  wire sig000000cf;
  wire sig000000d0;
  wire sig000000d1;
  wire sig000000d2;
  wire sig000000d3;
  wire sig000000d4;
  wire sig000000d5;
  wire sig000000d6;
  wire sig000000d7;
  wire sig000000d8;
  wire sig000000d9;
  wire sig000000da;
  wire sig000000db;
  wire sig000000dc;
  wire sig000000dd;
  wire sig000000de;
  wire sig000000df;
  wire sig000000e0;
  wire sig000000e1;
  wire sig000000e2;
  wire sig000000e3;
  wire sig000000e4;
  wire sig000000e5;
  wire sig000000e6;
  wire sig000000e7;
  wire sig000000e8;
  wire sig000000e9;
  wire sig000000ea;
  wire sig000000eb;
  wire sig000000ec;
  wire sig000000ed;
  wire sig000000ee;
  wire sig000000ef;
  wire sig000000f0;
  wire sig000000f1;
  wire sig000000f2;
  wire sig000000f3;
  wire sig000000f4;
  wire sig000000f5;
  wire sig000000f6;
  wire sig000000f7;
  wire sig000000f8;
  wire sig000000f9;
  wire sig000000fa;
  wire sig000000fb;
  wire sig000000fc;
  wire sig000000fd;
  wire sig000000fe;
  wire sig000000ff;
  wire sig00000100;
  wire sig00000101;
  wire sig00000102;
  wire sig00000103;
  wire sig00000104;
  wire sig00000105;
  wire sig00000106;
  wire sig00000107;
  wire sig00000108;
  wire sig00000109;
  wire sig0000010a;
  wire sig0000010b;
  wire sig0000010c;
  wire sig0000010d;
  wire sig0000010e;
  wire sig0000010f;
  wire sig00000110;
  wire sig00000111;
  wire sig00000112;
  wire sig00000113;
  wire sig00000114;
  wire sig00000115;
  wire sig00000116;
  wire sig00000117;
  wire sig00000118;
  wire sig00000119;
  wire sig0000011a;
  wire sig0000011b;
  wire sig0000011c;
  wire sig0000011d;
  wire sig0000011e;
  wire sig0000011f;
  wire sig00000120;
  wire sig00000121;
  wire sig00000122;
  wire sig00000123;
  wire sig00000124;
  wire sig00000125;
  wire sig00000126;
  wire sig00000127;
  wire sig00000128;
  wire sig00000129;
  wire sig0000012a;
  wire sig0000012b;
  wire sig0000012c;
  wire sig0000012d;
  wire sig0000012e;
  wire sig0000012f;
  wire sig00000130;
  wire sig00000131;
  wire sig00000132;
  wire sig00000133;
  wire sig00000134;
  wire sig00000135;
  wire sig00000136;
  wire sig00000137;
  wire sig00000138;
  wire sig00000139;
  wire sig0000013a;
  wire sig0000013b;
  wire sig0000013c;
  wire sig0000013d;
  wire sig0000013e;
  wire sig0000013f;
  wire sig00000140;
  wire sig00000141;
  wire sig00000142;
  wire sig00000143;
  wire sig00000144;
  wire sig00000145;
  wire sig00000146;
  wire sig00000147;
  wire sig00000148;
  wire sig00000149;
  wire sig0000014a;
  wire sig0000014b;
  wire sig0000014c;
  wire sig0000014d;
  wire sig0000014e;
  wire sig0000014f;
  wire sig00000150;
  wire sig00000151;
  wire sig00000152;
  wire sig00000153;
  wire sig00000154;
  wire sig00000155;
  wire sig00000156;
  wire sig00000157;
  wire sig00000158;
  wire sig00000159;
  wire sig0000015a;
  wire sig0000015b;
  wire sig0000015c;
  wire sig0000015d;
  wire sig0000015e;
  wire sig0000015f;
  wire sig00000160;
  wire sig00000161;
  wire sig00000162;
  wire sig00000163;
  wire sig00000164;
  wire sig00000165;
  wire sig00000166;
  wire sig00000167;
  wire sig00000168;
  wire sig00000169;
  wire sig0000016a;
  wire sig0000016b;
  wire sig0000016c;
  wire sig0000016d;
  wire sig0000016e;
  wire sig0000016f;
  wire sig00000170;
  wire sig00000171;
  wire sig00000172;
  wire sig00000173;
  wire sig00000174;
  wire sig00000175;
  wire sig00000176;
  wire sig00000177;
  wire sig00000178;
  wire sig00000179;
  wire sig0000017a;
  wire sig0000017b;
  wire sig0000017c;
  wire sig0000017d;
  wire sig0000017e;
  wire sig0000017f;
  wire sig00000180;
  wire sig00000181;
  wire sig00000182;
  wire sig00000183;
  wire sig00000184;
  wire sig00000185;
  wire sig00000186;
  wire sig00000187;
  wire sig00000188;
  wire sig00000189;
  wire sig0000018a;
  wire sig0000018b;
  wire sig0000018c;
  wire sig0000018d;
  wire sig0000018e;
  wire sig0000018f;
  wire sig00000190;
  wire sig00000191;
  wire sig00000192;
  wire sig00000193;
  wire sig00000194;
  wire sig00000195;
  wire sig00000196;
  wire sig00000197;
  wire sig00000198;
  wire sig00000199;
  wire sig0000019a;
  wire sig0000019b;
  wire sig0000019c;
  wire sig0000019d;
  wire sig0000019e;
  wire sig0000019f;
  wire sig000001a0;
  wire sig000001a1;
  wire sig000001a2;
  wire sig000001a3;
  wire sig000001a4;
  wire sig000001a5;
  wire sig000001a6;
  wire sig000001a7;
  wire sig000001a8;
  wire sig000001a9;
  wire sig000001aa;
  wire sig000001ab;
  wire sig000001ac;
  wire sig000001ad;
  wire sig000001ae;
  wire sig000001af;
  wire sig000001b0;
  wire sig000001b1;
  wire sig000001b2;
  wire sig000001b3;
  wire sig000001b4;
  wire sig000001b5;
  wire sig000001b6;
  wire sig000001b7;
  wire sig000001b8;
  wire sig000001b9;
  wire sig000001ba;
  wire sig000001bb;
  wire sig000001bc;
  wire sig000001bd;
  wire sig000001be;
  wire sig000001bf;
  wire sig000001c0;
  wire sig000001c1;
  wire sig000001c2;
  wire sig000001c3;
  wire sig000001c4;
  wire sig000001c5;
  wire sig000001c6;
  wire sig000001c7;
  wire sig000001c8;
  wire sig000001c9;
  wire sig000001ca;
  wire sig000001cb;
  wire sig000001cc;
  wire sig000001cd;
  wire sig000001ce;
  wire sig000001cf;
  wire sig000001d0;
  wire sig000001d1;
  wire sig000001d2;
  wire sig000001d3;
  wire sig000001d4;
  wire sig000001d5;
  wire sig000001d6;
  wire sig000001d7;
  wire sig000001d8;
  wire sig000001d9;
  wire sig000001da;
  wire sig000001db;
  wire sig000001dc;
  wire sig000001dd;
  wire sig000001de;
  wire sig000001df;
  wire sig000001e0;
  wire sig000001e1;
  wire sig000001e2;
  wire sig000001e3;
  wire sig000001e4;
  wire sig000001e5;
  wire sig000001e6;
  wire sig000001e7;
  wire sig000001e8;
  wire sig000001e9;
  wire sig000001ea;
  wire sig000001eb;
  wire sig000001ec;
  wire sig000001ed;
  wire sig000001ee;
  wire sig000001ef;
  wire sig000001f0;
  wire sig000001f1;
  wire sig000001f2;
  wire sig000001f3;
  wire sig000001f4;
  wire sig000001f5;
  wire sig000001f6;
  wire sig000001f7;
  wire sig000001f8;
  wire sig000001f9;
  wire sig000001fa;
  wire sig000001fb;
  wire sig000001fc;
  wire sig000001fd;
  wire sig000001fe;
  wire sig000001ff;
  wire sig00000200;
  wire sig00000201;
  wire sig00000202;
  wire sig00000203;
  wire sig00000204;
  wire sig00000205;
  wire sig00000206;
  wire sig00000207;
  wire sig00000208;
  wire sig00000209;
  wire sig0000020a;
  wire sig0000020b;
  wire sig0000020c;
  wire sig0000020d;
  wire sig0000020e;
  wire sig0000020f;
  wire sig00000210;
  wire sig00000211;
  wire sig00000212;
  wire sig00000213;
  wire sig00000214;
  wire sig00000215;
  wire sig00000216;
  wire sig00000217;
  wire sig00000218;
  wire sig00000219;
  wire sig0000021a;
  wire sig0000021b;
  wire sig0000021c;
  wire sig0000021d;
  wire sig0000021e;
  wire sig0000021f;
  wire sig00000220;
  wire sig00000221;
  wire sig00000222;
  wire sig00000223;
  wire sig00000224;
  wire sig00000225;
  wire sig00000226;
  wire sig00000227;
  wire sig00000228;
  wire sig00000229;
  wire sig0000022a;
  wire sig0000022b;
  wire sig0000022c;
  wire sig0000022d;
  wire sig0000022e;
  wire sig0000022f;
  wire sig00000230;
  wire sig00000231;
  wire sig00000232;
  wire sig00000233;
  wire sig00000234;
  wire sig00000235;
  wire sig00000236;
  wire sig00000237;
  wire sig00000238;
  wire sig00000239;
  wire sig0000023a;
  wire sig0000023b;
  wire sig0000023c;
  wire sig0000023d;
  wire sig0000023e;
  wire sig0000023f;
  wire sig00000240;
  wire sig00000241;
  wire sig00000242;
  wire sig00000243;
  wire sig00000244;
  wire sig00000245;
  wire sig00000246;
  wire sig00000247;
  wire sig00000248;
  wire sig00000249;
  wire sig0000024a;
  wire sig0000024b;
  wire sig0000024c;
  wire sig0000024d;
  wire sig0000024e;
  wire sig0000024f;
  wire sig00000250;
  wire sig00000251;
  wire sig00000252;
  wire sig00000253;
  wire sig00000254;
  wire sig00000255;
  wire sig00000256;
  wire sig00000257;
  wire sig00000258;
  wire sig00000259;
  wire sig0000025a;
  wire sig0000025b;
  wire sig0000025c;
  wire sig0000025d;
  wire sig0000025e;
  wire sig0000025f;
  wire sig00000260;
  wire sig00000261;
  wire sig00000262;
  wire sig00000263;
  wire sig00000264;
  wire sig00000265;
  wire sig00000266;
  wire sig00000267;
  wire sig00000268;
  wire sig00000269;
  wire sig0000026a;
  wire sig0000026b;
  wire sig0000026c;
  wire sig0000026d;
  wire sig0000026e;
  wire sig0000026f;
  wire sig00000270;
  wire sig00000271;
  wire sig00000272;
  wire sig00000273;
  wire sig00000274;
  wire sig00000275;
  wire sig00000276;
  wire sig00000277;
  wire sig00000278;
  wire sig00000279;
  wire sig0000027a;
  wire sig0000027b;
  wire sig0000027c;
  wire sig0000027d;
  wire sig0000027e;
  wire NLW_blk0000009a_O_UNCONNECTED;
  wire NLW_blk000000e4_O_UNCONNECTED;
  wire NLW_blk000000e5_O_UNCONNECTED;
  wire NLW_blk000000e7_O_UNCONNECTED;
  wire NLW_blk000000e9_O_UNCONNECTED;
  wire NLW_blk000000eb_O_UNCONNECTED;
  wire NLW_blk000000ed_O_UNCONNECTED;
  wire NLW_blk000000ef_O_UNCONNECTED;
  wire NLW_blk000000f1_O_UNCONNECTED;
  wire [7 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op ;
  wire [22 : 0] \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op ;
  assign
    result[31] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/sign_op ,
    result[30] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [7],
    result[29] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [6],
    result[28] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [5],
    result[27] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [4],
    result[26] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [3],
    result[25] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [2],
    result[24] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [1],
    result[23] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [0],
    result[22] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [22],
    result[21] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [21],
    result[20] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [20],
    result[19] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [19],
    result[18] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [18],
    result[17] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [17],
    result[16] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [16],
    result[15] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [15],
    result[14] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [14],
    result[13] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [13],
    result[12] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [12],
    result[11] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [11],
    result[10] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [10],
    result[9] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [9],
    result[8] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [8],
    result[7] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [7],
    result[6] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [6],
    result[5] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [5],
    result[4] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [4],
    result[3] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [3],
    result[2] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [2],
    result[1] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [1],
    result[0] = \U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [0];
  VCC   blk00000001 (
    .P(sig00000001)
  );
  GND   blk00000002 (
    .G(sig00000002)
  );
  XORCY   blk00000003 (
    .CI(sig0000002f),
    .LI(sig00000001),
    .O(sig000000cc)
  );
  XORCY   blk00000004 (
    .CI(sig00000031),
    .LI(sig00000030),
    .O(sig000000ce)
  );
  MUXCY   blk00000005 (
    .CI(sig00000031),
    .DI(sig000000c4),
    .S(sig00000030),
    .O(sig0000002f)
  );
  XORCY   blk00000006 (
    .CI(sig00000033),
    .LI(sig00000032),
    .O(sig000000cf)
  );
  MUXCY   blk00000007 (
    .CI(sig00000033),
    .DI(sig000000c5),
    .S(sig00000032),
    .O(sig00000031)
  );
  XORCY   blk00000008 (
    .CI(sig00000035),
    .LI(sig00000034),
    .O(sig000000d0)
  );
  MUXCY   blk00000009 (
    .CI(sig00000035),
    .DI(sig000000c6),
    .S(sig00000034),
    .O(sig00000033)
  );
  XORCY   blk0000000a (
    .CI(sig00000037),
    .LI(sig00000036),
    .O(sig000000d1)
  );
  MUXCY   blk0000000b (
    .CI(sig00000037),
    .DI(sig000000c7),
    .S(sig00000036),
    .O(sig00000035)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000000c (
    .I0(sig000000c7),
    .I1(sig00000057),
    .O(sig00000036)
  );
  XORCY   blk0000000d (
    .CI(sig00000039),
    .LI(sig00000038),
    .O(sig000000d2)
  );
  MUXCY   blk0000000e (
    .CI(sig00000039),
    .DI(sig000000c8),
    .S(sig00000038),
    .O(sig00000037)
  );
  XORCY   blk0000000f (
    .CI(sig0000003b),
    .LI(sig0000003a),
    .O(sig000000d3)
  );
  MUXCY   blk00000010 (
    .CI(sig0000003b),
    .DI(sig000000c9),
    .S(sig0000003a),
    .O(sig00000039)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000011 (
    .I0(sig000000c9),
    .I1(sig00000059),
    .O(sig0000003a)
  );
  XORCY   blk00000012 (
    .CI(sig0000003d),
    .LI(sig0000003c),
    .O(sig000000d4)
  );
  MUXCY   blk00000013 (
    .CI(sig0000003d),
    .DI(sig000000ca),
    .S(sig0000003c),
    .O(sig0000003b)
  );
  XORCY   blk00000014 (
    .CI(sig00000001),
    .LI(sig0000003e),
    .O(sig000000d5)
  );
  MUXCY   blk00000015 (
    .CI(sig00000001),
    .DI(sig000000cb),
    .S(sig0000003e),
    .O(sig0000003d)
  );
  XORCY   blk00000016 (
    .CI(sig00000046),
    .LI(sig00000001),
    .O(sig000000d7)
  );
  XORCY   blk00000017 (
    .CI(sig00000048),
    .LI(sig00000047),
    .O(sig000000d8)
  );
  MUXCY   blk00000018 (
    .CI(sig00000048),
    .DI(b[30]),
    .S(sig00000047),
    .O(sig00000046)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000019 (
    .I0(b[30]),
    .I1(a[30]),
    .O(sig00000047)
  );
  XORCY   blk0000001a (
    .CI(sig0000004a),
    .LI(sig00000049),
    .O(sig000000d9)
  );
  MUXCY   blk0000001b (
    .CI(sig0000004a),
    .DI(b[29]),
    .S(sig00000049),
    .O(sig00000048)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000001c (
    .I0(b[29]),
    .I1(a[29]),
    .O(sig00000049)
  );
  XORCY   blk0000001d (
    .CI(sig0000004c),
    .LI(sig0000004b),
    .O(sig000000da)
  );
  MUXCY   blk0000001e (
    .CI(sig0000004c),
    .DI(b[28]),
    .S(sig0000004b),
    .O(sig0000004a)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000001f (
    .I0(b[28]),
    .I1(a[28]),
    .O(sig0000004b)
  );
  XORCY   blk00000020 (
    .CI(sig0000004e),
    .LI(sig0000004d),
    .O(sig000000db)
  );
  MUXCY   blk00000021 (
    .CI(sig0000004e),
    .DI(b[27]),
    .S(sig0000004d),
    .O(sig0000004c)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000022 (
    .I0(b[27]),
    .I1(a[27]),
    .O(sig0000004d)
  );
  XORCY   blk00000023 (
    .CI(sig00000050),
    .LI(sig0000004f),
    .O(sig000000dc)
  );
  MUXCY   blk00000024 (
    .CI(sig00000050),
    .DI(b[26]),
    .S(sig0000004f),
    .O(sig0000004e)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000025 (
    .I0(b[26]),
    .I1(a[26]),
    .O(sig0000004f)
  );
  XORCY   blk00000026 (
    .CI(sig00000052),
    .LI(sig00000051),
    .O(sig000000dd)
  );
  MUXCY   blk00000027 (
    .CI(sig00000052),
    .DI(b[25]),
    .S(sig00000051),
    .O(sig00000050)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000028 (
    .I0(b[25]),
    .I1(a[25]),
    .O(sig00000051)
  );
  XORCY   blk00000029 (
    .CI(sig00000054),
    .LI(sig00000053),
    .O(sig000000de)
  );
  MUXCY   blk0000002a (
    .CI(sig00000054),
    .DI(b[24]),
    .S(sig00000053),
    .O(sig00000052)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000002b (
    .I0(b[24]),
    .I1(a[24]),
    .O(sig00000053)
  );
  XORCY   blk0000002c (
    .CI(sig00000001),
    .LI(sig00000055),
    .O(sig0000003f)
  );
  MUXCY   blk0000002d (
    .CI(sig00000001),
    .DI(b[23]),
    .S(sig00000055),
    .O(sig00000054)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000002e (
    .I0(b[23]),
    .I1(a[23]),
    .O(sig00000055)
  );
  MUXCY   blk0000002f (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000104),
    .O(sig000000ff)
  );
  MUXCY   blk00000030 (
    .CI(sig000000ff),
    .DI(sig00000002),
    .S(sig00000103),
    .O(sig00000100)
  );
  MUXCY   blk00000031 (
    .CI(sig00000100),
    .DI(sig00000002),
    .S(sig00000102),
    .O(sig00000101)
  );
  MUXCY   blk00000032 (
    .CI(sig00000101),
    .DI(sig00000002),
    .S(sig00000105),
    .O(sig000000bd)
  );
  MUXCY   blk00000033 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig0000010b),
    .O(sig00000106)
  );
  MUXCY   blk00000034 (
    .CI(sig00000106),
    .DI(sig00000002),
    .S(sig0000010a),
    .O(sig00000107)
  );
  MUXCY   blk00000035 (
    .CI(sig00000107),
    .DI(sig00000002),
    .S(sig00000109),
    .O(sig00000108)
  );
  MUXCY   blk00000036 (
    .CI(sig00000108),
    .DI(sig00000002),
    .S(sig0000010c),
    .O(sig000000be)
  );
  MUXCY   blk00000037 (
    .CI(sig0000012d),
    .DI(sig0000010d),
    .S(sig0000010e),
    .O(sig000000fe)
  );
  MUXCY   blk00000038 (
    .CI(sig0000012e),
    .DI(sig0000010f),
    .S(sig00000110),
    .O(sig0000012d)
  );
  MUXCY   blk00000039 (
    .CI(sig0000012f),
    .DI(sig00000111),
    .S(sig00000112),
    .O(sig0000012e)
  );
  MUXCY   blk0000003a (
    .CI(sig00000130),
    .DI(sig00000113),
    .S(sig00000114),
    .O(sig0000012f)
  );
  MUXCY   blk0000003b (
    .CI(sig00000131),
    .DI(sig00000115),
    .S(sig00000116),
    .O(sig00000130)
  );
  MUXCY   blk0000003c (
    .CI(sig00000132),
    .DI(sig00000117),
    .S(sig00000118),
    .O(sig00000131)
  );
  MUXCY   blk0000003d (
    .CI(sig00000133),
    .DI(sig00000119),
    .S(sig0000011a),
    .O(sig00000132)
  );
  MUXCY   blk0000003e (
    .CI(sig00000134),
    .DI(sig0000011b),
    .S(sig0000011c),
    .O(sig00000133)
  );
  MUXCY   blk0000003f (
    .CI(sig00000135),
    .DI(sig0000011d),
    .S(sig0000011e),
    .O(sig00000134)
  );
  MUXCY   blk00000040 (
    .CI(sig00000136),
    .DI(sig0000011f),
    .S(sig00000120),
    .O(sig00000135)
  );
  MUXCY   blk00000041 (
    .CI(sig00000137),
    .DI(sig00000121),
    .S(sig00000122),
    .O(sig00000136)
  );
  MUXCY   blk00000042 (
    .CI(sig00000138),
    .DI(sig00000123),
    .S(sig00000124),
    .O(sig00000137)
  );
  MUXCY   blk00000043 (
    .CI(sig00000139),
    .DI(sig00000125),
    .S(sig00000126),
    .O(sig00000138)
  );
  MUXCY   blk00000044 (
    .CI(sig0000013a),
    .DI(sig00000127),
    .S(sig00000128),
    .O(sig00000139)
  );
  MUXCY   blk00000045 (
    .CI(sig0000013b),
    .DI(sig00000129),
    .S(sig0000012a),
    .O(sig0000013a)
  );
  MUXCY   blk00000046 (
    .CI(sig00000002),
    .DI(sig0000012b),
    .S(sig0000012c),
    .O(sig0000013b)
  );
  XORCY   blk00000047 (
    .CI(sig0000013c),
    .LI(sig00000002),
    .O(sig000000c3)
  );
  XORCY   blk00000048 (
    .CI(sig0000013d),
    .LI(sig000000df),
    .O(sig000000c4)
  );
  MUXCY   blk00000049 (
    .CI(sig0000013d),
    .DI(sig00000002),
    .S(sig000000df),
    .O(sig0000013c)
  );
  XORCY   blk0000004a (
    .CI(sig0000013e),
    .LI(sig000000e0),
    .O(sig000000c5)
  );
  MUXCY   blk0000004b (
    .CI(sig0000013e),
    .DI(sig00000002),
    .S(sig000000e0),
    .O(sig0000013d)
  );
  XORCY   blk0000004c (
    .CI(sig0000013f),
    .LI(sig000000e1),
    .O(sig000000c6)
  );
  MUXCY   blk0000004d (
    .CI(sig0000013f),
    .DI(sig00000002),
    .S(sig000000e1),
    .O(sig0000013e)
  );
  XORCY   blk0000004e (
    .CI(sig00000140),
    .LI(sig000000e2),
    .O(sig000000c7)
  );
  MUXCY   blk0000004f (
    .CI(sig00000140),
    .DI(sig00000002),
    .S(sig000000e2),
    .O(sig0000013f)
  );
  XORCY   blk00000050 (
    .CI(sig00000141),
    .LI(sig000000e3),
    .O(sig000000c8)
  );
  MUXCY   blk00000051 (
    .CI(sig00000141),
    .DI(sig00000002),
    .S(sig000000e3),
    .O(sig00000140)
  );
  XORCY   blk00000052 (
    .CI(sig00000142),
    .LI(sig000000e4),
    .O(sig000000c9)
  );
  MUXCY   blk00000053 (
    .CI(sig00000142),
    .DI(sig00000002),
    .S(sig000000e4),
    .O(sig00000141)
  );
  XORCY   blk00000054 (
    .CI(sig00000143),
    .LI(sig000000e5),
    .O(sig000000ca)
  );
  MUXCY   blk00000055 (
    .CI(sig00000143),
    .DI(sig00000002),
    .S(sig000000e5),
    .O(sig00000142)
  );
  XORCY   blk00000056 (
    .CI(sig00000002),
    .LI(sig000000e6),
    .O(sig000000cb)
  );
  MUXCY   blk00000057 (
    .CI(sig00000002),
    .DI(sig00000001),
    .S(sig000000e6),
    .O(sig00000143)
  );
  MUXF8   blk00000058 (
    .I0(sig00000145),
    .I1(sig00000144),
    .S(sig00000002),
    .O(sig000000bb)
  );
  MUXF7   blk00000059 (
    .I0(sig00000001),
    .I1(sig00000001),
    .S(sig000000b8),
    .O(sig00000144)
  );
  MUXF7   blk0000005a (
    .I0(sig00000147),
    .I1(sig00000146),
    .S(sig000000b8),
    .O(sig00000145)
  );
  MUXCY   blk0000005b (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000154),
    .O(sig0000014e)
  );
  MUXCY   blk0000005c (
    .CI(sig0000014e),
    .DI(sig00000002),
    .S(sig00000153),
    .O(sig0000014d)
  );
  MUXCY   blk0000005d (
    .CI(sig0000014d),
    .DI(sig00000002),
    .S(sig00000152),
    .O(sig0000014c)
  );
  MUXCY   blk0000005e (
    .CI(sig0000014c),
    .DI(sig00000002),
    .S(sig00000151),
    .O(sig00000148)
  );
  MUXCY   blk0000005f (
    .CI(sig00000148),
    .DI(sig00000002),
    .S(sig00000150),
    .O(sig0000014b)
  );
  MUXCY   blk00000060 (
    .CI(sig0000014b),
    .DI(sig00000002),
    .S(sig0000014f),
    .O(sig0000014a)
  );
  MUXCY   blk00000061 (
    .CI(sig0000014a),
    .DI(sig00000002),
    .S(sig00000002),
    .O(sig00000149)
  );
  MUXCY   blk00000062 (
    .CI(sig00000171),
    .DI(sig00000002),
    .S(sig00000273),
    .O(sig00000170)
  );
  MUXCY   blk00000063 (
    .CI(sig000000c2),
    .DI(sig00000002),
    .S(sig00000001),
    .O(sig00000171)
  );
  XORCY   blk00000064 (
    .CI(sig00000172),
    .LI(sig0000016e),
    .O(sig00000069)
  );
  MUXCY   blk00000065 (
    .CI(sig00000172),
    .DI(sig0000009b),
    .S(sig0000016e),
    .O(sig0000016f)
  );
  XORCY   blk00000066 (
    .CI(sig00000173),
    .LI(sig0000016d),
    .O(sig0000006a)
  );
  MUXCY   blk00000067 (
    .CI(sig00000173),
    .DI(sig0000009c),
    .S(sig0000016d),
    .O(sig00000172)
  );
  XORCY   blk00000068 (
    .CI(sig00000174),
    .LI(sig0000016c),
    .O(sig0000006b)
  );
  MUXCY   blk00000069 (
    .CI(sig00000174),
    .DI(sig0000009d),
    .S(sig0000016c),
    .O(sig00000173)
  );
  XORCY   blk0000006a (
    .CI(sig00000175),
    .LI(sig0000016b),
    .O(sig0000006c)
  );
  MUXCY   blk0000006b (
    .CI(sig00000175),
    .DI(sig0000009e),
    .S(sig0000016b),
    .O(sig00000174)
  );
  XORCY   blk0000006c (
    .CI(sig00000176),
    .LI(sig0000016a),
    .O(sig0000006d)
  );
  MUXCY   blk0000006d (
    .CI(sig00000176),
    .DI(sig0000009f),
    .S(sig0000016a),
    .O(sig00000175)
  );
  XORCY   blk0000006e (
    .CI(sig00000177),
    .LI(sig00000169),
    .O(sig0000006e)
  );
  MUXCY   blk0000006f (
    .CI(sig00000177),
    .DI(sig000000a0),
    .S(sig00000169),
    .O(sig00000176)
  );
  XORCY   blk00000070 (
    .CI(sig00000178),
    .LI(sig00000168),
    .O(sig0000006f)
  );
  MUXCY   blk00000071 (
    .CI(sig00000178),
    .DI(sig000000a1),
    .S(sig00000168),
    .O(sig00000177)
  );
  XORCY   blk00000072 (
    .CI(sig00000179),
    .LI(sig00000167),
    .O(sig00000070)
  );
  MUXCY   blk00000073 (
    .CI(sig00000179),
    .DI(sig000000a2),
    .S(sig00000167),
    .O(sig00000178)
  );
  XORCY   blk00000074 (
    .CI(sig0000017a),
    .LI(sig00000166),
    .O(sig00000071)
  );
  MUXCY   blk00000075 (
    .CI(sig0000017a),
    .DI(sig000000a3),
    .S(sig00000166),
    .O(sig00000179)
  );
  XORCY   blk00000076 (
    .CI(sig0000017b),
    .LI(sig00000165),
    .O(sig00000072)
  );
  MUXCY   blk00000077 (
    .CI(sig0000017b),
    .DI(sig000000a4),
    .S(sig00000165),
    .O(sig0000017a)
  );
  XORCY   blk00000078 (
    .CI(sig0000017c),
    .LI(sig00000164),
    .O(sig00000073)
  );
  MUXCY   blk00000079 (
    .CI(sig0000017c),
    .DI(sig000000a5),
    .S(sig00000164),
    .O(sig0000017b)
  );
  XORCY   blk0000007a (
    .CI(sig0000017d),
    .LI(sig00000163),
    .O(sig00000074)
  );
  MUXCY   blk0000007b (
    .CI(sig0000017d),
    .DI(sig00000002),
    .S(sig00000163),
    .O(sig0000017c)
  );
  XORCY   blk0000007c (
    .CI(sig00000170),
    .LI(sig00000162),
    .O(sig00000075)
  );
  MUXCY   blk0000007d (
    .CI(sig00000170),
    .DI(sig00000002),
    .S(sig00000162),
    .O(sig0000017d)
  );
  XORCY   blk0000007e (
    .CI(sig0000017e),
    .LI(sig00000274),
    .O(sig0000005b)
  );
  XORCY   blk0000007f (
    .CI(sig0000017f),
    .LI(sig00000161),
    .O(sig0000005c)
  );
  MUXCY   blk00000080 (
    .CI(sig0000017f),
    .DI(sig0000008e),
    .S(sig00000161),
    .O(sig0000017e)
  );
  XORCY   blk00000081 (
    .CI(sig00000180),
    .LI(sig00000160),
    .O(sig0000005d)
  );
  MUXCY   blk00000082 (
    .CI(sig00000180),
    .DI(sig0000008f),
    .S(sig00000160),
    .O(sig0000017f)
  );
  XORCY   blk00000083 (
    .CI(sig00000181),
    .LI(sig0000015f),
    .O(sig0000005e)
  );
  MUXCY   blk00000084 (
    .CI(sig00000181),
    .DI(sig00000090),
    .S(sig0000015f),
    .O(sig00000180)
  );
  XORCY   blk00000085 (
    .CI(sig00000182),
    .LI(sig0000015e),
    .O(sig0000005f)
  );
  MUXCY   blk00000086 (
    .CI(sig00000182),
    .DI(sig00000091),
    .S(sig0000015e),
    .O(sig00000181)
  );
  XORCY   blk00000087 (
    .CI(sig00000183),
    .LI(sig0000015d),
    .O(sig00000060)
  );
  MUXCY   blk00000088 (
    .CI(sig00000183),
    .DI(sig00000092),
    .S(sig0000015d),
    .O(sig00000182)
  );
  XORCY   blk00000089 (
    .CI(sig00000184),
    .LI(sig0000015c),
    .O(sig00000061)
  );
  MUXCY   blk0000008a (
    .CI(sig00000184),
    .DI(sig00000093),
    .S(sig0000015c),
    .O(sig00000183)
  );
  XORCY   blk0000008b (
    .CI(sig00000185),
    .LI(sig0000015b),
    .O(sig00000062)
  );
  MUXCY   blk0000008c (
    .CI(sig00000185),
    .DI(sig00000094),
    .S(sig0000015b),
    .O(sig00000184)
  );
  XORCY   blk0000008d (
    .CI(sig00000186),
    .LI(sig0000015a),
    .O(sig00000063)
  );
  MUXCY   blk0000008e (
    .CI(sig00000186),
    .DI(sig00000095),
    .S(sig0000015a),
    .O(sig00000185)
  );
  XORCY   blk0000008f (
    .CI(sig00000187),
    .LI(sig00000159),
    .O(sig00000064)
  );
  MUXCY   blk00000090 (
    .CI(sig00000187),
    .DI(sig00000096),
    .S(sig00000159),
    .O(sig00000186)
  );
  XORCY   blk00000091 (
    .CI(sig00000188),
    .LI(sig00000158),
    .O(sig00000065)
  );
  MUXCY   blk00000092 (
    .CI(sig00000188),
    .DI(sig00000097),
    .S(sig00000158),
    .O(sig00000187)
  );
  XORCY   blk00000093 (
    .CI(sig00000189),
    .LI(sig00000157),
    .O(sig00000066)
  );
  MUXCY   blk00000094 (
    .CI(sig00000189),
    .DI(sig00000098),
    .S(sig00000157),
    .O(sig00000188)
  );
  XORCY   blk00000095 (
    .CI(sig0000018a),
    .LI(sig00000156),
    .O(sig00000067)
  );
  MUXCY   blk00000096 (
    .CI(sig0000018a),
    .DI(sig00000099),
    .S(sig00000156),
    .O(sig00000189)
  );
  XORCY   blk00000097 (
    .CI(sig0000016f),
    .LI(sig00000155),
    .O(sig00000068)
  );
  MUXCY   blk00000098 (
    .CI(sig0000016f),
    .DI(sig0000009a),
    .S(sig00000155),
    .O(sig0000018a)
  );
  MUXF7   blk00000099 (
    .I0(sig0000018b),
    .I1(sig0000018c),
    .S(sig00000059),
    .O(sig000001b3)
  );
  MUXF7   blk0000009a (
    .I0(sig0000018d),
    .I1(sig0000018e),
    .S(sig00000059),
    .O(NLW_blk0000009a_O_UNCONNECTED)
  );
  MUXF7   blk0000009b (
    .I0(sig0000018f),
    .I1(sig00000193),
    .S(sig00000057),
    .O(sig00000197)
  );
  MUXF7   blk0000009c (
    .I0(sig00000190),
    .I1(sig00000194),
    .S(sig00000057),
    .O(sig00000198)
  );
  MUXF7   blk0000009d (
    .I0(sig00000191),
    .I1(sig00000195),
    .S(sig00000057),
    .O(sig00000199)
  );
  MUXF7   blk0000009e (
    .I0(sig00000192),
    .I1(sig00000196),
    .S(sig00000057),
    .O(sig0000019a)
  );
  MUXF7   blk0000009f (
    .I0(sig0000019b),
    .I1(sig0000019f),
    .S(sig00000057),
    .O(sig000001a2)
  );
  MUXF7   blk000000a0 (
    .I0(sig0000019c),
    .I1(sig000001a0),
    .S(sig00000057),
    .O(sig00000059)
  );
  MUXF7   blk000000a1 (
    .I0(sig0000019d),
    .I1(sig000001a1),
    .S(sig00000057),
    .O(sig000001a3)
  );
  MUXF7   blk000000a2 (
    .I0(sig0000019e),
    .I1(sig00000002),
    .S(sig00000057),
    .O(sig000001a4)
  );
  MUXCY   blk000000a3 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig000001ad),
    .O(sig000001b5)
  );
  MUXCY   blk000000a4 (
    .CI(sig000001b5),
    .DI(sig00000002),
    .S(sig000001ae),
    .O(sig000001b6)
  );
  MUXCY   blk000000a5 (
    .CI(sig000001b6),
    .DI(sig00000002),
    .S(sig000001af),
    .O(sig000001b7)
  );
  MUXCY   blk000000a6 (
    .CI(sig000001b7),
    .DI(sig00000002),
    .S(sig000001b0),
    .O(sig000001b8)
  );
  MUXCY   blk000000a7 (
    .CI(sig000001b8),
    .DI(sig00000002),
    .S(sig000001b1),
    .O(sig000001b4)
  );
  MUXCY   blk000000a8 (
    .CI(sig000001b4),
    .DI(sig00000002),
    .S(sig000001b2),
    .O(sig000001b9)
  );
  MUXCY   blk000000a9 (
    .CI(sig000001bc),
    .DI(sig00000002),
    .S(sig000001ac),
    .O(sig00000057)
  );
  MUXCY   blk000000aa (
    .CI(sig000001bb),
    .DI(sig00000002),
    .S(sig000001ab),
    .O(sig000001bc)
  );
  MUXCY   blk000000ab (
    .CI(sig000001ba),
    .DI(sig00000002),
    .S(sig000001aa),
    .O(sig000001bb)
  );
  MUXCY   blk000000ac (
    .CI(sig000001c0),
    .DI(sig00000002),
    .S(sig000001a9),
    .O(sig000001ba)
  );
  MUXCY   blk000000ad (
    .CI(sig000001bf),
    .DI(sig00000002),
    .S(sig000001a8),
    .O(sig000001c0)
  );
  MUXCY   blk000000ae (
    .CI(sig000001be),
    .DI(sig00000002),
    .S(sig000001a7),
    .O(sig000001bf)
  );
  MUXCY   blk000000af (
    .CI(sig000001bd),
    .DI(sig00000002),
    .S(sig000001a6),
    .O(sig000001be)
  );
  MUXCY   blk000000b0 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig000001a5),
    .O(sig000001bd)
  );
  MUXCY   blk000000b1 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig000001df),
    .O(sig000001dc)
  );
  MUXCY   blk000000b2 (
    .CI(sig000001dc),
    .DI(sig00000002),
    .S(sig00000002),
    .O(sig000001dd)
  );
  MUXCY   blk000000b3 (
    .CI(sig000001dd),
    .DI(sig00000001),
    .S(sig000001de),
    .O(sig000001db)
  );
  XORCY   blk000000b4 (
    .CI(sig000001e0),
    .LI(sig00000001),
    .O(sig000001d9)
  );
  MUXCY   blk000000b5 (
    .CI(sig000001e0),
    .DI(sig00000001),
    .S(sig00000001),
    .O(sig000001d8)
  );
  XORCY   blk000000b6 (
    .CI(sig000001e1),
    .LI(sig000001cb),
    .O(sig000000fd)
  );
  MUXCY   blk000000b7 (
    .CI(sig000001e1),
    .DI(sig00000002),
    .S(sig000001cb),
    .O(sig000001e0)
  );
  XORCY   blk000000b8 (
    .CI(sig000001e2),
    .LI(sig000001ca),
    .O(sig000000fc)
  );
  MUXCY   blk000000b9 (
    .CI(sig000001e2),
    .DI(sig00000002),
    .S(sig000001ca),
    .O(sig000001e1)
  );
  XORCY   blk000000ba (
    .CI(sig000001e3),
    .LI(sig000001c9),
    .O(sig000000fb)
  );
  MUXCY   blk000000bb (
    .CI(sig000001e3),
    .DI(sig00000002),
    .S(sig000001c9),
    .O(sig000001e2)
  );
  XORCY   blk000000bc (
    .CI(sig000001e4),
    .LI(sig000001c8),
    .O(sig000000fa)
  );
  MUXCY   blk000000bd (
    .CI(sig000001e4),
    .DI(sig00000002),
    .S(sig000001c8),
    .O(sig000001e3)
  );
  XORCY   blk000000be (
    .CI(sig000001e5),
    .LI(sig000001c7),
    .O(sig000000f9)
  );
  MUXCY   blk000000bf (
    .CI(sig000001e5),
    .DI(sig00000002),
    .S(sig000001c7),
    .O(sig000001e4)
  );
  XORCY   blk000000c0 (
    .CI(sig000001e6),
    .LI(sig000001c6),
    .O(sig000000f8)
  );
  MUXCY   blk000000c1 (
    .CI(sig000001e6),
    .DI(sig00000002),
    .S(sig000001c6),
    .O(sig000001e5)
  );
  XORCY   blk000000c2 (
    .CI(sig000001e7),
    .LI(sig000001c5),
    .O(sig000000f7)
  );
  MUXCY   blk000000c3 (
    .CI(sig000001e7),
    .DI(sig00000002),
    .S(sig000001c5),
    .O(sig000001e6)
  );
  XORCY   blk000000c4 (
    .CI(sig000001e8),
    .LI(sig000001c4),
    .O(sig000000f6)
  );
  MUXCY   blk000000c5 (
    .CI(sig000001e8),
    .DI(sig00000002),
    .S(sig000001c4),
    .O(sig000001e7)
  );
  XORCY   blk000000c6 (
    .CI(sig000001e9),
    .LI(sig000001c3),
    .O(sig000000f5)
  );
  MUXCY   blk000000c7 (
    .CI(sig000001e9),
    .DI(sig00000002),
    .S(sig000001c3),
    .O(sig000001e8)
  );
  XORCY   blk000000c8 (
    .CI(sig000001ea),
    .LI(sig000001c2),
    .O(sig000000f4)
  );
  MUXCY   blk000000c9 (
    .CI(sig000001ea),
    .DI(sig00000002),
    .S(sig000001c2),
    .O(sig000001e9)
  );
  XORCY   blk000000ca (
    .CI(sig000001da),
    .LI(sig000001c1),
    .O(sig000000f3)
  );
  MUXCY   blk000000cb (
    .CI(sig000001da),
    .DI(sig00000002),
    .S(sig000001c1),
    .O(sig000001ea)
  );
  XORCY   blk000000cc (
    .CI(sig000001eb),
    .LI(sig000001d7),
    .O(sig000000f2)
  );
  MUXCY   blk000000cd (
    .CI(sig000001eb),
    .DI(sig00000002),
    .S(sig000001d7),
    .O(sig000001da)
  );
  XORCY   blk000000ce (
    .CI(sig000001ec),
    .LI(sig000001d6),
    .O(sig000000f1)
  );
  MUXCY   blk000000cf (
    .CI(sig000001ec),
    .DI(sig00000002),
    .S(sig000001d6),
    .O(sig000001eb)
  );
  XORCY   blk000000d0 (
    .CI(sig000001ed),
    .LI(sig000001d5),
    .O(sig000000f0)
  );
  MUXCY   blk000000d1 (
    .CI(sig000001ed),
    .DI(sig00000002),
    .S(sig000001d5),
    .O(sig000001ec)
  );
  XORCY   blk000000d2 (
    .CI(sig000001ee),
    .LI(sig000001d4),
    .O(sig000000ef)
  );
  MUXCY   blk000000d3 (
    .CI(sig000001ee),
    .DI(sig00000002),
    .S(sig000001d4),
    .O(sig000001ed)
  );
  XORCY   blk000000d4 (
    .CI(sig000001ef),
    .LI(sig000001d3),
    .O(sig000000ee)
  );
  MUXCY   blk000000d5 (
    .CI(sig000001ef),
    .DI(sig00000002),
    .S(sig000001d3),
    .O(sig000001ee)
  );
  XORCY   blk000000d6 (
    .CI(sig000001f0),
    .LI(sig000001d2),
    .O(sig000000ed)
  );
  MUXCY   blk000000d7 (
    .CI(sig000001f0),
    .DI(sig00000002),
    .S(sig000001d2),
    .O(sig000001ef)
  );
  XORCY   blk000000d8 (
    .CI(sig000001f1),
    .LI(sig000001d1),
    .O(sig000000ec)
  );
  MUXCY   blk000000d9 (
    .CI(sig000001f1),
    .DI(sig00000002),
    .S(sig000001d1),
    .O(sig000001f0)
  );
  XORCY   blk000000da (
    .CI(sig000001f2),
    .LI(sig000001d0),
    .O(sig000000eb)
  );
  MUXCY   blk000000db (
    .CI(sig000001f2),
    .DI(sig00000002),
    .S(sig000001d0),
    .O(sig000001f1)
  );
  XORCY   blk000000dc (
    .CI(sig000001f3),
    .LI(sig000001cf),
    .O(sig000000ea)
  );
  MUXCY   blk000000dd (
    .CI(sig000001f3),
    .DI(sig00000002),
    .S(sig000001cf),
    .O(sig000001f2)
  );
  XORCY   blk000000de (
    .CI(sig000001f4),
    .LI(sig000001ce),
    .O(sig000000e9)
  );
  MUXCY   blk000000df (
    .CI(sig000001f4),
    .DI(sig00000002),
    .S(sig000001ce),
    .O(sig000001f3)
  );
  XORCY   blk000000e0 (
    .CI(sig000001f5),
    .LI(sig000001cd),
    .O(sig000000e8)
  );
  MUXCY   blk000000e1 (
    .CI(sig000001f5),
    .DI(sig00000002),
    .S(sig000001cd),
    .O(sig000001f4)
  );
  XORCY   blk000000e2 (
    .CI(sig000001db),
    .LI(sig000001cc),
    .O(sig000000e7)
  );
  MUXCY   blk000000e3 (
    .CI(sig000001db),
    .DI(sig00000002),
    .S(sig000001cc),
    .O(sig000001f5)
  );
  XORCY   blk000000e4 (
    .CI(sig000001f6),
    .LI(sig00000002),
    .O(NLW_blk000000e4_O_UNCONNECTED)
  );
  XORCY   blk000000e5 (
    .CI(sig000001f7),
    .LI(sig00000002),
    .O(NLW_blk000000e5_O_UNCONNECTED)
  );
  MUXCY   blk000000e6 (
    .CI(sig000001f7),
    .DI(sig00000002),
    .S(sig00000002),
    .O(sig000001f6)
  );
  XORCY   blk000000e7 (
    .CI(sig000001f8),
    .LI(sig00000002),
    .O(NLW_blk000000e7_O_UNCONNECTED)
  );
  MUXCY   blk000000e8 (
    .CI(sig000001f8),
    .DI(sig00000002),
    .S(sig00000002),
    .O(sig000001f7)
  );
  XORCY   blk000000e9 (
    .CI(sig000001f9),
    .LI(sig00000002),
    .O(NLW_blk000000e9_O_UNCONNECTED)
  );
  MUXCY   blk000000ea (
    .CI(sig000001f9),
    .DI(sig00000002),
    .S(sig00000002),
    .O(sig000001f8)
  );
  XORCY   blk000000eb (
    .CI(sig000001fa),
    .LI(sig00000002),
    .O(NLW_blk000000eb_O_UNCONNECTED)
  );
  MUXCY   blk000000ec (
    .CI(sig000001fa),
    .DI(sig00000002),
    .S(sig00000002),
    .O(sig000001f9)
  );
  XORCY   blk000000ed (
    .CI(sig000001fb),
    .LI(sig00000002),
    .O(NLW_blk000000ed_O_UNCONNECTED)
  );
  MUXCY   blk000000ee (
    .CI(sig000001fb),
    .DI(sig00000002),
    .S(sig00000002),
    .O(sig000001fa)
  );
  XORCY   blk000000ef (
    .CI(sig000001fc),
    .LI(sig00000002),
    .O(NLW_blk000000ef_O_UNCONNECTED)
  );
  MUXCY   blk000000f0 (
    .CI(sig000001fc),
    .DI(sig00000002),
    .S(sig00000002),
    .O(sig000001fb)
  );
  XORCY   blk000000f1 (
    .CI(sig000001d8),
    .LI(sig00000002),
    .O(NLW_blk000000f1_O_UNCONNECTED)
  );
  MUXCY   blk000000f2 (
    .CI(sig000001d8),
    .DI(sig00000002),
    .S(sig00000002),
    .O(sig000001fc)
  );
  FD   blk000000f3 (
    .C(clk),
    .D(sig00000205),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [7])
  );
  FD   blk000000f4 (
    .C(clk),
    .D(sig00000204),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [6])
  );
  FD   blk000000f5 (
    .C(clk),
    .D(sig00000203),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [5])
  );
  FD   blk000000f6 (
    .C(clk),
    .D(sig00000202),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [4])
  );
  FD   blk000000f7 (
    .C(clk),
    .D(sig00000201),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [3])
  );
  FD   blk000000f8 (
    .C(clk),
    .D(sig00000200),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [2])
  );
  FD   blk000000f9 (
    .C(clk),
    .D(sig000001ff),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [1])
  );
  FD   blk000000fa (
    .C(clk),
    .D(sig000001fe),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/exp_op [0])
  );
  FD   blk000000fb (
    .C(clk),
    .D(sig0000021c),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [22])
  );
  FD   blk000000fc (
    .C(clk),
    .D(sig0000021b),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [21])
  );
  FD   blk000000fd (
    .C(clk),
    .D(sig0000021a),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [20])
  );
  FD   blk000000fe (
    .C(clk),
    .D(sig00000219),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [19])
  );
  FD   blk000000ff (
    .C(clk),
    .D(sig00000218),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [18])
  );
  FD   blk00000100 (
    .C(clk),
    .D(sig00000217),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [17])
  );
  FD   blk00000101 (
    .C(clk),
    .D(sig00000216),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [16])
  );
  FD   blk00000102 (
    .C(clk),
    .D(sig00000215),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [15])
  );
  FD   blk00000103 (
    .C(clk),
    .D(sig00000214),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [14])
  );
  FD   blk00000104 (
    .C(clk),
    .D(sig00000213),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [13])
  );
  FD   blk00000105 (
    .C(clk),
    .D(sig00000212),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [12])
  );
  FD   blk00000106 (
    .C(clk),
    .D(sig00000211),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [11])
  );
  FD   blk00000107 (
    .C(clk),
    .D(sig00000210),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [10])
  );
  FD   blk00000108 (
    .C(clk),
    .D(sig0000020f),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [9])
  );
  FD   blk00000109 (
    .C(clk),
    .D(sig0000020e),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [8])
  );
  FD   blk0000010a (
    .C(clk),
    .D(sig0000020d),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [7])
  );
  FD   blk0000010b (
    .C(clk),
    .D(sig0000020c),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [6])
  );
  FD   blk0000010c (
    .C(clk),
    .D(sig0000020b),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [5])
  );
  FD   blk0000010d (
    .C(clk),
    .D(sig0000020a),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [4])
  );
  FD   blk0000010e (
    .C(clk),
    .D(sig00000209),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [3])
  );
  FD   blk0000010f (
    .C(clk),
    .D(sig00000208),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [2])
  );
  FD   blk00000110 (
    .C(clk),
    .D(sig00000207),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [1])
  );
  FD   blk00000111 (
    .C(clk),
    .D(sig00000206),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/mant_op [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF11111110 ))
  blk00000112 (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000c0),
    .I3(sig000000bf),
    .I4(sig000000cc),
    .I5(sig000000c1),
    .O(sig00000056)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  blk00000113 (
    .I0(a[31]),
    .I1(b[31]),
    .I2(operation[0]),
    .O(sig000000c2)
  );
  LUT6 #(
    .INIT ( 64'h666666666666666A ))
  blk00000114 (
    .I0(sig000000db),
    .I1(sig000000d7),
    .I2(sig0000003f),
    .I3(sig000000de),
    .I4(sig000000dd),
    .I5(sig000000dc),
    .O(sig000000b8)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000115 (
    .I0(sig0000005a),
    .I1(sig00000059),
    .I2(sig00000070),
    .I3(sig00000074),
    .I4(sig00000072),
    .I5(sig0000006e),
    .O(sig0000002e)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000116 (
    .I0(sig0000005a),
    .I1(sig00000059),
    .I2(sig00000071),
    .I3(sig00000075),
    .I4(sig00000073),
    .I5(sig0000006f),
    .O(sig0000002d)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000117 (
    .I0(sig00000260),
    .I1(sig000000b9),
    .I2(sig000000ae),
    .I3(sig000000a6),
    .I4(sig000000a8),
    .I5(sig000000b0),
    .O(sig00000004)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000118 (
    .I0(sig00000260),
    .I1(sig000000b9),
    .I2(sig000000b0),
    .I3(sig000000a8),
    .I4(sig000000aa),
    .I5(sig000000b2),
    .O(sig00000022)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000119 (
    .I0(sig00000260),
    .I1(sig000000b9),
    .I2(sig000000b2),
    .I3(sig000000aa),
    .I4(sig000000ac),
    .I5(sig000000b4),
    .O(sig00000024)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk0000011a (
    .I0(sig0000005a),
    .I1(sig00000059),
    .I2(sig0000006e),
    .I3(sig00000072),
    .I4(sig00000070),
    .I5(sig0000006c),
    .O(sig0000002c)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk0000011b (
    .I0(sig0000005a),
    .I1(sig00000059),
    .I2(sig0000006f),
    .I3(sig00000073),
    .I4(sig00000071),
    .I5(sig0000006d),
    .O(sig0000002a)
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  blk0000011c (
    .I0(sig000000fe),
    .I1(sig00000008),
    .I2(a[2]),
    .I3(a[3]),
    .I4(b[3]),
    .I5(b[2]),
    .O(sig0000001f)
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  blk0000011d (
    .I0(sig000000fe),
    .I1(sig00000008),
    .I2(a[3]),
    .I3(a[4]),
    .I4(b[4]),
    .I5(b[3]),
    .O(sig0000001e)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk0000011e (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[16]),
    .I3(a[16]),
    .I4(a[15]),
    .I5(b[15]),
    .O(sig000000ad)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk0000011f (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[15]),
    .I3(a[15]),
    .I4(a[14]),
    .I5(b[14]),
    .O(sig000000ae)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000120 (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[9]),
    .I3(a[9]),
    .I4(a[8]),
    .I5(b[8]),
    .O(sig000000b4)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000121 (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[8]),
    .I3(a[8]),
    .I4(a[7]),
    .I5(b[7]),
    .O(sig000000b5)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000122 (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[2]),
    .I3(a[2]),
    .I4(a[1]),
    .I5(b[1]),
    .O(sig00000003)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000123 (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[17]),
    .I3(a[17]),
    .I4(a[16]),
    .I5(b[16]),
    .O(sig000000ac)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000124 (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[14]),
    .I3(a[14]),
    .I4(a[13]),
    .I5(b[13]),
    .O(sig000000af)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000125 (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[13]),
    .I3(a[13]),
    .I4(a[12]),
    .I5(b[12]),
    .O(sig000000b0)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000126 (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[12]),
    .I3(a[12]),
    .I4(a[11]),
    .I5(b[11]),
    .O(sig000000b1)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000127 (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[11]),
    .I3(a[11]),
    .I4(a[10]),
    .I5(b[10]),
    .O(sig000000b2)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000128 (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[10]),
    .I3(a[10]),
    .I4(a[9]),
    .I5(b[9]),
    .O(sig000000b3)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000129 (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[7]),
    .I3(a[7]),
    .I4(a[6]),
    .I5(b[6]),
    .O(sig000000b6)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk0000012a (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[21]),
    .I3(a[21]),
    .I4(a[20]),
    .I5(b[20]),
    .O(sig000000a8)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk0000012b (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[20]),
    .I3(a[20]),
    .I4(a[19]),
    .I5(b[19]),
    .O(sig000000a9)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk0000012c (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[19]),
    .I3(a[19]),
    .I4(a[18]),
    .I5(b[18]),
    .O(sig000000aa)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk0000012d (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[18]),
    .I3(a[18]),
    .I4(a[17]),
    .I5(b[17]),
    .O(sig000000ab)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk0000012e (
    .I0(sig00000260),
    .I1(sig000000b9),
    .I2(sig000000b1),
    .I3(sig000000a9),
    .I4(sig000000ab),
    .I5(sig000000b3),
    .O(sig00000023)
  );
  LUT5 #(
    .INIT ( 32'h6666666A ))
  blk0000012f (
    .I0(sig000000dc),
    .I1(sig000000d7),
    .I2(sig0000003f),
    .I3(sig000000de),
    .I4(sig000000dd),
    .O(sig000000b9)
  );
  LUT4 #(
    .INIT ( 16'h666A ))
  blk00000130 (
    .I0(sig000000dd),
    .I1(sig000000d7),
    .I2(sig0000003f),
    .I3(sig000000de),
    .O(sig000000ba)
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  blk00000131 (
    .I0(sig000000de),
    .I1(sig0000003f),
    .I2(sig000000d7),
    .O(sig00000260)
  );
  LUT5 #(
    .INIT ( 32'hEFEA4540 ))
  blk00000132 (
    .I0(sig00000058),
    .I1(sig00000062),
    .I2(sig00000059),
    .I3(sig0000005e),
    .I4(sig00000018),
    .O(sig0000001d)
  );
  LUT5 #(
    .INIT ( 32'h76325410 ))
  blk00000133 (
    .I0(sig00000057),
    .I1(sig00000059),
    .I2(sig00000064),
    .I3(sig00000068),
    .I4(sig00000074),
    .O(sig00000026)
  );
  LUT5 #(
    .INIT ( 32'h76325410 ))
  blk00000134 (
    .I0(sig00000057),
    .I1(sig00000059),
    .I2(sig00000065),
    .I3(sig00000069),
    .I4(sig00000075),
    .O(sig00000027)
  );
  LUT6 #(
    .INIT ( 64'h10FE10BA10541010 ))
  blk00000135 (
    .I0(sig00000058),
    .I1(sig0000005a),
    .I2(sig00000026),
    .I3(sig00000057),
    .I4(sig00000018),
    .I5(sig0000002c),
    .O(sig0000007d)
  );
  LUT6 #(
    .INIT ( 64'h10FE10BA10541010 ))
  blk00000136 (
    .I0(sig00000058),
    .I1(sig0000005a),
    .I2(sig00000027),
    .I3(sig00000057),
    .I4(sig00000017),
    .I5(sig0000002a),
    .O(sig0000007e)
  );
  LUT6 #(
    .INIT ( 64'h5545544411011000 ))
  blk00000137 (
    .I0(sig00000057),
    .I1(sig00000058),
    .I2(sig0000005a),
    .I3(sig0000001b),
    .I4(sig00000018),
    .I5(sig0000002e),
    .O(sig0000007f)
  );
  LUT6 #(
    .INIT ( 64'h5545544411011000 ))
  blk00000138 (
    .I0(sig00000057),
    .I1(sig00000058),
    .I2(sig0000005a),
    .I3(sig00000016),
    .I4(sig0000001b),
    .I5(sig00000029),
    .O(sig00000081)
  );
  LUT6 #(
    .INIT ( 64'h5545544411011000 ))
  blk00000139 (
    .I0(sig00000057),
    .I1(sig00000058),
    .I2(sig0000005a),
    .I3(sig00000015),
    .I4(sig0000001a),
    .I5(sig00000028),
    .O(sig00000082)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk0000013a (
    .I0(sig00000007),
    .I1(sig00000005),
    .O(sig000000c1)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000013b (
    .I0(a[23]),
    .I1(b[23]),
    .O(sig00000008)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000013c (
    .I0(sig000000fe),
    .I1(b[0]),
    .I2(a[0]),
    .O(sig0000000a)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000013d (
    .I0(sig00000059),
    .I1(sig00000063),
    .I2(sig00000067),
    .O(sig00000010)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000013e (
    .I0(sig00000059),
    .I1(sig0000006b),
    .I2(sig0000006f),
    .O(sig00000015)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000013f (
    .I0(sig00000059),
    .I1(sig0000006a),
    .I2(sig0000006e),
    .O(sig00000016)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000140 (
    .I0(sig00000059),
    .I1(sig00000067),
    .I2(sig0000006b),
    .O(sig00000017)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000141 (
    .I0(sig00000059),
    .I1(sig00000066),
    .I2(sig0000006a),
    .O(sig00000018)
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  blk00000142 (
    .I0(sig000000fe),
    .I1(b[22]),
    .I2(a[22]),
    .O(sig00000019)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000143 (
    .I0(sig00000059),
    .I1(sig00000069),
    .I2(sig0000006d),
    .O(sig0000001a)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000144 (
    .I0(sig00000059),
    .I1(sig00000068),
    .I2(sig0000006c),
    .O(sig0000001b)
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  blk00000145 (
    .I0(sig000000d7),
    .I1(b[23]),
    .I2(a[23]),
    .O(sig000000e6)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000146 (
    .I0(sig000000d7),
    .I1(b[24]),
    .I2(a[24]),
    .O(sig000000e5)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000147 (
    .I0(sig000000d7),
    .I1(b[25]),
    .I2(a[25]),
    .O(sig000000e4)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000148 (
    .I0(sig000000d7),
    .I1(b[26]),
    .I2(a[26]),
    .O(sig000000e3)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000149 (
    .I0(sig000000d7),
    .I1(b[27]),
    .I2(a[27]),
    .O(sig000000e2)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000014a (
    .I0(sig000000d7),
    .I1(b[28]),
    .I2(a[28]),
    .O(sig000000e1)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000014b (
    .I0(sig000000d7),
    .I1(b[29]),
    .I2(a[29]),
    .O(sig000000e0)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000014c (
    .I0(sig000000d7),
    .I1(b[30]),
    .I2(a[30]),
    .O(sig000000df)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000014d (
    .I0(a[12]),
    .I1(a[13]),
    .I2(a[14]),
    .I3(a[15]),
    .I4(a[16]),
    .I5(a[17]),
    .O(sig00000102)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000014e (
    .I0(a[6]),
    .I1(a[7]),
    .I2(a[8]),
    .I3(a[9]),
    .I4(a[10]),
    .I5(a[11]),
    .O(sig00000103)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk0000014f (
    .I0(a[0]),
    .I1(a[1]),
    .I2(a[2]),
    .I3(a[3]),
    .I4(a[4]),
    .I5(a[5]),
    .O(sig00000104)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  blk00000150 (
    .I0(a[18]),
    .I1(a[19]),
    .I2(a[20]),
    .I3(a[21]),
    .I4(a[22]),
    .O(sig00000105)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk00000151 (
    .I0(b[12]),
    .I1(b[13]),
    .I2(b[14]),
    .I3(b[15]),
    .I4(b[16]),
    .I5(b[17]),
    .O(sig00000109)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk00000152 (
    .I0(b[6]),
    .I1(b[7]),
    .I2(b[8]),
    .I3(b[9]),
    .I4(b[10]),
    .I5(b[11]),
    .O(sig0000010a)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk00000153 (
    .I0(b[0]),
    .I1(b[1]),
    .I2(b[2]),
    .I3(b[3]),
    .I4(b[4]),
    .I5(b[5]),
    .O(sig0000010b)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  blk00000154 (
    .I0(b[18]),
    .I1(b[19]),
    .I2(b[20]),
    .I3(b[21]),
    .I4(b[22]),
    .O(sig0000010c)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000155 (
    .I0(b[19]),
    .I1(a[19]),
    .I2(b[18]),
    .I3(a[18]),
    .O(sig0000011a)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000156 (
    .I0(b[17]),
    .I1(a[17]),
    .I2(b[16]),
    .I3(a[16]),
    .O(sig0000011c)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000157 (
    .I0(b[15]),
    .I1(a[15]),
    .I2(b[14]),
    .I3(a[14]),
    .O(sig0000011e)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000158 (
    .I0(b[13]),
    .I1(a[13]),
    .I2(b[12]),
    .I3(a[12]),
    .O(sig00000120)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000159 (
    .I0(b[11]),
    .I1(a[11]),
    .I2(b[10]),
    .I3(a[10]),
    .O(sig00000122)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000015a (
    .I0(b[9]),
    .I1(a[9]),
    .I2(b[8]),
    .I3(a[8]),
    .O(sig00000124)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000015b (
    .I0(b[7]),
    .I1(a[7]),
    .I2(b[6]),
    .I3(a[6]),
    .O(sig00000126)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000015c (
    .I0(b[5]),
    .I1(a[5]),
    .I2(b[4]),
    .I3(a[4]),
    .O(sig00000128)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000015d (
    .I0(b[3]),
    .I1(a[3]),
    .I2(b[2]),
    .I3(a[2]),
    .O(sig0000012a)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000015e (
    .I0(b[29]),
    .I1(a[29]),
    .I2(b[28]),
    .I3(a[28]),
    .O(sig00000110)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000015f (
    .I0(b[27]),
    .I1(a[27]),
    .I2(b[26]),
    .I3(a[26]),
    .O(sig00000112)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000160 (
    .I0(b[25]),
    .I1(a[25]),
    .I2(b[24]),
    .I3(a[24]),
    .O(sig00000114)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000161 (
    .I0(b[23]),
    .I1(a[23]),
    .I2(b[22]),
    .I3(a[22]),
    .O(sig00000116)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000162 (
    .I0(b[21]),
    .I1(a[21]),
    .I2(b[20]),
    .I3(a[20]),
    .O(sig00000118)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000163 (
    .I0(b[1]),
    .I1(a[1]),
    .I2(b[0]),
    .I3(a[0]),
    .O(sig0000012c)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000164 (
    .I0(b[29]),
    .I1(a[29]),
    .I2(b[28]),
    .I3(a[28]),
    .O(sig0000010f)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000165 (
    .I0(b[27]),
    .I1(a[27]),
    .I2(b[26]),
    .I3(a[26]),
    .O(sig00000111)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000166 (
    .I0(b[25]),
    .I1(a[25]),
    .I2(b[24]),
    .I3(a[24]),
    .O(sig00000113)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000167 (
    .I0(b[23]),
    .I1(a[23]),
    .I2(b[22]),
    .I3(a[22]),
    .O(sig00000115)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000168 (
    .I0(b[21]),
    .I1(a[21]),
    .I2(b[20]),
    .I3(a[20]),
    .O(sig00000117)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000169 (
    .I0(b[19]),
    .I1(a[19]),
    .I2(b[18]),
    .I3(a[18]),
    .O(sig00000119)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk0000016a (
    .I0(b[17]),
    .I1(a[17]),
    .I2(b[16]),
    .I3(a[16]),
    .O(sig0000011b)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk0000016b (
    .I0(b[15]),
    .I1(a[15]),
    .I2(b[14]),
    .I3(a[14]),
    .O(sig0000011d)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk0000016c (
    .I0(b[13]),
    .I1(a[13]),
    .I2(b[12]),
    .I3(a[12]),
    .O(sig0000011f)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk0000016d (
    .I0(b[11]),
    .I1(a[11]),
    .I2(b[10]),
    .I3(a[10]),
    .O(sig00000121)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk0000016e (
    .I0(b[9]),
    .I1(a[9]),
    .I2(b[8]),
    .I3(a[8]),
    .O(sig00000123)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk0000016f (
    .I0(b[7]),
    .I1(a[7]),
    .I2(b[6]),
    .I3(a[6]),
    .O(sig00000125)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000170 (
    .I0(b[5]),
    .I1(a[5]),
    .I2(b[4]),
    .I3(a[4]),
    .O(sig00000127)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000171 (
    .I0(b[3]),
    .I1(a[3]),
    .I2(b[2]),
    .I3(a[2]),
    .O(sig00000129)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  blk00000172 (
    .I0(b[1]),
    .I1(a[1]),
    .I2(b[0]),
    .I3(a[0]),
    .O(sig0000012b)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk00000173 (
    .I0(b[30]),
    .I1(a[30]),
    .O(sig0000010d)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000174 (
    .I0(a[30]),
    .I1(b[30]),
    .O(sig0000010e)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000175 (
    .I0(sig000000aa),
    .I1(sig000000a9),
    .I2(sig000000a8),
    .I3(sig000000a7),
    .O(sig0000014f)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000176 (
    .I0(sig000000ae),
    .I1(sig000000ad),
    .I2(sig000000ac),
    .I3(sig000000ab),
    .O(sig00000150)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000177 (
    .I0(sig000000b2),
    .I1(sig000000b1),
    .I2(sig000000b0),
    .I3(sig000000af),
    .O(sig00000151)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000178 (
    .I0(sig000000b6),
    .I1(sig000000b5),
    .I2(sig000000b4),
    .I3(sig000000b3),
    .O(sig00000152)
  );
  LUT6 #(
    .INIT ( 64'h6666666696996669 ))
  blk00000179 (
    .I0(sig000000a3),
    .I1(sig000000c2),
    .I2(sig000000ba),
    .I3(sig00000041),
    .I4(sig0000001c),
    .I5(sig000000bc),
    .O(sig00000166)
  );
  LUT6 #(
    .INIT ( 64'h6666666696996669 ))
  blk0000017a (
    .I0(sig000000a2),
    .I1(sig000000c2),
    .I2(sig000000ba),
    .I3(sig00000042),
    .I4(sig00000025),
    .I5(sig000000bc),
    .O(sig00000167)
  );
  LUT6 #(
    .INIT ( 64'h6666666966666666 ))
  blk0000017b (
    .I0(sig00000092),
    .I1(sig000000c2),
    .I2(sig000000bc),
    .I3(sig000000b9),
    .I4(sig000000b8),
    .I5(sig00000021),
    .O(sig0000015d)
  );
  LUT6 #(
    .INIT ( 64'h6669666666666666 ))
  blk0000017c (
    .I0(sig0000008f),
    .I1(sig000000c2),
    .I2(sig000000bc),
    .I3(sig000000ba),
    .I4(sig000000a6),
    .I5(sig0000000e),
    .O(sig00000160)
  );
  LUT6 #(
    .INIT ( 64'h9999999699999999 ))
  blk0000017d (
    .I0(sig000000c1),
    .I1(sig000000c2),
    .I2(sig000000bc),
    .I3(sig000000ba),
    .I4(sig00000008),
    .I5(sig0000000e),
    .O(sig00000161)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000017e (
    .I0(sig00000059),
    .I1(sig000001a2),
    .I2(sig000001a3),
    .O(sig0000005a)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000017f (
    .I0(sig000001b8),
    .I1(sig000001b5),
    .I2(sig000001b4),
    .O(sig0000019f)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000180 (
    .I0(sig000001b8),
    .I1(sig000001b6),
    .I2(sig000001b9),
    .O(sig000001a0)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk00000181 (
    .I0(sig000001b7),
    .I1(sig000001b8),
    .O(sig000001a1)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000182 (
    .I0(sig000001b8),
    .I1(sig0000006b),
    .I2(sig00000073),
    .O(sig00000193)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000183 (
    .I0(sig000001b8),
    .I1(sig0000006d),
    .I2(sig00000075),
    .O(sig00000194)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk00000184 (
    .I0(sig0000006f),
    .I1(sig000001b8),
    .O(sig00000195)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk00000185 (
    .I0(sig00000071),
    .I1(sig000001b8),
    .O(sig00000196)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000186 (
    .I0(sig00000057),
    .I1(sig000001c0),
    .I2(sig000001b8),
    .O(sig00000058)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000187 (
    .I0(sig000001c0),
    .I1(sig0000005b),
    .I2(sig00000063),
    .O(sig0000018f)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000188 (
    .I0(sig000001c0),
    .I1(sig0000005d),
    .I2(sig00000065),
    .O(sig00000190)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000189 (
    .I0(sig000001c0),
    .I1(sig0000005f),
    .I2(sig00000067),
    .O(sig00000191)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000018a (
    .I0(sig000001c0),
    .I1(sig00000061),
    .I2(sig00000069),
    .O(sig00000192)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000018b (
    .I0(sig000001c0),
    .I1(sig000001bd),
    .I2(sig000001ba),
    .O(sig0000019b)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000018c (
    .I0(sig000001c0),
    .I1(sig000001be),
    .I2(sig000001bb),
    .O(sig0000019c)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000018d (
    .I0(sig000001c0),
    .I1(sig000001bf),
    .I2(sig000001bc),
    .O(sig0000019d)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk0000018e (
    .I0(sig000001c0),
    .I1(sig00000057),
    .O(sig0000019e)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000018f (
    .I0(sig000001a2),
    .I1(sig00000197),
    .I2(sig00000198),
    .O(sig0000018b)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000190 (
    .I0(sig000001a3),
    .I1(sig00000199),
    .I2(sig0000019a),
    .O(sig0000018c)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000191 (
    .I0(sig00000059),
    .I1(sig000001a2),
    .O(sig0000018d)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000192 (
    .I0(sig000001a4),
    .I1(sig000001a3),
    .O(sig0000018e)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000193 (
    .I0(sig00000057),
    .I1(sig000001b9),
    .O(sig000000c0)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000194 (
    .I0(sig0000005b),
    .I1(sig0000005c),
    .O(sig000001a5)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000195 (
    .I0(sig0000005d),
    .I1(sig0000005e),
    .O(sig000001a6)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000196 (
    .I0(sig0000005f),
    .I1(sig00000060),
    .O(sig000001a7)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000197 (
    .I0(sig00000061),
    .I1(sig00000062),
    .O(sig000001a8)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000198 (
    .I0(sig00000063),
    .I1(sig00000064),
    .O(sig000001a9)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000199 (
    .I0(sig00000065),
    .I1(sig00000066),
    .O(sig000001aa)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk0000019a (
    .I0(sig00000067),
    .I1(sig00000068),
    .O(sig000001ab)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk0000019b (
    .I0(sig00000069),
    .I1(sig0000006a),
    .O(sig000001ac)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk0000019c (
    .I0(sig0000006b),
    .I1(sig0000006c),
    .O(sig000001ad)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk0000019d (
    .I0(sig0000006d),
    .I1(sig0000006e),
    .O(sig000001ae)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk0000019e (
    .I0(sig0000006f),
    .I1(sig00000070),
    .O(sig000001af)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk0000019f (
    .I0(sig00000071),
    .I1(sig00000072),
    .O(sig000001b0)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk000001a0 (
    .I0(sig00000073),
    .I1(sig00000074),
    .O(sig000001b1)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001a1 (
    .I0(sig000001b3),
    .I1(sig00000080),
    .I2(sig0000007f),
    .O(sig000001c1)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001a2 (
    .I0(sig000001b3),
    .I1(sig0000007f),
    .I2(sig0000007e),
    .O(sig000001c2)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001a3 (
    .I0(sig000001b3),
    .I1(sig0000007e),
    .I2(sig0000007d),
    .O(sig000001c3)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001a4 (
    .I0(sig000001b3),
    .I1(sig0000007d),
    .I2(sig0000007c),
    .O(sig000001c4)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001a5 (
    .I0(sig000001b3),
    .I1(sig0000007c),
    .I2(sig0000007b),
    .O(sig000001c5)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001a6 (
    .I0(sig000001b3),
    .I1(sig0000007b),
    .I2(sig0000007a),
    .O(sig000001c6)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001a7 (
    .I0(sig000001b3),
    .I1(sig0000007a),
    .I2(sig00000079),
    .O(sig000001c7)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001a8 (
    .I0(sig000001b3),
    .I1(sig00000079),
    .I2(sig00000078),
    .O(sig000001c8)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001a9 (
    .I0(sig000001b3),
    .I1(sig00000078),
    .I2(sig00000077),
    .O(sig000001c9)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001aa (
    .I0(sig000001b3),
    .I1(sig00000077),
    .I2(sig00000076),
    .O(sig000001ca)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001ab (
    .I0(sig000001b3),
    .I1(sig00000088),
    .I2(sig00000087),
    .O(sig000001cc)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001ac (
    .I0(sig000001b3),
    .I1(sig00000082),
    .I2(sig00000081),
    .O(sig000001d6)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001ad (
    .I0(sig000001b3),
    .I1(sig00000081),
    .I2(sig00000080),
    .O(sig000001d7)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001ae (
    .I0(sig000001b3),
    .I1(sig00000086),
    .I2(sig00000085),
    .O(sig000001d2)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001af (
    .I0(sig000001b3),
    .I1(sig00000085),
    .I2(sig00000084),
    .O(sig000001d3)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001b0 (
    .I0(sig000001b3),
    .I1(sig00000084),
    .I2(sig00000083),
    .O(sig000001d4)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000001b1 (
    .I0(sig000001b3),
    .I1(sig00000083),
    .I2(sig00000082),
    .O(sig000001d5)
  );
  LUT6 #(
    .INIT ( 64'h00105555FFFF7575 ))
  blk000001b2 (
    .I0(sig00000089),
    .I1(sig0000008a),
    .I2(sig000000bb),
    .I3(sig00000087),
    .I4(sig000001b3),
    .I5(sig00000088),
    .O(sig000001de)
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  blk000001b3 (
    .I0(sig000000bb),
    .I1(sig0000008a),
    .I2(sig00000089),
    .I3(sig00000088),
    .O(sig000001df)
  );
  LUT4 #(
    .INIT ( 16'h5445 ))
  blk000001b4 (
    .I0(sig00000056),
    .I1(sig000000cd),
    .I2(sig000000d5),
    .I3(sig000001d9),
    .O(sig000001fe)
  );
  LUT4 #(
    .INIT ( 16'h5445 ))
  blk000001b5 (
    .I0(sig00000056),
    .I1(sig000000cd),
    .I2(sig000000d2),
    .I3(sig000001fd),
    .O(sig00000201)
  );
  LUT5 #(
    .INIT ( 32'h55444554 ))
  blk000001b6 (
    .I0(sig00000056),
    .I1(sig000000cd),
    .I2(sig000000d2),
    .I3(sig000000d1),
    .I4(sig000001fd),
    .O(sig00000202)
  );
  LUT6 #(
    .INIT ( 64'h5544554445545544 ))
  blk000001b7 (
    .I0(sig00000056),
    .I1(sig000000cd),
    .I2(sig000000d2),
    .I3(sig000000d0),
    .I4(sig000000d1),
    .I5(sig000001fd),
    .O(sig00000203)
  );
  LUT5 #(
    .INIT ( 32'h55444554 ))
  blk000001b8 (
    .I0(sig00000056),
    .I1(sig000000cd),
    .I2(sig000000d5),
    .I3(sig000000d4),
    .I4(sig000001d9),
    .O(sig000001ff)
  );
  LUT6 #(
    .INIT ( 64'h5544554445545544 ))
  blk000001b9 (
    .I0(sig00000056),
    .I1(sig000000cd),
    .I2(sig000000d5),
    .I3(sig000000d3),
    .I4(sig000000d4),
    .I5(sig000001d9),
    .O(sig00000200)
  );
  LUT4 #(
    .INIT ( 16'hF7FF ))
  blk000001ba (
    .I0(sig000000d3),
    .I1(sig000000d5),
    .I2(sig000001d9),
    .I3(sig000000d4),
    .O(sig000001fd)
  );
  LUT6 #(
    .INIT ( 64'h5555555544454444 ))
  blk000001bb (
    .I0(sig000000c1),
    .I1(sig0000000d),
    .I2(sig000000cc),
    .I3(sig000000bf),
    .I4(sig0000021d),
    .I5(sig0000008d),
    .O(sig000000cd)
  );
  LUT6 #(
    .INIT ( 64'h1011101000010000 ))
  blk000001bc (
    .I0(sig000000c1),
    .I1(sig0000000d),
    .I2(sig0000008d),
    .I3(sig000000c0),
    .I4(sig000000fe),
    .I5(sig000000be),
    .O(sig00000221)
  );
  LUT5 #(
    .INIT ( 32'hAAFEFEAA ))
  blk000001bd (
    .I0(sig0000021f),
    .I1(sig00000220),
    .I2(sig00000221),
    .I3(b[31]),
    .I4(operation[0]),
    .O(sig000000d6)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk000001be (
    .I0(sig000000de),
    .I1(sig0000003f),
    .O(sig00000222)
  );
  LUT6 #(
    .INIT ( 64'h22222222222A2222 ))
  blk000001bf (
    .I0(sig000000d8),
    .I1(sig000000d7),
    .I2(sig000000dc),
    .I3(sig000000db),
    .I4(sig00000222),
    .I5(sig000000dd),
    .O(sig00000223)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000001c0 (
    .I0(sig000000de),
    .I1(sig0000003f),
    .O(sig00000224)
  );
  LUT6 #(
    .INIT ( 64'h4444444444444440 ))
  blk000001c1 (
    .I0(sig000000da),
    .I1(sig000000d7),
    .I2(sig000000dd),
    .I3(sig000000db),
    .I4(sig00000224),
    .I5(sig000000dc),
    .O(sig00000225)
  );
  LUT4 #(
    .INIT ( 16'hA2F3 ))
  blk000001c2 (
    .I0(sig000000b1),
    .I1(sig000000b8),
    .I2(sig000000a9),
    .I3(sig000000b9),
    .O(sig00000227)
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAEFEAEFEAEF ))
  blk000001c3 (
    .I0(sig00000011),
    .I1(sig00000014),
    .I2(sig00000260),
    .I3(sig00000227),
    .I4(sig0000001e),
    .I5(sig0000000e),
    .O(sig00000042)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk000001c4 (
    .I0(sig0000005a),
    .I1(sig00000059),
    .I2(sig00000062),
    .I3(sig00000066),
    .I4(sig00000064),
    .I5(sig00000060),
    .O(sig00000228)
  );
  LUT5 #(
    .INIT ( 32'h76325410 ))
  blk000001c5 (
    .I0(sig00000058),
    .I1(sig00000057),
    .I2(sig00000228),
    .I3(sig00000029),
    .I4(sig00000229),
    .O(sig00000079)
  );
  LUT6 #(
    .INIT ( 64'h5545544411011000 ))
  blk000001c6 (
    .I0(sig0000005a),
    .I1(sig00000058),
    .I2(sig00000059),
    .I3(sig00000066),
    .I4(sig00000062),
    .I5(sig00000016),
    .O(sig0000022a)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk000001c7 (
    .I0(sig0000005a),
    .I1(sig00000059),
    .I2(sig00000061),
    .I3(sig00000065),
    .I4(sig00000063),
    .I5(sig0000005f),
    .O(sig0000022b)
  );
  LUT5 #(
    .INIT ( 32'h76325410 ))
  blk000001c8 (
    .I0(sig00000058),
    .I1(sig00000057),
    .I2(sig0000022b),
    .I3(sig0000002d),
    .I4(sig0000022c),
    .O(sig00000078)
  );
  LUT5 #(
    .INIT ( 32'hEFEA4540 ))
  blk000001c9 (
    .I0(sig00000058),
    .I1(sig00000063),
    .I2(sig00000059),
    .I3(sig0000005f),
    .I4(sig00000017),
    .O(sig0000022d)
  );
  LUT6 #(
    .INIT ( 64'hBBABBAAA11011000 ))
  blk000001ca (
    .I0(sig00000058),
    .I1(sig00000057),
    .I2(sig00000059),
    .I3(sig00000061),
    .I4(sig0000005d),
    .I5(sig00000027),
    .O(sig0000022e)
  );
  LUT6 #(
    .INIT ( 64'h4F404F40EFEA4F40 ))
  blk000001cb (
    .I0(sig00000057),
    .I1(sig0000022d),
    .I2(sig0000005a),
    .I3(sig0000022e),
    .I4(sig0000002a),
    .I5(sig00000058),
    .O(sig00000076)
  );
  LUT5 #(
    .INIT ( 32'h0145ABEF ))
  blk000001cc (
    .I0(sig00000058),
    .I1(sig00000059),
    .I2(sig00000060),
    .I3(sig00000064),
    .I4(sig0000001b),
    .O(sig0000022f)
  );
  LUT6 #(
    .INIT ( 64'h04540454AEFE0454 ))
  blk000001cd (
    .I0(sig00000057),
    .I1(sig0000001d),
    .I2(sig0000005a),
    .I3(sig0000022f),
    .I4(sig0000002e),
    .I5(sig00000058),
    .O(sig00000077)
  );
  LUT6 #(
    .INIT ( 64'h5545544411011000 ))
  blk000001ce (
    .I0(sig0000005a),
    .I1(sig00000058),
    .I2(sig00000059),
    .I3(sig00000065),
    .I4(sig00000061),
    .I5(sig0000001a),
    .O(sig00000231)
  );
  LUT5 #(
    .INIT ( 32'hA7A2F7F2 ))
  blk000001cf (
    .I0(sig000000b9),
    .I1(sig000000b4),
    .I2(sig000000b8),
    .I3(sig00000232),
    .I4(sig000000ac),
    .O(sig00000040)
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  blk000001d0 (
    .I0(sig000000fe),
    .I1(sig00000008),
    .I2(a[4]),
    .I3(a[5]),
    .I4(b[5]),
    .I5(b[4]),
    .O(sig0000024b)
  );
  LUT5 #(
    .INIT ( 32'h4744F7F4 ))
  blk000001d1 (
    .I0(sig000000b0),
    .I1(sig000000b9),
    .I2(sig000000b8),
    .I3(sig0000024b),
    .I4(sig000000a8),
    .O(sig00000013)
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  blk000001d2 (
    .I0(sig000000fe),
    .I1(sig00000008),
    .I2(a[5]),
    .I3(a[6]),
    .I4(b[6]),
    .I5(b[5]),
    .O(sig0000024a)
  );
  LUT5 #(
    .INIT ( 32'h4744F7F4 ))
  blk000001d3 (
    .I0(sig000000af),
    .I1(sig000000b9),
    .I2(sig000000b8),
    .I3(sig0000024a),
    .I4(sig000000a7),
    .O(sig00000014)
  );
  LUT5 #(
    .INIT ( 32'hBEEE8222 ))
  blk000001d4 (
    .I0(sig000000ad),
    .I1(sig000000de),
    .I2(sig000000d7),
    .I3(sig0000003f),
    .I4(sig000000ab),
    .O(sig00000233)
  );
  LUT5 #(
    .INIT ( 32'hBEEE8222 ))
  blk000001d5 (
    .I0(sig000000b5),
    .I1(sig000000de),
    .I2(sig000000d7),
    .I3(sig0000003f),
    .I4(sig000000b3),
    .O(sig00000234)
  );
  LUT6 #(
    .INIT ( 64'h0E0E0E5E04040454 ))
  blk000001d6 (
    .I0(sig000000b9),
    .I1(sig00000234),
    .I2(sig000000b8),
    .I3(sig00000008),
    .I4(sig00000260),
    .I5(sig00000233),
    .O(sig00000025)
  );
  LUT4 #(
    .INIT ( 16'h4F44 ))
  blk000001d7 (
    .I0(sig000000b2),
    .I1(sig000000b9),
    .I2(sig000000aa),
    .I3(sig000000b8),
    .O(sig00000235)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFBEAFBEAFBEA ))
  blk000001d8 (
    .I0(sig00000011),
    .I1(sig00000260),
    .I2(sig00000013),
    .I3(sig00000235),
    .I4(sig0000000e),
    .I5(sig0000001f),
    .O(sig00000041)
  );
  LUT6 #(
    .INIT ( 64'h75EC31A864EC20A8 ))
  blk000001d9 (
    .I0(sig000000b9),
    .I1(sig000000b8),
    .I2(sig000000b5),
    .I3(sig00000008),
    .I4(sig000000ad),
    .I5(sig0000000a),
    .O(sig00000236)
  );
  LUT5 #(
    .INIT ( 32'h76325410 ))
  blk000001da (
    .I0(sig000000b8),
    .I1(sig000000b9),
    .I2(sig00000003),
    .I3(sig000000b3),
    .I4(sig000000ab),
    .O(sig00000237)
  );
  LUT5 #(
    .INIT ( 32'h4540EFEA ))
  blk000001db (
    .I0(sig000000ba),
    .I1(sig00000237),
    .I2(sig00000260),
    .I3(sig00000236),
    .I4(sig00000042),
    .O(sig0000008b)
  );
  LUT5 #(
    .INIT ( 32'hBEEE8222 ))
  blk000001dc (
    .I0(sig000000b6),
    .I1(sig000000de),
    .I2(sig000000d7),
    .I3(sig0000003f),
    .I4(sig000000b4),
    .O(sig00000238)
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  blk000001dd (
    .I0(sig000000b9),
    .I1(sig000000b8),
    .I2(sig000000b6),
    .I3(sig000000a6),
    .I4(sig000000ae),
    .O(sig00000239)
  );
  LUT5 #(
    .INIT ( 32'h1504BFAE ))
  blk000001de (
    .I0(sig000000ba),
    .I1(sig00000260),
    .I2(sig00000040),
    .I3(sig00000239),
    .I4(sig00000041),
    .O(sig0000008c)
  );
  LUT6 #(
    .INIT ( 64'hEE08CC08EE2ACC2A ))
  blk000001df (
    .I0(sig00000260),
    .I1(sig000000b9),
    .I2(sig000000ad),
    .I3(sig000000b8),
    .I4(sig00000008),
    .I5(sig000000b5),
    .O(sig0000023a)
  );
  LUT5 #(
    .INIT ( 32'hFFFF8222 ))
  blk000001e0 (
    .I0(sig00000014),
    .I1(sig000000de),
    .I2(sig000000d7),
    .I3(sig0000003f),
    .I4(sig0000023a),
    .O(sig00000044)
  );
  LUT3 #(
    .INIT ( 8'h95 ))
  blk000001e1 (
    .I0(sig000000de),
    .I1(sig0000003f),
    .I2(sig000000d7),
    .O(sig0000025e)
  );
  LUT6 #(
    .INIT ( 64'h0808083BFF08FF3B ))
  blk000001e2 (
    .I0(sig00000019),
    .I1(sig000000b8),
    .I2(sig00000008),
    .I3(sig000000b9),
    .I4(sig000000b6),
    .I5(sig000000ae),
    .O(sig0000023b)
  );
  LUT6 #(
    .INIT ( 64'hFFFFF888F888F888 ))
  blk000001e3 (
    .I0(sig000000b9),
    .I1(sig000000b8),
    .I2(sig0000023b),
    .I3(sig00000260),
    .I4(sig00000013),
    .I5(sig0000025e),
    .O(sig00000043)
  );
  LUT5 #(
    .INIT ( 32'h01000001 ))
  blk000001e4 (
    .I0(sig000000c5),
    .I1(sig000000c6),
    .I2(sig000000c4),
    .I3(sig00000057),
    .I4(sig000000c7),
    .O(sig0000023c)
  );
  LUT5 #(
    .INIT ( 32'h90090000 ))
  blk000001e5 (
    .I0(sig000000c8),
    .I1(sig00000058),
    .I2(sig000000c9),
    .I3(sig00000059),
    .I4(sig0000023c),
    .O(sig0000023d)
  );
  LUT5 #(
    .INIT ( 32'h60060000 ))
  blk000001e6 (
    .I0(sig000000cb),
    .I1(sig000001b3),
    .I2(sig000000ca),
    .I3(sig0000005a),
    .I4(sig0000023d),
    .O(sig000000bf)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  blk000001e7 (
    .I0(a[25]),
    .I1(a[24]),
    .I2(a[23]),
    .O(sig0000023e)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk000001e8 (
    .I0(a[30]),
    .I1(a[29]),
    .I2(a[28]),
    .I3(a[27]),
    .I4(a[26]),
    .I5(sig0000023e),
    .O(sig00000005)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  blk000001e9 (
    .I0(b[25]),
    .I1(b[24]),
    .I2(b[23]),
    .O(sig0000023f)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  blk000001ea (
    .I0(b[30]),
    .I1(b[29]),
    .I2(b[28]),
    .I3(b[27]),
    .I4(b[26]),
    .I5(sig0000023f),
    .O(sig00000007)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk000001eb (
    .I0(a[25]),
    .I1(a[24]),
    .I2(a[23]),
    .O(sig00000240)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk000001ec (
    .I0(a[30]),
    .I1(a[29]),
    .I2(a[28]),
    .I3(a[27]),
    .I4(a[26]),
    .I5(sig00000240),
    .O(sig0000000d)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000001ed (
    .I0(sig000000c8),
    .I1(sig000000c9),
    .I2(sig000000ca),
    .I3(sig000000cb),
    .O(sig00000241)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  blk000001ee (
    .I0(sig000000c3),
    .I1(sig000000c4),
    .I2(sig000000c5),
    .I3(sig000000c6),
    .I4(sig000000c7),
    .I5(sig00000241),
    .O(sig0000000f)
  );
  LUT6 #(
    .INIT ( 64'h40454045EAEF4045 ))
  blk000001ef (
    .I0(sig00000058),
    .I1(sig00000027),
    .I2(sig0000005a),
    .I3(sig00000242),
    .I4(sig0000002b),
    .I5(sig00000057),
    .O(sig0000007c)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk000001f0 (
    .I0(b[25]),
    .I1(b[24]),
    .I2(b[23]),
    .O(sig00000243)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk000001f1 (
    .I0(b[30]),
    .I1(b[29]),
    .I2(b[28]),
    .I3(b[27]),
    .I4(b[26]),
    .I5(sig00000243),
    .O(sig0000008d)
  );
  LUT5 #(
    .INIT ( 32'h02020222 ))
  blk000001f2 (
    .I0(sig0000014b),
    .I1(sig000000b9),
    .I2(sig00000260),
    .I3(sig000000aa),
    .I4(sig000000a9),
    .O(sig00000244)
  );
  LUT5 #(
    .INIT ( 32'h02020222 ))
  blk000001f3 (
    .I0(sig00000148),
    .I1(sig000000b9),
    .I2(sig00000260),
    .I3(sig000000ae),
    .I4(sig000000ad),
    .O(sig00000246)
  );
  LUT6 #(
    .INIT ( 64'hFDDDFDDDFDDDA888 ))
  blk000001f4 (
    .I0(sig000000ba),
    .I1(sig00000244),
    .I2(sig000000b9),
    .I3(sig00000149),
    .I4(sig00000245),
    .I5(sig00000246),
    .O(sig00000146)
  );
  LUT5 #(
    .INIT ( 32'h08080888 ))
  blk000001f5 (
    .I0(sig000000ba),
    .I1(sig000000b9),
    .I2(sig00000260),
    .I3(sig000000b1),
    .I4(sig000000b2),
    .O(sig00000247)
  );
  LUT5 #(
    .INIT ( 32'h51111111 ))
  blk000001f6 (
    .I0(sig000000b9),
    .I1(sig00000260),
    .I2(sig000000ba),
    .I3(sig0000001f),
    .I4(sig0000001e),
    .O(sig00000248)
  );
  LUT6 #(
    .INIT ( 64'h22332A3322FF2AFF ))
  blk000001f7 (
    .I0(sig0000014d),
    .I1(sig00000260),
    .I2(sig000000b6),
    .I3(sig000000b9),
    .I4(sig000000b5),
    .I5(sig000000b7),
    .O(sig00000249)
  );
  LUT6 #(
    .INIT ( 64'hF888F888FFFFF888 ))
  blk000001f8 (
    .I0(sig0000014e),
    .I1(sig00000248),
    .I2(sig0000014c),
    .I3(sig00000247),
    .I4(sig00000249),
    .I5(sig000000ba),
    .O(sig00000147)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000001f9 (
    .I0(sig0000001f),
    .I1(sig0000001e),
    .I2(sig0000024a),
    .I3(sig0000024b),
    .O(sig00000153)
  );
  LUT5 #(
    .INIT ( 32'h62734051 ))
  blk000001fa (
    .I0(sig000000b9),
    .I1(sig000000b8),
    .I2(sig000000aa),
    .I3(sig0000001f),
    .I4(sig000000b2),
    .O(sig0000024c)
  );
  LUT6 #(
    .INIT ( 64'h6666666669996696 ))
  blk000001fb (
    .I0(sig000000a5),
    .I1(sig000000c2),
    .I2(sig000000ba),
    .I3(sig00000043),
    .I4(sig0000024d),
    .I5(sig000000bc),
    .O(sig00000164)
  );
  LUT6 #(
    .INIT ( 64'hDF579B13CE468A02 ))
  blk000001fc (
    .I0(sig00000260),
    .I1(sig000000b8),
    .I2(sig0000001e),
    .I3(sig000000a9),
    .I4(sig000000ab),
    .I5(sig00000003),
    .O(sig0000024e)
  );
  LUT6 #(
    .INIT ( 64'h7775575522200200 ))
  blk000001fd (
    .I0(sig000000b9),
    .I1(sig000000b8),
    .I2(sig00000260),
    .I3(sig000000b3),
    .I4(sig000000b1),
    .I5(sig0000024e),
    .O(sig0000024f)
  );
  LUT6 #(
    .INIT ( 64'h6666666669996696 ))
  blk000001fe (
    .I0(sig000000a4),
    .I1(sig000000c2),
    .I2(sig000000ba),
    .I3(sig00000044),
    .I4(sig0000024f),
    .I5(sig000000bc),
    .O(sig00000165)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAA6A9959 ))
  blk000001ff (
    .I0(sig00000250),
    .I1(sig000000ba),
    .I2(sig00000024),
    .I3(sig000000b8),
    .I4(sig00000043),
    .I5(sig000000bc),
    .O(sig00000168)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAA6A9959 ))
  blk00000200 (
    .I0(sig00000251),
    .I1(sig000000ba),
    .I2(sig00000023),
    .I3(sig000000b8),
    .I4(sig00000044),
    .I5(sig000000bc),
    .O(sig00000169)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA9959AA6A ))
  blk00000201 (
    .I0(sig00000252),
    .I1(sig000000ba),
    .I2(sig00000022),
    .I3(sig000000b8),
    .I4(sig0000001c),
    .I5(sig000000bc),
    .O(sig0000016a)
  );
  LUT5 #(
    .INIT ( 32'hEFEA4540 ))
  blk00000202 (
    .I0(sig000000b9),
    .I1(sig000000af),
    .I2(sig00000260),
    .I3(sig000000b1),
    .I4(sig00000012),
    .O(sig00000254)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA9959AA6A ))
  blk00000203 (
    .I0(sig00000253),
    .I1(sig000000ba),
    .I2(sig00000254),
    .I3(sig000000b8),
    .I4(sig00000025),
    .I5(sig000000bc),
    .O(sig0000016b)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000204 (
    .I0(sig000000b8),
    .I1(sig000000bc),
    .O(sig00000255)
  );
  LUT6 #(
    .INIT ( 64'hC33C0FF0A55A0FF0 ))
  blk00000205 (
    .I0(sig00000024),
    .I1(sig00000004),
    .I2(sig0000009d),
    .I3(sig000000c2),
    .I4(sig00000255),
    .I5(sig000000ba),
    .O(sig0000016c)
  );
  LUT6 #(
    .INIT ( 64'h5555565555559A99 ))
  blk00000206 (
    .I0(sig00000258),
    .I1(sig000000ba),
    .I2(sig000000b8),
    .I3(sig00000022),
    .I4(sig000000bc),
    .I5(sig00000045),
    .O(sig0000016e)
  );
  LUT5 #(
    .INIT ( 32'hAA808080 ))
  blk00000207 (
    .I0(sig000000ba),
    .I1(sig0000000c),
    .I2(sig000000ab),
    .I3(sig0000000e),
    .I4(sig000000ad),
    .O(sig00000259)
  );
  LUT6 #(
    .INIT ( 64'hBBABBAAA11011000 ))
  blk00000208 (
    .I0(sig000000b9),
    .I1(sig000000ba),
    .I2(sig00000260),
    .I3(sig000000af),
    .I4(sig000000b1),
    .I5(sig00000021),
    .O(sig0000025a)
  );
  LUT6 #(
    .INIT ( 64'h6666666696969996 ))
  blk00000209 (
    .I0(sig0000009a),
    .I1(sig000000c2),
    .I2(sig00000259),
    .I3(sig0000025a),
    .I4(sig000000b8),
    .I5(sig000000bc),
    .O(sig00000155)
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  blk0000020a (
    .I0(sig000000ba),
    .I1(sig000000b9),
    .I2(sig00000260),
    .I3(sig000000ac),
    .I4(sig000000aa),
    .O(sig0000025c)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAA55A6 ))
  blk0000020b (
    .I0(sig0000025b),
    .I1(sig00000004),
    .I2(sig000000ba),
    .I3(sig0000025c),
    .I4(sig000000bc),
    .I5(sig000000b8),
    .O(sig00000156)
  );
  LUT6 #(
    .INIT ( 64'h2A0A280822022000 ))
  blk0000020c (
    .I0(sig0000025e),
    .I1(sig000000ba),
    .I2(sig000000b9),
    .I3(sig000000a7),
    .I4(sig000000af),
    .I5(sig000000ab),
    .O(sig0000025f)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAA556A ))
  blk0000020d (
    .I0(sig0000025d),
    .I1(sig00000020),
    .I2(sig00000260),
    .I3(sig0000025f),
    .I4(sig000000bc),
    .I5(sig000000b8),
    .O(sig00000157)
  );
  LUT6 #(
    .INIT ( 64'h6666666696969699 ))
  blk0000020e (
    .I0(sig00000097),
    .I1(sig000000c2),
    .I2(sig00000261),
    .I3(sig00000045),
    .I4(sig000000ba),
    .I5(sig000000bc),
    .O(sig00000158)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  blk0000020f (
    .I0(sig00000263),
    .I1(sig000000ba),
    .I2(sig000000ab),
    .I3(sig000000a7),
    .O(sig00000264)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAA556A ))
  blk00000210 (
    .I0(sig00000262),
    .I1(sig00000020),
    .I2(sig0000025e),
    .I3(sig00000264),
    .I4(sig000000bc),
    .I5(sig000000b8),
    .O(sig00000159)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  blk00000211 (
    .I0(sig00000006),
    .I1(sig000000a6),
    .I2(sig0000000b),
    .I3(sig000000aa),
    .O(sig00000265)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  blk00000212 (
    .I0(sig00000006),
    .I1(sig000000a8),
    .I2(sig0000000b),
    .I3(sig000000ac),
    .O(sig00000266)
  );
  LUT6 #(
    .INIT ( 64'h6666666699699666 ))
  blk00000213 (
    .I0(sig00000095),
    .I1(sig000000c2),
    .I2(sig00000260),
    .I3(sig00000265),
    .I4(sig00000266),
    .I5(sig000000bc),
    .O(sig0000015a)
  );
  LUT5 #(
    .INIT ( 32'h55404040 ))
  blk00000214 (
    .I0(sig000000ba),
    .I1(sig000000ab),
    .I2(sig0000000e),
    .I3(sig0000000c),
    .I4(sig000000a9),
    .O(sig00000268)
  );
  LUT5 #(
    .INIT ( 32'h66669996 ))
  blk00000215 (
    .I0(sig00000094),
    .I1(sig000000c2),
    .I2(sig00000267),
    .I3(sig00000268),
    .I4(sig000000bc),
    .O(sig0000015b)
  );
  LUT5 #(
    .INIT ( 32'h76325410 ))
  blk00000216 (
    .I0(sig000000ba),
    .I1(sig00000260),
    .I2(sig000000aa),
    .I3(sig000000a8),
    .I4(sig000000a6),
    .O(sig00000269)
  );
  LUT6 #(
    .INIT ( 64'h6666666966666666 ))
  blk00000217 (
    .I0(sig00000093),
    .I1(sig000000c2),
    .I2(sig000000b8),
    .I3(sig000000b9),
    .I4(sig000000bc),
    .I5(sig00000269),
    .O(sig0000015c)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk00000218 (
    .I0(sig0000000b),
    .I1(sig000000bc),
    .O(sig0000026a)
  );
  LUT6 #(
    .INIT ( 64'hC33C0FF0A55A0FF0 ))
  blk00000219 (
    .I0(sig000000a8),
    .I1(sig000000a6),
    .I2(sig00000091),
    .I3(sig000000c2),
    .I4(sig0000026a),
    .I5(sig00000260),
    .O(sig0000015e)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk0000021a (
    .I0(sig000000bc),
    .I1(sig0000000b),
    .O(sig0000026b)
  );
  LUT6 #(
    .INIT ( 64'h6666666669996696 ))
  blk0000021b (
    .I0(sig00000090),
    .I1(sig000000c2),
    .I2(sig00000260),
    .I3(sig00000008),
    .I4(sig000000a7),
    .I5(sig0000026b),
    .O(sig0000015f)
  );
  LUT6 #(
    .INIT ( 64'hBBABBAAA11011000 ))
  blk0000021c (
    .I0(sig00000058),
    .I1(sig00000057),
    .I2(sig00000059),
    .I3(sig00000060),
    .I4(sig0000005c),
    .I5(sig00000026),
    .O(sig0000026c)
  );
  LUT6 #(
    .INIT ( 64'h4F404F40EFEA4F40 ))
  blk0000021d (
    .I0(sig00000057),
    .I1(sig0000001d),
    .I2(sig0000005a),
    .I3(sig0000026c),
    .I4(sig0000002c),
    .I5(sig00000058),
    .O(sig0000026d)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000021e (
    .I0(sig000001b3),
    .I1(sig00000076),
    .I2(sig0000026d),
    .O(sig000001cb)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk0000021f (
    .I0(sig000000d1),
    .I1(sig000000d2),
    .O(sig0000026e)
  );
  LUT6 #(
    .INIT ( 64'h5544554445545544 ))
  blk00000220 (
    .I0(sig00000056),
    .I1(sig000000cd),
    .I2(sig0000026e),
    .I3(sig000000cf),
    .I4(sig000000d0),
    .I5(sig000001fd),
    .O(sig00000204)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk00000221 (
    .I0(sig000000d0),
    .I1(sig000000d1),
    .I2(sig000000d2),
    .I3(sig000000d3),
    .I4(sig000000d4),
    .I5(sig000000d5),
    .O(sig0000026f)
  );
  LUT6 #(
    .INIT ( 64'h5544554445545544 ))
  blk00000222 (
    .I0(sig00000056),
    .I1(sig000000cd),
    .I2(sig0000026f),
    .I3(sig000000ce),
    .I4(sig000000cf),
    .I5(sig000001d9),
    .O(sig00000205)
  );
  LUT6 #(
    .INIT ( 64'h4044555555555555 ))
  blk00000223 (
    .I0(sig000000c1),
    .I1(sig0000000d),
    .I2(sig000000c2),
    .I3(sig000000bd),
    .I4(sig000000be),
    .I5(sig0000008d),
    .O(sig00000270)
  );
  LUT5 #(
    .INIT ( 32'hAAAA082A ))
  blk00000224 (
    .I0(sig00000270),
    .I1(sig0000000d),
    .I2(sig000000bd),
    .I3(sig00000009),
    .I4(sig0000008d),
    .O(sig00000271)
  );
  LUT6 #(
    .INIT ( 64'h4404040455045504 ))
  blk00000225 (
    .I0(sig000000c1),
    .I1(sig0000008d),
    .I2(sig000000be),
    .I3(sig0000000d),
    .I4(sig000000c2),
    .I5(sig000000bd),
    .O(sig00000272)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  blk00000226 (
    .I0(sig00000271),
    .I1(sig000000fd),
    .I2(sig00000272),
    .O(sig0000021c)
  );
  FD   blk00000227 (
    .C(clk),
    .D(sig000000d6),
    .Q(\U0/op_inst/FLT_PT_OP/ADDSUB_OP.SPEED_OP.LOGIC.OP/OP/sign_op )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk00000228 (
    .I0(sig000000bb),
    .O(sig00000273)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  blk00000229 (
    .I0(a[31]),
    .I1(b[31]),
    .I2(operation[0]),
    .O(sig00000274)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000022a (
    .I0(sig000000cb),
    .I1(sig000001b3),
    .O(sig0000003e)
  );
  LUT6 #(
    .INIT ( 64'h0001111110111111 ))
  blk0000022b (
    .I0(sig0000000a),
    .I1(sig00000003),
    .I2(sig000000fe),
    .I3(b[1]),
    .I4(sig00000008),
    .I5(a[1]),
    .O(sig00000154)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF8880 ))
  blk0000022c (
    .I0(sig000000b8),
    .I1(sig000000b9),
    .I2(sig00000260),
    .I3(sig000000ba),
    .I4(sig00000225),
    .I5(sig00000005),
    .O(sig00000275)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFBFFFAE ))
  blk0000022d (
    .I0(sig00000275),
    .I1(sig000000d9),
    .I2(sig000000d8),
    .I3(sig00000223),
    .I4(sig000000da),
    .I5(sig00000007),
    .O(sig000000bc)
  );
  LUT5 #(
    .INIT ( 32'h01110555 ))
  blk0000022e (
    .I0(sig00000257),
    .I1(sig0000000e),
    .I2(sig0000000c),
    .I3(sig000000ad),
    .I4(sig000000af),
    .O(sig00000276)
  );
  LUT6 #(
    .INIT ( 64'h6666666696969996 ))
  blk0000022f (
    .I0(sig0000009c),
    .I1(sig000000c2),
    .I2(sig00000256),
    .I3(sig000000ba),
    .I4(sig00000276),
    .I5(sig000000bc),
    .O(sig0000016d)
  );
  LUT4 #(
    .INIT ( 16'h1980 ))
  blk00000230 (
    .I0(sig000000dc),
    .I1(sig000000d7),
    .I2(sig0000003f),
    .I3(sig000000de),
    .O(sig00000263)
  );
  LUT6 #(
    .INIT ( 64'h90909050D490B2FA ))
  blk00000231 (
    .I0(sig000000dd),
    .I1(sig000000d7),
    .I2(sig00000012),
    .I3(sig0000003f),
    .I4(sig000000de),
    .I5(sig00000008),
    .O(sig00000021)
  );
  LUT6 #(
    .INIT ( 64'h5545544411011000 ))
  blk00000232 (
    .I0(sig00000057),
    .I1(sig000001c0),
    .I2(sig0000005a),
    .I3(sig0000001a),
    .I4(sig00000017),
    .I5(sig0000002d),
    .O(sig00000080)
  );
  LUT5 #(
    .INIT ( 32'h04040454 ))
  blk00000233 (
    .I0(sig00000057),
    .I1(sig0000002b),
    .I2(sig000001c0),
    .I3(sig00000059),
    .I4(sig00000226),
    .O(sig00000084)
  );
  LUT5 #(
    .INIT ( 32'h5454FE54 ))
  blk00000234 (
    .I0(sig00000057),
    .I1(sig00000230),
    .I2(sig00000231),
    .I3(sig00000028),
    .I4(sig000001b8),
    .O(sig0000007a)
  );
  LUT6 #(
    .INIT ( 64'hF7D5F780A280F780 ))
  blk00000235 (
    .I0(sig00000059),
    .I1(sig000001a3),
    .I2(sig00000071),
    .I3(sig00000015),
    .I4(sig000001a2),
    .I5(sig0000006d),
    .O(sig0000002b)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  blk00000236 (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[22]),
    .I3(a[22]),
    .I4(a[21]),
    .I5(b[21]),
    .O(sig000000a7)
  );
  LUT6 #(
    .INIT ( 64'h5140FBEA51405140 ))
  blk00000237 (
    .I0(sig00000059),
    .I1(sig000001a2),
    .I2(sig00000073),
    .I3(sig00000071),
    .I4(sig000001a3),
    .I5(sig00000075),
    .O(sig00000028)
  );
  LUT6 #(
    .INIT ( 64'h5140FBEA51405140 ))
  blk00000238 (
    .I0(sig00000059),
    .I1(sig000001a2),
    .I2(sig00000072),
    .I3(sig00000070),
    .I4(sig000001a3),
    .I5(sig00000074),
    .O(sig00000029)
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  blk00000239 (
    .I0(sig00000008),
    .I1(sig000000fe),
    .I2(b[1]),
    .I3(a[1]),
    .I4(a[0]),
    .I5(b[0]),
    .O(sig00000232)
  );
  LUT5 #(
    .INIT ( 32'h8ACE9BDF ))
  blk0000023a (
    .I0(sig00000059),
    .I1(sig00000057),
    .I2(sig00000067),
    .I3(sig00000073),
    .I4(sig00000063),
    .O(sig00000242)
  );
  LUT4 #(
    .INIT ( 16'hA965 ))
  blk0000023b (
    .I0(sig000000c8),
    .I1(sig00000057),
    .I2(sig000001c0),
    .I3(sig000001b8),
    .O(sig00000038)
  );
  LUT4 #(
    .INIT ( 16'hA965 ))
  blk0000023c (
    .I0(sig000000ca),
    .I1(sig00000059),
    .I2(sig000001a2),
    .I3(sig000001a3),
    .O(sig0000003c)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFEAEAEA ))
  blk0000023d (
    .I0(sig000000bf),
    .I1(sig0000005b),
    .I2(sig0000000f),
    .I3(sig00000057),
    .I4(sig000001b9),
    .I5(sig000000cc),
    .O(sig00000009)
  );
  LUT6 #(
    .INIT ( 64'h7337622651154004 ))
  blk0000023e (
    .I0(sig000000ba),
    .I1(sig000000b9),
    .I2(a[23]),
    .I3(b[23]),
    .I4(sig000000ad),
    .I5(sig000000a9),
    .O(sig00000020)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk0000023f (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[0]),
    .I4(a[0]),
    .O(sig000000a5)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000240 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[10]),
    .I4(a[10]),
    .O(sig0000009b)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000241 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[11]),
    .I4(a[11]),
    .O(sig0000009a)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000242 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[12]),
    .I4(a[12]),
    .O(sig00000099)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000243 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[13]),
    .I4(a[13]),
    .O(sig00000098)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000244 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[14]),
    .I4(a[14]),
    .O(sig00000097)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000245 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[15]),
    .I4(a[15]),
    .O(sig00000096)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000246 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[16]),
    .I4(a[16]),
    .O(sig00000095)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000247 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[17]),
    .I4(a[17]),
    .O(sig00000094)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000248 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[18]),
    .I4(a[18]),
    .O(sig00000093)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000249 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[19]),
    .I4(a[19]),
    .O(sig00000092)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk0000024a (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[1]),
    .I4(a[1]),
    .O(sig000000a4)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk0000024b (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[20]),
    .I4(a[20]),
    .O(sig00000091)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk0000024c (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[21]),
    .I4(a[21]),
    .O(sig00000090)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk0000024d (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[22]),
    .I4(a[22]),
    .O(sig0000008f)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk0000024e (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[2]),
    .I4(a[2]),
    .O(sig000000a3)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk0000024f (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[3]),
    .I4(a[3]),
    .O(sig000000a2)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000250 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[4]),
    .I4(a[4]),
    .O(sig000000a1)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000251 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[5]),
    .I4(a[5]),
    .O(sig000000a0)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000252 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[6]),
    .I4(a[6]),
    .O(sig0000009f)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000253 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[7]),
    .I4(a[7]),
    .O(sig0000009e)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000254 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[8]),
    .I4(a[8]),
    .O(sig0000009d)
  );
  LUT5 #(
    .INIT ( 32'h77077000 ))
  blk00000255 (
    .I0(sig00000007),
    .I1(sig00000005),
    .I2(sig000000fe),
    .I3(b[9]),
    .I4(a[9]),
    .O(sig0000009c)
  );
  LUT5 #(
    .INIT ( 32'hBEEE8222 ))
  blk00000256 (
    .I0(sig000000a9),
    .I1(sig000000de),
    .I2(sig0000003f),
    .I3(sig000000d7),
    .I4(sig000000a7),
    .O(sig00000012)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  blk00000257 (
    .I0(sig00000007),
    .I1(sig00000005),
    .O(sig0000008e)
  );
  LUT5 #(
    .INIT ( 32'h96699696 ))
  blk00000258 (
    .I0(a[31]),
    .I1(b[31]),
    .I2(operation[0]),
    .I3(sig000000bc),
    .I4(sig0000008c),
    .O(sig00000162)
  );
  LUT5 #(
    .INIT ( 32'h96699696 ))
  blk00000259 (
    .I0(a[31]),
    .I1(b[31]),
    .I2(operation[0]),
    .I3(sig000000bc),
    .I4(sig0000008b),
    .O(sig00000163)
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  blk0000025a (
    .I0(sig0000005b),
    .I1(sig0000000f),
    .I2(sig00000057),
    .I3(sig000001b9),
    .O(sig0000021d)
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  blk0000025b (
    .I0(sig0000008d),
    .I1(a[31]),
    .I2(sig00000007),
    .I3(sig00000005),
    .O(sig0000021e)
  );
  LUT6 #(
    .INIT ( 64'h888A8A8A00020202 ))
  blk0000025c (
    .I0(sig0000021e),
    .I1(sig0000000d),
    .I2(sig000000fe),
    .I3(sig00000057),
    .I4(sig000001b9),
    .I5(sig000000bd),
    .O(sig0000021f)
  );
  LUT6 #(
    .INIT ( 64'hAA80808080808080 ))
  blk0000025d (
    .I0(a[31]),
    .I1(sig00000005),
    .I2(sig00000007),
    .I3(sig000000bd),
    .I4(sig000000be),
    .I5(sig0000008d),
    .O(sig00000220)
  );
  LUT5 #(
    .INIT ( 32'h0D2F087F ))
  blk0000025e (
    .I0(sig00000059),
    .I1(sig000001a3),
    .I2(sig00000075),
    .I3(sig00000073),
    .I4(sig000001a2),
    .O(sig00000226)
  );
  LUT6 #(
    .INIT ( 64'hE4E4E40000E40000 ))
  blk0000025f (
    .I0(sig00000059),
    .I1(sig000001a2),
    .I2(sig000001a3),
    .I3(sig00000058),
    .I4(sig00000010),
    .I5(sig00000015),
    .O(sig00000230)
  );
  LUT5 #(
    .INIT ( 32'h4888EDDD ))
  blk00000260 (
    .I0(sig000000de),
    .I1(sig0000024c),
    .I2(sig0000003f),
    .I3(sig000000d7),
    .I4(sig00000040),
    .O(sig0000024d)
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  blk00000261 (
    .I0(sig000000a1),
    .I1(a[31]),
    .I2(b[31]),
    .I3(operation[0]),
    .O(sig00000250)
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  blk00000262 (
    .I0(sig000000a0),
    .I1(a[31]),
    .I2(b[31]),
    .I3(operation[0]),
    .O(sig00000251)
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  blk00000263 (
    .I0(sig0000009f),
    .I1(a[31]),
    .I2(b[31]),
    .I3(operation[0]),
    .O(sig00000252)
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  blk00000264 (
    .I0(sig0000009e),
    .I1(a[31]),
    .I2(b[31]),
    .I3(operation[0]),
    .O(sig00000253)
  );
  LUT6 #(
    .INIT ( 64'h4004400440040404 ))
  blk00000265 (
    .I0(sig000000b8),
    .I1(sig00000023),
    .I2(sig000000dd),
    .I3(sig000000d7),
    .I4(sig0000003f),
    .I5(sig000000de),
    .O(sig00000256)
  );
  LUT6 #(
    .INIT ( 64'h2202022220000020 ))
  blk00000266 (
    .I0(sig000000b9),
    .I1(sig000000b8),
    .I2(sig00000260),
    .I3(a[23]),
    .I4(b[23]),
    .I5(sig000000a7),
    .O(sig00000257)
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  blk00000267 (
    .I0(sig0000009b),
    .I1(a[31]),
    .I2(b[31]),
    .I3(operation[0]),
    .O(sig00000258)
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  blk00000268 (
    .I0(sig00000099),
    .I1(a[31]),
    .I2(b[31]),
    .I3(operation[0]),
    .O(sig0000025b)
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  blk00000269 (
    .I0(sig00000098),
    .I1(a[31]),
    .I2(b[31]),
    .I3(operation[0]),
    .O(sig0000025d)
  );
  LUT6 #(
    .INIT ( 64'hA8A2A2A220808080 ))
  blk0000026a (
    .I0(sig00000006),
    .I1(sig000000de),
    .I2(sig000000a8),
    .I3(sig0000003f),
    .I4(sig000000d7),
    .I5(sig000000aa),
    .O(sig00000261)
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  blk0000026b (
    .I0(sig00000096),
    .I1(a[31]),
    .I2(b[31]),
    .I3(operation[0]),
    .O(sig00000262)
  );
  LUT6 #(
    .INIT ( 64'h8A2A2A2A02080808 ))
  blk0000026c (
    .I0(sig00000006),
    .I1(sig000000de),
    .I2(sig00000008),
    .I3(sig000000d7),
    .I4(sig0000003f),
    .I5(sig000000a7),
    .O(sig00000267)
  );
  LUT6 #(
    .INIT ( 64'h8001800180010005 ))
  blk0000026d (
    .I0(sig000000db),
    .I1(sig000000d7),
    .I2(sig000000dd),
    .I3(sig000000dc),
    .I4(sig0000003f),
    .I5(sig000000de),
    .O(sig0000000b)
  );
  LUT6 #(
    .INIT ( 64'h8001400180010101 ))
  blk0000026e (
    .I0(sig000000de),
    .I1(sig000000db),
    .I2(sig000000dc),
    .I3(sig000000d7),
    .I4(sig0000003f),
    .I5(sig000000dd),
    .O(sig0000000e)
  );
  LUT6 #(
    .INIT ( 64'h2424242424242460 ))
  blk0000026f (
    .I0(sig000000db),
    .I1(sig000000d7),
    .I2(sig000000dc),
    .I3(sig0000003f),
    .I4(sig000000de),
    .I5(sig000000dd),
    .O(sig00000011)
  );
  LUT6 #(
    .INIT ( 64'h0180018001808100 ))
  blk00000270 (
    .I0(sig000000dc),
    .I1(sig000000d7),
    .I2(sig000000db),
    .I3(sig000000dd),
    .I4(sig0000003f),
    .I5(sig000000de),
    .O(sig00000006)
  );
  LUT5 #(
    .INIT ( 32'h01818000 ))
  blk00000271 (
    .I0(sig000000dc),
    .I1(sig000000d7),
    .I2(sig000000db),
    .I3(sig0000003f),
    .I4(sig000000de),
    .O(sig0000000c)
  );
  LUT6 #(
    .INIT ( 64'h0101010000010000 ))
  blk00000272 (
    .I0(sig00000059),
    .I1(sig00000057),
    .I2(sig000001c0),
    .I3(sig000001a2),
    .I4(sig00000072),
    .I5(sig00000074),
    .O(sig00000087)
  );
  LUT6 #(
    .INIT ( 64'h0101010000010000 ))
  blk00000273 (
    .I0(sig00000059),
    .I1(sig00000057),
    .I2(sig000001c0),
    .I3(sig000001a2),
    .I4(sig00000073),
    .I5(sig00000075),
    .O(sig00000088)
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  blk00000274 (
    .I0(sig00000074),
    .I1(sig00000059),
    .I2(sig000001a2),
    .I3(sig00000057),
    .I4(sig000001c0),
    .O(sig00000089)
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  blk00000275 (
    .I0(sig00000075),
    .I1(sig00000059),
    .I2(sig000001a2),
    .I3(sig00000057),
    .I4(sig000001c0),
    .O(sig0000008a)
  );
  LUT6 #(
    .INIT ( 64'h1111115100000040 ))
  blk00000276 (
    .I0(sig00000057),
    .I1(sig000001c0),
    .I2(sig00000075),
    .I3(sig00000059),
    .I4(sig000001a2),
    .I5(sig0000002a),
    .O(sig00000086)
  );
  LUT6 #(
    .INIT ( 64'h1111115100000040 ))
  blk00000277 (
    .I0(sig00000057),
    .I1(sig000001c0),
    .I2(sig00000074),
    .I3(sig00000059),
    .I4(sig000001a2),
    .I5(sig0000002c),
    .O(sig00000085)
  );
  LUT6 #(
    .INIT ( 64'hF7D5F780A280F780 ))
  blk00000278 (
    .I0(sig00000059),
    .I1(sig000001a3),
    .I2(sig0000006e),
    .I3(sig0000001b),
    .I4(sig000001a2),
    .I5(sig0000006a),
    .O(sig00000229)
  );
  LUT6 #(
    .INIT ( 64'hF7D5F780A280F780 ))
  blk00000279 (
    .I0(sig00000059),
    .I1(sig000001a3),
    .I2(sig0000006d),
    .I3(sig00000017),
    .I4(sig000001a2),
    .I5(sig00000069),
    .O(sig0000022c)
  );
  LUT5 #(
    .INIT ( 32'hEFFE4FF4 ))
  blk0000027a (
    .I0(sig000000fe),
    .I1(b[22]),
    .I2(b[23]),
    .I3(a[23]),
    .I4(a[22]),
    .O(sig000000a6)
  );
  LUT5 #(
    .INIT ( 32'h57550200 ))
  blk0000027b (
    .I0(sig000001b3),
    .I1(sig00000057),
    .I2(sig000001c0),
    .I3(sig00000028),
    .I4(sig00000087),
    .O(sig000001cd)
  );
  LUT5 #(
    .INIT ( 32'h888D8888 ))
  blk0000027c (
    .I0(sig000001b3),
    .I1(sig00000086),
    .I2(sig00000057),
    .I3(sig000001c0),
    .I4(sig0000002e),
    .O(sig000001d1)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk0000027d (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000e7),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig00000206)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk0000027e (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000e8),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig00000207)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk0000027f (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000ea),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig00000209)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk00000280 (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000eb),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig0000020a)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk00000281 (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000e9),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig00000208)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk00000282 (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000ed),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig0000020c)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk00000283 (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000ee),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig0000020d)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk00000284 (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000ec),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig0000020b)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk00000285 (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000f0),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig0000020f)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk00000286 (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000f1),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig00000210)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk00000287 (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000ef),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig0000020e)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk00000288 (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000f3),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig00000212)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk00000289 (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000f4),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig00000213)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk0000028a (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000f2),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig00000211)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk0000028b (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000f6),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig00000215)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk0000028c (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000f7),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig00000216)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk0000028d (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000f5),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig00000214)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk0000028e (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000f9),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig00000218)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk0000028f (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000fa),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig00000219)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk00000290 (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000f8),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig00000217)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk00000291 (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000fb),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig0000021a)
  );
  LUT6 #(
    .INIT ( 64'h0000001000100010 ))
  blk00000292 (
    .I0(sig0000008d),
    .I1(sig0000000d),
    .I2(sig000000fc),
    .I3(sig00000009),
    .I4(sig00000005),
    .I5(sig00000007),
    .O(sig0000021b)
  );
  LUT5 #(
    .INIT ( 32'h11011000 ))
  blk00000293 (
    .I0(sig00000057),
    .I1(sig000001c0),
    .I2(sig000001b3),
    .I3(sig00000029),
    .I4(sig00000028),
    .O(sig000001ce)
  );
  LUT5 #(
    .INIT ( 32'h11011000 ))
  blk00000294 (
    .I0(sig00000057),
    .I1(sig000001c0),
    .I2(sig000001b3),
    .I3(sig0000002d),
    .I4(sig00000029),
    .O(sig000001cf)
  );
  LUT5 #(
    .INIT ( 32'h11011000 ))
  blk00000295 (
    .I0(sig00000057),
    .I1(sig000001c0),
    .I2(sig000001b3),
    .I3(sig0000002e),
    .I4(sig0000002d),
    .O(sig000001d0)
  );
  LUT6 #(
    .INIT ( 64'h0820022008202020 ))
  blk00000296 (
    .I0(sig0000014a),
    .I1(sig000000de),
    .I2(sig000000dc),
    .I3(sig000000d7),
    .I4(sig0000003f),
    .I5(sig000000dd),
    .O(sig00000245)
  );
  LUT5 #(
    .INIT ( 32'h66600600 ))
  blk00000297 (
    .I0(b[23]),
    .I1(a[23]),
    .I2(sig000000fe),
    .I3(b[0]),
    .I4(a[0]),
    .O(sig000000b7)
  );
  MUXF7   blk00000298 (
    .I0(sig00000277),
    .I1(sig00000278),
    .S(sig000000b9),
    .O(sig00000045)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF1222B777 ))
  blk00000299 (
    .I0(sig000000de),
    .I1(sig000000ac),
    .I2(sig0000003f),
    .I3(sig000000d7),
    .I4(sig000000ae),
    .I5(sig000000b8),
    .O(sig00000277)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF6A6AFF6A ))
  blk0000029a (
    .I0(sig000000de),
    .I1(sig0000003f),
    .I2(sig000000d7),
    .I3(sig00000019),
    .I4(sig00000008),
    .I5(sig000000b8),
    .O(sig00000278)
  );
  MUXF7   blk0000029b (
    .I0(sig00000279),
    .I1(sig0000027a),
    .S(sig0000005a),
    .O(sig00000083)
  );
  LUT6 #(
    .INIT ( 64'h1505140411011000 ))
  blk0000029c (
    .I0(sig00000057),
    .I1(sig00000058),
    .I2(sig00000059),
    .I3(sig0000006e),
    .I4(sig0000006a),
    .I5(sig00000072),
    .O(sig00000279)
  );
  LUT6 #(
    .INIT ( 64'h1505140411011000 ))
  blk0000029d (
    .I0(sig00000057),
    .I1(sig00000059),
    .I2(sig00000058),
    .I3(sig00000074),
    .I4(sig0000006c),
    .I5(sig00000070),
    .O(sig0000027a)
  );
  MUXF7   blk0000029e (
    .I0(sig0000027b),
    .I1(sig0000027c),
    .S(sig000000b9),
    .O(sig0000001c)
  );
  LUT6 #(
    .INIT ( 64'hD55D5D5D80080808 ))
  blk0000029f (
    .I0(sig000000b8),
    .I1(sig000000a6),
    .I2(sig000000de),
    .I3(sig0000003f),
    .I4(sig000000d7),
    .I5(sig00000238),
    .O(sig0000027b)
  );
  LUT6 #(
    .INIT ( 64'h4554545440040404 ))
  blk000002a0 (
    .I0(sig000000b8),
    .I1(sig000000ae),
    .I2(sig000000de),
    .I3(sig000000d7),
    .I4(sig0000003f),
    .I5(sig000000ac),
    .O(sig0000027c)
  );
  MUXF7   blk000002a1 (
    .I0(sig0000027d),
    .I1(sig0000027e),
    .S(sig00000058),
    .O(sig0000007b)
  );
  LUT6 #(
    .INIT ( 64'hDFDD5755CECC0200 ))
  blk000002a2 (
    .I0(sig00000057),
    .I1(sig0000005a),
    .I2(sig00000059),
    .I3(sig00000072),
    .I4(sig00000026),
    .I5(sig0000022a),
    .O(sig0000027d)
  );
  LUT6 #(
    .INIT ( 64'h5555555544400400 ))
  blk000002a3 (
    .I0(sig00000057),
    .I1(sig0000005a),
    .I2(sig00000059),
    .I3(sig0000006c),
    .I4(sig00000070),
    .I5(sig0000022a),
    .O(sig0000027e)
  );
  INV   blk000002a4 (
    .I(sig00000075),
    .O(sig000001b2)
  );
  INV   blk000002a5 (
    .I(sig000000c6),
    .O(sig00000034)
  );
  INV   blk000002a6 (
    .I(sig000000c5),
    .O(sig00000032)
  );
  INV   blk000002a7 (
    .I(sig000000c4),
    .O(sig00000030)
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
