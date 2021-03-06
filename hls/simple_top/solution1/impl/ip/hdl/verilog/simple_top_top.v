// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.3
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module simple_top_top (
m_axi_inPtr_AWID,
m_axi_inPtr_AWADDR,
m_axi_inPtr_AWLEN,
m_axi_inPtr_AWSIZE,
m_axi_inPtr_AWBURST,
m_axi_inPtr_AWLOCK,
m_axi_inPtr_AWCACHE,
m_axi_inPtr_AWPROT,
m_axi_inPtr_AWQOS,
m_axi_inPtr_AWUSER,
m_axi_inPtr_AWVALID,
m_axi_inPtr_AWREADY,
m_axi_inPtr_WDATA,
m_axi_inPtr_WSTRB,
m_axi_inPtr_WLAST,
m_axi_inPtr_WUSER,
m_axi_inPtr_WVALID,
m_axi_inPtr_WREADY,
m_axi_inPtr_BID,
m_axi_inPtr_BRESP,
m_axi_inPtr_BUSER,
m_axi_inPtr_BVALID,
m_axi_inPtr_BREADY,
m_axi_inPtr_ARID,
m_axi_inPtr_ARADDR,
m_axi_inPtr_ARLEN,
m_axi_inPtr_ARSIZE,
m_axi_inPtr_ARBURST,
m_axi_inPtr_ARLOCK,
m_axi_inPtr_ARCACHE,
m_axi_inPtr_ARPROT,
m_axi_inPtr_ARQOS,
m_axi_inPtr_ARUSER,
m_axi_inPtr_ARVALID,
m_axi_inPtr_ARREADY,
m_axi_inPtr_RID,
m_axi_inPtr_RDATA,
m_axi_inPtr_RRESP,
m_axi_inPtr_RLAST,
m_axi_inPtr_RUSER,
m_axi_inPtr_RVALID,
m_axi_inPtr_RREADY,
aresetn,
aclk,
ap_start,
ap_ready,
ap_done,
ap_idle
);

parameter C_M_AXI_INPTR_ID_WIDTH = 1;
parameter C_M_AXI_INPTR_ADDR_WIDTH = 32;
parameter C_M_AXI_INPTR_DATA_WIDTH = 32;
parameter C_M_AXI_INPTR_AWUSER_WIDTH = 1;
parameter C_M_AXI_INPTR_ARUSER_WIDTH = 1;
parameter C_M_AXI_INPTR_WUSER_WIDTH = 1;
parameter C_M_AXI_INPTR_RUSER_WIDTH = 1;
parameter C_M_AXI_INPTR_BUSER_WIDTH = 1;
parameter C_M_AXI_INPTR_USER_DATA_WIDTH = 32;
parameter C_M_AXI_INPTR_TARGET_ADDR = 32'h00000000;
parameter C_M_AXI_INPTR_USER_VALUE = 1'b0;
parameter C_M_AXI_INPTR_PROT_VALUE = 3'b010;
parameter C_M_AXI_INPTR_CACHE_VALUE = 4'b0000;
parameter RESET_ACTIVE_LOW = 1;

