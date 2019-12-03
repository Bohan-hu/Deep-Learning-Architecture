// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="conv,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.742000,HLS_SYN_LAT=6137,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=6,HLS_SYN_FF=445,HLS_SYN_LUT=767,HLS_VERSION=2018_3}" *)

module conv (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_address0,
        A_ce0,
        A_q0,
        A_address1,
        A_ce1,
        A_q1,
        kernel_address0,
        kernel_ce0,
        kernel_q0,
        kernel_address1,
        kernel_ce1,
        kernel_q1,
        out_r_address0,
        out_r_ce0,
        out_r_we0,
        out_r_d0
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [9:0] A_address1;
output   A_ce1;
input  [31:0] A_q1;
output  [3:0] kernel_address0;
output   kernel_ce0;
input  [31:0] kernel_q0;
output  [3:0] kernel_address1;
output   kernel_ce1;
input  [31:0] kernel_q1;
output  [9:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [31:0] out_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] A_address0;
reg A_ce0;
reg[9:0] A_address1;
reg A_ce1;
reg[3:0] kernel_address0;
reg kernel_ce0;
reg[3:0] kernel_address1;
reg kernel_ce1;
reg out_r_ce0;
reg out_r_we0;

(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg  signed [31:0] reg_258;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg  signed [31:0] reg_263;
reg  signed [31:0] reg_268;
reg  signed [31:0] reg_273;
wire   [31:0] grp_fu_278_p2;
reg   [31:0] reg_290;
wire   [31:0] grp_fu_284_p2;
reg   [31:0] reg_294;
wire    ap_CS_fsm_state9;
wire   [31:0] grp_fu_298_p2;
reg   [31:0] reg_304;
wire   [10:0] tmp_s_fu_348_p2;
reg   [10:0] tmp_s_reg_632;
wire    ap_CS_fsm_state2;
wire   [0:0] exitcond1_fu_308_p2;
wire   [9:0] tmp_1_fu_354_p2;
reg   [9:0] tmp_1_reg_639;
wire   [10:0] tmp_18_fu_384_p2;
reg   [10:0] tmp_18_reg_644;
wire   [4:0] i_1_fu_390_p2;
reg   [4:0] i_1_reg_651;
wire   [10:0] tmp_21_fu_420_p2;
reg   [10:0] tmp_21_reg_656;
wire   [10:0] tmp_6_cast_fu_442_p1;
reg   [10:0] tmp_6_cast_reg_666;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond_fu_426_p2;
wire   [9:0] tmp_25_fu_456_p2;
reg   [9:0] tmp_25_reg_677;
wire   [10:0] tmp_8_cast_fu_461_p1;
reg   [10:0] tmp_8_cast_reg_682;
wire   [4:0] j_1_fu_484_p2;
reg   [4:0] j_1_reg_698;
wire   [10:0] tmp_cast_fu_490_p1;
reg   [10:0] tmp_cast_reg_703;
wire   [10:0] tmp_24_fu_504_p2;
reg   [10:0] tmp_24_reg_714;
wire   [10:0] tmp_28_fu_517_p2;
reg   [10:0] tmp_28_reg_724;
wire   [10:0] tmp_31_fu_530_p2;
reg   [10:0] tmp_31_reg_734;
wire   [31:0] tmp1_fu_552_p2;
reg   [31:0] tmp1_reg_754;
reg   [31:0] tmp_15_reg_759;
wire   [31:0] tmp_17_fu_575_p2;
reg   [31:0] tmp_17_reg_764;
wire    ap_CS_fsm_state10;
reg   [4:0] i_reg_235;
reg   [4:0] j_reg_246;
wire    ap_CS_fsm_state11;
wire  signed [63:0] tmp_26_cast_fu_451_p1;
wire  signed [63:0] tmp_30_cast_fu_470_p1;
wire  signed [63:0] tmp_27_cast_fu_479_p1;
wire  signed [63:0] tmp_33_cast_fu_499_p1;
wire  signed [63:0] tmp_31_cast_fu_512_p1;
wire  signed [63:0] tmp_34_cast_fu_525_p1;
wire  signed [63:0] tmp_28_cast_fu_534_p1;
wire  signed [63:0] tmp_32_cast_fu_538_p1;
wire  signed [63:0] tmp_35_cast_fu_542_p1;
wire   [63:0] tmp_29_cast_fu_580_p1;
wire   [4:0] tmp_fu_314_p2;
wire   [9:0] tmp_2_fu_324_p3;
wire   [6:0] tmp_4_fu_336_p3;
wire   [10:0] p_shl4_cast_fu_332_p1;
wire   [10:0] p_shl5_cast_fu_344_p1;
wire   [4:0] tmp_1_fu_354_p0;
wire   [9:0] tmp_6_fu_360_p3;
wire   [6:0] tmp_8_fu_372_p3;
wire   [10:0] p_shl2_cast_fu_368_p1;
wire   [10:0] p_shl3_cast_fu_380_p1;
wire   [9:0] tmp_19_fu_396_p3;
wire   [6:0] tmp_20_fu_408_p3;
wire   [10:0] p_shl_cast_fu_404_p1;
wire   [10:0] p_shl1_cast_fu_416_p1;
wire   [4:0] tmp_5_fu_432_p2;
wire   [10:0] tmp_22_fu_446_p2;
wire   [9:0] tmp_6_cast6_fu_438_p1;
wire   [10:0] tmp_26_fu_465_p2;
wire   [10:0] tmp_23_fu_475_p2;
wire   [10:0] tmp_29_fu_494_p2;
wire   [10:0] tmp_27_fu_508_p2;
wire   [10:0] tmp_30_fu_521_p2;
wire   [31:0] tmp3_fu_546_p2;
wire   [31:0] tmp7_fu_558_p2;
wire   [31:0] tmp6_fu_563_p2;
wire   [31:0] tmp4_fu_569_p2;
reg   [10:0] ap_NS_fsm;
wire   [9:0] tmp_1_fu_354_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 11'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond_fu_426_p2 == 1'd1))) begin
        i_reg_235 <= i_1_reg_651;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_235 <= 5'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        j_reg_246 <= j_1_reg_698;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_308_p2 == 1'd0))) begin
        j_reg_246 <= 5'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        reg_258 <= A_q1;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_258 <= A_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        reg_263 <= kernel_q1;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_263 <= kernel_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        reg_268 <= A_q0;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_268 <= A_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        reg_273 <= kernel_q0;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_273 <= kernel_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_308_p2 == 1'd0))) begin
        i_1_reg_651 <= i_1_fu_390_p2;
        tmp_18_reg_644[10 : 2] <= tmp_18_fu_384_p2[10 : 2];
        tmp_1_reg_639[9 : 1] <= tmp_1_fu_354_p2[9 : 1];
        tmp_21_reg_656[10 : 2] <= tmp_21_fu_420_p2[10 : 2];
        tmp_s_reg_632[10 : 2] <= tmp_s_fu_348_p2[10 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        j_1_reg_698 <= j_1_fu_484_p2;
        tmp_cast_reg_703[4 : 0] <= tmp_cast_fu_490_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        reg_290 <= grp_fu_278_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        reg_294 <= grp_fu_284_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6))) begin
        reg_304 <= grp_fu_298_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp1_reg_754 <= tmp1_fu_552_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_15_reg_759 <= grp_fu_278_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp_17_reg_764 <= tmp_17_fu_575_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_24_reg_714 <= tmp_24_fu_504_p2;
        tmp_28_reg_724 <= tmp_28_fu_517_p2;
        tmp_31_reg_734 <= tmp_31_fu_530_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond_fu_426_p2 == 1'd0))) begin
        tmp_25_reg_677 <= tmp_25_fu_456_p2;
        tmp_6_cast_reg_666[4 : 0] <= tmp_6_cast_fu_442_p1[4 : 0];
        tmp_8_cast_reg_682[4 : 0] <= tmp_8_cast_fu_461_p1[4 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        A_address0 = tmp_35_cast_fu_542_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        A_address0 = tmp_28_cast_fu_534_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        A_address0 = tmp_31_cast_fu_512_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        A_address0 = tmp_33_cast_fu_499_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        A_address0 = tmp_26_cast_fu_451_p1;
    end else begin
        A_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        A_address1 = tmp_32_cast_fu_538_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        A_address1 = tmp_34_cast_fu_525_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        A_address1 = tmp_27_cast_fu_479_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        A_address1 = tmp_30_cast_fu_470_p1;
    end else begin
        A_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        A_ce0 = 1'b1;
    end else begin
        A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        A_ce1 = 1'b1;
    end else begin
        A_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_308_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_308_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        kernel_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        kernel_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        kernel_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        kernel_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        kernel_address0 = 64'd0;
    end else begin
        kernel_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        kernel_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        kernel_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        kernel_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        kernel_address1 = 64'd1;
    end else begin
        kernel_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        kernel_ce0 = 1'b1;
    end else begin
        kernel_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        kernel_ce1 = 1'b1;
    end else begin
        kernel_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        out_r_ce0 = 1'b1;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        out_r_we0 = 1'b1;
    end else begin
        out_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_308_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond_fu_426_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign exitcond1_fu_308_p2 = ((i_reg_235 == 5'd27) ? 1'b1 : 1'b0);

assign exitcond_fu_426_p2 = ((j_reg_246 == 5'd27) ? 1'b1 : 1'b0);

assign grp_fu_278_p2 = ($signed(reg_263) * $signed(reg_258));

assign grp_fu_284_p2 = ($signed(reg_273) * $signed(reg_268));

assign grp_fu_298_p2 = (reg_294 + reg_290);

assign i_1_fu_390_p2 = (i_reg_235 + 5'd1);

assign j_1_fu_484_p2 = (j_reg_246 + 5'd1);

assign out_r_address0 = tmp_29_cast_fu_580_p1;

assign out_r_d0 = tmp_17_reg_764;

assign p_shl1_cast_fu_416_p1 = tmp_20_fu_408_p3;

assign p_shl2_cast_fu_368_p1 = tmp_6_fu_360_p3;

assign p_shl3_cast_fu_380_p1 = tmp_8_fu_372_p3;

assign p_shl4_cast_fu_332_p1 = tmp_2_fu_324_p3;

assign p_shl5_cast_fu_344_p1 = tmp_4_fu_336_p3;

assign p_shl_cast_fu_404_p1 = tmp_19_fu_396_p3;

assign tmp1_fu_552_p2 = (reg_304 + tmp3_fu_546_p2);

assign tmp3_fu_546_p2 = (reg_294 + reg_290);

assign tmp4_fu_569_p2 = (reg_304 + tmp6_fu_563_p2);

assign tmp6_fu_563_p2 = (reg_290 + tmp7_fu_558_p2);

assign tmp7_fu_558_p2 = (reg_294 + tmp_15_reg_759);

assign tmp_17_fu_575_p2 = (tmp1_reg_754 + tmp4_fu_569_p2);

assign tmp_18_fu_384_p2 = (p_shl2_cast_fu_368_p1 - p_shl3_cast_fu_380_p1);

assign tmp_19_fu_396_p3 = {{i_1_fu_390_p2}, {5'd0}};

assign tmp_1_fu_354_p0 = tmp_1_fu_354_p00;

assign tmp_1_fu_354_p00 = tmp_fu_314_p2;

assign tmp_1_fu_354_p2 = (tmp_1_fu_354_p0 * $signed('h1A));

assign tmp_20_fu_408_p3 = {{i_1_fu_390_p2}, {2'd0}};

assign tmp_21_fu_420_p2 = (p_shl_cast_fu_404_p1 - p_shl1_cast_fu_416_p1);

assign tmp_22_fu_446_p2 = (tmp_s_reg_632 + tmp_6_cast_fu_442_p1);

assign tmp_23_fu_475_p2 = (tmp_18_reg_644 + tmp_6_cast_reg_666);

assign tmp_24_fu_504_p2 = (tmp_21_reg_656 + tmp_6_cast_reg_666);

assign tmp_25_fu_456_p2 = (tmp_1_reg_639 + tmp_6_cast6_fu_438_p1);

assign tmp_26_cast_fu_451_p1 = $signed(tmp_22_fu_446_p2);

assign tmp_26_fu_465_p2 = (tmp_s_reg_632 + tmp_8_cast_fu_461_p1);

assign tmp_27_cast_fu_479_p1 = $signed(tmp_23_fu_475_p2);

assign tmp_27_fu_508_p2 = (tmp_18_reg_644 + tmp_8_cast_reg_682);

assign tmp_28_cast_fu_534_p1 = $signed(tmp_24_reg_714);

assign tmp_28_fu_517_p2 = (tmp_21_reg_656 + tmp_8_cast_reg_682);

assign tmp_29_cast_fu_580_p1 = tmp_25_reg_677;

assign tmp_29_fu_494_p2 = (tmp_s_reg_632 + tmp_cast_fu_490_p1);

assign tmp_2_fu_324_p3 = {{tmp_fu_314_p2}, {5'd0}};

assign tmp_30_cast_fu_470_p1 = $signed(tmp_26_fu_465_p2);

assign tmp_30_fu_521_p2 = (tmp_18_reg_644 + tmp_cast_reg_703);

assign tmp_31_cast_fu_512_p1 = $signed(tmp_27_fu_508_p2);

assign tmp_31_fu_530_p2 = (tmp_21_reg_656 + tmp_cast_reg_703);

assign tmp_32_cast_fu_538_p1 = $signed(tmp_28_reg_724);

assign tmp_33_cast_fu_499_p1 = $signed(tmp_29_fu_494_p2);

assign tmp_34_cast_fu_525_p1 = $signed(tmp_30_fu_521_p2);

assign tmp_35_cast_fu_542_p1 = $signed(tmp_31_reg_734);

assign tmp_4_fu_336_p3 = {{tmp_fu_314_p2}, {2'd0}};

assign tmp_5_fu_432_p2 = ($signed(j_reg_246) + $signed(5'd31));

assign tmp_6_cast6_fu_438_p1 = tmp_5_fu_432_p2;

assign tmp_6_cast_fu_442_p1 = tmp_5_fu_432_p2;

assign tmp_6_fu_360_p3 = {{i_reg_235}, {5'd0}};

assign tmp_8_cast_fu_461_p1 = j_reg_246;

assign tmp_8_fu_372_p3 = {{i_reg_235}, {2'd0}};

assign tmp_cast_fu_490_p1 = j_1_fu_484_p2;

assign tmp_fu_314_p2 = ($signed(i_reg_235) + $signed(5'd31));

assign tmp_s_fu_348_p2 = (p_shl4_cast_fu_332_p1 - p_shl5_cast_fu_344_p1);

always @ (posedge ap_clk) begin
    tmp_s_reg_632[1:0] <= 2'b00;
    tmp_1_reg_639[0] <= 1'b0;
    tmp_18_reg_644[1:0] <= 2'b00;
    tmp_21_reg_656[1:0] <= 2'b00;
    tmp_6_cast_reg_666[10:5] <= 6'b000000;
    tmp_8_cast_reg_682[10:5] <= 6'b000000;
    tmp_cast_reg_703[10:5] <= 6'b000000;
end

endmodule //conv
