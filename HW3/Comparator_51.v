`timescale 1ns/1ps
module COMPARATOR_51(median, i0, i1, i2, i3, i4);
	//DO NOT CHANGE!
	output [2:0] median;
	input  [5:0] i0, i1, i2, i3, i4;

	wire [3:0] result_i0, result_i1, result_i2, result_i3,result_i4;
	wire [3:0] result;
	
	
	//---------------------------------------------------
	//Write your design here

	COMPARATOR_21 cmp_0_1(result_i0[0],i0,i1);
	COMPARATOR_21 cmp_0_2(result_i0[1],i0,i2);
	COMPARATOR_21 cmp_0_3(result_i0[2],i0,i3);
	COMPARATOR_21 cmp_0_4(result_i0[3],i0,i4);
	CHECKER ckr_0 (result[0],result_i0);
	
	COMPARATOR_21 cmp_1_0(result_i1[0],i1,i0);
	COMPARATOR_21 cmp_1_2(result_i1[1],i1,i2);
	COMPARATOR_21 cmp_1_3(result_i1[2],i1,i3);
	COMPARATOR_21 cmp_1_4(result_i1[3],i1,i4);
	CHECKER ckr_1 (result[1],result_i1);

	COMPARATOR_21 cmp_2_0(result_i2[0],i2,i0);
	COMPARATOR_21 cmp_2_1(result_i2[1],i2,i1);
	COMPARATOR_21 cmp_2_3(result_i2[2],i2,i3);
	COMPARATOR_21 cmp_2_4(result_i2[3],i2,i4);
	CHECKER ckr_2 (result[2],result_i2);

	COMPARATOR_21 cmp_3_0(result_i3[0],i3,i0);
	COMPARATOR_21 cmp_3_1(result_i3[1],i3,i1);
	COMPARATOR_21 cmp_3_2(result_i3[2],i3,i2);
	COMPARATOR_21 cmp_3_4(result_i3[3],i3,i4);
	CHECKER ckr_3 (result[3],result_i3);

	COMPARATOR_21 cmp_4_0(result_i4[0],i4,i0);
	COMPARATOR_21 cmp_4_1(result_i4[1],i4,i1);
	COMPARATOR_21 cmp_4_2(result_i4[2],i4,i2);
	COMPARATOR_21 cmp_4_3(result_i4[3],i4,i3);
	CHECKER ckr_4 (median[2],result_i4);

	OR2 or_end_1 (median[1],result[2],result[3]);
	OR2 or_end_2 (median[0],result[1],result[3]);



endmodule

module COMPARATOR_21(a_smaller,a,b);
	output a_smaller;
	input [5:0] a,b;

	wire [5:0] a_inv;
	wire [0:0] c1,c2,c3,c4,c5;
	wire c0 = 1;

	IV inv0(a_inv[0],a[0]);
	IV inv1(a_inv[1],a[1]);
	IV inv2(a_inv[2],a[2]);
	IV inv3(a_inv[3],a[3]);
	IV inv4(a_inv[4],a[4]);
	IV inv5(a_inv[5],a[5]);

	COUT co0(c1,a_inv[0],b[0],c0);
	COUT co1(c2,a_inv[1],b[1],c1);
	COUT co2(c3,a_inv[2],b[2],c2);
	COUT co3(c4,a_inv[3],b[3],c3);
	COUT co4(c5,a_inv[4],b[4],c4);
	COUT co5(a_smaller,a_inv[5],b[5],c5);
endmodule

module CHECKER(result,a0);
	output result;
	input [3:0] a0;

	wire [3:0] a1;
	wire [5:0] nand_o;
	wire [2:0] nr;

	IV iv03(a1[3],a0[3]);
	IV iv02(a1[2],a0[2]);
	IV iv01(a1[1],a0[1]);
	IV iv00(a1[0],a0[0]);

	ND4 nd4_1(nand_o[0],a1[3],a1[2],a0[1],a0[0]);
	ND4 nd4_2(nand_o[1],a1[3],a0[2],a1[1],a0[0]);
	ND4 nd4_3(nand_o[2],a1[3],a0[2],a0[1],a1[0]);
	ND4 nd4_4(nand_o[3],a0[3],a1[2],a1[1],a0[0]);
	ND4 nd4_5(nand_o[4],a0[3],a1[2],a0[1],a1[0]);
	ND4 nd4_6(nand_o[5],a0[3],a0[2],a1[1],a1[0]);

	ND3 nd3_1(nr[0],nand_o[0],nand_o[1],nand_o[2]);
	ND3 nd3_2(nr[1],nand_o[3],nand_o[4],nand_o[5]);
	OR2 or2(result,nr[0],nr[1]);

endmodule

module COUT(cout,a,b,c);
	output cout;
	input a,b,c;
	wire [2:0] o;
	ND2 nd1(o[0],a,c);
	ND2 nd2(o[1],b,c);
	ND2 nd3(o[2],a,b);
	ND3 nd4(cout, o[0],o[1],o[2]);

endmodule