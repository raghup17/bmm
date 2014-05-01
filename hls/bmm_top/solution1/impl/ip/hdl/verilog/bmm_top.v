// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.3
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="bmm_top,hls_ip_2013_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z045ffg900-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.750000,HLS_SYN_LAT=3448961,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}" *)

module bmm_top (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        b1_req_din,
        b1_req_full_n,
        b1_req_write,
        b1_rsp_empty_n,
        b1_rsp_read,
        b1_address,
        b1_datain,
        b1_dataout,
        b1_size,
        b2_req_din,
        b2_req_full_n,
        b2_req_write,
        b2_rsp_empty_n,
        b2_rsp_read,
        b2_address,
        b2_datain,
        b2_dataout,
        b2_size,
        b3_req_din,
        b3_req_full_n,
        b3_req_write,
        b3_rsp_empty_n,
        b3_rsp_read,
        b3_address,
        b3_datain,
        b3_dataout,
        b3_size
);

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   b1_req_din;
input   b1_req_full_n;
output   b1_req_write;
input   b1_rsp_empty_n;
output   b1_rsp_read;
output  [31:0] b1_address;
input  [31:0] b1_datain;
output  [31:0] b1_dataout;
output  [31:0] b1_size;
output   b2_req_din;
input   b2_req_full_n;
output   b2_req_write;
input   b2_rsp_empty_n;
output   b2_rsp_read;
output  [31:0] b2_address;
input  [31:0] b2_datain;
output  [31:0] b2_dataout;
output  [31:0] b2_size;
output   b3_req_din;
input   b3_req_full_n;
output   b3_req_write;
input   b3_rsp_empty_n;
output   b3_rsp_read;
output  [31:0] b3_address;
input  [31:0] b3_datain;
output  [31:0] b3_dataout;
output  [31:0] b3_size;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg b1_req_write;
reg b1_rsp_read;
reg b2_req_write;
reg b2_rsp_read;
reg b3_req_din;
reg b3_req_write;
reg b3_rsp_read;
reg[31:0] b3_address;
reg   [4:0] ap_CS_fsm = 5'b00000;
wire   [6:0] i_1_fu_142_p2;
reg   [6:0] i_1_reg_266;
wire   [11:0] tmp_7_fu_152_p3;
reg   [11:0] tmp_7_reg_271;
wire   [0:0] exitcond3_fu_136_p2;
wire   [6:0] j_1_fu_166_p2;
reg   [6:0] j_1_reg_280;
wire   [11:0] tmp_2_cast_fu_172_p1;
reg   [11:0] tmp_2_cast_reg_285;
wire   [0:0] exitcond2_fu_160_p2;
wire   [6:0] k_1_fu_182_p2;
reg   [6:0] k_1_reg_294;
wire   [11:0] tmp_8_fu_192_p2;
reg   [11:0] tmp_8_reg_299;
wire   [0:0] exitcond_fu_176_p2;
wire   [11:0] tmp_s_fu_209_p2;
reg   [11:0] tmp_s_reg_304;
wire   [11:0] tmp_4_fu_214_p2;
reg   [11:0] tmp_4_reg_309;
reg   [31:0] b1_addr_read_reg_326;
reg    ap_sig_bdd_121;
reg   [31:0] b2_addr_read_reg_331;
wire   [31:0] tmpVal_1_fu_242_p2;
reg   [31:0] b3_addr_reg_341;
reg   [31:0] b3_addr_read_reg_347;
wire   [31:0] tmp_3_fu_258_p2;
reg   [31:0] tmp_3_reg_352;
reg   [6:0] i_reg_90;
reg   [6:0] j_reg_101;
reg   [6:0] k_reg_112;
reg   [31:0] tmpVal_reg_123;
wire   [63:0] tmp_8_cast_fu_218_p1;
wire   [63:0] tmp_cast_fu_228_p1;
wire   [63:0] tmp_4_cast_fu_248_p1;
wire   [5:0] tmp_fu_148_p1;
wire   [11:0] tmp_5_cast_fu_188_p1;
wire   [5:0] tmp_1_fu_197_p1;
wire   [11:0] tmp_9_fu_201_p3;
wire   [31:0] grp_fu_238_p0;
wire   [31:0] grp_fu_238_p1;
wire   [31:0] grp_fu_238_p2;
wire    grp_fu_238_ce;
reg   [4:0] ap_NS_fsm;
parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 5'b00000;
parameter    ap_ST_st2_fsm_1 = 5'b1;
parameter    ap_ST_st3_fsm_2 = 5'b10;
parameter    ap_ST_st4_fsm_3 = 5'b11;
parameter    ap_ST_st5_fsm_4 = 5'b100;
parameter    ap_ST_st6_fsm_5 = 5'b101;
parameter    ap_ST_st7_fsm_6 = 5'b110;
parameter    ap_ST_st8_fsm_7 = 5'b111;
parameter    ap_ST_st9_fsm_8 = 5'b1000;
parameter    ap_ST_st10_fsm_9 = 5'b1001;
parameter    ap_ST_st11_fsm_10 = 5'b1010;
parameter    ap_ST_st12_fsm_11 = 5'b1011;
parameter    ap_ST_st13_fsm_12 = 5'b1100;
parameter    ap_ST_st14_fsm_13 = 5'b1101;
parameter    ap_ST_st15_fsm_14 = 5'b1110;
parameter    ap_ST_st16_fsm_15 = 5'b1111;
parameter    ap_ST_st17_fsm_16 = 5'b10000;
parameter    ap_ST_st18_fsm_17 = 5'b10001;
parameter    ap_ST_st19_fsm_18 = 5'b10010;
parameter    ap_ST_st20_fsm_19 = 5'b10011;
parameter    ap_ST_st21_fsm_20 = 5'b10100;
parameter    ap_ST_st22_fsm_21 = 5'b10101;
parameter    ap_ST_st23_fsm_22 = 5'b10110;
parameter    ap_ST_st24_fsm_23 = 5'b10111;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv7_0 = 7'b0000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv7_40 = 7'b1000000;
parameter    ap_const_lv7_1 = 7'b1;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_true = 1'b1;