output [C_M_AXI_INPTR_ID_WIDTH - 1:0] m_axi_inPtr_AWID ;
output [C_M_AXI_INPTR_ADDR_WIDTH - 1:0] m_axi_inPtr_AWADDR ;
output [8 - 1:0] m_axi_inPtr_AWLEN ;
output [3 - 1:0] m_axi_inPtr_AWSIZE ;
output [2 - 1:0] m_axi_inPtr_AWBURST ;
output [2 - 1:0] m_axi_inPtr_AWLOCK ;
output [4 - 1:0] m_axi_inPtr_AWCACHE ;
output [3 - 1:0] m_axi_inPtr_AWPROT ;
output [4 - 1:0] m_axi_inPtr_AWQOS ;
output [C_M_AXI_INPTR_AWUSER_WIDTH - 1:0] m_axi_inPtr_AWUSER ;
output m_axi_inPtr_AWVALID ;
input m_axi_inPtr_AWREADY ;
output [C_M_AXI_INPTR_DATA_WIDTH - 1:0] m_axi_inPtr_WDATA ;
output [C_M_AXI_INPTR_DATA_WIDTH/8 - 1:0] m_axi_inPtr_WSTRB ;
output m_axi_inPtr_WLAST ;
output [C_M_AXI_INPTR_WUSER_WIDTH - 1:0] m_axi_inPtr_WUSER ;
output m_axi_inPtr_WVALID ;
input m_axi_inPtr_WREADY ;
input [C_M_AXI_INPTR_ID_WIDTH - 1:0] m_axi_inPtr_BID ;
input [2 - 1:0] m_axi_inPtr_BRESP ;
input [C_M_AXI_INPTR_BUSER_WIDTH - 1:0] m_axi_inPtr_BUSER ;
input m_axi_inPtr_BVALID ;
output m_axi_inPtr_BREADY ;
output [C_M_AXI_INPTR_ID_WIDTH - 1:0] m_axi_inPtr_ARID ;
output [C_M_AXI_INPTR_ADDR_WIDTH - 1:0] m_axi_inPtr_ARADDR ;
output [8 - 1:0] m_axi_inPtr_ARLEN ;
output [3 - 1:0] m_axi_inPtr_ARSIZE ;
output [2 - 1:0] m_axi_inPtr_ARBURST ;
output [2 - 1:0] m_axi_inPtr_ARLOCK ;
output [4 - 1:0] m_axi_inPtr_ARCACHE ;
output [3 - 1:0] m_axi_inPtr_ARPROT ;
output [4 - 1:0] m_axi_inPtr_ARQOS ;
output [C_M_AXI_INPTR_ARUSER_WIDTH - 1:0] m_axi_inPtr_ARUSER ;
output m_axi_inPtr_ARVALID ;
input m_axi_inPtr_ARREADY ;
input [C_M_AXI_INPTR_ID_WIDTH - 1:0] m_axi_inPtr_RID ;
input [C_M_AXI_INPTR_DATA_WIDTH - 1:0] m_axi_inPtr_RDATA ;
input [2 - 1:0] m_axi_inPtr_RRESP ;
input m_axi_inPtr_RLAST ;
input [C_M_AXI_INPTR_RUSER_WIDTH - 1:0] m_axi_inPtr_RUSER ;
input m_axi_inPtr_RVALID ;
output m_axi_inPtr_RREADY ;

input aresetn ;

input aclk ;

input ap_start ;
output ap_ready ;
output ap_done ;
output ap_idle ;


