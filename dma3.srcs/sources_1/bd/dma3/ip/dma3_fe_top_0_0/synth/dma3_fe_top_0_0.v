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


// IP VLNV: xilinx.com:hls:fe_top:8.0
// IP Revision: -1

(* X_CORE_INFO = "fe_top_top,Vivado 2013.3" *)
(* CHECK_LICENSE_TYPE = "dma3_fe_top_0_0,fe_top_top,{}" *)
(* CORE_GENERATION_INFO = "dma3_fe_top_0_0,fe_top_top,{x_ipProduct=Vivado 2013.3,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=fe_top,x_ipVersion=8.0,x_ipCoreRevision=-1,x_ipLanguage=VERILOG,C_S_AXI_CONTROL_ADDR_WIDTH=4,C_S_AXI_CONTROL_DATA_WIDTH=32}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module dma3_fe_top_0_0 (
  start,
  idle,
  done,
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

output [31 : 0] start;
input [31 : 0] idle;
input [31 : 0] done;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL AWADDR" *)
input [3 : 0] s_axi_CONTROL_AWADDR;
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
input [3 : 0] s_axi_CONTROL_ARADDR;
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

  fe_top_top #(
    .C_S_AXI_CONTROL_ADDR_WIDTH(4),
    .C_S_AXI_CONTROL_DATA_WIDTH(32)
  ) inst (
    .start(start),
    .idle(idle),
    .done(done),
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