bmm_top_mul_32s_32s_32_6 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
bmm_top_mul_32s_32s_32_6_U1(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_238_p0 ),
    .din1( grp_fu_238_p1 ),
    .ce( grp_fu_238_ce ),
    .dout( grp_fu_238_p2 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st3_fsm_2 == ap_CS_fsm) & ~(ap_const_lv1_0 == exitcond2_fu_160_p2))) begin
        i_reg_90 <= i_1_reg_266;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0))) begin
        i_reg_90 <= ap_const_lv7_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (exitcond3_fu_136_p2 == ap_const_lv1_0))) begin
        j_reg_101 <= ap_const_lv7_0;
    end else if (((ap_ST_st24_fsm_23 == ap_CS_fsm) & ~(b3_req_full_n == ap_const_logic_0))) begin
        j_reg_101 <= j_1_reg_280;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st3_fsm_2 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond2_fu_160_p2))) begin
        k_reg_112 <= ap_const_lv7_0;
    end else if ((ap_ST_st16_fsm_15 == ap_CS_fsm)) begin
        k_reg_112 <= k_1_reg_294;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st3_fsm_2 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond2_fu_160_p2))) begin
        tmpVal_reg_123 <= ap_const_lv32_0;
    end else if ((ap_ST_st16_fsm_15 == ap_CS_fsm)) begin
        tmpVal_reg_123 <= tmpVal_1_fu_242_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st10_fsm_9 == ap_CS_fsm) & ~ap_sig_bdd_121)) begin
        b1_addr_read_reg_326 <= b1_datain;
        b2_addr_read_reg_331 <= b2_datain;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st22_fsm_21 == ap_CS_fsm) & ~(b3_rsp_empty_n == ap_const_logic_0))) begin
        b3_addr_read_reg_347 <= b3_datain;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st17_fsm_16 == ap_CS_fsm)) begin
        b3_addr_reg_341[0] <= tmp_4_cast_fu_248_p1[0];