wire [C_M_AXI_INPTR_ID_WIDTH - 1:0] m_axi_inPtr_AWID;
wire [C_M_AXI_INPTR_ADDR_WIDTH - 1:0] m_axi_inPtr_AWADDR;
wire [8 - 1:0] m_axi_inPtr_AWLEN;
wire [3 - 1:0] m_axi_inPtr_AWSIZE;
wire [2 - 1:0] m_axi_inPtr_AWBURST;
wire [2 - 1:0] m_axi_inPtr_AWLOCK;
wire [4 - 1:0] m_axi_inPtr_AWCACHE;
wire [3 - 1:0] m_axi_inPtr_AWPROT;
wire [4 - 1:0] m_axi_inPtr_AWQOS;
wire [C_M_AXI_INPTR_AWUSER_WIDTH - 1:0] m_axi_inPtr_AWUSER;
wire m_axi_inPtr_AWVALID;
wire m_axi_inPtr_AWREADY;
wire [C_M_AXI_INPTR_DATA_WIDTH - 1:0] m_axi_inPtr_WDATA;
wire [C_M_AXI_INPTR_DATA_WIDTH/8 - 1:0] m_axi_inPtr_WSTRB;
wire m_axi_inPtr_WLAST;
wire [C_M_AXI_INPTR_WUSER_WIDTH - 1:0] m_axi_inPtr_WUSER;
wire m_axi_inPtr_WVALID;
wire m_axi_inPtr_WREADY;
wire [C_M_AXI_INPTR_ID_WIDTH - 1:0] m_axi_inPtr_BID;
wire [2 - 1:0] m_axi_inPtr_BRESP;
wire [C_M_AXI_INPTR_BUSER_WIDTH - 1:0] m_axi_inPtr_BUSER;
wire m_axi_inPtr_BVALID;
wire m_axi_inPtr_BREADY;
wire [C_M_AXI_INPTR_ID_WIDTH - 1:0] m_axi_inPtr_ARID;
wire [C_M_AXI_INPTR_ADDR_WIDTH - 1:0] m_axi_inPtr_ARADDR;
wire [8 - 1:0] m_axi_inPtr_ARLEN;
wire [3 - 1:0] m_axi_inPtr_ARSIZE;
wire [2 - 1:0] m_axi_inPtr_ARBURST;
wire [2 - 1:0] m_axi_inPtr_ARLOCK;
wire [4 - 1:0] m_axi_inPtr_ARCACHE;
wire [3 - 1:0] m_axi_inPtr_ARPROT;
wire [4 - 1:0] m_axi_inPtr_ARQOS;
wire [C_M_AXI_INPTR_ARUSER_WIDTH - 1:0] m_axi_inPtr_ARUSER;
wire m_axi_inPtr_ARVALID;
wire m_axi_inPtr_ARREADY;
wire [C_M_AXI_INPTR_ID_WIDTH - 1:0] m_axi_inPtr_RID;
wire [C_M_AXI_INPTR_DATA_WIDTH - 1:0] m_axi_inPtr_RDATA;
wire [2 - 1:0] m_axi_inPtr_RRESP;
wire m_axi_inPtr_RLAST;
wire [C_M_AXI_INPTR_RUSER_WIDTH - 1:0] m_axi_inPtr_RUSER;
wire m_axi_inPtr_RVALID;
wire m_axi_inPtr_RREADY;

wire aresetn;


wire [32 - 1:0] sig_simple_top_inPtr_datain;
wire [32 - 1:0] sig_simple_top_inPtr_dataout;
wire [32 - 1:0] sig_simple_top_inPtr_address;
wire [32 - 1:0] sig_simple_top_inPtr_size;
wire sig_simple_top_inPtr_req_din;
wire sig_simple_top_inPtr_req_full_n;
wire sig_simple_top_inPtr_req_write;
wire sig_simple_top_inPtr_rsp_empty_n;
wire sig_simple_top_inPtr_rsp_read;

wire sig_simple_top_ap_rst;



simple_top simple_top_U(
    .inPtr_datain(sig_simple_top_inPtr_datain),
    .inPtr_dataout(sig_simple_top_inPtr_dataout),
    .inPtr_address(sig_simple_top_inPtr_address),
    .inPtr_size(sig_simple_top_inPtr_size),
    .inPtr_req_din(sig_simple_top_inPtr_req_din),
    .inPtr_req_full_n(sig_simple_top_inPtr_req_full_n),
    .inPtr_req_write(sig_simple_top_inPtr_req_write),
    .inPtr_rsp_empty_n(sig_simple_top_inPtr_rsp_empty_n),
    .inPtr_rsp_read(sig_simple_top_inPtr_rsp_read),
    .ap_rst(sig_simple_top_ap_rst),
    .ap_clk(aclk),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

simple_top_inPtr_if #(
    .C_ID_WIDTH(C_M_AXI_INPTR_ID_WIDTH),
    .C_ADDR_WIDTH(C_M_AXI_INPTR_ADDR_WIDTH),
    .C_DATA_WIDTH(C_M_AXI_INPTR_DATA_WIDTH),
    .C_AWUSER_WIDTH(C_M_AXI_INPTR_AWUSER_WIDTH),
    .C_ARUSER_WIDTH(C_M_AXI_INPTR_ARUSER_WIDTH),
    .C_WUSER_WIDTH(C_M_AXI_INPTR_WUSER_WIDTH),
    .C_RUSER_WIDTH(C_M_AXI_INPTR_RUSER_WIDTH),
    .C_BUSER_WIDTH(C_M_AXI_INPTR_BUSER_WIDTH),
    .C_USER_DATA_WIDTH(C_M_AXI_INPTR_USER_DATA_WIDTH),
    .C_TARGET_ADDR(C_M_AXI_INPTR_TARGET_ADDR),
    .C_USER_VALUE(C_M_AXI_INPTR_USER_VALUE),
    .C_PROT_VALUE(C_M_AXI_INPTR_PROT_VALUE),
    .C_CACHE_VALUE(C_M_AXI_INPTR_CACHE_VALUE))
