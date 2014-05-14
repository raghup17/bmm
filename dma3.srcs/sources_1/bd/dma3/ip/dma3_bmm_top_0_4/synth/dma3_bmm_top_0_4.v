// (c) Copyright 1995-2014 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:bmm_top:32.0
// IP Revision: -1

(* X_CORE_INFO = "bmm_top_top,Vivado 2013.3" *)
(* CHECK_LICENSE_TYPE = "dma3_bmm_top_0_4,bmm_top_top,{}" *)
(* CORE_GENERATION_INFO = "dma3_bmm_top_0_4,bmm_top_top,{x_ipProduct=Vivado 2013.3,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=bmm_top,x_ipVersion=32.0,x_ipCoreRevision=-1,x_ipLanguage=VERILOG,C_M_AXI_B1_ID_WIDTH=1,C_M_AXI_B1_ADDR_WIDTH=32,C_M_AXI_B1_DATA_WIDTH=32,C_M_AXI_B1_AWUSER_WIDTH=1,C_M_AXI_B1_ARUSER_WIDTH=1,C_M_AXI_B1_WUSER_WIDTH=1,C_M_AXI_B1_RUSER_WIDTH=1,C_M_AXI_B1_BUSER_WIDTH=1,C_M_AXI_B1_TARGET_ADDR=0xC0000000,C_M_AXI_B1_USER_VALUE=0x00000000,C_M_AXI_B1_PROT_VALUE=000,C_M_AXI_B1_CACHE_VALUE=0011,C_M_AXI_B2_ID_WIDTH=1,C_M_AXI_B2_ADDR_WIDTH=32,C_M_AXI_B2_DATA_WIDTH=32,C_M_AXI_B2_AWUSER_WIDTH=1,C_M_AXI_B2_ARUSER_WIDTH=1,C_M_AXI_B2_WUSER_WIDTH=1,C_M_AXI_B2_RUSER_WIDTH=1,C_M_AXI_B2_BUSER_WIDTH=1,C_M_AXI_B2_TARGET_ADDR=0xC7000000,C_M_AXI_B2_USER_VALUE=0x00000000,C_M_AXI_B2_PROT_VALUE=000,C_M_AXI_B2_CACHE_VALUE=0011,C_M_AXI_B3_ID_WIDTH=1,C_M_AXI_B3_ADDR_WIDTH=32,C_M_AXI_B3_DATA_WIDTH=32,C_M_AXI_B3_AWUSER_WIDTH=1,C_M_AXI_B3_ARUSER_WIDTH=1,C_M_AXI_B3_WUSER_WIDTH=1,C_M_AXI_B3_RUSER_WIDTH=1,C_M_AXI_B3_BUSER_WIDTH=1,C_M_AXI_B3_TARGET_ADDR=0xC8000000,C_M_AXI_B3_USER_VALUE=0x00000000,C_M_AXI_B3_PROT_VALUE=000,C_M_AXI_B3_CACHE_VALUE=0011,C_S_AXI_CONTROL_ADDR_WIDTH=5,C_S_AXI_CONTROL_DATA_WIDTH=32}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module dma3_bmm_top_0_4 (
  m_axi_b1_AWID,
  m_axi_b1_AWADDR,
  m_axi_b1_AWLEN,
  m_axi_b1_AWSIZE,
  m_axi_b1_AWBURST,
  m_axi_b1_AWLOCK,
  m_axi_b1_AWCACHE,
  m_axi_b1_AWPROT,
  m_axi_b1_AWQOS,
  m_axi_b1_AWUSER,
  m_axi_b1_AWVALID,
  m_axi_b1_AWREADY,
  m_axi_b1_WDATA,
  m_axi_b1_WSTRB,
  m_axi_b1_WLAST,
  m_axi_b1_WUSER,
  m_axi_b1_WVALID,
  m_axi_b1_WREADY,
  m_axi_b1_BID,
  m_axi_b1_BRESP,
  m_axi_b1_BUSER,
  m_axi_b1_BVALID,
  m_axi_b1_BREADY,
  m_axi_b1_ARID,
  m_axi_b1_ARADDR,
  m_axi_b1_ARLEN,
  m_axi_b1_ARSIZE,
  m_axi_b1_ARBURST,
  m_axi_b1_ARLOCK,
  m_axi_b1_ARCACHE,
  m_axi_b1_ARPROT,
  m_axi_b1_ARQOS,
  m_axi_b1_ARUSER,
  m_axi_b1_ARVALID,
  m_axi_b1_ARREADY,
  m_axi_b1_RID,
  m_axi_b1_RDATA,
  m_axi_b1_RRESP,
  m_axi_b1_RLAST,
  m_axi_b1_RUSER,
  m_axi_b1_RVALID,
  m_axi_b1_RREADY,
  m_axi_b2_AWID,
  m_axi_b2_AWADDR,
  m_axi_b2_AWLEN,
  m_axi_b2_AWSIZE,
  m_axi_b2_AWBURST,
  m_axi_b2_AWLOCK,
  m_axi_b2_AWCACHE,
  m_axi_b2_AWPROT,
  m_axi_b2_AWQOS,
  m_axi_b2_AWUSER,
  m_axi_b2_AWVALID,
  m_axi_b2_AWREADY,
  m_axi_b2_WDATA,
  m_axi_b2_WSTRB,
  m_axi_b2_WLAST,
  m_axi_b2_WUSER,
  m_axi_b2_WVALID,
  m_axi_b2_WREADY,
  m_axi_b2_BID,
  m_axi_b2_BRESP,
  m_axi_b2_BUSER,
  m_axi_b2_BVALID,
  m_axi_b2_BREADY,
  m_axi_b2_ARID,
  m_axi_b2_ARADDR,
  m_axi_b2_ARLEN,
  m_axi_b2_ARSIZE,
  m_axi_b2_ARBURST,
  m_axi_b2_ARLOCK,
  m_axi_b2_ARCACHE,
  m_axi_b2_ARPROT,
  m_axi_b2_ARQOS,
  m_axi_b2_ARUSER,
  m_axi_b2_ARVALID,
  m_axi_b2_ARREADY,
  m_axi_b2_RID,
  m_axi_b2_RDATA,
  m_axi_b2_RRESP,
  m_axi_b2_RLAST,
  m_axi_b2_RUSER,
  m_axi_b2_RVALID,
  m_axi_b2_RREADY,
  m_axi_b3_AWID,
  m_axi_b3_AWADDR,
  m_axi_b3_AWLEN,
  m_axi_b3_AWSIZE,
  m_axi_b3_AWBURST,
  m_axi_b3_AWLOCK,
  m_axi_b3_AWCACHE,
  m_axi_b3_AWPROT,
  m_axi_b3_AWQOS,
  m_axi_b3_AWUSER,
  m_axi_b3_AWVALID,
  m_axi_b3_AWREADY,
  m_axi_b3_WDATA,
  m_axi_b3_WSTRB,
  m_axi_b3_WLAST,
  m_axi_b3_WUSER,
  m_axi_b3_WVALID,
  m_axi_b3_WREADY,
  m_axi_b3_BID,
  m_axi_b3_BRESP,
  m_axi_b3_BUSER,
  m_axi_b3_BVALID,
  m_axi_b3_BREADY,
  m_axi_b3_ARID,
  m_axi_b3_ARADDR,
  m_axi_b3_ARLEN,
  m_axi_b3_ARSIZE,
  m_axi_b3_ARBURST,
  m_axi_b3_ARLOCK,
  m_axi_b3_ARCACHE,
  m_axi_b3_ARPROT,
  m_axi_b3_ARQOS,
  m_axi_b3_ARUSER,
  m_axi_b3_ARVALID,
  m_axi_b3_ARREADY,
  m_axi_b3_RID,
  m_axi_b3_RDATA,
  m_axi_b3_RRESP,
  m_axi_b3_RLAST,
  m_axi_b3_RUSER,
  m_axi_b3_RVALID,
  m_axi_b3_RREADY,
  s_axi_CONTROL_AWADDR,
  s_axi_CONTROL_AWVALID,
  s_axi_CONTROL_AWREADY,
  s_axi_CONTROL_WDATA,
  s_axi_CONTROL_WSTRB,
  s_axi_CONTROL_WVALID,
  s_axi_CONTROL_WREADY,
  s_axi_CONTROL_BRESP,
  s_axi_CONTROL_BVALID,
  s_axi_CONTROL_BREADY,
  s_axi_CONTROL_ARADDR,
  s_axi_CONTROL_ARVALID,
  s_axi_CONTROL_ARREADY,
  s_axi_CONTROL_RDATA,
  s_axi_CONTROL_RRESP,
  s_axi_CONTROL_RVALID,
  s_axi_CONTROL_RREADY,
  interrupt,
  aclk,
  aresetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 AWID" *)
output [0 : 0] m_axi_b1_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 AWADDR" *)
output [31 : 0] m_axi_b1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 AWLEN" *)
output [7 : 0] m_axi_b1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 AWSIZE" *)
output [2 : 0] m_axi_b1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 AWBURST" *)
output [1 : 0] m_axi_b1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 AWLOCK" *)
output [1 : 0] m_axi_b1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 AWCACHE" *)
output [3 : 0] m_axi_b1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 AWPROT" *)
output [2 : 0] m_axi_b1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 AWQOS" *)
output [3 : 0] m_axi_b1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 AWUSER" *)
output [0 : 0] m_axi_b1_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 AWVALID" *)
output m_axi_b1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 AWREADY" *)
input m_axi_b1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 WDATA" *)
output [31 : 0] m_axi_b1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 WSTRB" *)
output [3 : 0] m_axi_b1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 WLAST" *)
output m_axi_b1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 WUSER" *)
output [0 : 0] m_axi_b1_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 WVALID" *)
output m_axi_b1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 WREADY" *)
input m_axi_b1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 BID" *)
input [0 : 0] m_axi_b1_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 BRESP" *)
input [1 : 0] m_axi_b1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 BUSER" *)
input [0 : 0] m_axi_b1_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 BVALID" *)
input m_axi_b1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 BREADY" *)
output m_axi_b1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 ARID" *)
output [0 : 0] m_axi_b1_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 ARADDR" *)
output [31 : 0] m_axi_b1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 ARLEN" *)
output [7 : 0] m_axi_b1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 ARSIZE" *)
output [2 : 0] m_axi_b1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 ARBURST" *)
output [1 : 0] m_axi_b1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 ARLOCK" *)
output [1 : 0] m_axi_b1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 ARCACHE" *)
output [3 : 0] m_axi_b1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 ARPROT" *)
output [2 : 0] m_axi_b1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 ARQOS" *)
output [3 : 0] m_axi_b1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 ARUSER" *)
output [0 : 0] m_axi_b1_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 ARVALID" *)
output m_axi_b1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 ARREADY" *)
input m_axi_b1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 RID" *)
input [0 : 0] m_axi_b1_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 RDATA" *)
input [31 : 0] m_axi_b1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 RRESP" *)
input [1 : 0] m_axi_b1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 RLAST" *)
input m_axi_b1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 RUSER" *)
input [0 : 0] m_axi_b1_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 RVALID" *)
input m_axi_b1_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B1 RREADY" *)
output m_axi_b1_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 AWID" *)
output [0 : 0] m_axi_b2_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 AWADDR" *)
output [31 : 0] m_axi_b2_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 AWLEN" *)
output [7 : 0] m_axi_b2_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 AWSIZE" *)
output [2 : 0] m_axi_b2_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 AWBURST" *)
output [1 : 0] m_axi_b2_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 AWLOCK" *)
output [1 : 0] m_axi_b2_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 AWCACHE" *)
output [3 : 0] m_axi_b2_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 AWPROT" *)
output [2 : 0] m_axi_b2_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 AWQOS" *)
output [3 : 0] m_axi_b2_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 AWUSER" *)
output [0 : 0] m_axi_b2_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 AWVALID" *)
output m_axi_b2_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 AWREADY" *)
input m_axi_b2_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 WDATA" *)
output [31 : 0] m_axi_b2_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 WSTRB" *)
output [3 : 0] m_axi_b2_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 WLAST" *)
output m_axi_b2_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 WUSER" *)
output [0 : 0] m_axi_b2_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 WVALID" *)
output m_axi_b2_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 WREADY" *)
input m_axi_b2_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 BID" *)
input [0 : 0] m_axi_b2_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 BRESP" *)
input [1 : 0] m_axi_b2_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 BUSER" *)
input [0 : 0] m_axi_b2_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 BVALID" *)
input m_axi_b2_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 BREADY" *)
output m_axi_b2_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 ARID" *)
output [0 : 0] m_axi_b2_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 ARADDR" *)
output [31 : 0] m_axi_b2_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 ARLEN" *)
output [7 : 0] m_axi_b2_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 ARSIZE" *)
output [2 : 0] m_axi_b2_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 ARBURST" *)
output [1 : 0] m_axi_b2_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 ARLOCK" *)
output [1 : 0] m_axi_b2_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 ARCACHE" *)
output [3 : 0] m_axi_b2_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 ARPROT" *)
output [2 : 0] m_axi_b2_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 ARQOS" *)
output [3 : 0] m_axi_b2_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 ARUSER" *)
output [0 : 0] m_axi_b2_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 ARVALID" *)
output m_axi_b2_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 ARREADY" *)
input m_axi_b2_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 RID" *)
input [0 : 0] m_axi_b2_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 RDATA" *)
input [31 : 0] m_axi_b2_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 RRESP" *)
input [1 : 0] m_axi_b2_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 RLAST" *)
input m_axi_b2_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 RUSER" *)
input [0 : 0] m_axi_b2_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 RVALID" *)
input m_axi_b2_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B2 RREADY" *)
output m_axi_b2_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 AWID" *)
output [0 : 0] m_axi_b3_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 AWADDR" *)
output [31 : 0] m_axi_b3_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 AWLEN" *)
output [7 : 0] m_axi_b3_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 AWSIZE" *)
output [2 : 0] m_axi_b3_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 AWBURST" *)
output [1 : 0] m_axi_b3_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 AWLOCK" *)
output [1 : 0] m_axi_b3_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 AWCACHE" *)
output [3 : 0] m_axi_b3_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 AWPROT" *)
output [2 : 0] m_axi_b3_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 AWQOS" *)
output [3 : 0] m_axi_b3_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 AWUSER" *)
output [0 : 0] m_axi_b3_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 AWVALID" *)
output m_axi_b3_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 AWREADY" *)
input m_axi_b3_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 WDATA" *)
output [31 : 0] m_axi_b3_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 WSTRB" *)
output [3 : 0] m_axi_b3_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 WLAST" *)
output m_axi_b3_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 WUSER" *)
output [0 : 0] m_axi_b3_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 WVALID" *)
output m_axi_b3_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 WREADY" *)
input m_axi_b3_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 BID" *)
input [0 : 0] m_axi_b3_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 BRESP" *)
input [1 : 0] m_axi_b3_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 BUSER" *)
input [0 : 0] m_axi_b3_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 BVALID" *)
input m_axi_b3_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 BREADY" *)
output m_axi_b3_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 ARID" *)
output [0 : 0] m_axi_b3_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 ARADDR" *)
output [31 : 0] m_axi_b3_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 ARLEN" *)
output [7 : 0] m_axi_b3_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 ARSIZE" *)
output [2 : 0] m_axi_b3_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 ARBURST" *)
output [1 : 0] m_axi_b3_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 ARLOCK" *)
output [1 : 0] m_axi_b3_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 ARCACHE" *)
output [3 : 0] m_axi_b3_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 ARPROT" *)
output [2 : 0] m_axi_b3_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 ARQOS" *)
output [3 : 0] m_axi_b3_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 ARUSER" *)
output [0 : 0] m_axi_b3_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 ARVALID" *)
output m_axi_b3_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 ARREADY" *)
input m_axi_b3_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 RID" *)
input [0 : 0] m_axi_b3_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 RDATA" *)
input [31 : 0] m_axi_b3_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 RRESP" *)
input [1 : 0] m_axi_b3_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 RLAST" *)
input m_axi_b3_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 RUSER" *)
input [0 : 0] m_axi_b3_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 RVALID" *)
input m_axi_b3_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_B3 RREADY" *)
output m_axi_b3_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL AWADDR" *)
input [4 : 0] s_axi_CONTROL_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL AWVALID" *)
input s_axi_CONTROL_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL AWREADY" *)
output s_axi_CONTROL_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL WDATA" *)
input [31 : 0] s_axi_CONTROL_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL WSTRB" *)
input [3 : 0] s_axi_CONTROL_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL WVALID" *)
input s_axi_CONTROL_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL WREADY" *)
output s_axi_CONTROL_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL BRESP" *)
output [1 : 0] s_axi_CONTROL_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL BVALID" *)
output s_axi_CONTROL_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL BREADY" *)
input s_axi_CONTROL_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL ARADDR" *)
input [4 : 0] s_axi_CONTROL_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL ARVALID" *)
input s_axi_CONTROL_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL ARREADY" *)
output s_axi_CONTROL_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL RDATA" *)
output [31 : 0] s_axi_CONTROL_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL RRESP" *)
output [1 : 0] s_axi_CONTROL_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL RVALID" *)
output s_axi_CONTROL_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL RREADY" *)
input s_axi_CONTROL_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output interrupt;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input aresetn;

  bmm_top_top #(
    .C_M_AXI_B1_ID_WIDTH(1),
    .C_M_AXI_B1_ADDR_WIDTH(32),
    .C_M_AXI_B1_DATA_WIDTH(32),
    .C_M_AXI_B1_AWUSER_WIDTH(1),
    .C_M_AXI_B1_ARUSER_WIDTH(1),
    .C_M_AXI_B1_WUSER_WIDTH(1),
    .C_M_AXI_B1_RUSER_WIDTH(1),
    .C_M_AXI_B1_BUSER_WIDTH(1),
    .C_M_AXI_B1_TARGET_ADDR('HC0000000),
    .C_M_AXI_B1_USER_VALUE('H00000000),
    .C_M_AXI_B1_PROT_VALUE('B000),
    .C_M_AXI_B1_CACHE_VALUE('B0011),
    .C_M_AXI_B2_ID_WIDTH(1),
    .C_M_AXI_B2_ADDR_WIDTH(32),
    .C_M_AXI_B2_DATA_WIDTH(32),
    .C_M_AXI_B2_AWUSER_WIDTH(1),
    .C_M_AXI_B2_ARUSER_WIDTH(1),
    .C_M_AXI_B2_WUSER_WIDTH(1),
    .C_M_AXI_B2_RUSER_WIDTH(1),
    .C_M_AXI_B2_BUSER_WIDTH(1),
    .C_M_AXI_B2_TARGET_ADDR('HC7000000),
    .C_M_AXI_B2_USER_VALUE('H00000000),
    .C_M_AXI_B2_PROT_VALUE('B000),
    .C_M_AXI_B2_CACHE_VALUE('B0011),
    .C_M_AXI_B3_ID_WIDTH(1),
    .C_M_AXI_B3_ADDR_WIDTH(32),
    .C_M_AXI_B3_DATA_WIDTH(32),
    .C_M_AXI_B3_AWUSER_WIDTH(1),
    .C_M_AXI_B3_ARUSER_WIDTH(1),
    .C_M_AXI_B3_WUSER_WIDTH(1),
    .C_M_AXI_B3_RUSER_WIDTH(1),
    .C_M_AXI_B3_BUSER_WIDTH(1),
    .C_M_AXI_B3_TARGET_ADDR('HC8000000),
    .C_M_AXI_B3_USER_VALUE('H00000000),
    .C_M_AXI_B3_PROT_VALUE('B000),
    .C_M_AXI_B3_CACHE_VALUE('B0011),
    .C_S_AXI_CONTROL_ADDR_WIDTH(5),
    .C_S_AXI_CONTROL_DATA_WIDTH(32)
  ) inst (
    .m_axi_b1_AWID(m_axi_b1_AWID),
    .m_axi_b1_AWADDR(m_axi_b1_AWADDR),
    .m_axi_b1_AWLEN(m_axi_b1_AWLEN),
    .m_axi_b1_AWSIZE(m_axi_b1_AWSIZE),
    .m_axi_b1_AWBURST(m_axi_b1_AWBURST),
    .m_axi_b1_AWLOCK(m_axi_b1_AWLOCK),
    .m_axi_b1_AWCACHE(m_axi_b1_AWCACHE),
    .m_axi_b1_AWPROT(m_axi_b1_AWPROT),
    .m_axi_b1_AWQOS(m_axi_b1_AWQOS),
    .m_axi_b1_AWUSER(m_axi_b1_AWUSER),
    .m_axi_b1_AWVALID(m_axi_b1_AWVALID),
    .m_axi_b1_AWREADY(m_axi_b1_AWREADY),
    .m_axi_b1_WDATA(m_axi_b1_WDATA),
    .m_axi_b1_WSTRB(m_axi_b1_WSTRB),
    .m_axi_b1_WLAST(m_axi_b1_WLAST),
    .m_axi_b1_WUSER(m_axi_b1_WUSER),
    .m_axi_b1_WVALID(m_axi_b1_WVALID),
    .m_axi_b1_WREADY(m_axi_b1_WREADY),
    .m_axi_b1_BID(m_axi_b1_BID),
    .m_axi_b1_BRESP(m_axi_b1_BRESP),
    .m_axi_b1_BUSER(m_axi_b1_BUSER),
    .m_axi_b1_BVALID(m_axi_b1_BVALID),
    .m_axi_b1_BREADY(m_axi_b1_BREADY),
    .m_axi_b1_ARID(m_axi_b1_ARID),
    .m_axi_b1_ARADDR(m_axi_b1_ARADDR),
    .m_axi_b1_ARLEN(m_axi_b1_ARLEN),
    .m_axi_b1_ARSIZE(m_axi_b1_ARSIZE),
    .m_axi_b1_ARBURST(m_axi_b1_ARBURST),
    .m_axi_b1_ARLOCK(m_axi_b1_ARLOCK),
    .m_axi_b1_ARCACHE(m_axi_b1_ARCACHE),
    .m_axi_b1_ARPROT(m_axi_b1_ARPROT),
    .m_axi_b1_ARQOS(m_axi_b1_ARQOS),
    .m_axi_b1_ARUSER(m_axi_b1_ARUSER),
    .m_axi_b1_ARVALID(m_axi_b1_ARVALID),
    .m_axi_b1_ARREADY(m_axi_b1_ARREADY),
    .m_axi_b1_RID(m_axi_b1_RID),
    .m_axi_b1_RDATA(m_axi_b1_RDATA),
    .m_axi_b1_RRESP(m_axi_b1_RRESP),
    .m_axi_b1_RLAST(m_axi_b1_RLAST),
    .m_axi_b1_RUSER(m_axi_b1_RUSER),
    .m_axi_b1_RVALID(m_axi_b1_RVALID),
    .m_axi_b1_RREADY(m_axi_b1_RREADY),
    .m_axi_b2_AWID(m_axi_b2_AWID),
    .m_axi_b2_AWADDR(m_axi_b2_AWADDR),
    .m_axi_b2_AWLEN(m_axi_b2_AWLEN),
    .m_axi_b2_AWSIZE(m_axi_b2_AWSIZE),
    .m_axi_b2_AWBURST(m_axi_b2_AWBURST),
    .m_axi_b2_AWLOCK(m_axi_b2_AWLOCK),
    .m_axi_b2_AWCACHE(m_axi_b2_AWCACHE),
    .m_axi_b2_AWPROT(m_axi_b2_AWPROT),
    .m_axi_b2_AWQOS(m_axi_b2_AWQOS),
    .m_axi_b2_AWUSER(m_axi_b2_AWUSER),
    .m_axi_b2_AWVALID(m_axi_b2_AWVALID),
    .m_axi_b2_AWREADY(m_axi_b2_AWREADY),
    .m_axi_b2_WDATA(m_axi_b2_WDATA),
    .m_axi_b2_WSTRB(m_axi_b2_WSTRB),
    .m_axi_b2_WLAST(m_axi_b2_WLAST),
    .m_axi_b2_WUSER(m_axi_b2_WUSER),
    .m_axi_b2_WVALID(m_axi_b2_WVALID),
    .m_axi_b2_WREADY(m_axi_b2_WREADY),
    .m_axi_b2_BID(m_axi_b2_BID),
    .m_axi_b2_BRESP(m_axi_b2_BRESP),
    .m_axi_b2_BUSER(m_axi_b2_BUSER),
    .m_axi_b2_BVALID(m_axi_b2_BVALID),
    .m_axi_b2_BREADY(m_axi_b2_BREADY),
    .m_axi_b2_ARID(m_axi_b2_ARID),
    .m_axi_b2_ARADDR(m_axi_b2_ARADDR),
    .m_axi_b2_ARLEN(m_axi_b2_ARLEN),
    .m_axi_b2_ARSIZE(m_axi_b2_ARSIZE),
    .m_axi_b2_ARBURST(m_axi_b2_ARBURST),
    .m_axi_b2_ARLOCK(m_axi_b2_ARLOCK),
    .m_axi_b2_ARCACHE(m_axi_b2_ARCACHE),
    .m_axi_b2_ARPROT(m_axi_b2_ARPROT),
    .m_axi_b2_ARQOS(m_axi_b2_ARQOS),
    .m_axi_b2_ARUSER(m_axi_b2_ARUSER),
    .m_axi_b2_ARVALID(m_axi_b2_ARVALID),
    .m_axi_b2_ARREADY(m_axi_b2_ARREADY),
    .m_axi_b2_RID(m_axi_b2_RID),
    .m_axi_b2_RDATA(m_axi_b2_RDATA),
    .m_axi_b2_RRESP(m_axi_b2_RRESP),
    .m_axi_b2_RLAST(m_axi_b2_RLAST),
    .m_axi_b2_RUSER(m_axi_b2_RUSER),
    .m_axi_b2_RVALID(m_axi_b2_RVALID),
    .m_axi_b2_RREADY(m_axi_b2_RREADY),
    .m_axi_b3_AWID(m_axi_b3_AWID),
    .m_axi_b3_AWADDR(m_axi_b3_AWADDR),
    .m_axi_b3_AWLEN(m_axi_b3_AWLEN),
    .m_axi_b3_AWSIZE(m_axi_b3_AWSIZE),
    .m_axi_b3_AWBURST(m_axi_b3_AWBURST),
    .m_axi_b3_AWLOCK(m_axi_b3_AWLOCK),
    .m_axi_b3_AWCACHE(m_axi_b3_AWCACHE),
    .m_axi_b3_AWPROT(m_axi_b3_AWPROT),
    .m_axi_b3_AWQOS(m_axi_b3_AWQOS),
    .m_axi_b3_AWUSER(m_axi_b3_AWUSER),
    .m_axi_b3_AWVALID(m_axi_b3_AWVALID),
    .m_axi_b3_AWREADY(m_axi_b3_AWREADY),
    .m_axi_b3_WDATA(m_axi_b3_WDATA),
    .m_axi_b3_WSTRB(m_axi_b3_WSTRB),
    .m_axi_b3_WLAST(m_axi_b3_WLAST),
    .m_axi_b3_WUSER(m_axi_b3_WUSER),
    .m_axi_b3_WVALID(m_axi_b3_WVALID),
    .m_axi_b3_WREADY(m_axi_b3_WREADY),
    .m_axi_b3_BID(m_axi_b3_BID),
    .m_axi_b3_BRESP(m_axi_b3_BRESP),
    .m_axi_b3_BUSER(m_axi_b3_BUSER),
    .m_axi_b3_BVALID(m_axi_b3_BVALID),
    .m_axi_b3_BREADY(m_axi_b3_BREADY),
    .m_axi_b3_ARID(m_axi_b3_ARID),
    .m_axi_b3_ARADDR(m_axi_b3_ARADDR),
    .m_axi_b3_ARLEN(m_axi_b3_ARLEN),
    .m_axi_b3_ARSIZE(m_axi_b3_ARSIZE),
    .m_axi_b3_ARBURST(m_axi_b3_ARBURST),
    .m_axi_b3_ARLOCK(m_axi_b3_ARLOCK),
    .m_axi_b3_ARCACHE(m_axi_b3_ARCACHE),
    .m_axi_b3_ARPROT(m_axi_b3_ARPROT),
    .m_axi_b3_ARQOS(m_axi_b3_ARQOS),
    .m_axi_b3_ARUSER(m_axi_b3_ARUSER),
    .m_axi_b3_ARVALID(m_axi_b3_ARVALID),
    .m_axi_b3_ARREADY(m_axi_b3_ARREADY),
    .m_axi_b3_RID(m_axi_b3_RID),
    .m_axi_b3_RDATA(m_axi_b3_RDATA),
    .m_axi_b3_RRESP(m_axi_b3_RRESP),
    .m_axi_b3_RLAST(m_axi_b3_RLAST),
    .m_axi_b3_RUSER(m_axi_b3_RUSER),
    .m_axi_b3_RVALID(m_axi_b3_RVALID),
    .m_axi_b3_RREADY(m_axi_b3_RREADY),
    .s_axi_CONTROL_AWADDR(s_axi_CONTROL_AWADDR),
    .s_axi_CONTROL_AWVALID(s_axi_CONTROL_AWVALID),
    .s_axi_CONTROL_AWREADY(s_axi_CONTROL_AWREADY),
    .s_axi_CONTROL_WDATA(s_axi_CONTROL_WDATA),
    .s_axi_CONTROL_WSTRB(s_axi_CONTROL_WSTRB),
    .s_axi_CONTROL_WVALID(s_axi_CONTROL_WVALID),
    .s_axi_CONTROL_WREADY(s_axi_CONTROL_WREADY),
    .s_axi_CONTROL_BRESP(s_axi_CONTROL_BRESP),
    .s_axi_CONTROL_BVALID(s_axi_CONTROL_BVALID),
    .s_axi_CONTROL_BREADY(s_axi_CONTROL_BREADY),
    .s_axi_CONTROL_ARADDR(s_axi_CONTROL_ARADDR),
    .s_axi_CONTROL_ARVALID(s_axi_CONTROL_ARVALID),
    .s_axi_CONTROL_ARREADY(s_axi_CONTROL_ARREADY),
    .s_axi_CONTROL_RDATA(s_axi_CONTROL_RDATA),
    .s_axi_CONTROL_RRESP(s_axi_CONTROL_RRESP),
    .s_axi_CONTROL_RVALID(s_axi_CONTROL_RVALID),
    .s_axi_CONTROL_RREADY(s_axi_CONTROL_RREADY),
    .interrupt(interrupt),
    .aclk(aclk),
    .aresetn(aresetn)
  );
endmodule