b3_addr_reg_341[1] <= tmp_4_cast_fu_248_p1[1];
b3_addr_reg_341[2] <= tmp_4_cast_fu_248_p1[2];
b3_addr_reg_341[3] <= tmp_4_cast_fu_248_p1[3];
b3_addr_reg_341[4] <= tmp_4_cast_fu_248_p1[4];
b3_addr_reg_341[5] <= tmp_4_cast_fu_248_p1[5];
b3_addr_reg_341[6] <= tmp_4_cast_fu_248_p1[6];
b3_addr_reg_341[7] <= tmp_4_cast_fu_248_p1[7];
b3_addr_reg_341[8] <= tmp_4_cast_fu_248_p1[8];
b3_addr_reg_341[9] <= tmp_4_cast_fu_248_p1[9];
b3_addr_reg_341[10] <= tmp_4_cast_fu_248_p1[10];
b3_addr_reg_341[11] <= tmp_4_cast_fu_248_p1[11];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st2_fsm_1 == ap_CS_fsm)) begin
        i_1_reg_266 <= i_1_fu_142_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st3_fsm_2 == ap_CS_fsm)) begin
        j_1_reg_280 <= j_1_fu_166_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st4_fsm_3 == ap_CS_fsm)) begin
        k_1_reg_294 <= k_1_fu_182_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st3_fsm_2 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond2_fu_160_p2))) begin
        tmp_2_cast_reg_285[0] <= tmp_2_cast_fu_172_p1[0];
tmp_2_cast_reg_285[1] <= tmp_2_cast_fu_172_p1[1];
tmp_2_cast_reg_285[2] <= tmp_2_cast_fu_172_p1[2];
tmp_2_cast_reg_285[3] <= tmp_2_cast_fu_172_p1[3];
tmp_2_cast_reg_285[4] <= tmp_2_cast_fu_172_p1[4];
tmp_2_cast_reg_285[5] <= tmp_2_cast_fu_172_p1[5];
tmp_2_cast_reg_285[6] <= tmp_2_cast_fu_172_p1[6];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st23_fsm_22 == ap_CS_fsm)) begin
        tmp_3_reg_352 <= tmp_3_fu_258_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st4_fsm_3 == ap_CS_fsm) & ~(ap_const_lv1_0 == exitcond_fu_176_p2))) begin
        tmp_4_reg_309 <= tmp_4_fu_214_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (exitcond3_fu_136_p2 == ap_const_lv1_0))) begin
        tmp_7_reg_271[6] <= tmp_7_fu_152_p3[6];