simple_top_inPtr_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .USER_datain(sig_simple_top_inPtr_datain),
    .USER_dataout(sig_simple_top_inPtr_dataout),
    .USER_address(sig_simple_top_inPtr_address),
    .USER_size(sig_simple_top_inPtr_size),
    .USER_req_din(sig_simple_top_inPtr_req_din),
    .USER_req_full_n(sig_simple_top_inPtr_req_full_n),
    .USER_req_write(sig_simple_top_inPtr_req_write),
    .USER_rsp_empty_n(sig_simple_top_inPtr_rsp_empty_n),
    .USER_rsp_read(sig_simple_top_inPtr_rsp_read),
    .AWID(m_axi_inPtr_AWID),
    .AWADDR(m_axi_inPtr_AWADDR),
    .AWLEN(m_axi_inPtr_AWLEN),
    .AWSIZE(m_axi_inPtr_AWSIZE),
    .AWBURST(m_axi_inPtr_AWBURST),
    .AWLOCK(m_axi_inPtr_AWLOCK),
    .AWCACHE(m_axi_inPtr_AWCACHE),
    .AWPROT(m_axi_inPtr_AWPROT),
    .AWQOS(m_axi_inPtr_AWQOS),
    .AWUSER(m_axi_inPtr_AWUSER),
    .AWVALID(m_axi_inPtr_AWVALID),
    .AWREADY(m_axi_inPtr_AWREADY),
    .WDATA(m_axi_inPtr_WDATA),
    .WSTRB(m_axi_inPtr_WSTRB),
    .WLAST(m_axi_inPtr_WLAST),
    .WUSER(m_axi_inPtr_WUSER),
    .WVALID(m_axi_inPtr_WVALID),
    .WREADY(m_axi_inPtr_WREADY),
    .BID(m_axi_inPtr_BID),
    .BRESP(m_axi_inPtr_BRESP),
    .BUSER(m_axi_inPtr_BUSER),
    .BVALID(m_axi_inPtr_BVALID),
    .BREADY(m_axi_inPtr_BREADY),
    .ARID(m_axi_inPtr_ARID),
    .ARADDR(m_axi_inPtr_ARADDR),
    .ARLEN(m_axi_inPtr_ARLEN),
    .ARSIZE(m_axi_inPtr_ARSIZE),
    .ARBURST(m_axi_inPtr_ARBURST),
    .ARLOCK(m_axi_inPtr_ARLOCK),
    .ARCACHE(m_axi_inPtr_ARCACHE),
    .ARPROT(m_axi_inPtr_ARPROT),
    .ARQOS(m_axi_inPtr_ARQOS),
    .ARUSER(m_axi_inPtr_ARUSER),
    .ARVALID(m_axi_inPtr_ARVALID),
    .ARREADY(m_axi_inPtr_ARREADY),
    .RID(m_axi_inPtr_RID),
    .RDATA(m_axi_inPtr_RDATA),
    .RRESP(m_axi_inPtr_RRESP),
    .RLAST(m_axi_inPtr_RLAST),
    .RUSER(m_axi_inPtr_RUSER),
    .RVALID(m_axi_inPtr_RVALID),
    .RREADY(m_axi_inPtr_RREADY));

simple_top_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_simple_top_ap_rst),
    .din(aresetn));

endmodule
