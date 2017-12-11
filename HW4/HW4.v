`timescale 1ns/1ps

module DOQE_ppl(clk,rst,A,B,C,D,DOQE_ppl_num);
// DO NOT CHANGE !
	input		clk;
	input		rst;
	input		[3:0]	A;
	input		[6:0]	B;
	input   	[5:0] 	C;
	
	output		[14:0]	D;
    output  	[50:0]  DOQE_ppl_num;	

  // Write your design here
	wire[14:0] bb,ac,temp;
	wire[50:0]num1,num2,num3,num4;
	assign DOQE_ppl_num=num1+num2+num3+num4;
	B_SQUARE b_squ(bb,B,clk,rst,num1);
	AC_MUL ac_mul(ac,A,C,clk,rst,num2);
	MINUS min(temp,bb,ac,num3);
	LAST_REG regi( D , temp , clk , rst , num4 );

endmodule

module B_SQUARE(square_b,b,clk,rst,num);
	input [6:0] b;
	input clk;
	input rst;
	output[14:0] square_b;
	output[50:0]num;
	wire[6:0]pp0,pp1,pp2,pp3,pp4,pp5,pp6;
	wire[11:0]pp_temp;
	wire[42:0]sum;
	wire[42:0]co; 
	wire[50:0]num0,num1,num2,num3,num4,num5,num48,num49,num50,num51,num52,num53,num54,num55,num56,num57,num58,num59,num60,num61,num62,num63,num64,num65,num66,num67,num68,num69,num70,num71,num72,num73,num74,num75,num76,num77,num78,num79,num80,num81,num82,num83,num84,num85,num86,num87,num88,num89,num90,num91,num92,num93,num94,num95,num96,num97,num98,num99,num100,num101,num102,num103,num104,num105,num106,num107,num108,num109,num110,num111,num112,num113,num114,num115,num116,num117,num118;

	assign num=num0+num1+num2+num3+num4+num5+num48+num49+num50+num51+num52+num53+num54+num55+num56+num57+num58+num59+num60+num61+num62+num63+num64+num65+num66+num67+num68+num69+num70+num71+num72+num73+num74+num75+num76+num77+num78+num79+num80+num81+num82+num83+num84+num85+num86+num87+num88+num89+num90+num91+num92+num93+num94+num95+num96+num97+num98+num99+num100+num101+num102+num103+num104+num105+num106+num107+num108+num109+num110+num111+num112+num113+num114+num115+num116+num117+num118;

	wire c0=0;
	wire c1=1;


	GET_PP_6 get0(pp0,b,b[0],num0);
	GET_PP_6 get1(pp1,b,b[1],num1);
	GET_PP_6 get2(pp2,b,b[2],num2);
	GET_PP_6 get3(pp3,b,b[3],num3);
	GET_PP_6 get4(pp4,b,b[4],num4);
	GET_PP_6 get5(pp5,b,b[5],num5);

	AN2 an2_ppb_42(pp_temp[6],b[6],b[0],num48);
	AN2 an2_ppb_43(pp_temp[7],b[6],b[1],num49);
	AN2 an2_ppb_44(pp_temp[8],b[6],b[2],num50);
	AN2 an2_ppb_45(pp_temp[9],b[6],b[3],num51);
	AN2 an2_ppb_46(pp_temp[10],b[6],b[4],num52);
	AN2 an2_ppb_47(pp_temp[11],b[6],b[5],num53);
	AN2 an2_ppb_48(pp6[6],b[6],b[6],num54);
	IV iv_ppb_07(pp6[0],pp_temp[6],num55);	
	IV iv_ppb_08(pp6[1],pp_temp[7],num56);	
	IV iv_ppb_09(pp6[2],pp_temp[8],num57);	
	IV iv_ppb_10(pp6[3],pp_temp[9],num58);	
	IV iv_ppb_11(pp6[4],pp_temp[10],num59);	
	IV iv_ppb_12(pp6[5],pp_temp[11],num60);

	FD2 fd00(square_b[0],pp0[0],clk,rst,num61);

	FA1 fa00(co[0],sum[0],pp0[1],pp1[0],c0,num62);
	FD2 fd01(square_b[1],sum[0],clk,rst,num63);

	FA1 fa01(co[1],sum[1],pp0[2],pp1[1],pp2[0],num64);
	FA1 fa02(co[2],sum[2],sum[1],co[0],c0,num65);
	FD2 fd02(square_b[2],sum[2],clk,rst,num66);

	FA1 fa03(co[3],sum[3],pp0[3],pp1[2],pp2[1],num67);
	FA1 fa04(co[4],sum[4],sum[3],pp3[0],co[1],num68);
	FA1 fa05(co[5],sum[5],sum[4],co[2],c0,num69);
	FD2 fd03(square_b[3],sum[5],clk,rst,num70);

	FA1 fa06(co[6],sum[6],pp0[4],pp1[3],pp2[2],num71);
	FA1 fa07(co[7],sum[7],sum[6],pp3[1],pp4[0],num72);
	FA1 fa08(co[8],sum[8],sum[7],co[3],co[4],num73);
	FA1 fa09(co[9],sum[9],sum[8],co[5],c0,num74);
	FD2 fd04(square_b[4],sum[9],clk,rst,num75);

	
	FA1 fa10(co[10],sum[10],pp0[5],pp1[4],pp2[3],num76);
	FA1 fa11(co[11],sum[11],sum[10],pp3[2],pp4[1],num77);
	FA1 fa12(co[12],sum[12],sum[11],pp5[0],co[6],num78);
	FA1 fa13(co[13],sum[13],sum[12],co[7],co[8],num79);
	FA1 fa14(co[14],sum[14],sum[13],co[9],c0,num80);
	FD2 fd05(square_b[5],sum[14],clk,rst,num81);

	FA1 fa15(co[15],sum[15],pp0[6],pp1[5],pp2[4],num82);
	FA1 fa16(co[16],sum[16],sum[15],pp3[3],pp4[2],num83);
	FA1 fa17(co[17],sum[17],sum[16],pp5[1],pp6[0],num84);
	FA1 fa18(co[18],sum[18],sum[17],co[10],co[11],num85);
	FA1 fa19(co[19],sum[19],sum[18],co[12],co[13],num86);
	FA1 fa20(co[20],sum[20],sum[19],co[14],c0,num87);
	FD2 fd06(square_b[6],sum[20],clk,rst,num88);

	FA1 fa21(co[21],sum[21],pp1[6],pp2[5],pp3[4],num89);
	FA1 fa22(co[22],sum[22],sum[21],pp4[3],pp5[2],num90);
	FA1 fa23(co[23],sum[23],sum[22],pp6[1],co[15],num91);
	FA1 fa24(co[24],sum[24],sum[23],co[16],co[17],num92);
	FA1 fa25(co[25],sum[25],sum[24],co[18],co[19],num93);
	FA1 fa26(co[26],sum[26],sum[25],co[20],c1,num94);
	FD2 fd07(square_b[7],sum[26],clk,rst,num95);

	FA1 fa27(co[27],sum[27],pp2[6],pp3[5],pp4[4],num96);
	FA1 fa28(co[28],sum[28],sum[27],pp5[3],pp6[2],num97);
	FA1 fa29(co[29],sum[29],sum[28],co[21],co[22],num98);
	FA1 fa30(co[30],sum[30],sum[29],co[23],co[24],num99);
	FA1 fa31(co[31],sum[31],sum[30],co[25],co[26],num100);
	FD2 fd08(square_b[8],sum[31],clk,rst,num101);

	FA1 fa32(co[32],sum[32],pp3[6],pp4[5],pp5[4],num102);
	FA1 fa33(co[33],sum[33],sum[32],pp6[3],co[27],num103);
	FA1 fa34(co[34],sum[34],sum[33],co[28],co[29],num104);
	FA1 fa35(co[35],sum[35],sum[34],co[30],co[31],num105);
	FD2 fd09(square_b[9],sum[35],clk,rst,num106);

	FA1 fa36(co[36],sum[36],pp4[6],pp5[5],pp6[4],num107);
	FA1 fa37(co[37],sum[37],sum[36],co[32],co[33],num108);
	FA1 fa38(co[38],sum[38],sum[37],co[34],co[35],num109);
	FD2 fd10(square_b[10],sum[38],clk,rst,num110);

	FA1 fa39(co[39],sum[39],pp5[6],pp6[5],co[36],num111);
	FA1 fa40(co[40],sum[40],sum[39],co[37],co[38],num112);
	FD2 fd11(square_b[11],sum[40],clk,rst,num113);

	FA1 fa41(co[41],sum[41],pp6[6],co[39],co[40],num114);
	FD2 fd12(square_b[12],sum[41],clk,rst,num115);

	FA1 fa42(co[42],sum[42],co[41],c1,c0,num116);
	FD2 fd13(square_b[13],sum[42],clk,rst,num117);

	FD2 fd14(square_b[14],sum[42],clk,rst,num118);


endmodule

module AC_MUL(result,a_bef,c,clk,rst,num);
	input [3:0] a_bef;
	input [5:0] c;
	input clk,rst;
	output[14:0] result;
	output [50:0]num;
	wire[5:0]pp0,pp1,pp2,pp3,pp4,pp5;
	wire[7:0]pp_temp_ac;
	wire[14:0]ac;
	wire c0=0;
	wire c1=1;
	wire[30:0]co,sum;
	wire[5:0]a;
	wire[50:0] num0,num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20,num21,num22,num23,num24,num25,num26,num27,num28,num29,num30,num31,num32,num33,num34,num35,num36,num37,num38,num39,num40,num41,num42,num43,num44,num45,num46,num47,num48,num49,num50,num51,num52,num53,num54,num55,num56,num57;

	assign num=num0+num1+num2+num3+num4+num5+num6+num7+num8+num9+num10+num11+num12+num13+num14+num15+num16+num17+num18+num19+num20+num21+num22+num23+num24+num25+num26+num27+num28+num29+num30+num31+num32+num33+num34+num35+num36+num37+num38+num39+num40+num41+num42+num43+num44+num45+num46+num47+num48+num49+num50+num51+num52+num53+num54+num55+num56+num57;
	DRIVER dri01 (a[0],a_bef[0],num0);
	DRIVER dri02 (a[1],a_bef[1],num1);
	DRIVER dri03 (a[2],a_bef[2],num2);
	DRIVER dri04 (a[3],a_bef[3],num3);
	DRIVER dri05 (a[4],a_bef[3],num4);
	DRIVER dri06 (a[5],a_bef[3],num5);

	GET_PP_5 get1(pp0,a,c[0],num6);
	GET_PP_5 get2(pp1,a,c[1],num7);
	GET_PP_5 get3(pp2,a,c[2],num8);
	GET_PP_5 get4(pp3,a,c[3],num9);
	GET_PP_5 get5(pp4,a,c[4],num10);
	GET_PP_last_5 get6(pp5,a,c[5],num11);

	FD2 fd00(ac[0],pp0[0],clk,rst,num12);

	FA1 fa00(co[0],sum[0],pp0[1],pp1[0],c0,num13);
	FD2 fd01(ac[1],sum[0],clk,rst,num14);

	FA1 fa01(co[1],sum[1],pp0[2],pp1[1],pp2[0],num15);
	FA1 fa02(co[2],sum[2],sum[1],co[0],c0,num16);
	FD2 fd02(ac[2],sum[2],clk,rst,num17);

	FA1 fa03(co[3],sum[3],pp0[3],pp1[2],pp2[1],num18);
	FA1 fa04(co[4],sum[4],sum[3],pp3[0],co[1],num19);
	FA1 fa05(co[5],sum[5],sum[4],co[2],c0,num20);
	FD2 fd03(ac[3],sum[5],clk,rst,num21);

	FA1 fa06(co[6],sum[6],pp1[3],pp2[2],pp3[1],num22);
	FA1 fa07(co[7],sum[7],sum[6],pp4[0],co[3],num23);
	FA1 fa08(co[8],sum[8],sum[7],co[4],co[5],num24);
	FA1 fa09(co[9],sum[9],sum[8],pp0[4],c0,num25);
	FD2 fd04(ac[4],sum[9],clk,rst,num26);

	FA1 fa10(co[10],sum[10],pp2[3],pp3[2],pp4[1],num27);
	FA1 fa11(co[11],sum[11],sum[10],pp5[0],co[6],num28);
	FA1 fa99(co[12],sum[12],sum[11],co[7],co[8],num29);
	FA1 fa12(co[13],sum[13],sum[12],pp0[5],pp1[4],num30);
	FA1 fa13(co[14],sum[14],sum[13],co[9],c0,num31);
	FD2 fd05(ac[5],sum[14],clk,rst,num32);

	FA1 fa14(co[15],sum[15],pp3[3],pp4[2],pp5[1],num33);
	FA1 fa98(co[16],sum[16],sum[15],pp2[4],pp1[5],num34);
	FA1 fa15(co[17],sum[17],sum[16],co[10],co[11],num35);
	FA1 fa16(co[18],sum[18],sum[17],co[12],co[13],num36);
	FA1 fa17(co[19],sum[19],sum[18],co[14],c1,num37);
	FD2 fd06(ac[6],sum[19],clk,rst,num38);

	FA1 fa18(co[20],sum[20],pp4[3],pp5[2],co[15],num39);
	FA1 fa19(co[21],sum[21],sum[20],co[16],co[17],num40);
	FA1 fa20(co[22],sum[22],sum[21],co[18],co[19],num41);
	FA1 fa21(co[23],sum[23],sum[22],pp3[4],pp2[5],num42);
	FD2 fd07(ac[7],sum[23],clk,rst,num43);

	FA1 fa22(co[24],sum[24],pp5[3],co[20],co[21],num44);
	FA1 fa23(co[25],sum[25],sum[24],co[22],co[23],num45);
	FA1 fa24(co[26],sum[26],sum[25],pp4[4],pp3[5],num46);
	FD2 fd08(ac[8],sum[26],clk,rst,num47);

	FA1 fa25(co[27],sum[27],pp4[5],pp5[4],co[24],num48);
	FA1 fa26(co[28],sum[28],sum[27],co[25],co[26],num49);
	FD2 fd09(ac[9],sum[28],clk,rst,num50);

	FA1 fa27(co[29],sum[29],co[27],co[28],pp5[5],num51);
	FD2 fd10(ac[10],sum[29],clk,rst,num52);

	FA1 fa28(co[30],sum[30],co[29],c1,c0,num53);
	FD2 fd11(ac[11],sum[30],clk,rst,num54);

	FD2 fd12(ac[12],sum[30],clk,rst,num54);
	FD2 fd13(ac[13],sum[30],clk,rst,num55);
	FD2 fd14(ac[14],sum[30],clk,rst,num56);

	MULT_FOUR mul_four(result,ac,num57);

endmodule
	
module MINUS(result,bb,ac,num);
	output [14:0] result;
	input [14:0] bb,ac;
	output [50:0]num;
	wire [50:0] num0,num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20,num21,num22,num23,num24,num25,num26,num27,num28,num29;
	assign num=num0+num1+num2+num3+num4+num5+num6+num7+num8+num9+num10+num11+num12+num13+num14+num15+num16+num17+num18+num19+num20+num21+num22+num23+num24+num25+num26+num27+num28+num29;
	wire [14:0] ac_temp;
	wire c0=1;
	wire [14:0] carry;

	IV iv_ac01(ac_temp[0],ac[0],num0);
	IV iv_ac02(ac_temp[1],ac[1],num1);
	IV iv_ac03(ac_temp[2],ac[2],num2);
	IV iv_ac04(ac_temp[3],ac[3],num3);
	IV iv_ac05(ac_temp[4],ac[4],num4);
	IV iv_ac06(ac_temp[5],ac[5],num5);
	IV iv_ac07(ac_temp[6],ac[6],num6);
	IV iv_ac08(ac_temp[7],ac[7],num7);
	IV iv_ac09(ac_temp[8],ac[8],num8);
	IV iv_ac10(ac_temp[9],ac[9],num9);
	IV iv_ac11(ac_temp[10],ac[10],num10);
	IV iv_ac12(ac_temp[11],ac[11],num11);
	IV iv_ac13(ac_temp[12],ac[12],num12);
	IV iv_ac14(ac_temp[13],ac[13],num13);
	IV iv_ac15(ac_temp[14],ac[14],num14);

	FA1 fa1(carry[0],result[0],bb[0],ac_temp[0],c0,num15);
	FA1 fa2(carry[1],result[1],bb[1],ac_temp[1],carry[0],num16);
	FA1 fa3(carry[2],result[2],bb[2],ac_temp[2],carry[1],num17);
	FA1 fa4(carry[3],result[3],bb[3],ac_temp[3],carry[2],num18);
	FA1 fa5(carry[4],result[4],bb[4],ac_temp[4],carry[3],num19);
	FA1 fa6(carry[5],result[5],bb[5],ac_temp[5],carry[4],num20);
	FA1 fa7(carry[6],result[6],bb[6],ac_temp[6],carry[5],num21);
	FA1 fa8(carry[7],result[7],bb[7],ac_temp[7],carry[6],num22);
	FA1 fa9(carry[8],result[8],bb[8],ac_temp[8],carry[7],num23);
	FA1 fa10(carry[9],result[9],bb[9],ac_temp[9],carry[8],num24);
	FA1 fa11(carry[10],result[10],bb[10],ac_temp[10],carry[9],num25);
	FA1 fa12(carry[11],result[11],bb[11],ac_temp[11],carry[10],num26);
	FA1 fa13(carry[12],result[12],bb[12],ac_temp[12],carry[11],num27);
	FA1 fa14(carry[13],result[13],bb[13],ac_temp[13],carry[12],num28);
	FA1 fa15(carry[14],result[14],bb[14],ac_temp[14],carry[13],num29);

endmodule

module GET_PP_6(result,a,b,num);
	input [6:0]a;
	input b;
	output[6:0]result;
	output [50:0]num;
	wire[50:0]num1,num2,num3,num4,num5,num6,num7,num8;
	assign num=num1+num2+num3+num4+num5+num6+num7+num8;
	wire temp;
	AN2 ppac_01(result[0],a[0],b,num1);
	AN2 ppac_02(result[1],a[1],b,num2);
	AN2 ppac_03(result[2],a[2],b,num3);
	AN2 ppac_04(result[3],a[3],b,num4);
	AN2 ppac_06(result[4],a[4],b,num5);
	AN2 ppac_07(result[5],a[5],b,num6);
	AN2 ppac_05(temp,a[6],b,num7);
	IV iv_ppac01(result[6],temp,num8);
endmodule

module GET_PP_5(result,a,b,num);
	input [5:0]a;
	input b;
	output[5:0]result;
	output [50:0]num;
	wire[50:0]num1,num2,num3,num4,num5,num6,num7;
	assign num=num1+num2+num3+num4+num5+num6+num7;
	wire temp;
	AN2 ppac_01(result[0],a[0],b,num1);
	AN2 ppac_02(result[1],a[1],b,num2);
	AN2 ppac_03(result[2],a[2],b,num3);
	AN2 ppac_04(result[3],a[3],b,num4);
	AN2 ppac_06(result[4],a[4],b,num5);
	AN2 ppac_05(temp,a[5],b,num6);
	IV iv_ppac01(result[5],temp,num7);
endmodule

module	GET_PP_last_5(result,a,b,num);
	input [5:0]a;
	input b;
	output[5:0]result;
	output [50:0]num;
	wire[50:0]num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11;
	assign num=num1+num2+num3+num4+num5+num6+num7+num8+num9+num10+num11;
	wire [4:0]temp;

	AN2 ppac_01(temp[0],a[0],b,num1);
	AN2 ppac_02(temp[1],a[1],b,num2);
	AN2 ppac_03(temp[2],a[2],b,num3);
	AN2 ppac_04(temp[3],a[3],b,num4);
	AN2 ppac_06(temp[4],a[4],b,num5);
	AN2 ppac_05(result[5],a[5],b,num6);
	IV iv_ppac011(result[0],temp[0],num7);
	IV iv_ppac021(result[1],temp[1],num8);
	IV iv_ppac012(result[2],temp[2],num9);
	IV iv_ppac013(result[3],temp[3],num10);
	IV iv_ppac014(result[4],temp[4],num11);
	assign num=num1+num2+num3+num4+num5+num6+num7+num8+num9+num10+num11;

endmodule

module MULT_FOUR(result,ac,num);
	input [14:0]ac;
	output[14:0]result;
	output [50:0]num;
	wire c0=0;
	wire[50:0]num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15;


	DRIVER dr21 (result[0],c0,num1);
	DRIVER dr22 (result[1],c0,num2);
	DRIVER dr23 (result[2],ac[0],num3);
	DRIVER dr24 (result[3],ac[1],num4);
	DRIVER dr25 (result[4],ac[2],num5);
	DRIVER dr26 (result[5],ac[3],num6);
	DRIVER dr27 (result[6],ac[4],num7);
	DRIVER dr28 (result[7],ac[5],num8);
	DRIVER dr29 (result[8],ac[6],num9);
	DRIVER dr30 (result[9],ac[7],num10);
	DRIVER dr31 (result[10],ac[8],num11);
	DRIVER dr32 (result[11],ac[9],num12);
	DRIVER dr33 (result[12],ac[10],num13);
	DRIVER dr34 (result[13],ac[11],num14);
	DRIVER dr35 (result[14],ac[12],num15);
	assign num=num1+num2+num3+num4+num5+num6+num7+num8+num9+num10+num11+num12+num13+num14+num15;

endmodule

module LAST_REG(result,re_p,clk,rst,num);
	input [14:0]re_p;
	input clk,rst;
	output [14:0]result;
	output [50:0]num;
	wire [50:0] num0,num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14;
	assign	num=num1+num2+num3+num4+num5+num6+num7+num8+num9+num10+num11+num12+num13+num14;

	FD2 fd00(result[0],re_p[0],clk,rst,num0);
	FD2 fd01(result[1],re_p[1],clk,rst,num1);
	FD2 fd02(result[2],re_p[2],clk,rst,num2);
	FD2 fd03(result[3],re_p[3],clk,rst,num3);
	FD2 fd04(result[4],re_p[4],clk,rst,num4);
	FD2 fd05(result[5],re_p[5],clk,rst,num5);
	FD2 fd06(result[6],re_p[6],clk,rst,num6);
	FD2 fd07(result[7],re_p[7],clk,rst,num7);
	FD2 fd08(result[8],re_p[8],clk,rst,num8);
	FD2 fd09(result[9],re_p[9],clk,rst,num9);
	FD2 fd10(result[10],re_p[10],clk,rst,num10);
	FD2 fd11(result[11],re_p[11],clk,rst,num11);
	FD2 fd12(result[12],re_p[12],clk,rst,num12);
	FD2 fd13(result[13],re_p[13],clk,rst,num13);
	FD2 fd14(result[14],re_p[14],clk,rst,num14);

endmodule