tmp_7_reg_271[7] <= tmp_7_fu_152_p3[7];
tmp_7_reg_271[8] <= tmp_7_fu_152_p3[8];
tmp_7_reg_271[9] <= tmp_7_fu_152_p3[9];
tmp_7_reg_271[10] <= tmp_7_fu_152_p3[10];
tmp_7_reg_271[11] <= tmp_7_fu_152_p3[11];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st4_fsm_3 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond_fu_176_p2))) begin
        tmp_8_reg_299 <= tmp_8_fu_192_p2;
        tmp_s_reg_304 <= tmp_s_fu_209_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_CS_fsm or exitcond3_fu_136_p2)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(exitcond3_fu_136_p2 == ap_const_lv1_0))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_CS_fsm)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_ST_st1_fsm_0 == ap_CS_fsm))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_CS_fsm or exitcond3_fu_136_p2)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(exitcond3_fu_136_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// b1_req_write assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st5_fsm_4 == ap_CS_fsm)) begin
        b1_req_write = ap_const_logic_1;
    end else begin
        b1_req_write = ap_const_logic_0;
    end
end

/// b1_rsp_read assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_121)
begin
    if (((ap_ST_st10_fsm_9 == ap_CS_fsm) & ~ap_sig_bdd_121)) begin
        b1_rsp_read = ap_const_logic_1;
    end else begin
        b1_rsp_read = ap_const_logic_0;
    end
end

/// b2_req_write assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st5_fsm_4 == ap_CS_fsm)) begin
        b2_req_write = ap_const_logic_1;
    end else begin
        b2_req_write = ap_const_logic_0;
    end
end

/// b2_rsp_read assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_121)
begin
    if (((ap_ST_st10_fsm_9 == ap_CS_fsm) & ~ap_sig_bdd_121)) begin
        b2_rsp_read = ap_const_logic_1;
    end else begin
        b2_rsp_read = ap_const_logic_0;
    end
end

/// b3_address assign process. ///
always @ (ap_CS_fsm or b3_req_full_n or b3_addr_reg_341 or tmp_4_cast_fu_248_p1)
begin
    if (((ap_ST_st24_fsm_23 == ap_CS_fsm) & ~(b3_req_full_n == ap_const_logic_0))) begin
        b3_address = b3_addr_reg_341;
    end else if ((ap_ST_st17_fsm_16 == ap_CS_fsm)) begin
        b3_address = tmp_4_cast_fu_248_p1;
    end else begin
        b3_address = 'bx;
    end
end

/// b3_req_din assign process. ///
always @ (ap_CS_fsm or b3_req_full_n)
begin
    if (((ap_ST_st24_fsm_23 == ap_CS_fsm) & ~(b3_req_full_n == ap_const_logic_0))) begin
        b3_req_din = ap_const_logic_1;
    end else if ((ap_ST_st17_fsm_16 == ap_CS_fsm)) begin
        b3_req_din = ap_const_logic_0;
    end else begin
        b3_req_din = ap_const_logic_0;
    end
end

/// b3_req_write assign process. ///
always @ (ap_CS_fsm or b3_req_full_n)
begin
    if (((ap_ST_st17_fsm_16 == ap_CS_fsm) | ((ap_ST_st24_fsm_23 == ap_CS_fsm) & ~(b3_req_full_n == ap_const_logic_0)))) begin
        b3_req_write = ap_const_logic_1;
    end else begin
        b3_req_write = ap_const_logic_0;
    end
end

/// b3_rsp_read assign process. ///
always @ (ap_CS_fsm or b3_rsp_empty_n)
begin
    if (((ap_ST_st22_fsm_21 == ap_CS_fsm) & ~(b3_rsp_empty_n == ap_const_logic_0))) begin
        b3_rsp_read = ap_const_logic_1;
    end else begin
        b3_rsp_read = ap_const_logic_0;
    end
end
always @ (ap_start or ap_CS_fsm or b3_req_full_n or b3_rsp_empty_n or exitcond3_fu_136_p2 or exitcond2_fu_160_p2 or exitcond_fu_176_p2 or ap_sig_bdd_121)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        ap_ST_st2_fsm_1 : 
            if (~(exitcond3_fu_136_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        ap_ST_st3_fsm_2 : 
            if ((ap_const_lv1_0 == exitcond2_fu_160_p2)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        ap_ST_st4_fsm_3 : 
            if (~(ap_const_lv1_0 == exitcond_fu_176_p2)) begin
                ap_NS_fsm = ap_ST_st17_fsm_16;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        ap_ST_st5_fsm_4 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
        ap_ST_st6_fsm_5 : 
            ap_NS_fsm = ap_ST_st7_fsm_6;
        ap_ST_st7_fsm_6 : 
            ap_NS_fsm = ap_ST_st8_fsm_7;
        ap_ST_st8_fsm_7 : 
            ap_NS_fsm = ap_ST_st9_fsm_8;
        ap_ST_st9_fsm_8 : 
            ap_NS_fsm = ap_ST_st10_fsm_9;
        ap_ST_st10_fsm_9 : 
            if (~ap_sig_bdd_121) begin
                ap_NS_fsm = ap_ST_st11_fsm_10;
            end else begin
                ap_NS_fsm = ap_ST_st10_fsm_9;
            end
        ap_ST_st11_fsm_10 : 
            ap_NS_fsm = ap_ST_st12_fsm_11;
        ap_ST_st12_fsm_11 : 
            ap_NS_fsm = ap_ST_st13_fsm_12;
        ap_ST_st13_fsm_12 : 
            ap_NS_fsm = ap_ST_st14_fsm_13;
        ap_ST_st14_fsm_13 : 
            ap_NS_fsm = ap_ST_st15_fsm_14;
        ap_ST_st15_fsm_14 : 
            ap_NS_fsm = ap_ST_st16_fsm_15;
        ap_ST_st16_fsm_15 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
        ap_ST_st17_fsm_16 : 
            ap_NS_fsm = ap_ST_st18_fsm_17;
        ap_ST_st18_fsm_17 : 
            ap_NS_fsm = ap_ST_st19_fsm_18;
        ap_ST_st19_fsm_18 : 
            ap_NS_fsm = ap_ST_st20_fsm_19;
        ap_ST_st20_fsm_19 : 
            ap_NS_fsm = ap_ST_st21_fsm_20;
        ap_ST_st21_fsm_20 : 
            ap_NS_fsm = ap_ST_st22_fsm_21;
        ap_ST_st22_fsm_21 : 
            if (~(b3_rsp_empty_n == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st23_fsm_22;
            end else begin
                ap_NS_fsm = ap_ST_st22_fsm_21;
            end
        ap_ST_st23_fsm_22 : 
            ap_NS_fsm = ap_ST_st24_fsm_23;
        ap_ST_st24_fsm_23 : 
            if (~(b3_req_full_n == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st24_fsm_23;
            end
        default : 
            ap_NS_fsm = 'bx;
    endcase
end

/// ap_sig_bdd_121 assign process. ///
always @ (b1_rsp_empty_n or b2_rsp_empty_n)
begin
    ap_sig_bdd_121 = ((b1_rsp_empty_n == ap_const_logic_0) | (b2_rsp_empty_n == ap_const_logic_0));
end
assign b1_address = tmp_8_cast_fu_218_p1;
assign b1_dataout = ap_const_lv32_0;
assign b1_req_din = ap_const_logic_0;
assign b1_size = ap_const_lv32_1;
assign b2_address = tmp_cast_fu_228_p1;
assign b2_dataout = ap_const_lv32_0;
assign b2_req_din = ap_const_logic_0;
assign b2_size = ap_const_lv32_1;
assign b3_dataout = tmp_3_reg_352;
assign b3_size = ap_const_lv32_1;
assign exitcond2_fu_160_p2 = (j_reg_101 == ap_const_lv7_40? 1'b1: 1'b0);
assign exitcond3_fu_136_p2 = (i_reg_90 == ap_const_lv7_40? 1'b1: 1'b0);
assign exitcond_fu_176_p2 = (k_reg_112 == ap_const_lv7_40? 1'b1: 1'b0);
assign grp_fu_238_ce = ap_const_logic_1;
assign grp_fu_238_p0 = b2_addr_read_reg_331;
assign grp_fu_238_p1 = b1_addr_read_reg_326;
assign i_1_fu_142_p2 = (i_reg_90 + ap_const_lv7_1);
assign j_1_fu_166_p2 = (j_reg_101 + ap_const_lv7_1);
assign k_1_fu_182_p2 = (k_reg_112 + ap_const_lv7_1);
assign tmpVal_1_fu_242_p2 = (grp_fu_238_p2 + tmpVal_reg_123);
assign tmp_1_fu_197_p1 = k_reg_112[5:0];
assign tmp_2_cast_fu_172_p1 = $unsigned(j_reg_101);
assign tmp_3_fu_258_p2 = (b3_addr_read_reg_347 + tmpVal_reg_123);
assign tmp_4_cast_fu_248_p1 = $unsigned(tmp_4_reg_309);
assign tmp_4_fu_214_p2 = (tmp_7_reg_271 + tmp_2_cast_reg_285);
assign tmp_5_cast_fu_188_p1 = $unsigned(k_reg_112);
assign tmp_7_fu_152_p3 = {{tmp_fu_148_p1}, {ap_const_lv6_0}};
assign tmp_8_cast_fu_218_p1 = $unsigned(tmp_8_reg_299);
assign tmp_8_fu_192_p2 = (tmp_7_reg_271 + tmp_5_cast_fu_188_p1);
assign tmp_9_fu_201_p3 = {{tmp_1_fu_197_p1}, {ap_const_lv6_0}};
assign tmp_cast_fu_228_p1 = $unsigned(tmp_s_reg_304);
assign tmp_fu_148_p1 = i_reg_90[5:0];
assign tmp_s_fu_209_p2 = (tmp_9_fu_201_p3 + tmp_2_cast_reg_285);
always @ (posedge ap_clk)
begin
    tmp_7_reg_271[5:0] <= 6'b000000;
    tmp_2_cast_reg_285[11:7] <= 5'b00000;
    b3_addr_reg_341[31:12] <= 20'b00000000000000000000;
end



endmodule //bmm_top

