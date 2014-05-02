`timescale 1 ps / 1 ps

module blkAB_imp_1E40C3B
   (S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    s_axi_aclk,
    s_axi_aresetn);
  input [16:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input s_axi_aclk;
  input [0:0]s_axi_aresetn;

  wire [16:0]bram_ctrl_outblk_bram_porta_ADDR;
  wire bram_ctrl_outblk_bram_porta_CLK;
  wire [31:0]bram_ctrl_outblk_bram_porta_DIN;
  wire [31:0]bram_ctrl_outblk_bram_porta_DOUT;
  wire bram_ctrl_outblk_bram_porta_EN;
  wire [3:0]bram_ctrl_outblk_bram_porta_WE;
  wire [0:0]proc_sys_reset_peripheral_aresetn;
  wire processing_system7_0_fclk_clk0;
  wire [16:0]s_axi_1_ARADDR;
  wire [1:0]s_axi_1_ARBURST;
  wire [3:0]s_axi_1_ARCACHE;
  wire [2:0]s_axi_1_ARID;
  wire [7:0]s_axi_1_ARLEN;
  wire [0:0]s_axi_1_ARLOCK;
  wire [2:0]s_axi_1_ARPROT;
  wire s_axi_1_ARREADY;
  wire [2:0]s_axi_1_ARSIZE;
  wire [0:0]s_axi_1_ARVALID;
  wire [16:0]s_axi_1_AWADDR;
  wire [1:0]s_axi_1_AWBURST;
  wire [3:0]s_axi_1_AWCACHE;
  wire [2:0]s_axi_1_AWID;
  wire [7:0]s_axi_1_AWLEN;
  wire [0:0]s_axi_1_AWLOCK;
  wire [2:0]s_axi_1_AWPROT;
  wire s_axi_1_AWREADY;
  wire [2:0]s_axi_1_AWSIZE;
  wire [0:0]s_axi_1_AWVALID;
  wire [2:0]s_axi_1_BID;
  wire [0:0]s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire s_axi_1_BVALID;
  wire [31:0]s_axi_1_RDATA;
  wire [2:0]s_axi_1_RID;
  wire s_axi_1_RLAST;
  wire [0:0]s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire s_axi_1_RVALID;
  wire [31:0]s_axi_1_WDATA;
  wire [0:0]s_axi_1_WLAST;
  wire s_axi_1_WREADY;
  wire [3:0]s_axi_1_WSTRB;
  wire [0:0]s_axi_1_WVALID;

  assign S_AXI_arready[0] = s_axi_1_ARREADY;
  assign S_AXI_awready[0] = s_axi_1_AWREADY;
  assign S_AXI_bid[2:0] = s_axi_1_BID;
  assign S_AXI_bresp[1:0] = s_axi_1_BRESP;
  assign S_AXI_bvalid[0] = s_axi_1_BVALID;
  assign S_AXI_rdata[31:0] = s_axi_1_RDATA;
  assign S_AXI_rid[2:0] = s_axi_1_RID;
  assign S_AXI_rlast[0] = s_axi_1_RLAST;
  assign S_AXI_rresp[1:0] = s_axi_1_RRESP;
  assign S_AXI_rvalid[0] = s_axi_1_RVALID;
  assign S_AXI_wready[0] = s_axi_1_WREADY;
  assign proc_sys_reset_peripheral_aresetn = s_axi_aresetn[0];
  assign processing_system7_0_fclk_clk0 = s_axi_aclk;
  assign s_axi_1_ARADDR = S_AXI_araddr[16:0];
  assign s_axi_1_ARBURST = S_AXI_arburst[1:0];
  assign s_axi_1_ARCACHE = S_AXI_arcache[3:0];
  assign s_axi_1_ARID = S_AXI_arid[2:0];
  assign s_axi_1_ARLEN = S_AXI_arlen[7:0];
  assign s_axi_1_ARLOCK = S_AXI_arlock[0];
  assign s_axi_1_ARPROT = S_AXI_arprot[2:0];
  assign s_axi_1_ARSIZE = S_AXI_arsize[2:0];
  assign s_axi_1_ARVALID = S_AXI_arvalid[0];
  assign s_axi_1_AWADDR = S_AXI_awaddr[16:0];
  assign s_axi_1_AWBURST = S_AXI_awburst[1:0];
  assign s_axi_1_AWCACHE = S_AXI_awcache[3:0];
  assign s_axi_1_AWID = S_AXI_awid[2:0];
  assign s_axi_1_AWLEN = S_AXI_awlen[7:0];
  assign s_axi_1_AWLOCK = S_AXI_awlock[0];
  assign s_axi_1_AWPROT = S_AXI_awprot[2:0];
  assign s_axi_1_AWSIZE = S_AXI_awsize[2:0];
  assign s_axi_1_AWVALID = S_AXI_awvalid[0];
  assign s_axi_1_BREADY = S_AXI_bready[0];
  assign s_axi_1_RREADY = S_AXI_rready[0];
  assign s_axi_1_WDATA = S_AXI_wdata[31:0];
  assign s_axi_1_WLAST = S_AXI_wlast[0];
  assign s_axi_1_WSTRB = S_AXI_wstrb[3:0];
  assign s_axi_1_WVALID = S_AXI_wvalid[0];
dma3_blk_mem_gen_1_1 blk_mem_gen_outblk
       (.addra(bram_ctrl_outblk_bram_porta_ADDR[15:0]),
        .clka(bram_ctrl_outblk_bram_porta_CLK),
        .dina(bram_ctrl_outblk_bram_porta_DIN),
        .douta(bram_ctrl_outblk_bram_porta_DOUT),
        .ena(bram_ctrl_outblk_bram_porta_EN),
        .wea(bram_ctrl_outblk_bram_porta_WE[0]));
dma3_axi_bram_ctrl_0_0 bram_ctrl_outblk
       (.bram_addr_a(bram_ctrl_outblk_bram_porta_ADDR),
        .bram_clk_a(bram_ctrl_outblk_bram_porta_CLK),
        .bram_en_a(bram_ctrl_outblk_bram_porta_EN),
        .bram_rddata_a(bram_ctrl_outblk_bram_porta_DOUT),
        .bram_we_a(bram_ctrl_outblk_bram_porta_WE),
        .bram_wrdata_a(bram_ctrl_outblk_bram_porta_DIN),
        .s_axi_aclk(processing_system7_0_fclk_clk0),
        .s_axi_araddr(s_axi_1_ARADDR),
        .s_axi_arburst(s_axi_1_ARBURST),
        .s_axi_arcache(s_axi_1_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_peripheral_aresetn),
        .s_axi_arid(s_axi_1_ARID),
        .s_axi_arlen(s_axi_1_ARLEN),
        .s_axi_arlock(s_axi_1_ARLOCK),
        .s_axi_arprot(s_axi_1_ARPROT),
        .s_axi_arready(s_axi_1_ARREADY),
        .s_axi_arsize(s_axi_1_ARSIZE),
        .s_axi_arvalid(s_axi_1_ARVALID),
        .s_axi_awaddr(s_axi_1_AWADDR),
        .s_axi_awburst(s_axi_1_AWBURST),
        .s_axi_awcache(s_axi_1_AWCACHE),
        .s_axi_awid(s_axi_1_AWID),
        .s_axi_awlen(s_axi_1_AWLEN),
        .s_axi_awlock(s_axi_1_AWLOCK),
        .s_axi_awprot(s_axi_1_AWPROT),
        .s_axi_awready(s_axi_1_AWREADY),
        .s_axi_awsize(s_axi_1_AWSIZE),
        .s_axi_awvalid(s_axi_1_AWVALID),
        .s_axi_bid(s_axi_1_BID),
        .s_axi_bready(s_axi_1_BREADY),
        .s_axi_bresp(s_axi_1_BRESP),
        .s_axi_bvalid(s_axi_1_BVALID),
        .s_axi_rdata(s_axi_1_RDATA),
        .s_axi_rid(s_axi_1_RID),
        .s_axi_rlast(s_axi_1_RLAST),
        .s_axi_rready(s_axi_1_RREADY),
        .s_axi_rresp(s_axi_1_RRESP),
        .s_axi_rvalid(s_axi_1_RVALID),
        .s_axi_wdata(s_axi_1_WDATA),
        .s_axi_wlast(s_axi_1_WLAST),
        .s_axi_wready(s_axi_1_WREADY),
        .s_axi_wstrb(s_axi_1_WSTRB),
        .s_axi_wvalid(s_axi_1_WVALID));
endmodule

module blkA_imp_17VD76G
   (S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    s_axi_aclk,
    s_axi_aresetn);
  input [16:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input s_axi_aclk;
  input [0:0]s_axi_aresetn;

  wire [16:0]axi_bram_ctrl_0_bram_porta_ADDR;
  wire axi_bram_ctrl_0_bram_porta_CLK;
  wire [31:0]axi_bram_ctrl_0_bram_porta_DIN;
  wire [31:0]axi_bram_ctrl_0_bram_porta_DOUT;
  wire axi_bram_ctrl_0_bram_porta_EN;
  wire [3:0]axi_bram_ctrl_0_bram_porta_WE;
  wire [16:0]axi_interconnect_0_m00_axi_ARADDR;
  wire [1:0]axi_interconnect_0_m00_axi_ARBURST;
  wire [3:0]axi_interconnect_0_m00_axi_ARCACHE;
  wire [2:0]axi_interconnect_0_m00_axi_ARID;
  wire [7:0]axi_interconnect_0_m00_axi_ARLEN;
  wire [0:0]axi_interconnect_0_m00_axi_ARLOCK;
  wire [2:0]axi_interconnect_0_m00_axi_ARPROT;
  wire axi_interconnect_0_m00_axi_ARREADY;
  wire [2:0]axi_interconnect_0_m00_axi_ARSIZE;
  wire [0:0]axi_interconnect_0_m00_axi_ARVALID;
  wire [16:0]axi_interconnect_0_m00_axi_AWADDR;
  wire [1:0]axi_interconnect_0_m00_axi_AWBURST;
  wire [3:0]axi_interconnect_0_m00_axi_AWCACHE;
  wire [2:0]axi_interconnect_0_m00_axi_AWID;
  wire [7:0]axi_interconnect_0_m00_axi_AWLEN;
  wire [0:0]axi_interconnect_0_m00_axi_AWLOCK;
  wire [2:0]axi_interconnect_0_m00_axi_AWPROT;
  wire axi_interconnect_0_m00_axi_AWREADY;
  wire [2:0]axi_interconnect_0_m00_axi_AWSIZE;
  wire [0:0]axi_interconnect_0_m00_axi_AWVALID;
  wire [2:0]axi_interconnect_0_m00_axi_BID;
  wire [0:0]axi_interconnect_0_m00_axi_BREADY;
  wire [1:0]axi_interconnect_0_m00_axi_BRESP;
  wire axi_interconnect_0_m00_axi_BVALID;
  wire [31:0]axi_interconnect_0_m00_axi_RDATA;
  wire [2:0]axi_interconnect_0_m00_axi_RID;
  wire axi_interconnect_0_m00_axi_RLAST;
  wire [0:0]axi_interconnect_0_m00_axi_RREADY;
  wire [1:0]axi_interconnect_0_m00_axi_RRESP;
  wire axi_interconnect_0_m00_axi_RVALID;
  wire [31:0]axi_interconnect_0_m00_axi_WDATA;
  wire [0:0]axi_interconnect_0_m00_axi_WLAST;
  wire axi_interconnect_0_m00_axi_WREADY;
  wire [3:0]axi_interconnect_0_m00_axi_WSTRB;
  wire [0:0]axi_interconnect_0_m00_axi_WVALID;
  wire [0:0]proc_sys_reset_peripheral_aresetn;
  wire processing_system7_0_fclk_clk0;

  assign S_AXI_arready[0] = axi_interconnect_0_m00_axi_ARREADY;
  assign S_AXI_awready[0] = axi_interconnect_0_m00_axi_AWREADY;
  assign S_AXI_bid[2:0] = axi_interconnect_0_m00_axi_BID;
  assign S_AXI_bresp[1:0] = axi_interconnect_0_m00_axi_BRESP;
  assign S_AXI_bvalid[0] = axi_interconnect_0_m00_axi_BVALID;
  assign S_AXI_rdata[31:0] = axi_interconnect_0_m00_axi_RDATA;
  assign S_AXI_rid[2:0] = axi_interconnect_0_m00_axi_RID;
  assign S_AXI_rlast[0] = axi_interconnect_0_m00_axi_RLAST;
  assign S_AXI_rresp[1:0] = axi_interconnect_0_m00_axi_RRESP;
  assign S_AXI_rvalid[0] = axi_interconnect_0_m00_axi_RVALID;
  assign S_AXI_wready[0] = axi_interconnect_0_m00_axi_WREADY;
  assign axi_interconnect_0_m00_axi_ARADDR = S_AXI_araddr[16:0];
  assign axi_interconnect_0_m00_axi_ARBURST = S_AXI_arburst[1:0];
  assign axi_interconnect_0_m00_axi_ARCACHE = S_AXI_arcache[3:0];
  assign axi_interconnect_0_m00_axi_ARID = S_AXI_arid[2:0];
  assign axi_interconnect_0_m00_axi_ARLEN = S_AXI_arlen[7:0];
  assign axi_interconnect_0_m00_axi_ARLOCK = S_AXI_arlock[0];
  assign axi_interconnect_0_m00_axi_ARPROT = S_AXI_arprot[2:0];
  assign axi_interconnect_0_m00_axi_ARSIZE = S_AXI_arsize[2:0];
  assign axi_interconnect_0_m00_axi_ARVALID = S_AXI_arvalid[0];
  assign axi_interconnect_0_m00_axi_AWADDR = S_AXI_awaddr[16:0];
  assign axi_interconnect_0_m00_axi_AWBURST = S_AXI_awburst[1:0];
  assign axi_interconnect_0_m00_axi_AWCACHE = S_AXI_awcache[3:0];
  assign axi_interconnect_0_m00_axi_AWID = S_AXI_awid[2:0];
  assign axi_interconnect_0_m00_axi_AWLEN = S_AXI_awlen[7:0];
  assign axi_interconnect_0_m00_axi_AWLOCK = S_AXI_awlock[0];
  assign axi_interconnect_0_m00_axi_AWPROT = S_AXI_awprot[2:0];
  assign axi_interconnect_0_m00_axi_AWSIZE = S_AXI_awsize[2:0];
  assign axi_interconnect_0_m00_axi_AWVALID = S_AXI_awvalid[0];
  assign axi_interconnect_0_m00_axi_BREADY = S_AXI_bready[0];
  assign axi_interconnect_0_m00_axi_RREADY = S_AXI_rready[0];
  assign axi_interconnect_0_m00_axi_WDATA = S_AXI_wdata[31:0];
  assign axi_interconnect_0_m00_axi_WLAST = S_AXI_wlast[0];
  assign axi_interconnect_0_m00_axi_WSTRB = S_AXI_wstrb[3:0];
  assign axi_interconnect_0_m00_axi_WVALID = S_AXI_wvalid[0];
  assign proc_sys_reset_peripheral_aresetn = s_axi_aresetn[0];
  assign processing_system7_0_fclk_clk0 = s_axi_aclk;
dma3_blk_mem_gen_1_2 blk_mem_gen_inblk
       (.addra(axi_bram_ctrl_0_bram_porta_ADDR[15:0]),
        .clka(axi_bram_ctrl_0_bram_porta_CLK),
        .dina(axi_bram_ctrl_0_bram_porta_DIN),
        .douta(axi_bram_ctrl_0_bram_porta_DOUT),
        .ena(axi_bram_ctrl_0_bram_porta_EN),
        .wea(axi_bram_ctrl_0_bram_porta_WE[0]));
dma3_axi_bram_ctrl_0_1 bram_ctrl_in_blk
       (.bram_addr_a(axi_bram_ctrl_0_bram_porta_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_bram_porta_CLK),
        .bram_en_a(axi_bram_ctrl_0_bram_porta_EN),
        .bram_rddata_a(axi_bram_ctrl_0_bram_porta_DOUT),
        .bram_we_a(axi_bram_ctrl_0_bram_porta_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_bram_porta_DIN),
        .s_axi_aclk(processing_system7_0_fclk_clk0),
        .s_axi_araddr(axi_interconnect_0_m00_axi_ARADDR),
        .s_axi_arburst(axi_interconnect_0_m00_axi_ARBURST),
        .s_axi_arcache(axi_interconnect_0_m00_axi_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_peripheral_aresetn),
        .s_axi_arid(axi_interconnect_0_m00_axi_ARID),
        .s_axi_arlen(axi_interconnect_0_m00_axi_ARLEN),
        .s_axi_arlock(axi_interconnect_0_m00_axi_ARLOCK),
        .s_axi_arprot(axi_interconnect_0_m00_axi_ARPROT),
        .s_axi_arready(axi_interconnect_0_m00_axi_ARREADY),
        .s_axi_arsize(axi_interconnect_0_m00_axi_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_m00_axi_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_m00_axi_AWADDR),
        .s_axi_awburst(axi_interconnect_0_m00_axi_AWBURST),
        .s_axi_awcache(axi_interconnect_0_m00_axi_AWCACHE),
        .s_axi_awid(axi_interconnect_0_m00_axi_AWID),
        .s_axi_awlen(axi_interconnect_0_m00_axi_AWLEN),
        .s_axi_awlock(axi_interconnect_0_m00_axi_AWLOCK),
        .s_axi_awprot(axi_interconnect_0_m00_axi_AWPROT),
        .s_axi_awready(axi_interconnect_0_m00_axi_AWREADY),
        .s_axi_awsize(axi_interconnect_0_m00_axi_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_m00_axi_AWVALID),
        .s_axi_bid(axi_interconnect_0_m00_axi_BID),
        .s_axi_bready(axi_interconnect_0_m00_axi_BREADY),
        .s_axi_bresp(axi_interconnect_0_m00_axi_BRESP),
        .s_axi_bvalid(axi_interconnect_0_m00_axi_BVALID),
        .s_axi_rdata(axi_interconnect_0_m00_axi_RDATA),
        .s_axi_rid(axi_interconnect_0_m00_axi_RID),
        .s_axi_rlast(axi_interconnect_0_m00_axi_RLAST),
        .s_axi_rready(axi_interconnect_0_m00_axi_RREADY),
        .s_axi_rresp(axi_interconnect_0_m00_axi_RRESP),
        .s_axi_rvalid(axi_interconnect_0_m00_axi_RVALID),
        .s_axi_wdata(axi_interconnect_0_m00_axi_WDATA),
        .s_axi_wlast(axi_interconnect_0_m00_axi_WLAST),
        .s_axi_wready(axi_interconnect_0_m00_axi_WREADY),
        .s_axi_wstrb(axi_interconnect_0_m00_axi_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_m00_axi_WVALID));
endmodule

module blkB_imp_1YPFKY
   (S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    s_axi_aclk,
    s_axi_aresetn);
  input [16:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input s_axi_aclk;
  input [0:0]s_axi_aresetn;

  wire [16:0]axi_bram_ctrl_0_bram_porta_ADDR;
  wire axi_bram_ctrl_0_bram_porta_CLK;
  wire [31:0]axi_bram_ctrl_0_bram_porta_DIN;
  wire [31:0]axi_bram_ctrl_0_bram_porta_DOUT;
  wire axi_bram_ctrl_0_bram_porta_EN;
  wire [3:0]axi_bram_ctrl_0_bram_porta_WE;
  wire [16:0]axi_interconnect_0_m00_axi_ARADDR;
  wire [1:0]axi_interconnect_0_m00_axi_ARBURST;
  wire [3:0]axi_interconnect_0_m00_axi_ARCACHE;
  wire [2:0]axi_interconnect_0_m00_axi_ARID;
  wire [7:0]axi_interconnect_0_m00_axi_ARLEN;
  wire [0:0]axi_interconnect_0_m00_axi_ARLOCK;
  wire [2:0]axi_interconnect_0_m00_axi_ARPROT;
  wire axi_interconnect_0_m00_axi_ARREADY;
  wire [2:0]axi_interconnect_0_m00_axi_ARSIZE;
  wire [0:0]axi_interconnect_0_m00_axi_ARVALID;
  wire [16:0]axi_interconnect_0_m00_axi_AWADDR;
  wire [1:0]axi_interconnect_0_m00_axi_AWBURST;
  wire [3:0]axi_interconnect_0_m00_axi_AWCACHE;
  wire [2:0]axi_interconnect_0_m00_axi_AWID;
  wire [7:0]axi_interconnect_0_m00_axi_AWLEN;
  wire [0:0]axi_interconnect_0_m00_axi_AWLOCK;
  wire [2:0]axi_interconnect_0_m00_axi_AWPROT;
  wire axi_interconnect_0_m00_axi_AWREADY;
  wire [2:0]axi_interconnect_0_m00_axi_AWSIZE;
  wire [0:0]axi_interconnect_0_m00_axi_AWVALID;
  wire [2:0]axi_interconnect_0_m00_axi_BID;
  wire [0:0]axi_interconnect_0_m00_axi_BREADY;
  wire [1:0]axi_interconnect_0_m00_axi_BRESP;
  wire axi_interconnect_0_m00_axi_BVALID;
  wire [31:0]axi_interconnect_0_m00_axi_RDATA;
  wire [2:0]axi_interconnect_0_m00_axi_RID;
  wire axi_interconnect_0_m00_axi_RLAST;
  wire [0:0]axi_interconnect_0_m00_axi_RREADY;
  wire [1:0]axi_interconnect_0_m00_axi_RRESP;
  wire axi_interconnect_0_m00_axi_RVALID;
  wire [31:0]axi_interconnect_0_m00_axi_WDATA;
  wire [0:0]axi_interconnect_0_m00_axi_WLAST;
  wire axi_interconnect_0_m00_axi_WREADY;
  wire [3:0]axi_interconnect_0_m00_axi_WSTRB;
  wire [0:0]axi_interconnect_0_m00_axi_WVALID;
  wire [0:0]proc_sys_reset_peripheral_aresetn;
  wire processing_system7_0_fclk_clk0;

  assign S_AXI_arready[0] = axi_interconnect_0_m00_axi_ARREADY;
  assign S_AXI_awready[0] = axi_interconnect_0_m00_axi_AWREADY;
  assign S_AXI_bid[2:0] = axi_interconnect_0_m00_axi_BID;
  assign S_AXI_bresp[1:0] = axi_interconnect_0_m00_axi_BRESP;
  assign S_AXI_bvalid[0] = axi_interconnect_0_m00_axi_BVALID;
  assign S_AXI_rdata[31:0] = axi_interconnect_0_m00_axi_RDATA;
  assign S_AXI_rid[2:0] = axi_interconnect_0_m00_axi_RID;
  assign S_AXI_rlast[0] = axi_interconnect_0_m00_axi_RLAST;
  assign S_AXI_rresp[1:0] = axi_interconnect_0_m00_axi_RRESP;
  assign S_AXI_rvalid[0] = axi_interconnect_0_m00_axi_RVALID;
  assign S_AXI_wready[0] = axi_interconnect_0_m00_axi_WREADY;
  assign axi_interconnect_0_m00_axi_ARADDR = S_AXI_araddr[16:0];
  assign axi_interconnect_0_m00_axi_ARBURST = S_AXI_arburst[1:0];
  assign axi_interconnect_0_m00_axi_ARCACHE = S_AXI_arcache[3:0];
  assign axi_interconnect_0_m00_axi_ARID = S_AXI_arid[2:0];
  assign axi_interconnect_0_m00_axi_ARLEN = S_AXI_arlen[7:0];
  assign axi_interconnect_0_m00_axi_ARLOCK = S_AXI_arlock[0];
  assign axi_interconnect_0_m00_axi_ARPROT = S_AXI_arprot[2:0];
  assign axi_interconnect_0_m00_axi_ARSIZE = S_AXI_arsize[2:0];
  assign axi_interconnect_0_m00_axi_ARVALID = S_AXI_arvalid[0];
  assign axi_interconnect_0_m00_axi_AWADDR = S_AXI_awaddr[16:0];
  assign axi_interconnect_0_m00_axi_AWBURST = S_AXI_awburst[1:0];
  assign axi_interconnect_0_m00_axi_AWCACHE = S_AXI_awcache[3:0];
  assign axi_interconnect_0_m00_axi_AWID = S_AXI_awid[2:0];
  assign axi_interconnect_0_m00_axi_AWLEN = S_AXI_awlen[7:0];
  assign axi_interconnect_0_m00_axi_AWLOCK = S_AXI_awlock[0];
  assign axi_interconnect_0_m00_axi_AWPROT = S_AXI_awprot[2:0];
  assign axi_interconnect_0_m00_axi_AWSIZE = S_AXI_awsize[2:0];
  assign axi_interconnect_0_m00_axi_AWVALID = S_AXI_awvalid[0];
  assign axi_interconnect_0_m00_axi_BREADY = S_AXI_bready[0];
  assign axi_interconnect_0_m00_axi_RREADY = S_AXI_rready[0];
  assign axi_interconnect_0_m00_axi_WDATA = S_AXI_wdata[31:0];
  assign axi_interconnect_0_m00_axi_WLAST = S_AXI_wlast[0];
  assign axi_interconnect_0_m00_axi_WSTRB = S_AXI_wstrb[3:0];
  assign axi_interconnect_0_m00_axi_WVALID = S_AXI_wvalid[0];
  assign proc_sys_reset_peripheral_aresetn = s_axi_aresetn[0];
  assign processing_system7_0_fclk_clk0 = s_axi_aclk;
dma3_blk_mem_gen_inblk_3 blk_mem_gen_inblk
       (.addra(axi_bram_ctrl_0_bram_porta_ADDR[15:0]),
        .clka(axi_bram_ctrl_0_bram_porta_CLK),
        .dina(axi_bram_ctrl_0_bram_porta_DIN),
        .douta(axi_bram_ctrl_0_bram_porta_DOUT),
        .ena(axi_bram_ctrl_0_bram_porta_EN),
        .wea(axi_bram_ctrl_0_bram_porta_WE[0]));
dma3_bram_ctrl_in_blk_2 bram_ctrl_in_blk
       (.bram_addr_a(axi_bram_ctrl_0_bram_porta_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_bram_porta_CLK),
        .bram_en_a(axi_bram_ctrl_0_bram_porta_EN),
        .bram_rddata_a(axi_bram_ctrl_0_bram_porta_DOUT),
        .bram_we_a(axi_bram_ctrl_0_bram_porta_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_bram_porta_DIN),
        .s_axi_aclk(processing_system7_0_fclk_clk0),
        .s_axi_araddr(axi_interconnect_0_m00_axi_ARADDR),
        .s_axi_arburst(axi_interconnect_0_m00_axi_ARBURST),
        .s_axi_arcache(axi_interconnect_0_m00_axi_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_peripheral_aresetn),
        .s_axi_arid(axi_interconnect_0_m00_axi_ARID),
        .s_axi_arlen(axi_interconnect_0_m00_axi_ARLEN),
        .s_axi_arlock(axi_interconnect_0_m00_axi_ARLOCK),
        .s_axi_arprot(axi_interconnect_0_m00_axi_ARPROT),
        .s_axi_arready(axi_interconnect_0_m00_axi_ARREADY),
        .s_axi_arsize(axi_interconnect_0_m00_axi_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_m00_axi_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_m00_axi_AWADDR),
        .s_axi_awburst(axi_interconnect_0_m00_axi_AWBURST),
        .s_axi_awcache(axi_interconnect_0_m00_axi_AWCACHE),
        .s_axi_awid(axi_interconnect_0_m00_axi_AWID),
        .s_axi_awlen(axi_interconnect_0_m00_axi_AWLEN),
        .s_axi_awlock(axi_interconnect_0_m00_axi_AWLOCK),
        .s_axi_awprot(axi_interconnect_0_m00_axi_AWPROT),
        .s_axi_awready(axi_interconnect_0_m00_axi_AWREADY),
        .s_axi_awsize(axi_interconnect_0_m00_axi_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_m00_axi_AWVALID),
        .s_axi_bid(axi_interconnect_0_m00_axi_BID),
        .s_axi_bready(axi_interconnect_0_m00_axi_BREADY),
        .s_axi_bresp(axi_interconnect_0_m00_axi_BRESP),
        .s_axi_bvalid(axi_interconnect_0_m00_axi_BVALID),
        .s_axi_rdata(axi_interconnect_0_m00_axi_RDATA),
        .s_axi_rid(axi_interconnect_0_m00_axi_RID),
        .s_axi_rlast(axi_interconnect_0_m00_axi_RLAST),
        .s_axi_rready(axi_interconnect_0_m00_axi_RREADY),
        .s_axi_rresp(axi_interconnect_0_m00_axi_RRESP),
        .s_axi_rvalid(axi_interconnect_0_m00_axi_RVALID),
        .s_axi_wdata(axi_interconnect_0_m00_axi_WDATA),
        .s_axi_wlast(axi_interconnect_0_m00_axi_WLAST),
        .s_axi_wready(axi_interconnect_0_m00_axi_WREADY),
        .s_axi_wstrb(axi_interconnect_0_m00_axi_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_m00_axi_WVALID));
endmodule

module bmm0_imp_18Z5EUT
   (ACLK,
    ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S_AXI_CONTROL_araddr,
    S_AXI_CONTROL_arready,
    S_AXI_CONTROL_arvalid,
    S_AXI_CONTROL_awaddr,
    S_AXI_CONTROL_awready,
    S_AXI_CONTROL_awvalid,
    S_AXI_CONTROL_bready,
    S_AXI_CONTROL_bresp,
    S_AXI_CONTROL_bvalid,
    S_AXI_CONTROL_rdata,
    S_AXI_CONTROL_rready,
    S_AXI_CONTROL_rresp,
    S_AXI_CONTROL_rvalid,
    S_AXI_CONTROL_wdata,
    S_AXI_CONTROL_wready,
    S_AXI_CONTROL_wstrb,
    S_AXI_CONTROL_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output [0:0]S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input [0:0]S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output [0:0]S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input [0:0]S01_AXI_awvalid;
  input [0:0]S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output [0:0]S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  output [0:0]S01_AXI_rlast;
  input [0:0]S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output [0:0]S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  input [0:0]S01_AXI_wlast;
  output [0:0]S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input [0:0]S01_AXI_wvalid;
  input [4:0]S_AXI_CONTROL_araddr;
  output S_AXI_CONTROL_arready;
  input S_AXI_CONTROL_arvalid;
  input [4:0]S_AXI_CONTROL_awaddr;
  output S_AXI_CONTROL_awready;
  input S_AXI_CONTROL_awvalid;
  input S_AXI_CONTROL_bready;
  output [1:0]S_AXI_CONTROL_bresp;
  output S_AXI_CONTROL_bvalid;
  output [31:0]S_AXI_CONTROL_rdata;
  input S_AXI_CONTROL_rready;
  output [1:0]S_AXI_CONTROL_rresp;
  output S_AXI_CONTROL_rvalid;
  input [31:0]S_AXI_CONTROL_wdata;
  output S_AXI_CONTROL_wready;
  input [3:0]S_AXI_CONTROL_wstrb;
  input S_AXI_CONTROL_wvalid;

  wire [16:0]axi_interconnect_0_m00_axi_ARADDR;
  wire [1:0]axi_interconnect_0_m00_axi_ARBURST;
  wire [3:0]axi_interconnect_0_m00_axi_ARCACHE;
  wire [2:0]axi_interconnect_0_m00_axi_ARID;
  wire [7:0]axi_interconnect_0_m00_axi_ARLEN;
  wire [0:0]axi_interconnect_0_m00_axi_ARLOCK;
  wire [2:0]axi_interconnect_0_m00_axi_ARPROT;
  wire [0:0]axi_interconnect_0_m00_axi_ARREADY;
  wire [2:0]axi_interconnect_0_m00_axi_ARSIZE;
  wire [0:0]axi_interconnect_0_m00_axi_ARVALID;
  wire [16:0]axi_interconnect_0_m00_axi_AWADDR;
  wire [1:0]axi_interconnect_0_m00_axi_AWBURST;
  wire [3:0]axi_interconnect_0_m00_axi_AWCACHE;
  wire [2:0]axi_interconnect_0_m00_axi_AWID;
  wire [7:0]axi_interconnect_0_m00_axi_AWLEN;
  wire [0:0]axi_interconnect_0_m00_axi_AWLOCK;
  wire [2:0]axi_interconnect_0_m00_axi_AWPROT;
  wire [0:0]axi_interconnect_0_m00_axi_AWREADY;
  wire [2:0]axi_interconnect_0_m00_axi_AWSIZE;
  wire [0:0]axi_interconnect_0_m00_axi_AWVALID;
  wire [2:0]axi_interconnect_0_m00_axi_BID;
  wire [0:0]axi_interconnect_0_m00_axi_BREADY;
  wire [1:0]axi_interconnect_0_m00_axi_BRESP;
  wire [0:0]axi_interconnect_0_m00_axi_BVALID;
  wire [31:0]axi_interconnect_0_m00_axi_RDATA;
  wire [2:0]axi_interconnect_0_m00_axi_RID;
  wire [0:0]axi_interconnect_0_m00_axi_RLAST;
  wire [0:0]axi_interconnect_0_m00_axi_RREADY;
  wire [1:0]axi_interconnect_0_m00_axi_RRESP;
  wire [0:0]axi_interconnect_0_m00_axi_RVALID;
  wire [31:0]axi_interconnect_0_m00_axi_WDATA;
  wire [0:0]axi_interconnect_0_m00_axi_WLAST;
  wire [0:0]axi_interconnect_0_m00_axi_WREADY;
  wire [3:0]axi_interconnect_0_m00_axi_WSTRB;
  wire [0:0]axi_interconnect_0_m00_axi_WVALID;
  wire [16:0]axi_interconnect_0_m01_axi_ARADDR;
  wire [1:0]axi_interconnect_0_m01_axi_ARBURST;
  wire [3:0]axi_interconnect_0_m01_axi_ARCACHE;
  wire [2:0]axi_interconnect_0_m01_axi_ARID;
  wire [7:0]axi_interconnect_0_m01_axi_ARLEN;
  wire [0:0]axi_interconnect_0_m01_axi_ARLOCK;
  wire [2:0]axi_interconnect_0_m01_axi_ARPROT;
  wire [0:0]axi_interconnect_0_m01_axi_ARREADY;
  wire [2:0]axi_interconnect_0_m01_axi_ARSIZE;
  wire [0:0]axi_interconnect_0_m01_axi_ARVALID;
  wire [16:0]axi_interconnect_0_m01_axi_AWADDR;
  wire [1:0]axi_interconnect_0_m01_axi_AWBURST;
  wire [3:0]axi_interconnect_0_m01_axi_AWCACHE;
  wire [2:0]axi_interconnect_0_m01_axi_AWID;
  wire [7:0]axi_interconnect_0_m01_axi_AWLEN;
  wire [0:0]axi_interconnect_0_m01_axi_AWLOCK;
  wire [2:0]axi_interconnect_0_m01_axi_AWPROT;
  wire [0:0]axi_interconnect_0_m01_axi_AWREADY;
  wire [2:0]axi_interconnect_0_m01_axi_AWSIZE;
  wire [0:0]axi_interconnect_0_m01_axi_AWVALID;
  wire [2:0]axi_interconnect_0_m01_axi_BID;
  wire [0:0]axi_interconnect_0_m01_axi_BREADY;
  wire [1:0]axi_interconnect_0_m01_axi_BRESP;
  wire [0:0]axi_interconnect_0_m01_axi_BVALID;
  wire [31:0]axi_interconnect_0_m01_axi_RDATA;
  wire [2:0]axi_interconnect_0_m01_axi_RID;
  wire [0:0]axi_interconnect_0_m01_axi_RLAST;
  wire [0:0]axi_interconnect_0_m01_axi_RREADY;
  wire [1:0]axi_interconnect_0_m01_axi_RRESP;
  wire [0:0]axi_interconnect_0_m01_axi_RVALID;
  wire [31:0]axi_interconnect_0_m01_axi_WDATA;
  wire [0:0]axi_interconnect_0_m01_axi_WLAST;
  wire [0:0]axi_interconnect_0_m01_axi_WREADY;
  wire [3:0]axi_interconnect_0_m01_axi_WSTRB;
  wire [0:0]axi_interconnect_0_m01_axi_WVALID;
  wire [31:0]axi_mem_intercon_m01_axi_ARADDR;
  wire [1:0]axi_mem_intercon_m01_axi_ARBURST;
  wire [3:0]axi_mem_intercon_m01_axi_ARCACHE;
  wire [7:0]axi_mem_intercon_m01_axi_ARLEN;
  wire [0:0]axi_mem_intercon_m01_axi_ARLOCK;
  wire [2:0]axi_mem_intercon_m01_axi_ARPROT;
  wire [3:0]axi_mem_intercon_m01_axi_ARQOS;
  wire [0:0]axi_mem_intercon_m01_axi_ARREADY;
  wire [2:0]axi_mem_intercon_m01_axi_ARSIZE;
  wire [0:0]axi_mem_intercon_m01_axi_ARVALID;
  wire [31:0]axi_mem_intercon_m01_axi_AWADDR;
  wire [1:0]axi_mem_intercon_m01_axi_AWBURST;
  wire [3:0]axi_mem_intercon_m01_axi_AWCACHE;
  wire [7:0]axi_mem_intercon_m01_axi_AWLEN;
  wire [0:0]axi_mem_intercon_m01_axi_AWLOCK;
  wire [2:0]axi_mem_intercon_m01_axi_AWPROT;
  wire [3:0]axi_mem_intercon_m01_axi_AWQOS;
  wire [0:0]axi_mem_intercon_m01_axi_AWREADY;
  wire [2:0]axi_mem_intercon_m01_axi_AWSIZE;
  wire [0:0]axi_mem_intercon_m01_axi_AWVALID;
  wire [0:0]axi_mem_intercon_m01_axi_BREADY;
  wire [1:0]axi_mem_intercon_m01_axi_BRESP;
  wire [0:0]axi_mem_intercon_m01_axi_BVALID;
  wire [31:0]axi_mem_intercon_m01_axi_RDATA;
  wire [0:0]axi_mem_intercon_m01_axi_RLAST;
  wire [0:0]axi_mem_intercon_m01_axi_RREADY;
  wire [1:0]axi_mem_intercon_m01_axi_RRESP;
  wire [0:0]axi_mem_intercon_m01_axi_RVALID;
  wire [31:0]axi_mem_intercon_m01_axi_WDATA;
  wire [0:0]axi_mem_intercon_m01_axi_WLAST;
  wire [0:0]axi_mem_intercon_m01_axi_WREADY;
  wire [3:0]axi_mem_intercon_m01_axi_WSTRB;
  wire [0:0]axi_mem_intercon_m01_axi_WVALID;
  wire [16:0]bmm_bram_cdma_intercon_m02_axi_ARADDR;
  wire [1:0]bmm_bram_cdma_intercon_m02_axi_ARBURST;
  wire [3:0]bmm_bram_cdma_intercon_m02_axi_ARCACHE;
  wire [2:0]bmm_bram_cdma_intercon_m02_axi_ARID;
  wire [7:0]bmm_bram_cdma_intercon_m02_axi_ARLEN;
  wire [0:0]bmm_bram_cdma_intercon_m02_axi_ARLOCK;
  wire [2:0]bmm_bram_cdma_intercon_m02_axi_ARPROT;
  wire [0:0]bmm_bram_cdma_intercon_m02_axi_ARREADY;
  wire [2:0]bmm_bram_cdma_intercon_m02_axi_ARSIZE;
  wire [0:0]bmm_bram_cdma_intercon_m02_axi_ARVALID;
  wire [16:0]bmm_bram_cdma_intercon_m02_axi_AWADDR;
  wire [1:0]bmm_bram_cdma_intercon_m02_axi_AWBURST;
  wire [3:0]bmm_bram_cdma_intercon_m02_axi_AWCACHE;
  wire [2:0]bmm_bram_cdma_intercon_m02_axi_AWID;
  wire [7:0]bmm_bram_cdma_intercon_m02_axi_AWLEN;
  wire [0:0]bmm_bram_cdma_intercon_m02_axi_AWLOCK;
  wire [2:0]bmm_bram_cdma_intercon_m02_axi_AWPROT;
  wire [0:0]bmm_bram_cdma_intercon_m02_axi_AWREADY;
  wire [2:0]bmm_bram_cdma_intercon_m02_axi_AWSIZE;
  wire [0:0]bmm_bram_cdma_intercon_m02_axi_AWVALID;
  wire [2:0]bmm_bram_cdma_intercon_m02_axi_BID;
  wire [0:0]bmm_bram_cdma_intercon_m02_axi_BREADY;
  wire [1:0]bmm_bram_cdma_intercon_m02_axi_BRESP;
  wire [0:0]bmm_bram_cdma_intercon_m02_axi_BVALID;
  wire [31:0]bmm_bram_cdma_intercon_m02_axi_RDATA;
  wire [2:0]bmm_bram_cdma_intercon_m02_axi_RID;
  wire [0:0]bmm_bram_cdma_intercon_m02_axi_RLAST;
  wire [0:0]bmm_bram_cdma_intercon_m02_axi_RREADY;
  wire [1:0]bmm_bram_cdma_intercon_m02_axi_RRESP;
  wire [0:0]bmm_bram_cdma_intercon_m02_axi_RVALID;
  wire [31:0]bmm_bram_cdma_intercon_m02_axi_WDATA;
  wire [0:0]bmm_bram_cdma_intercon_m02_axi_WLAST;
  wire [0:0]bmm_bram_cdma_intercon_m02_axi_WREADY;
  wire [3:0]bmm_bram_cdma_intercon_m02_axi_WSTRB;
  wire [0:0]bmm_bram_cdma_intercon_m02_axi_WVALID;
  wire [31:0]bmm_top_0_m_axi_b1_ARADDR;
  wire [1:0]bmm_top_0_m_axi_b1_ARBURST;
  wire [3:0]bmm_top_0_m_axi_b1_ARCACHE;
  wire [0:0]bmm_top_0_m_axi_b1_ARID;
  wire [7:0]bmm_top_0_m_axi_b1_ARLEN;
  wire [1:0]bmm_top_0_m_axi_b1_ARLOCK;
  wire [2:0]bmm_top_0_m_axi_b1_ARPROT;
  wire [3:0]bmm_top_0_m_axi_b1_ARQOS;
  wire [0:0]bmm_top_0_m_axi_b1_ARREADY;
  wire [2:0]bmm_top_0_m_axi_b1_ARSIZE;
  wire [0:0]bmm_top_0_m_axi_b1_ARUSER;
  wire bmm_top_0_m_axi_b1_ARVALID;
  wire [31:0]bmm_top_0_m_axi_b1_AWADDR;
  wire [1:0]bmm_top_0_m_axi_b1_AWBURST;
  wire [3:0]bmm_top_0_m_axi_b1_AWCACHE;
  wire [0:0]bmm_top_0_m_axi_b1_AWID;
  wire [7:0]bmm_top_0_m_axi_b1_AWLEN;
  wire [1:0]bmm_top_0_m_axi_b1_AWLOCK;
  wire [2:0]bmm_top_0_m_axi_b1_AWPROT;
  wire [3:0]bmm_top_0_m_axi_b1_AWQOS;
  wire [0:0]bmm_top_0_m_axi_b1_AWREADY;
  wire [2:0]bmm_top_0_m_axi_b1_AWSIZE;
  wire [0:0]bmm_top_0_m_axi_b1_AWUSER;
  wire bmm_top_0_m_axi_b1_AWVALID;
  wire [0:0]bmm_top_0_m_axi_b1_BID;
  wire bmm_top_0_m_axi_b1_BREADY;
  wire [1:0]bmm_top_0_m_axi_b1_BRESP;
  wire [0:0]bmm_top_0_m_axi_b1_BUSER;
  wire [0:0]bmm_top_0_m_axi_b1_BVALID;
  wire [31:0]bmm_top_0_m_axi_b1_RDATA;
  wire [0:0]bmm_top_0_m_axi_b1_RID;
  wire [0:0]bmm_top_0_m_axi_b1_RLAST;
  wire bmm_top_0_m_axi_b1_RREADY;
  wire [1:0]bmm_top_0_m_axi_b1_RRESP;
  wire [0:0]bmm_top_0_m_axi_b1_RUSER;
  wire [0:0]bmm_top_0_m_axi_b1_RVALID;
  wire [31:0]bmm_top_0_m_axi_b1_WDATA;
  wire bmm_top_0_m_axi_b1_WLAST;
  wire [0:0]bmm_top_0_m_axi_b1_WREADY;
  wire [3:0]bmm_top_0_m_axi_b1_WSTRB;
  wire [0:0]bmm_top_0_m_axi_b1_WUSER;
  wire bmm_top_0_m_axi_b1_WVALID;
  wire [31:0]bmm_top_0_m_axi_b2_ARADDR;
  wire [1:0]bmm_top_0_m_axi_b2_ARBURST;
  wire [3:0]bmm_top_0_m_axi_b2_ARCACHE;
  wire [0:0]bmm_top_0_m_axi_b2_ARID;
  wire [7:0]bmm_top_0_m_axi_b2_ARLEN;
  wire [1:0]bmm_top_0_m_axi_b2_ARLOCK;
  wire [2:0]bmm_top_0_m_axi_b2_ARPROT;
  wire [3:0]bmm_top_0_m_axi_b2_ARQOS;
  wire [0:0]bmm_top_0_m_axi_b2_ARREADY;
  wire [2:0]bmm_top_0_m_axi_b2_ARSIZE;
  wire [0:0]bmm_top_0_m_axi_b2_ARUSER;
  wire bmm_top_0_m_axi_b2_ARVALID;
  wire [31:0]bmm_top_0_m_axi_b2_AWADDR;
  wire [1:0]bmm_top_0_m_axi_b2_AWBURST;
  wire [3:0]bmm_top_0_m_axi_b2_AWCACHE;
  wire [0:0]bmm_top_0_m_axi_b2_AWID;
  wire [7:0]bmm_top_0_m_axi_b2_AWLEN;
  wire [1:0]bmm_top_0_m_axi_b2_AWLOCK;
  wire [2:0]bmm_top_0_m_axi_b2_AWPROT;
  wire [3:0]bmm_top_0_m_axi_b2_AWQOS;
  wire [0:0]bmm_top_0_m_axi_b2_AWREADY;
  wire [2:0]bmm_top_0_m_axi_b2_AWSIZE;
  wire [0:0]bmm_top_0_m_axi_b2_AWUSER;
  wire bmm_top_0_m_axi_b2_AWVALID;
  wire [0:0]bmm_top_0_m_axi_b2_BID;
  wire bmm_top_0_m_axi_b2_BREADY;
  wire [1:0]bmm_top_0_m_axi_b2_BRESP;
  wire [0:0]bmm_top_0_m_axi_b2_BUSER;
  wire [0:0]bmm_top_0_m_axi_b2_BVALID;
  wire [31:0]bmm_top_0_m_axi_b2_RDATA;
  wire [0:0]bmm_top_0_m_axi_b2_RID;
  wire [0:0]bmm_top_0_m_axi_b2_RLAST;
  wire bmm_top_0_m_axi_b2_RREADY;
  wire [1:0]bmm_top_0_m_axi_b2_RRESP;
  wire [0:0]bmm_top_0_m_axi_b2_RUSER;
  wire [0:0]bmm_top_0_m_axi_b2_RVALID;
  wire [31:0]bmm_top_0_m_axi_b2_WDATA;
  wire bmm_top_0_m_axi_b2_WLAST;
  wire [0:0]bmm_top_0_m_axi_b2_WREADY;
  wire [3:0]bmm_top_0_m_axi_b2_WSTRB;
  wire [0:0]bmm_top_0_m_axi_b2_WUSER;
  wire bmm_top_0_m_axi_b2_WVALID;
  wire [31:0]bmm_top_0_m_axi_b3_ARADDR;
  wire [1:0]bmm_top_0_m_axi_b3_ARBURST;
  wire [3:0]bmm_top_0_m_axi_b3_ARCACHE;
  wire [0:0]bmm_top_0_m_axi_b3_ARID;
  wire [7:0]bmm_top_0_m_axi_b3_ARLEN;
  wire [1:0]bmm_top_0_m_axi_b3_ARLOCK;
  wire [2:0]bmm_top_0_m_axi_b3_ARPROT;
  wire [3:0]bmm_top_0_m_axi_b3_ARQOS;
  wire [0:0]bmm_top_0_m_axi_b3_ARREADY;
  wire [2:0]bmm_top_0_m_axi_b3_ARSIZE;
  wire [0:0]bmm_top_0_m_axi_b3_ARUSER;
  wire bmm_top_0_m_axi_b3_ARVALID;
  wire [31:0]bmm_top_0_m_axi_b3_AWADDR;
  wire [1:0]bmm_top_0_m_axi_b3_AWBURST;
  wire [3:0]bmm_top_0_m_axi_b3_AWCACHE;
  wire [0:0]bmm_top_0_m_axi_b3_AWID;
  wire [7:0]bmm_top_0_m_axi_b3_AWLEN;
  wire [1:0]bmm_top_0_m_axi_b3_AWLOCK;
  wire [2:0]bmm_top_0_m_axi_b3_AWPROT;
  wire [3:0]bmm_top_0_m_axi_b3_AWQOS;
  wire [0:0]bmm_top_0_m_axi_b3_AWREADY;
  wire [2:0]bmm_top_0_m_axi_b3_AWSIZE;
  wire [0:0]bmm_top_0_m_axi_b3_AWUSER;
  wire bmm_top_0_m_axi_b3_AWVALID;
  wire [0:0]bmm_top_0_m_axi_b3_BID;
  wire bmm_top_0_m_axi_b3_BREADY;
  wire [1:0]bmm_top_0_m_axi_b3_BRESP;
  wire [0:0]bmm_top_0_m_axi_b3_BUSER;
  wire [0:0]bmm_top_0_m_axi_b3_BVALID;
  wire [31:0]bmm_top_0_m_axi_b3_RDATA;
  wire [0:0]bmm_top_0_m_axi_b3_RID;
  wire [0:0]bmm_top_0_m_axi_b3_RLAST;
  wire bmm_top_0_m_axi_b3_RREADY;
  wire [1:0]bmm_top_0_m_axi_b3_RRESP;
  wire [0:0]bmm_top_0_m_axi_b3_RUSER;
  wire [0:0]bmm_top_0_m_axi_b3_RVALID;
  wire [31:0]bmm_top_0_m_axi_b3_WDATA;
  wire bmm_top_0_m_axi_b3_WLAST;
  wire [0:0]bmm_top_0_m_axi_b3_WREADY;
  wire [3:0]bmm_top_0_m_axi_b3_WSTRB;
  wire [0:0]bmm_top_0_m_axi_b3_WUSER;
  wire bmm_top_0_m_axi_b3_WVALID;
  wire [4:0]ctrl_axilite_intercon_m01_axi_ARADDR;
  wire ctrl_axilite_intercon_m01_axi_ARREADY;
  wire ctrl_axilite_intercon_m01_axi_ARVALID;
  wire [4:0]ctrl_axilite_intercon_m01_axi_AWADDR;
  wire ctrl_axilite_intercon_m01_axi_AWREADY;
  wire ctrl_axilite_intercon_m01_axi_AWVALID;
  wire ctrl_axilite_intercon_m01_axi_BREADY;
  wire [1:0]ctrl_axilite_intercon_m01_axi_BRESP;
  wire ctrl_axilite_intercon_m01_axi_BVALID;
  wire [31:0]ctrl_axilite_intercon_m01_axi_RDATA;
  wire ctrl_axilite_intercon_m01_axi_RREADY;
  wire [1:0]ctrl_axilite_intercon_m01_axi_RRESP;
  wire ctrl_axilite_intercon_m01_axi_RVALID;
  wire [31:0]ctrl_axilite_intercon_m01_axi_WDATA;
  wire ctrl_axilite_intercon_m01_axi_WREADY;
  wire [3:0]ctrl_axilite_intercon_m01_axi_WSTRB;
  wire ctrl_axilite_intercon_m01_axi_WVALID;
  wire [0:0]proc_sys_reset_peripheral_aresetn;
  wire processing_system7_0_fclk_clk0;

  assign S01_AXI_arready[0] = axi_mem_intercon_m01_axi_ARREADY;
  assign S01_AXI_awready[0] = axi_mem_intercon_m01_axi_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_mem_intercon_m01_axi_BRESP;
  assign S01_AXI_bvalid[0] = axi_mem_intercon_m01_axi_BVALID;
  assign S01_AXI_rdata[31:0] = axi_mem_intercon_m01_axi_RDATA;
  assign S01_AXI_rlast[0] = axi_mem_intercon_m01_axi_RLAST;
  assign S01_AXI_rresp[1:0] = axi_mem_intercon_m01_axi_RRESP;
  assign S01_AXI_rvalid[0] = axi_mem_intercon_m01_axi_RVALID;
  assign S01_AXI_wready[0] = axi_mem_intercon_m01_axi_WREADY;
  assign S_AXI_CONTROL_arready = ctrl_axilite_intercon_m01_axi_ARREADY;
  assign S_AXI_CONTROL_awready = ctrl_axilite_intercon_m01_axi_AWREADY;
  assign S_AXI_CONTROL_bresp[1:0] = ctrl_axilite_intercon_m01_axi_BRESP;
  assign S_AXI_CONTROL_bvalid = ctrl_axilite_intercon_m01_axi_BVALID;
  assign S_AXI_CONTROL_rdata[31:0] = ctrl_axilite_intercon_m01_axi_RDATA;
  assign S_AXI_CONTROL_rresp[1:0] = ctrl_axilite_intercon_m01_axi_RRESP;
  assign S_AXI_CONTROL_rvalid = ctrl_axilite_intercon_m01_axi_RVALID;
  assign S_AXI_CONTROL_wready = ctrl_axilite_intercon_m01_axi_WREADY;
  assign axi_mem_intercon_m01_axi_ARADDR = S01_AXI_araddr[31:0];
  assign axi_mem_intercon_m01_axi_ARBURST = S01_AXI_arburst[1:0];
  assign axi_mem_intercon_m01_axi_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_mem_intercon_m01_axi_ARLEN = S01_AXI_arlen[7:0];
  assign axi_mem_intercon_m01_axi_ARLOCK = S01_AXI_arlock[0];
  assign axi_mem_intercon_m01_axi_ARPROT = S01_AXI_arprot[2:0];
  assign axi_mem_intercon_m01_axi_ARQOS = S01_AXI_arqos[3:0];
  assign axi_mem_intercon_m01_axi_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_mem_intercon_m01_axi_ARVALID = S01_AXI_arvalid[0];
  assign axi_mem_intercon_m01_axi_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_mem_intercon_m01_axi_AWBURST = S01_AXI_awburst[1:0];
  assign axi_mem_intercon_m01_axi_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_mem_intercon_m01_axi_AWLEN = S01_AXI_awlen[7:0];
  assign axi_mem_intercon_m01_axi_AWLOCK = S01_AXI_awlock[0];
  assign axi_mem_intercon_m01_axi_AWPROT = S01_AXI_awprot[2:0];
  assign axi_mem_intercon_m01_axi_AWQOS = S01_AXI_awqos[3:0];
  assign axi_mem_intercon_m01_axi_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_mem_intercon_m01_axi_AWVALID = S01_AXI_awvalid[0];
  assign axi_mem_intercon_m01_axi_BREADY = S01_AXI_bready[0];
  assign axi_mem_intercon_m01_axi_RREADY = S01_AXI_rready[0];
  assign axi_mem_intercon_m01_axi_WDATA = S01_AXI_wdata[31:0];
  assign axi_mem_intercon_m01_axi_WLAST = S01_AXI_wlast[0];
  assign axi_mem_intercon_m01_axi_WSTRB = S01_AXI_wstrb[3:0];
  assign axi_mem_intercon_m01_axi_WVALID = S01_AXI_wvalid[0];
  assign ctrl_axilite_intercon_m01_axi_ARADDR = S_AXI_CONTROL_araddr[4:0];
  assign ctrl_axilite_intercon_m01_axi_ARVALID = S_AXI_CONTROL_arvalid;
  assign ctrl_axilite_intercon_m01_axi_AWADDR = S_AXI_CONTROL_awaddr[4:0];
  assign ctrl_axilite_intercon_m01_axi_AWVALID = S_AXI_CONTROL_awvalid;
  assign ctrl_axilite_intercon_m01_axi_BREADY = S_AXI_CONTROL_bready;
  assign ctrl_axilite_intercon_m01_axi_RREADY = S_AXI_CONTROL_rready;
  assign ctrl_axilite_intercon_m01_axi_WDATA = S_AXI_CONTROL_wdata[31:0];
  assign ctrl_axilite_intercon_m01_axi_WSTRB = S_AXI_CONTROL_wstrb[3:0];
  assign ctrl_axilite_intercon_m01_axi_WVALID = S_AXI_CONTROL_wvalid;
  assign proc_sys_reset_peripheral_aresetn = ARESETN[0];
  assign processing_system7_0_fclk_clk0 = ACLK;
blkA_imp_17VD76G blkA
       (.S_AXI_araddr(axi_interconnect_0_m01_axi_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_m01_axi_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_m01_axi_ARCACHE),
        .S_AXI_arid(axi_interconnect_0_m01_axi_ARID),
        .S_AXI_arlen(axi_interconnect_0_m01_axi_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_m01_axi_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_m01_axi_ARPROT),
        .S_AXI_arready(axi_interconnect_0_m01_axi_ARREADY),
        .S_AXI_arsize(axi_interconnect_0_m01_axi_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_m01_axi_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_m01_axi_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_m01_axi_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_m01_axi_AWCACHE),
        .S_AXI_awid(axi_interconnect_0_m01_axi_AWID),
        .S_AXI_awlen(axi_interconnect_0_m01_axi_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_m01_axi_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_m01_axi_AWPROT),
        .S_AXI_awready(axi_interconnect_0_m01_axi_AWREADY),
        .S_AXI_awsize(axi_interconnect_0_m01_axi_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_m01_axi_AWVALID),
        .S_AXI_bid(axi_interconnect_0_m01_axi_BID),
        .S_AXI_bready(axi_interconnect_0_m01_axi_BREADY),
        .S_AXI_bresp(axi_interconnect_0_m01_axi_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_m01_axi_BVALID),
        .S_AXI_rdata(axi_interconnect_0_m01_axi_RDATA),
        .S_AXI_rid(axi_interconnect_0_m01_axi_RID),
        .S_AXI_rlast(axi_interconnect_0_m01_axi_RLAST),
        .S_AXI_rready(axi_interconnect_0_m01_axi_RREADY),
        .S_AXI_rresp(axi_interconnect_0_m01_axi_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_m01_axi_RVALID),
        .S_AXI_wdata(axi_interconnect_0_m01_axi_WDATA),
        .S_AXI_wlast(axi_interconnect_0_m01_axi_WLAST),
        .S_AXI_wready(axi_interconnect_0_m01_axi_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_m01_axi_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_m01_axi_WVALID),
        .s_axi_aclk(processing_system7_0_fclk_clk0),
        .s_axi_aresetn(proc_sys_reset_peripheral_aresetn));
blkAB_imp_1E40C3B blkAB
       (.S_AXI_araddr(axi_interconnect_0_m00_axi_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_m00_axi_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_m00_axi_ARCACHE),
        .S_AXI_arid(axi_interconnect_0_m00_axi_ARID),
        .S_AXI_arlen(axi_interconnect_0_m00_axi_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_m00_axi_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_m00_axi_ARPROT),
        .S_AXI_arready(axi_interconnect_0_m00_axi_ARREADY),
        .S_AXI_arsize(axi_interconnect_0_m00_axi_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_m00_axi_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_m00_axi_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_m00_axi_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_m00_axi_AWCACHE),
        .S_AXI_awid(axi_interconnect_0_m00_axi_AWID),
        .S_AXI_awlen(axi_interconnect_0_m00_axi_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_m00_axi_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_m00_axi_AWPROT),
        .S_AXI_awready(axi_interconnect_0_m00_axi_AWREADY),
        .S_AXI_awsize(axi_interconnect_0_m00_axi_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_m00_axi_AWVALID),
        .S_AXI_bid(axi_interconnect_0_m00_axi_BID),
        .S_AXI_bready(axi_interconnect_0_m00_axi_BREADY),
        .S_AXI_bresp(axi_interconnect_0_m00_axi_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_m00_axi_BVALID),
        .S_AXI_rdata(axi_interconnect_0_m00_axi_RDATA),
        .S_AXI_rid(axi_interconnect_0_m00_axi_RID),
        .S_AXI_rlast(axi_interconnect_0_m00_axi_RLAST),
        .S_AXI_rready(axi_interconnect_0_m00_axi_RREADY),
        .S_AXI_rresp(axi_interconnect_0_m00_axi_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_m00_axi_RVALID),
        .S_AXI_wdata(axi_interconnect_0_m00_axi_WDATA),
        .S_AXI_wlast(axi_interconnect_0_m00_axi_WLAST),
        .S_AXI_wready(axi_interconnect_0_m00_axi_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_m00_axi_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_m00_axi_WVALID),
        .s_axi_aclk(processing_system7_0_fclk_clk0),
        .s_axi_aresetn(proc_sys_reset_peripheral_aresetn));
blkB_imp_1YPFKY blkB
       (.S_AXI_araddr(bmm_bram_cdma_intercon_m02_axi_ARADDR),
        .S_AXI_arburst(bmm_bram_cdma_intercon_m02_axi_ARBURST),
        .S_AXI_arcache(bmm_bram_cdma_intercon_m02_axi_ARCACHE),
        .S_AXI_arid(bmm_bram_cdma_intercon_m02_axi_ARID),
        .S_AXI_arlen(bmm_bram_cdma_intercon_m02_axi_ARLEN),
        .S_AXI_arlock(bmm_bram_cdma_intercon_m02_axi_ARLOCK),
        .S_AXI_arprot(bmm_bram_cdma_intercon_m02_axi_ARPROT),
        .S_AXI_arready(bmm_bram_cdma_intercon_m02_axi_ARREADY),
        .S_AXI_arsize(bmm_bram_cdma_intercon_m02_axi_ARSIZE),
        .S_AXI_arvalid(bmm_bram_cdma_intercon_m02_axi_ARVALID),
        .S_AXI_awaddr(bmm_bram_cdma_intercon_m02_axi_AWADDR),
        .S_AXI_awburst(bmm_bram_cdma_intercon_m02_axi_AWBURST),
        .S_AXI_awcache(bmm_bram_cdma_intercon_m02_axi_AWCACHE),
        .S_AXI_awid(bmm_bram_cdma_intercon_m02_axi_AWID),
        .S_AXI_awlen(bmm_bram_cdma_intercon_m02_axi_AWLEN),
        .S_AXI_awlock(bmm_bram_cdma_intercon_m02_axi_AWLOCK),
        .S_AXI_awprot(bmm_bram_cdma_intercon_m02_axi_AWPROT),
        .S_AXI_awready(bmm_bram_cdma_intercon_m02_axi_AWREADY),
        .S_AXI_awsize(bmm_bram_cdma_intercon_m02_axi_AWSIZE),
        .S_AXI_awvalid(bmm_bram_cdma_intercon_m02_axi_AWVALID),
        .S_AXI_bid(bmm_bram_cdma_intercon_m02_axi_BID),
        .S_AXI_bready(bmm_bram_cdma_intercon_m02_axi_BREADY),
        .S_AXI_bresp(bmm_bram_cdma_intercon_m02_axi_BRESP),
        .S_AXI_bvalid(bmm_bram_cdma_intercon_m02_axi_BVALID),
        .S_AXI_rdata(bmm_bram_cdma_intercon_m02_axi_RDATA),
        .S_AXI_rid(bmm_bram_cdma_intercon_m02_axi_RID),
        .S_AXI_rlast(bmm_bram_cdma_intercon_m02_axi_RLAST),
        .S_AXI_rready(bmm_bram_cdma_intercon_m02_axi_RREADY),
        .S_AXI_rresp(bmm_bram_cdma_intercon_m02_axi_RRESP),
        .S_AXI_rvalid(bmm_bram_cdma_intercon_m02_axi_RVALID),
        .S_AXI_wdata(bmm_bram_cdma_intercon_m02_axi_WDATA),
        .S_AXI_wlast(bmm_bram_cdma_intercon_m02_axi_WLAST),
        .S_AXI_wready(bmm_bram_cdma_intercon_m02_axi_WREADY),
        .S_AXI_wstrb(bmm_bram_cdma_intercon_m02_axi_WSTRB),
        .S_AXI_wvalid(bmm_bram_cdma_intercon_m02_axi_WVALID),
        .s_axi_aclk(processing_system7_0_fclk_clk0),
        .s_axi_aresetn(proc_sys_reset_peripheral_aresetn));
dma3_axi_interconnect_0_6 bmm_bram_cdma_intercon
       (.ACLK(processing_system7_0_fclk_clk0),
        .ARESETN(proc_sys_reset_peripheral_aresetn),
        .M00_ACLK(processing_system7_0_fclk_clk0),
        .M00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_m00_axi_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_m00_axi_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_m00_axi_ARCACHE),
        .M00_AXI_arid(axi_interconnect_0_m00_axi_ARID),
        .M00_AXI_arlen(axi_interconnect_0_m00_axi_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_m00_axi_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_m00_axi_ARPROT),
        .M00_AXI_arready(axi_interconnect_0_m00_axi_ARREADY),
        .M00_AXI_arsize(axi_interconnect_0_m00_axi_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_m00_axi_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_m00_axi_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_m00_axi_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_m00_axi_AWCACHE),
        .M00_AXI_awid(axi_interconnect_0_m00_axi_AWID),
        .M00_AXI_awlen(axi_interconnect_0_m00_axi_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_m00_axi_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_m00_axi_AWPROT),
        .M00_AXI_awready(axi_interconnect_0_m00_axi_AWREADY),
        .M00_AXI_awsize(axi_interconnect_0_m00_axi_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_m00_axi_AWVALID),
        .M00_AXI_bid(axi_interconnect_0_m00_axi_BID),
        .M00_AXI_bready(axi_interconnect_0_m00_axi_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_m00_axi_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_m00_axi_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_m00_axi_RDATA),
        .M00_AXI_rid(axi_interconnect_0_m00_axi_RID),
        .M00_AXI_rlast(axi_interconnect_0_m00_axi_RLAST),
        .M00_AXI_rready(axi_interconnect_0_m00_axi_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_m00_axi_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_m00_axi_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_m00_axi_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_m00_axi_WLAST),
        .M00_AXI_wready(axi_interconnect_0_m00_axi_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_m00_axi_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_m00_axi_WVALID),
        .M01_ACLK(processing_system7_0_fclk_clk0),
        .M01_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_m01_axi_ARADDR),
        .M01_AXI_arburst(axi_interconnect_0_m01_axi_ARBURST),
        .M01_AXI_arcache(axi_interconnect_0_m01_axi_ARCACHE),
        .M01_AXI_arid(axi_interconnect_0_m01_axi_ARID),
        .M01_AXI_arlen(axi_interconnect_0_m01_axi_ARLEN),
        .M01_AXI_arlock(axi_interconnect_0_m01_axi_ARLOCK),
        .M01_AXI_arprot(axi_interconnect_0_m01_axi_ARPROT),
        .M01_AXI_arready(axi_interconnect_0_m01_axi_ARREADY),
        .M01_AXI_arsize(axi_interconnect_0_m01_axi_ARSIZE),
        .M01_AXI_arvalid(axi_interconnect_0_m01_axi_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_m01_axi_AWADDR),
        .M01_AXI_awburst(axi_interconnect_0_m01_axi_AWBURST),
        .M01_AXI_awcache(axi_interconnect_0_m01_axi_AWCACHE),
        .M01_AXI_awid(axi_interconnect_0_m01_axi_AWID),
        .M01_AXI_awlen(axi_interconnect_0_m01_axi_AWLEN),
        .M01_AXI_awlock(axi_interconnect_0_m01_axi_AWLOCK),
        .M01_AXI_awprot(axi_interconnect_0_m01_axi_AWPROT),
        .M01_AXI_awready(axi_interconnect_0_m01_axi_AWREADY),
        .M01_AXI_awsize(axi_interconnect_0_m01_axi_AWSIZE),
        .M01_AXI_awvalid(axi_interconnect_0_m01_axi_AWVALID),
        .M01_AXI_bid(axi_interconnect_0_m01_axi_BID),
        .M01_AXI_bready(axi_interconnect_0_m01_axi_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_m01_axi_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_m01_axi_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_m01_axi_RDATA),
        .M01_AXI_rid(axi_interconnect_0_m01_axi_RID),
        .M01_AXI_rlast(axi_interconnect_0_m01_axi_RLAST),
        .M01_AXI_rready(axi_interconnect_0_m01_axi_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_m01_axi_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_m01_axi_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_m01_axi_WDATA),
        .M01_AXI_wlast(axi_interconnect_0_m01_axi_WLAST),
        .M01_AXI_wready(axi_interconnect_0_m01_axi_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_m01_axi_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_m01_axi_WVALID),
        .M02_ACLK(processing_system7_0_fclk_clk0),
        .M02_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M02_AXI_araddr(bmm_bram_cdma_intercon_m02_axi_ARADDR),
        .M02_AXI_arburst(bmm_bram_cdma_intercon_m02_axi_ARBURST),
        .M02_AXI_arcache(bmm_bram_cdma_intercon_m02_axi_ARCACHE),
        .M02_AXI_arid(bmm_bram_cdma_intercon_m02_axi_ARID),
        .M02_AXI_arlen(bmm_bram_cdma_intercon_m02_axi_ARLEN),
        .M02_AXI_arlock(bmm_bram_cdma_intercon_m02_axi_ARLOCK),
        .M02_AXI_arprot(bmm_bram_cdma_intercon_m02_axi_ARPROT),
        .M02_AXI_arready(bmm_bram_cdma_intercon_m02_axi_ARREADY),
        .M02_AXI_arsize(bmm_bram_cdma_intercon_m02_axi_ARSIZE),
        .M02_AXI_arvalid(bmm_bram_cdma_intercon_m02_axi_ARVALID),
        .M02_AXI_awaddr(bmm_bram_cdma_intercon_m02_axi_AWADDR),
        .M02_AXI_awburst(bmm_bram_cdma_intercon_m02_axi_AWBURST),
        .M02_AXI_awcache(bmm_bram_cdma_intercon_m02_axi_AWCACHE),
        .M02_AXI_awid(bmm_bram_cdma_intercon_m02_axi_AWID),
        .M02_AXI_awlen(bmm_bram_cdma_intercon_m02_axi_AWLEN),
        .M02_AXI_awlock(bmm_bram_cdma_intercon_m02_axi_AWLOCK),
        .M02_AXI_awprot(bmm_bram_cdma_intercon_m02_axi_AWPROT),
        .M02_AXI_awready(bmm_bram_cdma_intercon_m02_axi_AWREADY),
        .M02_AXI_awsize(bmm_bram_cdma_intercon_m02_axi_AWSIZE),
        .M02_AXI_awvalid(bmm_bram_cdma_intercon_m02_axi_AWVALID),
        .M02_AXI_bid(bmm_bram_cdma_intercon_m02_axi_BID),
        .M02_AXI_bready(bmm_bram_cdma_intercon_m02_axi_BREADY),
        .M02_AXI_bresp(bmm_bram_cdma_intercon_m02_axi_BRESP),
        .M02_AXI_bvalid(bmm_bram_cdma_intercon_m02_axi_BVALID),
        .M02_AXI_rdata(bmm_bram_cdma_intercon_m02_axi_RDATA),
        .M02_AXI_rid(bmm_bram_cdma_intercon_m02_axi_RID),
        .M02_AXI_rlast(bmm_bram_cdma_intercon_m02_axi_RLAST),
        .M02_AXI_rready(bmm_bram_cdma_intercon_m02_axi_RREADY),
        .M02_AXI_rresp(bmm_bram_cdma_intercon_m02_axi_RRESP),
        .M02_AXI_rvalid(bmm_bram_cdma_intercon_m02_axi_RVALID),
        .M02_AXI_wdata(bmm_bram_cdma_intercon_m02_axi_WDATA),
        .M02_AXI_wlast(bmm_bram_cdma_intercon_m02_axi_WLAST),
        .M02_AXI_wready(bmm_bram_cdma_intercon_m02_axi_WREADY),
        .M02_AXI_wstrb(bmm_bram_cdma_intercon_m02_axi_WSTRB),
        .M02_AXI_wvalid(bmm_bram_cdma_intercon_m02_axi_WVALID),
        .S00_ACLK(processing_system7_0_fclk_clk0),
        .S00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .S00_AXI_araddr(bmm_top_0_m_axi_b1_ARADDR),
        .S00_AXI_arburst(bmm_top_0_m_axi_b1_ARBURST),
        .S00_AXI_arcache(bmm_top_0_m_axi_b1_ARCACHE),
        .S00_AXI_arid(bmm_top_0_m_axi_b1_ARID),
        .S00_AXI_arlen(bmm_top_0_m_axi_b1_ARLEN),
        .S00_AXI_arlock(bmm_top_0_m_axi_b1_ARLOCK[0]),
        .S00_AXI_arprot(bmm_top_0_m_axi_b1_ARPROT),
        .S00_AXI_arqos(bmm_top_0_m_axi_b1_ARQOS),
        .S00_AXI_arready(bmm_top_0_m_axi_b1_ARREADY),
        .S00_AXI_arsize(bmm_top_0_m_axi_b1_ARSIZE),
        .S00_AXI_aruser(bmm_top_0_m_axi_b1_ARUSER),
        .S00_AXI_arvalid(bmm_top_0_m_axi_b1_ARVALID),
        .S00_AXI_awaddr(bmm_top_0_m_axi_b1_AWADDR),
        .S00_AXI_awburst(bmm_top_0_m_axi_b1_AWBURST),
        .S00_AXI_awcache(bmm_top_0_m_axi_b1_AWCACHE),
        .S00_AXI_awid(bmm_top_0_m_axi_b1_AWID),
        .S00_AXI_awlen(bmm_top_0_m_axi_b1_AWLEN),
        .S00_AXI_awlock(bmm_top_0_m_axi_b1_AWLOCK[0]),
        .S00_AXI_awprot(bmm_top_0_m_axi_b1_AWPROT),
        .S00_AXI_awqos(bmm_top_0_m_axi_b1_AWQOS),
        .S00_AXI_awready(bmm_top_0_m_axi_b1_AWREADY),
        .S00_AXI_awsize(bmm_top_0_m_axi_b1_AWSIZE),
        .S00_AXI_awuser(bmm_top_0_m_axi_b1_AWUSER),
        .S00_AXI_awvalid(bmm_top_0_m_axi_b1_AWVALID),
        .S00_AXI_bid(bmm_top_0_m_axi_b1_BID),
        .S00_AXI_bready(bmm_top_0_m_axi_b1_BREADY),
        .S00_AXI_bresp(bmm_top_0_m_axi_b1_BRESP),
        .S00_AXI_buser(bmm_top_0_m_axi_b1_BUSER),
        .S00_AXI_bvalid(bmm_top_0_m_axi_b1_BVALID),
        .S00_AXI_rdata(bmm_top_0_m_axi_b1_RDATA),
        .S00_AXI_rid(bmm_top_0_m_axi_b1_RID),
        .S00_AXI_rlast(bmm_top_0_m_axi_b1_RLAST),
        .S00_AXI_rready(bmm_top_0_m_axi_b1_RREADY),
        .S00_AXI_rresp(bmm_top_0_m_axi_b1_RRESP),
        .S00_AXI_ruser(bmm_top_0_m_axi_b1_RUSER),
        .S00_AXI_rvalid(bmm_top_0_m_axi_b1_RVALID),
        .S00_AXI_wdata(bmm_top_0_m_axi_b1_WDATA),
        .S00_AXI_wlast(bmm_top_0_m_axi_b1_WLAST),
        .S00_AXI_wready(bmm_top_0_m_axi_b1_WREADY),
        .S00_AXI_wstrb(bmm_top_0_m_axi_b1_WSTRB),
        .S00_AXI_wuser(bmm_top_0_m_axi_b1_WUSER),
        .S00_AXI_wvalid(bmm_top_0_m_axi_b1_WVALID),
        .S01_ACLK(processing_system7_0_fclk_clk0),
        .S01_ARESETN(proc_sys_reset_peripheral_aresetn),
        .S01_AXI_araddr(axi_mem_intercon_m01_axi_ARADDR),
        .S01_AXI_arburst(axi_mem_intercon_m01_axi_ARBURST),
        .S01_AXI_arcache(axi_mem_intercon_m01_axi_ARCACHE),
        .S01_AXI_arlen(axi_mem_intercon_m01_axi_ARLEN),
        .S01_AXI_arlock(axi_mem_intercon_m01_axi_ARLOCK),
        .S01_AXI_arprot(axi_mem_intercon_m01_axi_ARPROT),
        .S01_AXI_arqos(axi_mem_intercon_m01_axi_ARQOS),
        .S01_AXI_arready(axi_mem_intercon_m01_axi_ARREADY),
        .S01_AXI_arsize(axi_mem_intercon_m01_axi_ARSIZE),
        .S01_AXI_arvalid(axi_mem_intercon_m01_axi_ARVALID),
        .S01_AXI_awaddr(axi_mem_intercon_m01_axi_AWADDR),
        .S01_AXI_awburst(axi_mem_intercon_m01_axi_AWBURST),
        .S01_AXI_awcache(axi_mem_intercon_m01_axi_AWCACHE),
        .S01_AXI_awlen(axi_mem_intercon_m01_axi_AWLEN),
        .S01_AXI_awlock(axi_mem_intercon_m01_axi_AWLOCK),
        .S01_AXI_awprot(axi_mem_intercon_m01_axi_AWPROT),
        .S01_AXI_awqos(axi_mem_intercon_m01_axi_AWQOS),
        .S01_AXI_awready(axi_mem_intercon_m01_axi_AWREADY),
        .S01_AXI_awsize(axi_mem_intercon_m01_axi_AWSIZE),
        .S01_AXI_awvalid(axi_mem_intercon_m01_axi_AWVALID),
        .S01_AXI_bready(axi_mem_intercon_m01_axi_BREADY),
        .S01_AXI_bresp(axi_mem_intercon_m01_axi_BRESP),
        .S01_AXI_bvalid(axi_mem_intercon_m01_axi_BVALID),
        .S01_AXI_rdata(axi_mem_intercon_m01_axi_RDATA),
        .S01_AXI_rlast(axi_mem_intercon_m01_axi_RLAST),
        .S01_AXI_rready(axi_mem_intercon_m01_axi_RREADY),
        .S01_AXI_rresp(axi_mem_intercon_m01_axi_RRESP),
        .S01_AXI_rvalid(axi_mem_intercon_m01_axi_RVALID),
        .S01_AXI_wdata(axi_mem_intercon_m01_axi_WDATA),
        .S01_AXI_wlast(axi_mem_intercon_m01_axi_WLAST),
        .S01_AXI_wready(axi_mem_intercon_m01_axi_WREADY),
        .S01_AXI_wstrb(axi_mem_intercon_m01_axi_WSTRB),
        .S01_AXI_wvalid(axi_mem_intercon_m01_axi_WVALID),
        .S02_ACLK(processing_system7_0_fclk_clk0),
        .S02_ARESETN(proc_sys_reset_peripheral_aresetn),
        .S02_AXI_araddr(bmm_top_0_m_axi_b2_ARADDR),
        .S02_AXI_arburst(bmm_top_0_m_axi_b2_ARBURST),
        .S02_AXI_arcache(bmm_top_0_m_axi_b2_ARCACHE),
        .S02_AXI_arid(bmm_top_0_m_axi_b2_ARID),
        .S02_AXI_arlen(bmm_top_0_m_axi_b2_ARLEN),
        .S02_AXI_arlock(bmm_top_0_m_axi_b2_ARLOCK[0]),
        .S02_AXI_arprot(bmm_top_0_m_axi_b2_ARPROT),
        .S02_AXI_arqos(bmm_top_0_m_axi_b2_ARQOS),
        .S02_AXI_arready(bmm_top_0_m_axi_b2_ARREADY),
        .S02_AXI_arsize(bmm_top_0_m_axi_b2_ARSIZE),
        .S02_AXI_aruser(bmm_top_0_m_axi_b2_ARUSER),
        .S02_AXI_arvalid(bmm_top_0_m_axi_b2_ARVALID),
        .S02_AXI_awaddr(bmm_top_0_m_axi_b2_AWADDR),
        .S02_AXI_awburst(bmm_top_0_m_axi_b2_AWBURST),
        .S02_AXI_awcache(bmm_top_0_m_axi_b2_AWCACHE),
        .S02_AXI_awid(bmm_top_0_m_axi_b2_AWID),
        .S02_AXI_awlen(bmm_top_0_m_axi_b2_AWLEN),
        .S02_AXI_awlock(bmm_top_0_m_axi_b2_AWLOCK[0]),
        .S02_AXI_awprot(bmm_top_0_m_axi_b2_AWPROT),
        .S02_AXI_awqos(bmm_top_0_m_axi_b2_AWQOS),
        .S02_AXI_awready(bmm_top_0_m_axi_b2_AWREADY),
        .S02_AXI_awsize(bmm_top_0_m_axi_b2_AWSIZE),
        .S02_AXI_awuser(bmm_top_0_m_axi_b2_AWUSER),
        .S02_AXI_awvalid(bmm_top_0_m_axi_b2_AWVALID),
        .S02_AXI_bid(bmm_top_0_m_axi_b2_BID),
        .S02_AXI_bready(bmm_top_0_m_axi_b2_BREADY),
        .S02_AXI_bresp(bmm_top_0_m_axi_b2_BRESP),
        .S02_AXI_buser(bmm_top_0_m_axi_b2_BUSER),
        .S02_AXI_bvalid(bmm_top_0_m_axi_b2_BVALID),
        .S02_AXI_rdata(bmm_top_0_m_axi_b2_RDATA),
        .S02_AXI_rid(bmm_top_0_m_axi_b2_RID),
        .S02_AXI_rlast(bmm_top_0_m_axi_b2_RLAST),
        .S02_AXI_rready(bmm_top_0_m_axi_b2_RREADY),
        .S02_AXI_rresp(bmm_top_0_m_axi_b2_RRESP),
        .S02_AXI_ruser(bmm_top_0_m_axi_b2_RUSER),
        .S02_AXI_rvalid(bmm_top_0_m_axi_b2_RVALID),
        .S02_AXI_wdata(bmm_top_0_m_axi_b2_WDATA),
        .S02_AXI_wlast(bmm_top_0_m_axi_b2_WLAST),
        .S02_AXI_wready(bmm_top_0_m_axi_b2_WREADY),
        .S02_AXI_wstrb(bmm_top_0_m_axi_b2_WSTRB),
        .S02_AXI_wuser(bmm_top_0_m_axi_b2_WUSER),
        .S02_AXI_wvalid(bmm_top_0_m_axi_b2_WVALID),
        .S03_ACLK(processing_system7_0_fclk_clk0),
        .S03_ARESETN(proc_sys_reset_peripheral_aresetn),
        .S03_AXI_araddr(bmm_top_0_m_axi_b3_ARADDR),
        .S03_AXI_arburst(bmm_top_0_m_axi_b3_ARBURST),
        .S03_AXI_arcache(bmm_top_0_m_axi_b3_ARCACHE),
        .S03_AXI_arid(bmm_top_0_m_axi_b3_ARID),
        .S03_AXI_arlen(bmm_top_0_m_axi_b3_ARLEN),
        .S03_AXI_arlock(bmm_top_0_m_axi_b3_ARLOCK[0]),
        .S03_AXI_arprot(bmm_top_0_m_axi_b3_ARPROT),
        .S03_AXI_arqos(bmm_top_0_m_axi_b3_ARQOS),
        .S03_AXI_arready(bmm_top_0_m_axi_b3_ARREADY),
        .S03_AXI_arsize(bmm_top_0_m_axi_b3_ARSIZE),
        .S03_AXI_aruser(bmm_top_0_m_axi_b3_ARUSER),
        .S03_AXI_arvalid(bmm_top_0_m_axi_b3_ARVALID),
        .S03_AXI_awaddr(bmm_top_0_m_axi_b3_AWADDR),
        .S03_AXI_awburst(bmm_top_0_m_axi_b3_AWBURST),
        .S03_AXI_awcache(bmm_top_0_m_axi_b3_AWCACHE),
        .S03_AXI_awid(bmm_top_0_m_axi_b3_AWID),
        .S03_AXI_awlen(bmm_top_0_m_axi_b3_AWLEN),
        .S03_AXI_awlock(bmm_top_0_m_axi_b3_AWLOCK[0]),
        .S03_AXI_awprot(bmm_top_0_m_axi_b3_AWPROT),
        .S03_AXI_awqos(bmm_top_0_m_axi_b3_AWQOS),
        .S03_AXI_awready(bmm_top_0_m_axi_b3_AWREADY),
        .S03_AXI_awsize(bmm_top_0_m_axi_b3_AWSIZE),
        .S03_AXI_awuser(bmm_top_0_m_axi_b3_AWUSER),
        .S03_AXI_awvalid(bmm_top_0_m_axi_b3_AWVALID),
        .S03_AXI_bid(bmm_top_0_m_axi_b3_BID),
        .S03_AXI_bready(bmm_top_0_m_axi_b3_BREADY),
        .S03_AXI_bresp(bmm_top_0_m_axi_b3_BRESP),
        .S03_AXI_buser(bmm_top_0_m_axi_b3_BUSER),
        .S03_AXI_bvalid(bmm_top_0_m_axi_b3_BVALID),
        .S03_AXI_rdata(bmm_top_0_m_axi_b3_RDATA),
        .S03_AXI_rid(bmm_top_0_m_axi_b3_RID),
        .S03_AXI_rlast(bmm_top_0_m_axi_b3_RLAST),
        .S03_AXI_rready(bmm_top_0_m_axi_b3_RREADY),
        .S03_AXI_rresp(bmm_top_0_m_axi_b3_RRESP),
        .S03_AXI_ruser(bmm_top_0_m_axi_b3_RUSER),
        .S03_AXI_rvalid(bmm_top_0_m_axi_b3_RVALID),
        .S03_AXI_wdata(bmm_top_0_m_axi_b3_WDATA),
        .S03_AXI_wlast(bmm_top_0_m_axi_b3_WLAST),
        .S03_AXI_wready(bmm_top_0_m_axi_b3_WREADY),
        .S03_AXI_wstrb(bmm_top_0_m_axi_b3_WSTRB),
        .S03_AXI_wuser(bmm_top_0_m_axi_b3_WUSER),
        .S03_AXI_wvalid(bmm_top_0_m_axi_b3_WVALID));
dma3_bmm_top_0_1 bmm_top_0
       (.aclk(processing_system7_0_fclk_clk0),
        .aresetn(proc_sys_reset_peripheral_aresetn),
        .m_axi_b1_ARADDR(bmm_top_0_m_axi_b1_ARADDR),
        .m_axi_b1_ARBURST(bmm_top_0_m_axi_b1_ARBURST),
        .m_axi_b1_ARCACHE(bmm_top_0_m_axi_b1_ARCACHE),
        .m_axi_b1_ARID(bmm_top_0_m_axi_b1_ARID),
        .m_axi_b1_ARLEN(bmm_top_0_m_axi_b1_ARLEN),
        .m_axi_b1_ARLOCK(bmm_top_0_m_axi_b1_ARLOCK),
        .m_axi_b1_ARPROT(bmm_top_0_m_axi_b1_ARPROT),
        .m_axi_b1_ARQOS(bmm_top_0_m_axi_b1_ARQOS),
        .m_axi_b1_ARREADY(bmm_top_0_m_axi_b1_ARREADY),
        .m_axi_b1_ARSIZE(bmm_top_0_m_axi_b1_ARSIZE),
        .m_axi_b1_ARUSER(bmm_top_0_m_axi_b1_ARUSER),
        .m_axi_b1_ARVALID(bmm_top_0_m_axi_b1_ARVALID),
        .m_axi_b1_AWADDR(bmm_top_0_m_axi_b1_AWADDR),
        .m_axi_b1_AWBURST(bmm_top_0_m_axi_b1_AWBURST),
        .m_axi_b1_AWCACHE(bmm_top_0_m_axi_b1_AWCACHE),
        .m_axi_b1_AWID(bmm_top_0_m_axi_b1_AWID),
        .m_axi_b1_AWLEN(bmm_top_0_m_axi_b1_AWLEN),
        .m_axi_b1_AWLOCK(bmm_top_0_m_axi_b1_AWLOCK),
        .m_axi_b1_AWPROT(bmm_top_0_m_axi_b1_AWPROT),
        .m_axi_b1_AWQOS(bmm_top_0_m_axi_b1_AWQOS),
        .m_axi_b1_AWREADY(bmm_top_0_m_axi_b1_AWREADY),
        .m_axi_b1_AWSIZE(bmm_top_0_m_axi_b1_AWSIZE),
        .m_axi_b1_AWUSER(bmm_top_0_m_axi_b1_AWUSER),
        .m_axi_b1_AWVALID(bmm_top_0_m_axi_b1_AWVALID),
        .m_axi_b1_BID(bmm_top_0_m_axi_b1_BID),
        .m_axi_b1_BREADY(bmm_top_0_m_axi_b1_BREADY),
        .m_axi_b1_BRESP(bmm_top_0_m_axi_b1_BRESP),
        .m_axi_b1_BUSER(bmm_top_0_m_axi_b1_BUSER),
        .m_axi_b1_BVALID(bmm_top_0_m_axi_b1_BVALID),
        .m_axi_b1_RDATA(bmm_top_0_m_axi_b1_RDATA),
        .m_axi_b1_RID(bmm_top_0_m_axi_b1_RID),
        .m_axi_b1_RLAST(bmm_top_0_m_axi_b1_RLAST),
        .m_axi_b1_RREADY(bmm_top_0_m_axi_b1_RREADY),
        .m_axi_b1_RRESP(bmm_top_0_m_axi_b1_RRESP),
        .m_axi_b1_RUSER(bmm_top_0_m_axi_b1_RUSER),
        .m_axi_b1_RVALID(bmm_top_0_m_axi_b1_RVALID),
        .m_axi_b1_WDATA(bmm_top_0_m_axi_b1_WDATA),
        .m_axi_b1_WLAST(bmm_top_0_m_axi_b1_WLAST),
        .m_axi_b1_WREADY(bmm_top_0_m_axi_b1_WREADY),
        .m_axi_b1_WSTRB(bmm_top_0_m_axi_b1_WSTRB),
        .m_axi_b1_WUSER(bmm_top_0_m_axi_b1_WUSER),
        .m_axi_b1_WVALID(bmm_top_0_m_axi_b1_WVALID),
        .m_axi_b2_ARADDR(bmm_top_0_m_axi_b2_ARADDR),
        .m_axi_b2_ARBURST(bmm_top_0_m_axi_b2_ARBURST),
        .m_axi_b2_ARCACHE(bmm_top_0_m_axi_b2_ARCACHE),
        .m_axi_b2_ARID(bmm_top_0_m_axi_b2_ARID),
        .m_axi_b2_ARLEN(bmm_top_0_m_axi_b2_ARLEN),
        .m_axi_b2_ARLOCK(bmm_top_0_m_axi_b2_ARLOCK),
        .m_axi_b2_ARPROT(bmm_top_0_m_axi_b2_ARPROT),
        .m_axi_b2_ARQOS(bmm_top_0_m_axi_b2_ARQOS),
        .m_axi_b2_ARREADY(bmm_top_0_m_axi_b2_ARREADY),
        .m_axi_b2_ARSIZE(bmm_top_0_m_axi_b2_ARSIZE),
        .m_axi_b2_ARUSER(bmm_top_0_m_axi_b2_ARUSER),
        .m_axi_b2_ARVALID(bmm_top_0_m_axi_b2_ARVALID),
        .m_axi_b2_AWADDR(bmm_top_0_m_axi_b2_AWADDR),
        .m_axi_b2_AWBURST(bmm_top_0_m_axi_b2_AWBURST),
        .m_axi_b2_AWCACHE(bmm_top_0_m_axi_b2_AWCACHE),
        .m_axi_b2_AWID(bmm_top_0_m_axi_b2_AWID),
        .m_axi_b2_AWLEN(bmm_top_0_m_axi_b2_AWLEN),
        .m_axi_b2_AWLOCK(bmm_top_0_m_axi_b2_AWLOCK),
        .m_axi_b2_AWPROT(bmm_top_0_m_axi_b2_AWPROT),
        .m_axi_b2_AWQOS(bmm_top_0_m_axi_b2_AWQOS),
        .m_axi_b2_AWREADY(bmm_top_0_m_axi_b2_AWREADY),
        .m_axi_b2_AWSIZE(bmm_top_0_m_axi_b2_AWSIZE),
        .m_axi_b2_AWUSER(bmm_top_0_m_axi_b2_AWUSER),
        .m_axi_b2_AWVALID(bmm_top_0_m_axi_b2_AWVALID),
        .m_axi_b2_BID(bmm_top_0_m_axi_b2_BID),
        .m_axi_b2_BREADY(bmm_top_0_m_axi_b2_BREADY),
        .m_axi_b2_BRESP(bmm_top_0_m_axi_b2_BRESP),
        .m_axi_b2_BUSER(bmm_top_0_m_axi_b2_BUSER),
        .m_axi_b2_BVALID(bmm_top_0_m_axi_b2_BVALID),
        .m_axi_b2_RDATA(bmm_top_0_m_axi_b2_RDATA),
        .m_axi_b2_RID(bmm_top_0_m_axi_b2_RID),
        .m_axi_b2_RLAST(bmm_top_0_m_axi_b2_RLAST),
        .m_axi_b2_RREADY(bmm_top_0_m_axi_b2_RREADY),
        .m_axi_b2_RRESP(bmm_top_0_m_axi_b2_RRESP),
        .m_axi_b2_RUSER(bmm_top_0_m_axi_b2_RUSER),
        .m_axi_b2_RVALID(bmm_top_0_m_axi_b2_RVALID),
        .m_axi_b2_WDATA(bmm_top_0_m_axi_b2_WDATA),
        .m_axi_b2_WLAST(bmm_top_0_m_axi_b2_WLAST),
        .m_axi_b2_WREADY(bmm_top_0_m_axi_b2_WREADY),
        .m_axi_b2_WSTRB(bmm_top_0_m_axi_b2_WSTRB),
        .m_axi_b2_WUSER(bmm_top_0_m_axi_b2_WUSER),
        .m_axi_b2_WVALID(bmm_top_0_m_axi_b2_WVALID),
        .m_axi_b3_ARADDR(bmm_top_0_m_axi_b3_ARADDR),
        .m_axi_b3_ARBURST(bmm_top_0_m_axi_b3_ARBURST),
        .m_axi_b3_ARCACHE(bmm_top_0_m_axi_b3_ARCACHE),
        .m_axi_b3_ARID(bmm_top_0_m_axi_b3_ARID),
        .m_axi_b3_ARLEN(bmm_top_0_m_axi_b3_ARLEN),
        .m_axi_b3_ARLOCK(bmm_top_0_m_axi_b3_ARLOCK),
        .m_axi_b3_ARPROT(bmm_top_0_m_axi_b3_ARPROT),
        .m_axi_b3_ARQOS(bmm_top_0_m_axi_b3_ARQOS),
        .m_axi_b3_ARREADY(bmm_top_0_m_axi_b3_ARREADY),
        .m_axi_b3_ARSIZE(bmm_top_0_m_axi_b3_ARSIZE),
        .m_axi_b3_ARUSER(bmm_top_0_m_axi_b3_ARUSER),
        .m_axi_b3_ARVALID(bmm_top_0_m_axi_b3_ARVALID),
        .m_axi_b3_AWADDR(bmm_top_0_m_axi_b3_AWADDR),
        .m_axi_b3_AWBURST(bmm_top_0_m_axi_b3_AWBURST),
        .m_axi_b3_AWCACHE(bmm_top_0_m_axi_b3_AWCACHE),
        .m_axi_b3_AWID(bmm_top_0_m_axi_b3_AWID),
        .m_axi_b3_AWLEN(bmm_top_0_m_axi_b3_AWLEN),
        .m_axi_b3_AWLOCK(bmm_top_0_m_axi_b3_AWLOCK),
        .m_axi_b3_AWPROT(bmm_top_0_m_axi_b3_AWPROT),
        .m_axi_b3_AWQOS(bmm_top_0_m_axi_b3_AWQOS),
        .m_axi_b3_AWREADY(bmm_top_0_m_axi_b3_AWREADY),
        .m_axi_b3_AWSIZE(bmm_top_0_m_axi_b3_AWSIZE),
        .m_axi_b3_AWUSER(bmm_top_0_m_axi_b3_AWUSER),
        .m_axi_b3_AWVALID(bmm_top_0_m_axi_b3_AWVALID),
        .m_axi_b3_BID(bmm_top_0_m_axi_b3_BID),
        .m_axi_b3_BREADY(bmm_top_0_m_axi_b3_BREADY),
        .m_axi_b3_BRESP(bmm_top_0_m_axi_b3_BRESP),
        .m_axi_b3_BUSER(bmm_top_0_m_axi_b3_BUSER),
        .m_axi_b3_BVALID(bmm_top_0_m_axi_b3_BVALID),
        .m_axi_b3_RDATA(bmm_top_0_m_axi_b3_RDATA),
        .m_axi_b3_RID(bmm_top_0_m_axi_b3_RID),
        .m_axi_b3_RLAST(bmm_top_0_m_axi_b3_RLAST),
        .m_axi_b3_RREADY(bmm_top_0_m_axi_b3_RREADY),
        .m_axi_b3_RRESP(bmm_top_0_m_axi_b3_RRESP),
        .m_axi_b3_RUSER(bmm_top_0_m_axi_b3_RUSER),
        .m_axi_b3_RVALID(bmm_top_0_m_axi_b3_RVALID),
        .m_axi_b3_WDATA(bmm_top_0_m_axi_b3_WDATA),
        .m_axi_b3_WLAST(bmm_top_0_m_axi_b3_WLAST),
        .m_axi_b3_WREADY(bmm_top_0_m_axi_b3_WREADY),
        .m_axi_b3_WSTRB(bmm_top_0_m_axi_b3_WSTRB),
        .m_axi_b3_WUSER(bmm_top_0_m_axi_b3_WUSER),
        .m_axi_b3_WVALID(bmm_top_0_m_axi_b3_WVALID),
        .s_axi_CONTROL_ARADDR(ctrl_axilite_intercon_m01_axi_ARADDR),
        .s_axi_CONTROL_ARREADY(ctrl_axilite_intercon_m01_axi_ARREADY),
        .s_axi_CONTROL_ARVALID(ctrl_axilite_intercon_m01_axi_ARVALID),
        .s_axi_CONTROL_AWADDR(ctrl_axilite_intercon_m01_axi_AWADDR),
        .s_axi_CONTROL_AWREADY(ctrl_axilite_intercon_m01_axi_AWREADY),
        .s_axi_CONTROL_AWVALID(ctrl_axilite_intercon_m01_axi_AWVALID),
        .s_axi_CONTROL_BREADY(ctrl_axilite_intercon_m01_axi_BREADY),
        .s_axi_CONTROL_BRESP(ctrl_axilite_intercon_m01_axi_BRESP),
        .s_axi_CONTROL_BVALID(ctrl_axilite_intercon_m01_axi_BVALID),
        .s_axi_CONTROL_RDATA(ctrl_axilite_intercon_m01_axi_RDATA),
        .s_axi_CONTROL_RREADY(ctrl_axilite_intercon_m01_axi_RREADY),
        .s_axi_CONTROL_RRESP(ctrl_axilite_intercon_m01_axi_RRESP),
        .s_axi_CONTROL_RVALID(ctrl_axilite_intercon_m01_axi_RVALID),
        .s_axi_CONTROL_WDATA(ctrl_axilite_intercon_m01_axi_WDATA),
        .s_axi_CONTROL_WREADY(ctrl_axilite_intercon_m01_axi_WREADY),
        .s_axi_CONTROL_WSTRB(ctrl_axilite_intercon_m01_axi_WSTRB),
        .s_axi_CONTROL_WVALID(ctrl_axilite_intercon_m01_axi_WVALID));
endmodule

(* CORE_GENERATION_INFO = "dma3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLanguage=VERILOG,numBlks=39,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=22,maxHierDepth=0,da_axi4_cnt=14,da_bram_cntlr_cnt=1,da_ps7_cnt=1}" *) 
module dma3
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;

  wire GND_1;
  wire VCC_1;
  wire [31:0]axi_cdma_0_m_axi_ARADDR;
  wire [1:0]axi_cdma_0_m_axi_ARBURST;
  wire [3:0]axi_cdma_0_m_axi_ARCACHE;
  wire [7:0]axi_cdma_0_m_axi_ARLEN;
  wire [2:0]axi_cdma_0_m_axi_ARPROT;
  wire axi_cdma_0_m_axi_ARREADY;
  wire [2:0]axi_cdma_0_m_axi_ARSIZE;
  wire axi_cdma_0_m_axi_ARVALID;
  wire [31:0]axi_cdma_0_m_axi_AWADDR;
  wire [1:0]axi_cdma_0_m_axi_AWBURST;
  wire [3:0]axi_cdma_0_m_axi_AWCACHE;
  wire [7:0]axi_cdma_0_m_axi_AWLEN;
  wire [2:0]axi_cdma_0_m_axi_AWPROT;
  wire axi_cdma_0_m_axi_AWREADY;
  wire [2:0]axi_cdma_0_m_axi_AWSIZE;
  wire axi_cdma_0_m_axi_AWVALID;
  wire axi_cdma_0_m_axi_BREADY;
  wire [1:0]axi_cdma_0_m_axi_BRESP;
  wire axi_cdma_0_m_axi_BVALID;
  wire [31:0]axi_cdma_0_m_axi_RDATA;
  wire axi_cdma_0_m_axi_RLAST;
  wire axi_cdma_0_m_axi_RREADY;
  wire [1:0]axi_cdma_0_m_axi_RRESP;
  wire axi_cdma_0_m_axi_RVALID;
  wire [31:0]axi_cdma_0_m_axi_WDATA;
  wire axi_cdma_0_m_axi_WLAST;
  wire axi_cdma_0_m_axi_WREADY;
  wire [3:0]axi_cdma_0_m_axi_WSTRB;
  wire axi_cdma_0_m_axi_WVALID;
  wire [31:0]axi_cdma_0_m_axi_sg_ARADDR;
  wire [1:0]axi_cdma_0_m_axi_sg_ARBURST;
  wire [3:0]axi_cdma_0_m_axi_sg_ARCACHE;
  wire [7:0]axi_cdma_0_m_axi_sg_ARLEN;
  wire [2:0]axi_cdma_0_m_axi_sg_ARPROT;
  wire axi_cdma_0_m_axi_sg_ARREADY;
  wire [2:0]axi_cdma_0_m_axi_sg_ARSIZE;
  wire axi_cdma_0_m_axi_sg_ARVALID;
  wire [31:0]axi_cdma_0_m_axi_sg_AWADDR;
  wire [1:0]axi_cdma_0_m_axi_sg_AWBURST;
  wire [3:0]axi_cdma_0_m_axi_sg_AWCACHE;
  wire [7:0]axi_cdma_0_m_axi_sg_AWLEN;
  wire [2:0]axi_cdma_0_m_axi_sg_AWPROT;
  wire axi_cdma_0_m_axi_sg_AWREADY;
  wire [2:0]axi_cdma_0_m_axi_sg_AWSIZE;
  wire axi_cdma_0_m_axi_sg_AWVALID;
  wire axi_cdma_0_m_axi_sg_BREADY;
  wire [1:0]axi_cdma_0_m_axi_sg_BRESP;
  wire axi_cdma_0_m_axi_sg_BVALID;
  wire [31:0]axi_cdma_0_m_axi_sg_RDATA;
  wire axi_cdma_0_m_axi_sg_RLAST;
  wire axi_cdma_0_m_axi_sg_RREADY;
  wire [1:0]axi_cdma_0_m_axi_sg_RRESP;
  wire axi_cdma_0_m_axi_sg_RVALID;
  wire [31:0]axi_cdma_0_m_axi_sg_WDATA;
  wire axi_cdma_0_m_axi_sg_WLAST;
  wire axi_cdma_0_m_axi_sg_WREADY;
  wire [3:0]axi_cdma_0_m_axi_sg_WSTRB;
  wire axi_cdma_0_m_axi_sg_WVALID;
  wire [31:0]axi_mem_intercon_1_m00_axi_ARADDR;
  wire [1:0]axi_mem_intercon_1_m00_axi_ARBURST;
  wire [3:0]axi_mem_intercon_1_m00_axi_ARCACHE;
  wire [3:0]axi_mem_intercon_1_m00_axi_ARLEN;
  wire [1:0]axi_mem_intercon_1_m00_axi_ARLOCK;
  wire [2:0]axi_mem_intercon_1_m00_axi_ARPROT;
  wire [3:0]axi_mem_intercon_1_m00_axi_ARQOS;
  wire axi_mem_intercon_1_m00_axi_ARREADY;
  wire [2:0]axi_mem_intercon_1_m00_axi_ARSIZE;
  wire axi_mem_intercon_1_m00_axi_ARVALID;
  wire [31:0]axi_mem_intercon_1_m00_axi_AWADDR;
  wire [1:0]axi_mem_intercon_1_m00_axi_AWBURST;
  wire [3:0]axi_mem_intercon_1_m00_axi_AWCACHE;
  wire [3:0]axi_mem_intercon_1_m00_axi_AWLEN;
  wire [1:0]axi_mem_intercon_1_m00_axi_AWLOCK;
  wire [2:0]axi_mem_intercon_1_m00_axi_AWPROT;
  wire [3:0]axi_mem_intercon_1_m00_axi_AWQOS;
  wire axi_mem_intercon_1_m00_axi_AWREADY;
  wire [2:0]axi_mem_intercon_1_m00_axi_AWSIZE;
  wire axi_mem_intercon_1_m00_axi_AWVALID;
  wire axi_mem_intercon_1_m00_axi_BREADY;
  wire [1:0]axi_mem_intercon_1_m00_axi_BRESP;
  wire axi_mem_intercon_1_m00_axi_BVALID;
  wire [31:0]axi_mem_intercon_1_m00_axi_RDATA;
  wire axi_mem_intercon_1_m00_axi_RLAST;
  wire axi_mem_intercon_1_m00_axi_RREADY;
  wire [1:0]axi_mem_intercon_1_m00_axi_RRESP;
  wire axi_mem_intercon_1_m00_axi_RVALID;
  wire [31:0]axi_mem_intercon_1_m00_axi_WDATA;
  wire axi_mem_intercon_1_m00_axi_WLAST;
  wire axi_mem_intercon_1_m00_axi_WREADY;
  wire [3:0]axi_mem_intercon_1_m00_axi_WSTRB;
  wire axi_mem_intercon_1_m00_axi_WVALID;
  wire [31:0]axi_mem_intercon_m00_axi_ARADDR;
  wire [1:0]axi_mem_intercon_m00_axi_ARBURST;
  wire [3:0]axi_mem_intercon_m00_axi_ARCACHE;
  wire [3:0]axi_mem_intercon_m00_axi_ARLEN;
  wire [1:0]axi_mem_intercon_m00_axi_ARLOCK;
  wire [2:0]axi_mem_intercon_m00_axi_ARPROT;
  wire [3:0]axi_mem_intercon_m00_axi_ARQOS;
  wire axi_mem_intercon_m00_axi_ARREADY;
  wire [2:0]axi_mem_intercon_m00_axi_ARSIZE;
  wire axi_mem_intercon_m00_axi_ARVALID;
  wire [31:0]axi_mem_intercon_m00_axi_AWADDR;
  wire [1:0]axi_mem_intercon_m00_axi_AWBURST;
  wire [3:0]axi_mem_intercon_m00_axi_AWCACHE;
  wire [3:0]axi_mem_intercon_m00_axi_AWLEN;
  wire [1:0]axi_mem_intercon_m00_axi_AWLOCK;
  wire [2:0]axi_mem_intercon_m00_axi_AWPROT;
  wire [3:0]axi_mem_intercon_m00_axi_AWQOS;
  wire axi_mem_intercon_m00_axi_AWREADY;
  wire [2:0]axi_mem_intercon_m00_axi_AWSIZE;
  wire axi_mem_intercon_m00_axi_AWVALID;
  wire axi_mem_intercon_m00_axi_BREADY;
  wire [1:0]axi_mem_intercon_m00_axi_BRESP;
  wire axi_mem_intercon_m00_axi_BVALID;
  wire [31:0]axi_mem_intercon_m00_axi_RDATA;
  wire axi_mem_intercon_m00_axi_RLAST;
  wire axi_mem_intercon_m00_axi_RREADY;
  wire [1:0]axi_mem_intercon_m00_axi_RRESP;
  wire axi_mem_intercon_m00_axi_RVALID;
  wire [31:0]axi_mem_intercon_m00_axi_WDATA;
  wire axi_mem_intercon_m00_axi_WLAST;
  wire axi_mem_intercon_m00_axi_WREADY;
  wire [3:0]axi_mem_intercon_m00_axi_WSTRB;
  wire axi_mem_intercon_m00_axi_WVALID;
  wire [31:0]axi_mem_intercon_m01_axi_ARADDR;
  wire [1:0]axi_mem_intercon_m01_axi_ARBURST;
  wire [3:0]axi_mem_intercon_m01_axi_ARCACHE;
  wire [7:0]axi_mem_intercon_m01_axi_ARLEN;
  wire [0:0]axi_mem_intercon_m01_axi_ARLOCK;
  wire [2:0]axi_mem_intercon_m01_axi_ARPROT;
  wire [3:0]axi_mem_intercon_m01_axi_ARQOS;
  wire [0:0]axi_mem_intercon_m01_axi_ARREADY;
  wire [2:0]axi_mem_intercon_m01_axi_ARSIZE;
  wire [0:0]axi_mem_intercon_m01_axi_ARVALID;
  wire [31:0]axi_mem_intercon_m01_axi_AWADDR;
  wire [1:0]axi_mem_intercon_m01_axi_AWBURST;
  wire [3:0]axi_mem_intercon_m01_axi_AWCACHE;
  wire [7:0]axi_mem_intercon_m01_axi_AWLEN;
  wire [0:0]axi_mem_intercon_m01_axi_AWLOCK;
  wire [2:0]axi_mem_intercon_m01_axi_AWPROT;
  wire [3:0]axi_mem_intercon_m01_axi_AWQOS;
  wire [0:0]axi_mem_intercon_m01_axi_AWREADY;
  wire [2:0]axi_mem_intercon_m01_axi_AWSIZE;
  wire [0:0]axi_mem_intercon_m01_axi_AWVALID;
  wire [0:0]axi_mem_intercon_m01_axi_BREADY;
  wire [1:0]axi_mem_intercon_m01_axi_BRESP;
  wire [0:0]axi_mem_intercon_m01_axi_BVALID;
  wire [31:0]axi_mem_intercon_m01_axi_RDATA;
  wire [0:0]axi_mem_intercon_m01_axi_RLAST;
  wire [0:0]axi_mem_intercon_m01_axi_RREADY;
  wire [1:0]axi_mem_intercon_m01_axi_RRESP;
  wire [0:0]axi_mem_intercon_m01_axi_RVALID;
  wire [31:0]axi_mem_intercon_m01_axi_WDATA;
  wire [0:0]axi_mem_intercon_m01_axi_WLAST;
  wire [0:0]axi_mem_intercon_m01_axi_WREADY;
  wire [3:0]axi_mem_intercon_m01_axi_WSTRB;
  wire [0:0]axi_mem_intercon_m01_axi_WVALID;
  wire [4:0]ctrl_axilite_intercon_m01_axi_ARADDR;
  wire ctrl_axilite_intercon_m01_axi_ARREADY;
  wire ctrl_axilite_intercon_m01_axi_ARVALID;
  wire [4:0]ctrl_axilite_intercon_m01_axi_AWADDR;
  wire ctrl_axilite_intercon_m01_axi_AWREADY;
  wire ctrl_axilite_intercon_m01_axi_AWVALID;
  wire ctrl_axilite_intercon_m01_axi_BREADY;
  wire [1:0]ctrl_axilite_intercon_m01_axi_BRESP;
  wire ctrl_axilite_intercon_m01_axi_BVALID;
  wire [31:0]ctrl_axilite_intercon_m01_axi_RDATA;
  wire ctrl_axilite_intercon_m01_axi_RREADY;
  wire [1:0]ctrl_axilite_intercon_m01_axi_RRESP;
  wire ctrl_axilite_intercon_m01_axi_RVALID;
  wire [31:0]ctrl_axilite_intercon_m01_axi_WDATA;
  wire ctrl_axilite_intercon_m01_axi_WREADY;
  wire [3:0]ctrl_axilite_intercon_m01_axi_WSTRB;
  wire ctrl_axilite_intercon_m01_axi_WVALID;
  wire [31:0]fe_top_0_start;
  wire [0:0]proc_sys_reset_interconnect_aresetn;
  wire [0:0]proc_sys_reset_peripheral_aresetn;
  wire [5:0]processing_system7_0_axi_periph_m00_axi_ARADDR;
  wire processing_system7_0_axi_periph_m00_axi_ARREADY;
  wire processing_system7_0_axi_periph_m00_axi_ARVALID;
  wire [5:0]processing_system7_0_axi_periph_m00_axi_AWADDR;
  wire processing_system7_0_axi_periph_m00_axi_AWREADY;
  wire processing_system7_0_axi_periph_m00_axi_AWVALID;
  wire processing_system7_0_axi_periph_m00_axi_BREADY;
  wire [1:0]processing_system7_0_axi_periph_m00_axi_BRESP;
  wire processing_system7_0_axi_periph_m00_axi_BVALID;
  wire [31:0]processing_system7_0_axi_periph_m00_axi_RDATA;
  wire processing_system7_0_axi_periph_m00_axi_RREADY;
  wire [1:0]processing_system7_0_axi_periph_m00_axi_RRESP;
  wire processing_system7_0_axi_periph_m00_axi_RVALID;
  wire [31:0]processing_system7_0_axi_periph_m00_axi_WDATA;
  wire processing_system7_0_axi_periph_m00_axi_WREADY;
  wire processing_system7_0_axi_periph_m00_axi_WVALID;
  wire [14:0]processing_system7_0_ddr_ADDR;
  wire [2:0]processing_system7_0_ddr_BA;
  wire processing_system7_0_ddr_CAS_N;
  wire processing_system7_0_ddr_CKE;
  wire processing_system7_0_ddr_CK_N;
  wire processing_system7_0_ddr_CK_P;
  wire processing_system7_0_ddr_CS_N;
  wire [3:0]processing_system7_0_ddr_DM;
  wire [31:0]processing_system7_0_ddr_DQ;
  wire [3:0]processing_system7_0_ddr_DQS_N;
  wire [3:0]processing_system7_0_ddr_DQS_P;
  wire processing_system7_0_ddr_ODT;
  wire processing_system7_0_ddr_RAS_N;
  wire processing_system7_0_ddr_RESET_N;
  wire processing_system7_0_ddr_WE_N;
  wire processing_system7_0_fclk_clk0;
  wire processing_system7_0_fclk_reset0_n;
  wire processing_system7_0_fixed_io_DDR_VRN;
  wire processing_system7_0_fixed_io_DDR_VRP;
  wire [53:0]processing_system7_0_fixed_io_MIO;
  wire processing_system7_0_fixed_io_PS_CLK;
  wire processing_system7_0_fixed_io_PS_PORB;
  wire processing_system7_0_fixed_io_PS_SRSTB;
  wire [31:0]processing_system7_0_m_axi_gp0_ARADDR;
  wire [1:0]processing_system7_0_m_axi_gp0_ARBURST;
  wire [3:0]processing_system7_0_m_axi_gp0_ARCACHE;
  wire [11:0]processing_system7_0_m_axi_gp0_ARID;
  wire [3:0]processing_system7_0_m_axi_gp0_ARLEN;
  wire [1:0]processing_system7_0_m_axi_gp0_ARLOCK;
  wire [2:0]processing_system7_0_m_axi_gp0_ARPROT;
  wire [3:0]processing_system7_0_m_axi_gp0_ARQOS;
  wire processing_system7_0_m_axi_gp0_ARREADY;
  wire [2:0]processing_system7_0_m_axi_gp0_ARSIZE;
  wire processing_system7_0_m_axi_gp0_ARVALID;
  wire [31:0]processing_system7_0_m_axi_gp0_AWADDR;
  wire [1:0]processing_system7_0_m_axi_gp0_AWBURST;
  wire [3:0]processing_system7_0_m_axi_gp0_AWCACHE;
  wire [11:0]processing_system7_0_m_axi_gp0_AWID;
  wire [3:0]processing_system7_0_m_axi_gp0_AWLEN;
  wire [1:0]processing_system7_0_m_axi_gp0_AWLOCK;
  wire [2:0]processing_system7_0_m_axi_gp0_AWPROT;
  wire [3:0]processing_system7_0_m_axi_gp0_AWQOS;
  wire processing_system7_0_m_axi_gp0_AWREADY;
  wire [2:0]processing_system7_0_m_axi_gp0_AWSIZE;
  wire processing_system7_0_m_axi_gp0_AWVALID;
  wire [11:0]processing_system7_0_m_axi_gp0_BID;
  wire processing_system7_0_m_axi_gp0_BREADY;
  wire [1:0]processing_system7_0_m_axi_gp0_BRESP;
  wire processing_system7_0_m_axi_gp0_BVALID;
  wire [31:0]processing_system7_0_m_axi_gp0_RDATA;
  wire [11:0]processing_system7_0_m_axi_gp0_RID;
  wire processing_system7_0_m_axi_gp0_RLAST;
  wire processing_system7_0_m_axi_gp0_RREADY;
  wire [1:0]processing_system7_0_m_axi_gp0_RRESP;
  wire processing_system7_0_m_axi_gp0_RVALID;
  wire [31:0]processing_system7_0_m_axi_gp0_WDATA;
  wire [11:0]processing_system7_0_m_axi_gp0_WID;
  wire processing_system7_0_m_axi_gp0_WLAST;
  wire processing_system7_0_m_axi_gp0_WREADY;
  wire [3:0]processing_system7_0_m_axi_gp0_WSTRB;
  wire processing_system7_0_m_axi_gp0_WVALID;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
dma3_axi_cdma_0_0 axi_cdma_0
       (.m_axi_aclk(processing_system7_0_fclk_clk0),
        .m_axi_araddr(axi_cdma_0_m_axi_ARADDR),
        .m_axi_arburst(axi_cdma_0_m_axi_ARBURST),
        .m_axi_arcache(axi_cdma_0_m_axi_ARCACHE),
        .m_axi_arlen(axi_cdma_0_m_axi_ARLEN),
        .m_axi_arprot(axi_cdma_0_m_axi_ARPROT),
        .m_axi_arready(axi_cdma_0_m_axi_ARREADY),
        .m_axi_arsize(axi_cdma_0_m_axi_ARSIZE),
        .m_axi_arvalid(axi_cdma_0_m_axi_ARVALID),
        .m_axi_awaddr(axi_cdma_0_m_axi_AWADDR),
        .m_axi_awburst(axi_cdma_0_m_axi_AWBURST),
        .m_axi_awcache(axi_cdma_0_m_axi_AWCACHE),
        .m_axi_awlen(axi_cdma_0_m_axi_AWLEN),
        .m_axi_awprot(axi_cdma_0_m_axi_AWPROT),
        .m_axi_awready(axi_cdma_0_m_axi_AWREADY),
        .m_axi_awsize(axi_cdma_0_m_axi_AWSIZE),
        .m_axi_awvalid(axi_cdma_0_m_axi_AWVALID),
        .m_axi_bready(axi_cdma_0_m_axi_BREADY),
        .m_axi_bresp(axi_cdma_0_m_axi_BRESP),
        .m_axi_bvalid(axi_cdma_0_m_axi_BVALID),
        .m_axi_rdata(axi_cdma_0_m_axi_RDATA),
        .m_axi_rlast(axi_cdma_0_m_axi_RLAST),
        .m_axi_rready(axi_cdma_0_m_axi_RREADY),
        .m_axi_rresp(axi_cdma_0_m_axi_RRESP),
        .m_axi_rvalid(axi_cdma_0_m_axi_RVALID),
        .m_axi_sg_araddr(axi_cdma_0_m_axi_sg_ARADDR),
        .m_axi_sg_arburst(axi_cdma_0_m_axi_sg_ARBURST),
        .m_axi_sg_arcache(axi_cdma_0_m_axi_sg_ARCACHE),
        .m_axi_sg_arlen(axi_cdma_0_m_axi_sg_ARLEN),
        .m_axi_sg_arprot(axi_cdma_0_m_axi_sg_ARPROT),
        .m_axi_sg_arready(axi_cdma_0_m_axi_sg_ARREADY),
        .m_axi_sg_arsize(axi_cdma_0_m_axi_sg_ARSIZE),
        .m_axi_sg_arvalid(axi_cdma_0_m_axi_sg_ARVALID),
        .m_axi_sg_awaddr(axi_cdma_0_m_axi_sg_AWADDR),
        .m_axi_sg_awburst(axi_cdma_0_m_axi_sg_AWBURST),
        .m_axi_sg_awcache(axi_cdma_0_m_axi_sg_AWCACHE),
        .m_axi_sg_awlen(axi_cdma_0_m_axi_sg_AWLEN),
        .m_axi_sg_awprot(axi_cdma_0_m_axi_sg_AWPROT),
        .m_axi_sg_awready(axi_cdma_0_m_axi_sg_AWREADY),
        .m_axi_sg_awsize(axi_cdma_0_m_axi_sg_AWSIZE),
        .m_axi_sg_awvalid(axi_cdma_0_m_axi_sg_AWVALID),
        .m_axi_sg_bready(axi_cdma_0_m_axi_sg_BREADY),
        .m_axi_sg_bresp(axi_cdma_0_m_axi_sg_BRESP),
        .m_axi_sg_bvalid(axi_cdma_0_m_axi_sg_BVALID),
        .m_axi_sg_rdata(axi_cdma_0_m_axi_sg_RDATA),
        .m_axi_sg_rlast(axi_cdma_0_m_axi_sg_RLAST),
        .m_axi_sg_rready(axi_cdma_0_m_axi_sg_RREADY),
        .m_axi_sg_rresp(axi_cdma_0_m_axi_sg_RRESP),
        .m_axi_sg_rvalid(axi_cdma_0_m_axi_sg_RVALID),
        .m_axi_sg_wdata(axi_cdma_0_m_axi_sg_WDATA),
        .m_axi_sg_wlast(axi_cdma_0_m_axi_sg_WLAST),
        .m_axi_sg_wready(axi_cdma_0_m_axi_sg_WREADY),
        .m_axi_sg_wstrb(axi_cdma_0_m_axi_sg_WSTRB),
        .m_axi_sg_wvalid(axi_cdma_0_m_axi_sg_WVALID),
        .m_axi_wdata(axi_cdma_0_m_axi_WDATA),
        .m_axi_wlast(axi_cdma_0_m_axi_WLAST),
        .m_axi_wready(axi_cdma_0_m_axi_WREADY),
        .m_axi_wstrb(axi_cdma_0_m_axi_WSTRB),
        .m_axi_wvalid(axi_cdma_0_m_axi_WVALID),
        .s_axi_lite_aclk(processing_system7_0_fclk_clk0),
        .s_axi_lite_araddr(processing_system7_0_axi_periph_m00_axi_ARADDR),
        .s_axi_lite_aresetn(proc_sys_reset_peripheral_aresetn),
        .s_axi_lite_arready(processing_system7_0_axi_periph_m00_axi_ARREADY),
        .s_axi_lite_arvalid(processing_system7_0_axi_periph_m00_axi_ARVALID),
        .s_axi_lite_awaddr(processing_system7_0_axi_periph_m00_axi_AWADDR),
        .s_axi_lite_awready(processing_system7_0_axi_periph_m00_axi_AWREADY),
        .s_axi_lite_awvalid(processing_system7_0_axi_periph_m00_axi_AWVALID),
        .s_axi_lite_bready(processing_system7_0_axi_periph_m00_axi_BREADY),
        .s_axi_lite_bresp(processing_system7_0_axi_periph_m00_axi_BRESP),
        .s_axi_lite_bvalid(processing_system7_0_axi_periph_m00_axi_BVALID),
        .s_axi_lite_rdata(processing_system7_0_axi_periph_m00_axi_RDATA),
        .s_axi_lite_rready(processing_system7_0_axi_periph_m00_axi_RREADY),
        .s_axi_lite_rresp(processing_system7_0_axi_periph_m00_axi_RRESP),
        .s_axi_lite_rvalid(processing_system7_0_axi_periph_m00_axi_RVALID),
        .s_axi_lite_wdata(processing_system7_0_axi_periph_m00_axi_WDATA),
        .s_axi_lite_wready(processing_system7_0_axi_periph_m00_axi_WREADY),
        .s_axi_lite_wvalid(processing_system7_0_axi_periph_m00_axi_WVALID));
bmm0_imp_18Z5EUT bmm0
       (.ACLK(processing_system7_0_fclk_clk0),
        .ARESETN(proc_sys_reset_peripheral_aresetn),
        .S01_AXI_araddr(axi_mem_intercon_m01_axi_ARADDR),
        .S01_AXI_arburst(axi_mem_intercon_m01_axi_ARBURST),
        .S01_AXI_arcache(axi_mem_intercon_m01_axi_ARCACHE),
        .S01_AXI_arlen(axi_mem_intercon_m01_axi_ARLEN),
        .S01_AXI_arlock(axi_mem_intercon_m01_axi_ARLOCK),
        .S01_AXI_arprot(axi_mem_intercon_m01_axi_ARPROT),
        .S01_AXI_arqos(axi_mem_intercon_m01_axi_ARQOS),
        .S01_AXI_arready(axi_mem_intercon_m01_axi_ARREADY),
        .S01_AXI_arsize(axi_mem_intercon_m01_axi_ARSIZE),
        .S01_AXI_arvalid(axi_mem_intercon_m01_axi_ARVALID),
        .S01_AXI_awaddr(axi_mem_intercon_m01_axi_AWADDR),
        .S01_AXI_awburst(axi_mem_intercon_m01_axi_AWBURST),
        .S01_AXI_awcache(axi_mem_intercon_m01_axi_AWCACHE),
        .S01_AXI_awlen(axi_mem_intercon_m01_axi_AWLEN),
        .S01_AXI_awlock(axi_mem_intercon_m01_axi_AWLOCK),
        .S01_AXI_awprot(axi_mem_intercon_m01_axi_AWPROT),
        .S01_AXI_awqos(axi_mem_intercon_m01_axi_AWQOS),
        .S01_AXI_awready(axi_mem_intercon_m01_axi_AWREADY),
        .S01_AXI_awsize(axi_mem_intercon_m01_axi_AWSIZE),
        .S01_AXI_awvalid(axi_mem_intercon_m01_axi_AWVALID),
        .S01_AXI_bready(axi_mem_intercon_m01_axi_BREADY),
        .S01_AXI_bresp(axi_mem_intercon_m01_axi_BRESP),
        .S01_AXI_bvalid(axi_mem_intercon_m01_axi_BVALID),
        .S01_AXI_rdata(axi_mem_intercon_m01_axi_RDATA),
        .S01_AXI_rlast(axi_mem_intercon_m01_axi_RLAST),
        .S01_AXI_rready(axi_mem_intercon_m01_axi_RREADY),
        .S01_AXI_rresp(axi_mem_intercon_m01_axi_RRESP),
        .S01_AXI_rvalid(axi_mem_intercon_m01_axi_RVALID),
        .S01_AXI_wdata(axi_mem_intercon_m01_axi_WDATA),
        .S01_AXI_wlast(axi_mem_intercon_m01_axi_WLAST),
        .S01_AXI_wready(axi_mem_intercon_m01_axi_WREADY),
        .S01_AXI_wstrb(axi_mem_intercon_m01_axi_WSTRB),
        .S01_AXI_wvalid(axi_mem_intercon_m01_axi_WVALID),
        .S_AXI_CONTROL_araddr(ctrl_axilite_intercon_m01_axi_ARADDR),
        .S_AXI_CONTROL_arready(ctrl_axilite_intercon_m01_axi_ARREADY),
        .S_AXI_CONTROL_arvalid(ctrl_axilite_intercon_m01_axi_ARVALID),
        .S_AXI_CONTROL_awaddr(ctrl_axilite_intercon_m01_axi_AWADDR),
        .S_AXI_CONTROL_awready(ctrl_axilite_intercon_m01_axi_AWREADY),
        .S_AXI_CONTROL_awvalid(ctrl_axilite_intercon_m01_axi_AWVALID),
        .S_AXI_CONTROL_bready(ctrl_axilite_intercon_m01_axi_BREADY),
        .S_AXI_CONTROL_bresp(ctrl_axilite_intercon_m01_axi_BRESP),
        .S_AXI_CONTROL_bvalid(ctrl_axilite_intercon_m01_axi_BVALID),
        .S_AXI_CONTROL_rdata(ctrl_axilite_intercon_m01_axi_RDATA),
        .S_AXI_CONTROL_rready(ctrl_axilite_intercon_m01_axi_RREADY),
        .S_AXI_CONTROL_rresp(ctrl_axilite_intercon_m01_axi_RRESP),
        .S_AXI_CONTROL_rvalid(ctrl_axilite_intercon_m01_axi_RVALID),
        .S_AXI_CONTROL_wdata(ctrl_axilite_intercon_m01_axi_WDATA),
        .S_AXI_CONTROL_wready(ctrl_axilite_intercon_m01_axi_WREADY),
        .S_AXI_CONTROL_wstrb(ctrl_axilite_intercon_m01_axi_WSTRB),
        .S_AXI_CONTROL_wvalid(ctrl_axilite_intercon_m01_axi_WVALID));
dma3_axi_mem_intercon_2 cdma_bram_intercon
       (.ACLK(processing_system7_0_fclk_clk0),
        .ARESETN(proc_sys_reset_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_fclk_clk0),
        .M00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_intercon_m00_axi_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_m00_axi_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_m00_axi_ARCACHE),
        .M00_AXI_arlen(axi_mem_intercon_m00_axi_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_m00_axi_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_m00_axi_ARPROT),
        .M00_AXI_arqos(axi_mem_intercon_m00_axi_ARQOS),
        .M00_AXI_arready(axi_mem_intercon_m00_axi_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_m00_axi_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_m00_axi_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_m00_axi_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_m00_axi_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_m00_axi_AWCACHE),
        .M00_AXI_awlen(axi_mem_intercon_m00_axi_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_m00_axi_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_m00_axi_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_m00_axi_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_m00_axi_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_m00_axi_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_m00_axi_AWVALID),
        .M00_AXI_bready(axi_mem_intercon_m00_axi_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_m00_axi_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_m00_axi_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_m00_axi_RDATA),
        .M00_AXI_rlast(axi_mem_intercon_m00_axi_RLAST),
        .M00_AXI_rready(axi_mem_intercon_m00_axi_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_m00_axi_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_m00_axi_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_m00_axi_WDATA),
        .M00_AXI_wlast(axi_mem_intercon_m00_axi_WLAST),
        .M00_AXI_wready(axi_mem_intercon_m00_axi_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_m00_axi_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_m00_axi_WVALID),
        .M01_ACLK(processing_system7_0_fclk_clk0),
        .M01_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M01_AXI_araddr(axi_mem_intercon_m01_axi_ARADDR),
        .M01_AXI_arburst(axi_mem_intercon_m01_axi_ARBURST),
        .M01_AXI_arcache(axi_mem_intercon_m01_axi_ARCACHE),
        .M01_AXI_arlen(axi_mem_intercon_m01_axi_ARLEN),
        .M01_AXI_arlock(axi_mem_intercon_m01_axi_ARLOCK),
        .M01_AXI_arprot(axi_mem_intercon_m01_axi_ARPROT),
        .M01_AXI_arqos(axi_mem_intercon_m01_axi_ARQOS),
        .M01_AXI_arready(axi_mem_intercon_m01_axi_ARREADY),
        .M01_AXI_arsize(axi_mem_intercon_m01_axi_ARSIZE),
        .M01_AXI_arvalid(axi_mem_intercon_m01_axi_ARVALID),
        .M01_AXI_awaddr(axi_mem_intercon_m01_axi_AWADDR),
        .M01_AXI_awburst(axi_mem_intercon_m01_axi_AWBURST),
        .M01_AXI_awcache(axi_mem_intercon_m01_axi_AWCACHE),
        .M01_AXI_awlen(axi_mem_intercon_m01_axi_AWLEN),
        .M01_AXI_awlock(axi_mem_intercon_m01_axi_AWLOCK),
        .M01_AXI_awprot(axi_mem_intercon_m01_axi_AWPROT),
        .M01_AXI_awqos(axi_mem_intercon_m01_axi_AWQOS),
        .M01_AXI_awready(axi_mem_intercon_m01_axi_AWREADY),
        .M01_AXI_awsize(axi_mem_intercon_m01_axi_AWSIZE),
        .M01_AXI_awvalid(axi_mem_intercon_m01_axi_AWVALID),
        .M01_AXI_bready(axi_mem_intercon_m01_axi_BREADY),
        .M01_AXI_bresp(axi_mem_intercon_m01_axi_BRESP),
        .M01_AXI_bvalid(axi_mem_intercon_m01_axi_BVALID),
        .M01_AXI_rdata(axi_mem_intercon_m01_axi_RDATA),
        .M01_AXI_rlast(axi_mem_intercon_m01_axi_RLAST),
        .M01_AXI_rready(axi_mem_intercon_m01_axi_RREADY),
        .M01_AXI_rresp(axi_mem_intercon_m01_axi_RRESP),
        .M01_AXI_rvalid(axi_mem_intercon_m01_axi_RVALID),
        .M01_AXI_wdata(axi_mem_intercon_m01_axi_WDATA),
        .M01_AXI_wlast(axi_mem_intercon_m01_axi_WLAST),
        .M01_AXI_wready(axi_mem_intercon_m01_axi_WREADY),
        .M01_AXI_wstrb(axi_mem_intercon_m01_axi_WSTRB),
        .M01_AXI_wvalid(axi_mem_intercon_m01_axi_WVALID),
        .S00_ACLK(processing_system7_0_fclk_clk0),
        .S00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .S00_AXI_araddr(axi_cdma_0_m_axi_ARADDR),
        .S00_AXI_arburst(axi_cdma_0_m_axi_ARBURST),
        .S00_AXI_arcache(axi_cdma_0_m_axi_ARCACHE),
        .S00_AXI_arlen(axi_cdma_0_m_axi_ARLEN),
        .S00_AXI_arprot(axi_cdma_0_m_axi_ARPROT),
        .S00_AXI_arready(axi_cdma_0_m_axi_ARREADY),
        .S00_AXI_arsize(axi_cdma_0_m_axi_ARSIZE),
        .S00_AXI_arvalid(axi_cdma_0_m_axi_ARVALID),
        .S00_AXI_awaddr(axi_cdma_0_m_axi_AWADDR),
        .S00_AXI_awburst(axi_cdma_0_m_axi_AWBURST),
        .S00_AXI_awcache(axi_cdma_0_m_axi_AWCACHE),
        .S00_AXI_awlen(axi_cdma_0_m_axi_AWLEN),
        .S00_AXI_awprot(axi_cdma_0_m_axi_AWPROT),
        .S00_AXI_awready(axi_cdma_0_m_axi_AWREADY),
        .S00_AXI_awsize(axi_cdma_0_m_axi_AWSIZE),
        .S00_AXI_awvalid(axi_cdma_0_m_axi_AWVALID),
        .S00_AXI_bready(axi_cdma_0_m_axi_BREADY),
        .S00_AXI_bresp(axi_cdma_0_m_axi_BRESP),
        .S00_AXI_bvalid(axi_cdma_0_m_axi_BVALID),
        .S00_AXI_rdata(axi_cdma_0_m_axi_RDATA),
        .S00_AXI_rlast(axi_cdma_0_m_axi_RLAST),
        .S00_AXI_rready(axi_cdma_0_m_axi_RREADY),
        .S00_AXI_rresp(axi_cdma_0_m_axi_RRESP),
        .S00_AXI_rvalid(axi_cdma_0_m_axi_RVALID),
        .S00_AXI_wdata(axi_cdma_0_m_axi_WDATA),
        .S00_AXI_wlast(axi_cdma_0_m_axi_WLAST),
        .S00_AXI_wready(axi_cdma_0_m_axi_WREADY),
        .S00_AXI_wstrb(axi_cdma_0_m_axi_WSTRB),
        .S00_AXI_wvalid(axi_cdma_0_m_axi_WVALID));
dma3_axi_mem_intercon_1_7 cdma_sg_intercon
       (.ACLK(processing_system7_0_fclk_clk0),
        .ARESETN(proc_sys_reset_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_fclk_clk0),
        .M00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_intercon_1_m00_axi_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_1_m00_axi_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_1_m00_axi_ARCACHE),
        .M00_AXI_arlen(axi_mem_intercon_1_m00_axi_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_1_m00_axi_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_1_m00_axi_ARPROT),
        .M00_AXI_arqos(axi_mem_intercon_1_m00_axi_ARQOS),
        .M00_AXI_arready(axi_mem_intercon_1_m00_axi_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_1_m00_axi_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_1_m00_axi_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_1_m00_axi_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_1_m00_axi_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_1_m00_axi_AWCACHE),
        .M00_AXI_awlen(axi_mem_intercon_1_m00_axi_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_1_m00_axi_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_1_m00_axi_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_1_m00_axi_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_1_m00_axi_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_1_m00_axi_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_1_m00_axi_AWVALID),
        .M00_AXI_bready(axi_mem_intercon_1_m00_axi_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_1_m00_axi_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_1_m00_axi_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_1_m00_axi_RDATA),
        .M00_AXI_rlast(axi_mem_intercon_1_m00_axi_RLAST),
        .M00_AXI_rready(axi_mem_intercon_1_m00_axi_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_1_m00_axi_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_1_m00_axi_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_1_m00_axi_WDATA),
        .M00_AXI_wlast(axi_mem_intercon_1_m00_axi_WLAST),
        .M00_AXI_wready(axi_mem_intercon_1_m00_axi_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_1_m00_axi_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_1_m00_axi_WVALID),
        .S00_ACLK(processing_system7_0_fclk_clk0),
        .S00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .S00_AXI_araddr(axi_cdma_0_m_axi_sg_ARADDR),
        .S00_AXI_arburst(axi_cdma_0_m_axi_sg_ARBURST),
        .S00_AXI_arcache(axi_cdma_0_m_axi_sg_ARCACHE),
        .S00_AXI_arlen(axi_cdma_0_m_axi_sg_ARLEN),
        .S00_AXI_arprot(axi_cdma_0_m_axi_sg_ARPROT),
        .S00_AXI_arready(axi_cdma_0_m_axi_sg_ARREADY),
        .S00_AXI_arsize(axi_cdma_0_m_axi_sg_ARSIZE),
        .S00_AXI_arvalid(axi_cdma_0_m_axi_sg_ARVALID),
        .S00_AXI_awaddr(axi_cdma_0_m_axi_sg_AWADDR),
        .S00_AXI_awburst(axi_cdma_0_m_axi_sg_AWBURST),
        .S00_AXI_awcache(axi_cdma_0_m_axi_sg_AWCACHE),
        .S00_AXI_awlen(axi_cdma_0_m_axi_sg_AWLEN),
        .S00_AXI_awprot(axi_cdma_0_m_axi_sg_AWPROT),
        .S00_AXI_awready(axi_cdma_0_m_axi_sg_AWREADY),
        .S00_AXI_awsize(axi_cdma_0_m_axi_sg_AWSIZE),
        .S00_AXI_awvalid(axi_cdma_0_m_axi_sg_AWVALID),
        .S00_AXI_bready(axi_cdma_0_m_axi_sg_BREADY),
        .S00_AXI_bresp(axi_cdma_0_m_axi_sg_BRESP),
        .S00_AXI_bvalid(axi_cdma_0_m_axi_sg_BVALID),
        .S00_AXI_rdata(axi_cdma_0_m_axi_sg_RDATA),
        .S00_AXI_rlast(axi_cdma_0_m_axi_sg_RLAST),
        .S00_AXI_rready(axi_cdma_0_m_axi_sg_RREADY),
        .S00_AXI_rresp(axi_cdma_0_m_axi_sg_RRESP),
        .S00_AXI_rvalid(axi_cdma_0_m_axi_sg_RVALID),
        .S00_AXI_wdata(axi_cdma_0_m_axi_sg_WDATA),
        .S00_AXI_wlast(axi_cdma_0_m_axi_sg_WLAST),
        .S00_AXI_wready(axi_cdma_0_m_axi_sg_WREADY),
        .S00_AXI_wstrb(axi_cdma_0_m_axi_sg_WSTRB),
        .S00_AXI_wvalid(axi_cdma_0_m_axi_sg_WVALID));
dma3_processing_system7_0_axi_periph_1 ctrl_axilite_intercon
       (.ACLK(processing_system7_0_fclk_clk0),
        .ARESETN(proc_sys_reset_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_fclk_clk0),
        .M00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M00_AXI_araddr(processing_system7_0_axi_periph_m00_axi_ARADDR),
        .M00_AXI_arready(processing_system7_0_axi_periph_m00_axi_ARREADY),
        .M00_AXI_arvalid(processing_system7_0_axi_periph_m00_axi_ARVALID),
        .M00_AXI_awaddr(processing_system7_0_axi_periph_m00_axi_AWADDR),
        .M00_AXI_awready(processing_system7_0_axi_periph_m00_axi_AWREADY),
        .M00_AXI_awvalid(processing_system7_0_axi_periph_m00_axi_AWVALID),
        .M00_AXI_bready(processing_system7_0_axi_periph_m00_axi_BREADY),
        .M00_AXI_bresp(processing_system7_0_axi_periph_m00_axi_BRESP),
        .M00_AXI_bvalid(processing_system7_0_axi_periph_m00_axi_BVALID),
        .M00_AXI_rdata(processing_system7_0_axi_periph_m00_axi_RDATA),
        .M00_AXI_rready(processing_system7_0_axi_periph_m00_axi_RREADY),
        .M00_AXI_rresp(processing_system7_0_axi_periph_m00_axi_RRESP),
        .M00_AXI_rvalid(processing_system7_0_axi_periph_m00_axi_RVALID),
        .M00_AXI_wdata(processing_system7_0_axi_periph_m00_axi_WDATA),
        .M00_AXI_wready(processing_system7_0_axi_periph_m00_axi_WREADY),
        .M00_AXI_wvalid(processing_system7_0_axi_periph_m00_axi_WVALID),
        .M01_ACLK(processing_system7_0_fclk_clk0),
        .M01_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M01_AXI_araddr(ctrl_axilite_intercon_m01_axi_ARADDR),
        .M01_AXI_arready(ctrl_axilite_intercon_m01_axi_ARREADY),
        .M01_AXI_arvalid(ctrl_axilite_intercon_m01_axi_ARVALID),
        .M01_AXI_awaddr(ctrl_axilite_intercon_m01_axi_AWADDR),
        .M01_AXI_awready(ctrl_axilite_intercon_m01_axi_AWREADY),
        .M01_AXI_awvalid(ctrl_axilite_intercon_m01_axi_AWVALID),
        .M01_AXI_bready(ctrl_axilite_intercon_m01_axi_BREADY),
        .M01_AXI_bresp(ctrl_axilite_intercon_m01_axi_BRESP),
        .M01_AXI_bvalid(ctrl_axilite_intercon_m01_axi_BVALID),
        .M01_AXI_rdata(ctrl_axilite_intercon_m01_axi_RDATA),
        .M01_AXI_rready(ctrl_axilite_intercon_m01_axi_RREADY),
        .M01_AXI_rresp(ctrl_axilite_intercon_m01_axi_RRESP),
        .M01_AXI_rvalid(ctrl_axilite_intercon_m01_axi_RVALID),
        .M01_AXI_wdata(ctrl_axilite_intercon_m01_axi_WDATA),
        .M01_AXI_wready(ctrl_axilite_intercon_m01_axi_WREADY),
        .M01_AXI_wstrb(ctrl_axilite_intercon_m01_axi_WSTRB),
        .M01_AXI_wvalid(ctrl_axilite_intercon_m01_axi_WVALID),
        .S00_ACLK(processing_system7_0_fclk_clk0),
        .S00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_0_m_axi_gp0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_m_axi_gp0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_m_axi_gp0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_m_axi_gp0_ARID),
        .S00_AXI_arlen(processing_system7_0_m_axi_gp0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_m_axi_gp0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_m_axi_gp0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_m_axi_gp0_ARQOS),
        .S00_AXI_arready(processing_system7_0_m_axi_gp0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_m_axi_gp0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_m_axi_gp0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_m_axi_gp0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_m_axi_gp0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_m_axi_gp0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_m_axi_gp0_AWID),
        .S00_AXI_awlen(processing_system7_0_m_axi_gp0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_m_axi_gp0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_m_axi_gp0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_m_axi_gp0_AWQOS),
        .S00_AXI_awready(processing_system7_0_m_axi_gp0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_m_axi_gp0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_m_axi_gp0_AWVALID),
        .S00_AXI_bid(processing_system7_0_m_axi_gp0_BID),
        .S00_AXI_bready(processing_system7_0_m_axi_gp0_BREADY),
        .S00_AXI_bresp(processing_system7_0_m_axi_gp0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_m_axi_gp0_BVALID),
        .S00_AXI_rdata(processing_system7_0_m_axi_gp0_RDATA),
        .S00_AXI_rid(processing_system7_0_m_axi_gp0_RID),
        .S00_AXI_rlast(processing_system7_0_m_axi_gp0_RLAST),
        .S00_AXI_rready(processing_system7_0_m_axi_gp0_RREADY),
        .S00_AXI_rresp(processing_system7_0_m_axi_gp0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_m_axi_gp0_RVALID),
        .S00_AXI_wdata(processing_system7_0_m_axi_gp0_WDATA),
        .S00_AXI_wid(processing_system7_0_m_axi_gp0_WID),
        .S00_AXI_wlast(processing_system7_0_m_axi_gp0_WLAST),
        .S00_AXI_wready(processing_system7_0_m_axi_gp0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_m_axi_gp0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_m_axi_gp0_WVALID));
dma3_fe_top_0_0 fe_top_0
       (.aclk(processing_system7_0_fclk_clk0),
        .aresetn(proc_sys_reset_peripheral_aresetn),
        .s_axi_CONTROL_ARADDR({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_CONTROL_ARVALID(GND_1),
        .s_axi_CONTROL_AWADDR({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_CONTROL_AWVALID(GND_1),
        .s_axi_CONTROL_BREADY(GND_1),
        .s_axi_CONTROL_RREADY(GND_1),
        .s_axi_CONTROL_WDATA({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .s_axi_CONTROL_WSTRB({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_CONTROL_WVALID(GND_1),
        .start(fe_top_0_start));
dma3_proc_sys_reset_1 proc_sys_reset
       (.aux_reset_in(VCC_1),
        .dcm_locked(VCC_1),
        .ext_reset_in(processing_system7_0_fclk_reset0_n),
        .interconnect_aresetn(proc_sys_reset_interconnect_aresetn),
        .mb_debug_sys_rst(GND_1),
        .peripheral_aresetn(proc_sys_reset_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_fclk_clk0));
dma3_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_fclk_clk0),
        .FCLK_RESET0_N(processing_system7_0_fclk_reset0_n),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_fclk_clk0),
        .M_AXI_GP0_ARADDR(processing_system7_0_m_axi_gp0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_m_axi_gp0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_m_axi_gp0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_m_axi_gp0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_m_axi_gp0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_m_axi_gp0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_m_axi_gp0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_m_axi_gp0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_m_axi_gp0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_m_axi_gp0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_m_axi_gp0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_m_axi_gp0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_m_axi_gp0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_m_axi_gp0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_m_axi_gp0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_m_axi_gp0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_m_axi_gp0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_m_axi_gp0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_m_axi_gp0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_m_axi_gp0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_m_axi_gp0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_m_axi_gp0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_m_axi_gp0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_m_axi_gp0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_m_axi_gp0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_m_axi_gp0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_m_axi_gp0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_m_axi_gp0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_m_axi_gp0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_m_axi_gp0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_m_axi_gp0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_m_axi_gp0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_m_axi_gp0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_m_axi_gp0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_m_axi_gp0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_m_axi_gp0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_m_axi_gp0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_m_axi_gp0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(processing_system7_0_fclk_clk0),
        .S_AXI_HP0_ARADDR(axi_mem_intercon_m00_axi_ARADDR),
        .S_AXI_HP0_ARBURST(axi_mem_intercon_m00_axi_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_mem_intercon_m00_axi_ARCACHE),
        .S_AXI_HP0_ARID({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .S_AXI_HP0_ARLEN(axi_mem_intercon_m00_axi_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_mem_intercon_m00_axi_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_mem_intercon_m00_axi_ARPROT),
        .S_AXI_HP0_ARQOS(axi_mem_intercon_m00_axi_ARQOS),
        .S_AXI_HP0_ARREADY(axi_mem_intercon_m00_axi_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_mem_intercon_m00_axi_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_mem_intercon_m00_axi_ARVALID),
        .S_AXI_HP0_AWADDR(axi_mem_intercon_m00_axi_AWADDR),
        .S_AXI_HP0_AWBURST(axi_mem_intercon_m00_axi_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_mem_intercon_m00_axi_AWCACHE),
        .S_AXI_HP0_AWID({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .S_AXI_HP0_AWLEN(axi_mem_intercon_m00_axi_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_mem_intercon_m00_axi_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_mem_intercon_m00_axi_AWPROT),
        .S_AXI_HP0_AWQOS(axi_mem_intercon_m00_axi_AWQOS),
        .S_AXI_HP0_AWREADY(axi_mem_intercon_m00_axi_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_mem_intercon_m00_axi_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_mem_intercon_m00_axi_AWVALID),
        .S_AXI_HP0_BREADY(axi_mem_intercon_m00_axi_BREADY),
        .S_AXI_HP0_BRESP(axi_mem_intercon_m00_axi_BRESP),
        .S_AXI_HP0_BVALID(axi_mem_intercon_m00_axi_BVALID),
        .S_AXI_HP0_RDATA(axi_mem_intercon_m00_axi_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(GND_1),
        .S_AXI_HP0_RLAST(axi_mem_intercon_m00_axi_RLAST),
        .S_AXI_HP0_RREADY(axi_mem_intercon_m00_axi_RREADY),
        .S_AXI_HP0_RRESP(axi_mem_intercon_m00_axi_RRESP),
        .S_AXI_HP0_RVALID(axi_mem_intercon_m00_axi_RVALID),
        .S_AXI_HP0_WDATA(axi_mem_intercon_m00_axi_WDATA),
        .S_AXI_HP0_WID({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .S_AXI_HP0_WLAST(axi_mem_intercon_m00_axi_WLAST),
        .S_AXI_HP0_WREADY(axi_mem_intercon_m00_axi_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(GND_1),
        .S_AXI_HP0_WSTRB(axi_mem_intercon_m00_axi_WSTRB),
        .S_AXI_HP0_WVALID(axi_mem_intercon_m00_axi_WVALID),
        .S_AXI_HP2_ACLK(processing_system7_0_fclk_clk0),
        .S_AXI_HP2_ARADDR(axi_mem_intercon_1_m00_axi_ARADDR),
        .S_AXI_HP2_ARBURST(axi_mem_intercon_1_m00_axi_ARBURST),
        .S_AXI_HP2_ARCACHE(axi_mem_intercon_1_m00_axi_ARCACHE),
        .S_AXI_HP2_ARID({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .S_AXI_HP2_ARLEN(axi_mem_intercon_1_m00_axi_ARLEN),
        .S_AXI_HP2_ARLOCK(axi_mem_intercon_1_m00_axi_ARLOCK),
        .S_AXI_HP2_ARPROT(axi_mem_intercon_1_m00_axi_ARPROT),
        .S_AXI_HP2_ARQOS(axi_mem_intercon_1_m00_axi_ARQOS),
        .S_AXI_HP2_ARREADY(axi_mem_intercon_1_m00_axi_ARREADY),
        .S_AXI_HP2_ARSIZE(axi_mem_intercon_1_m00_axi_ARSIZE),
        .S_AXI_HP2_ARVALID(axi_mem_intercon_1_m00_axi_ARVALID),
        .S_AXI_HP2_AWADDR(axi_mem_intercon_1_m00_axi_AWADDR),
        .S_AXI_HP2_AWBURST(axi_mem_intercon_1_m00_axi_AWBURST),
        .S_AXI_HP2_AWCACHE(axi_mem_intercon_1_m00_axi_AWCACHE),
        .S_AXI_HP2_AWID({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .S_AXI_HP2_AWLEN(axi_mem_intercon_1_m00_axi_AWLEN),
        .S_AXI_HP2_AWLOCK(axi_mem_intercon_1_m00_axi_AWLOCK),
        .S_AXI_HP2_AWPROT(axi_mem_intercon_1_m00_axi_AWPROT),
        .S_AXI_HP2_AWQOS(axi_mem_intercon_1_m00_axi_AWQOS),
        .S_AXI_HP2_AWREADY(axi_mem_intercon_1_m00_axi_AWREADY),
        .S_AXI_HP2_AWSIZE(axi_mem_intercon_1_m00_axi_AWSIZE),
        .S_AXI_HP2_AWVALID(axi_mem_intercon_1_m00_axi_AWVALID),
        .S_AXI_HP2_BREADY(axi_mem_intercon_1_m00_axi_BREADY),
        .S_AXI_HP2_BRESP(axi_mem_intercon_1_m00_axi_BRESP),
        .S_AXI_HP2_BVALID(axi_mem_intercon_1_m00_axi_BVALID),
        .S_AXI_HP2_RDATA(axi_mem_intercon_1_m00_axi_RDATA),
        .S_AXI_HP2_RDISSUECAP1_EN(GND_1),
        .S_AXI_HP2_RLAST(axi_mem_intercon_1_m00_axi_RLAST),
        .S_AXI_HP2_RREADY(axi_mem_intercon_1_m00_axi_RREADY),
        .S_AXI_HP2_RRESP(axi_mem_intercon_1_m00_axi_RRESP),
        .S_AXI_HP2_RVALID(axi_mem_intercon_1_m00_axi_RVALID),
        .S_AXI_HP2_WDATA(axi_mem_intercon_1_m00_axi_WDATA),
        .S_AXI_HP2_WID({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .S_AXI_HP2_WLAST(axi_mem_intercon_1_m00_axi_WLAST),
        .S_AXI_HP2_WREADY(axi_mem_intercon_1_m00_axi_WREADY),
        .S_AXI_HP2_WRISSUECAP1_EN(GND_1),
        .S_AXI_HP2_WSTRB(axi_mem_intercon_1_m00_axi_WSTRB),
        .S_AXI_HP2_WVALID(axi_mem_intercon_1_m00_axi_WVALID),
        .TTC0_CLK0_IN(GND_1),
        .TTC0_CLK1_IN(GND_1),
        .TTC0_CLK2_IN(GND_1),
        .USB0_VBUS_PWRFAULT(GND_1));
endmodule

module dma3_axi_interconnect_0_6
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arburst,
    M02_AXI_arcache,
    M02_AXI_arid,
    M02_AXI_arlen,
    M02_AXI_arlock,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arsize,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awburst,
    M02_AXI_awcache,
    M02_AXI_awid,
    M02_AXI_awlen,
    M02_AXI_awlock,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awsize,
    M02_AXI_awvalid,
    M02_AXI_bid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rid,
    M02_AXI_rlast,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wlast,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_buser,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arid,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_aruser,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awid,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awuser,
    S02_AXI_awvalid,
    S02_AXI_bid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_buser,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rid,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_ruser,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wuser,
    S02_AXI_wvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_araddr,
    S03_AXI_arburst,
    S03_AXI_arcache,
    S03_AXI_arid,
    S03_AXI_arlen,
    S03_AXI_arlock,
    S03_AXI_arprot,
    S03_AXI_arqos,
    S03_AXI_arready,
    S03_AXI_arsize,
    S03_AXI_aruser,
    S03_AXI_arvalid,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awid,
    S03_AXI_awlen,
    S03_AXI_awlock,
    S03_AXI_awprot,
    S03_AXI_awqos,
    S03_AXI_awready,
    S03_AXI_awsize,
    S03_AXI_awuser,
    S03_AXI_awvalid,
    S03_AXI_bid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_buser,
    S03_AXI_bvalid,
    S03_AXI_rdata,
    S03_AXI_rid,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_ruser,
    S03_AXI_rvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wuser,
    S03_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [16:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  input [0:0]M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_arvalid;
  output [16:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  input [0:0]M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awvalid;
  input [2:0]M00_AXI_bid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input [2:0]M00_AXI_rid;
  input [0:0]M00_AXI_rlast;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wlast;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output [16:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [2:0]M01_AXI_arid;
  output [7:0]M01_AXI_arlen;
  output [0:0]M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  input [0:0]M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output [0:0]M01_AXI_arvalid;
  output [16:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [2:0]M01_AXI_awid;
  output [7:0]M01_AXI_awlen;
  output [0:0]M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  input [0:0]M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output [0:0]M01_AXI_awvalid;
  input [2:0]M01_AXI_bid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  input [2:0]M01_AXI_rid;
  input [0:0]M01_AXI_rlast;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  output [0:0]M01_AXI_wlast;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input [0:0]M02_ARESETN;
  output [16:0]M02_AXI_araddr;
  output [1:0]M02_AXI_arburst;
  output [3:0]M02_AXI_arcache;
  output [2:0]M02_AXI_arid;
  output [7:0]M02_AXI_arlen;
  output [0:0]M02_AXI_arlock;
  output [2:0]M02_AXI_arprot;
  input [0:0]M02_AXI_arready;
  output [2:0]M02_AXI_arsize;
  output [0:0]M02_AXI_arvalid;
  output [16:0]M02_AXI_awaddr;
  output [1:0]M02_AXI_awburst;
  output [3:0]M02_AXI_awcache;
  output [2:0]M02_AXI_awid;
  output [7:0]M02_AXI_awlen;
  output [0:0]M02_AXI_awlock;
  output [2:0]M02_AXI_awprot;
  input [0:0]M02_AXI_awready;
  output [2:0]M02_AXI_awsize;
  output [0:0]M02_AXI_awvalid;
  input [2:0]M02_AXI_bid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  input [2:0]M02_AXI_rid;
  input [0:0]M02_AXI_rlast;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  output [0:0]M02_AXI_wlast;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_aruser;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awuser;
  input [0:0]S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_buser;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_ruser;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [0:0]S00_AXI_wlast;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wuser;
  input [0:0]S00_AXI_wvalid;
  input S01_ACLK;
  input [0:0]S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output [0:0]S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input [0:0]S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output [0:0]S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input [0:0]S01_AXI_awvalid;
  input [0:0]S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output [0:0]S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  output [0:0]S01_AXI_rlast;
  input [0:0]S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output [0:0]S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  input [0:0]S01_AXI_wlast;
  output [0:0]S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input [0:0]S01_AXI_wvalid;
  input S02_ACLK;
  input [0:0]S02_ARESETN;
  input [31:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [0:0]S02_AXI_arid;
  input [7:0]S02_AXI_arlen;
  input [0:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output [0:0]S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input [0:0]S02_AXI_aruser;
  input [0:0]S02_AXI_arvalid;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [0:0]S02_AXI_awid;
  input [7:0]S02_AXI_awlen;
  input [0:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output [0:0]S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input [0:0]S02_AXI_awuser;
  input [0:0]S02_AXI_awvalid;
  output [0:0]S02_AXI_bid;
  input [0:0]S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output [0:0]S02_AXI_buser;
  output [0:0]S02_AXI_bvalid;
  output [31:0]S02_AXI_rdata;
  output [0:0]S02_AXI_rid;
  output [0:0]S02_AXI_rlast;
  input [0:0]S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output [0:0]S02_AXI_ruser;
  output [0:0]S02_AXI_rvalid;
  input [31:0]S02_AXI_wdata;
  input [0:0]S02_AXI_wlast;
  output [0:0]S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input [0:0]S02_AXI_wuser;
  input [0:0]S02_AXI_wvalid;
  input S03_ACLK;
  input [0:0]S03_ARESETN;
  input [31:0]S03_AXI_araddr;
  input [1:0]S03_AXI_arburst;
  input [3:0]S03_AXI_arcache;
  input [0:0]S03_AXI_arid;
  input [7:0]S03_AXI_arlen;
  input [0:0]S03_AXI_arlock;
  input [2:0]S03_AXI_arprot;
  input [3:0]S03_AXI_arqos;
  output [0:0]S03_AXI_arready;
  input [2:0]S03_AXI_arsize;
  input [0:0]S03_AXI_aruser;
  input [0:0]S03_AXI_arvalid;
  input [31:0]S03_AXI_awaddr;
  input [1:0]S03_AXI_awburst;
  input [3:0]S03_AXI_awcache;
  input [0:0]S03_AXI_awid;
  input [7:0]S03_AXI_awlen;
  input [0:0]S03_AXI_awlock;
  input [2:0]S03_AXI_awprot;
  input [3:0]S03_AXI_awqos;
  output [0:0]S03_AXI_awready;
  input [2:0]S03_AXI_awsize;
  input [0:0]S03_AXI_awuser;
  input [0:0]S03_AXI_awvalid;
  output [0:0]S03_AXI_bid;
  input [0:0]S03_AXI_bready;
  output [1:0]S03_AXI_bresp;
  output [0:0]S03_AXI_buser;
  output [0:0]S03_AXI_bvalid;
  output [31:0]S03_AXI_rdata;
  output [0:0]S03_AXI_rid;
  output [0:0]S03_AXI_rlast;
  input [0:0]S03_AXI_rready;
  output [1:0]S03_AXI_rresp;
  output [0:0]S03_AXI_ruser;
  output [0:0]S03_AXI_rvalid;
  input [31:0]S03_AXI_wdata;
  input [0:0]S03_AXI_wlast;
  output [0:0]S03_AXI_wready;
  input [3:0]S03_AXI_wstrb;
  input [0:0]S03_AXI_wuser;
  input [0:0]S03_AXI_wvalid;

  wire GND_1;
  wire bmm_bram_cdma_intercon_ACLK_net;
  wire [0:0]bmm_bram_cdma_intercon_ARESETN_net;
  wire [31:0]bmm_bram_cdma_intercon_to_s00_couplers_ARADDR;
  wire [1:0]bmm_bram_cdma_intercon_to_s00_couplers_ARBURST;
  wire [3:0]bmm_bram_cdma_intercon_to_s00_couplers_ARCACHE;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_ARID;
  wire [7:0]bmm_bram_cdma_intercon_to_s00_couplers_ARLEN;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_ARLOCK;
  wire [2:0]bmm_bram_cdma_intercon_to_s00_couplers_ARPROT;
  wire [3:0]bmm_bram_cdma_intercon_to_s00_couplers_ARQOS;
  wire bmm_bram_cdma_intercon_to_s00_couplers_ARREADY;
  wire [2:0]bmm_bram_cdma_intercon_to_s00_couplers_ARSIZE;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_ARUSER;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_ARVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s00_couplers_AWADDR;
  wire [1:0]bmm_bram_cdma_intercon_to_s00_couplers_AWBURST;
  wire [3:0]bmm_bram_cdma_intercon_to_s00_couplers_AWCACHE;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_AWID;
  wire [7:0]bmm_bram_cdma_intercon_to_s00_couplers_AWLEN;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_AWLOCK;
  wire [2:0]bmm_bram_cdma_intercon_to_s00_couplers_AWPROT;
  wire [3:0]bmm_bram_cdma_intercon_to_s00_couplers_AWQOS;
  wire bmm_bram_cdma_intercon_to_s00_couplers_AWREADY;
  wire [2:0]bmm_bram_cdma_intercon_to_s00_couplers_AWSIZE;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_AWUSER;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_AWVALID;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_BID;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_BREADY;
  wire [1:0]bmm_bram_cdma_intercon_to_s00_couplers_BRESP;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_BUSER;
  wire bmm_bram_cdma_intercon_to_s00_couplers_BVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s00_couplers_RDATA;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_RID;
  wire bmm_bram_cdma_intercon_to_s00_couplers_RLAST;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_RREADY;
  wire [1:0]bmm_bram_cdma_intercon_to_s00_couplers_RRESP;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_RUSER;
  wire bmm_bram_cdma_intercon_to_s00_couplers_RVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s00_couplers_WDATA;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_WLAST;
  wire bmm_bram_cdma_intercon_to_s00_couplers_WREADY;
  wire [3:0]bmm_bram_cdma_intercon_to_s00_couplers_WSTRB;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_WUSER;
  wire [0:0]bmm_bram_cdma_intercon_to_s00_couplers_WVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s01_couplers_ARADDR;
  wire [1:0]bmm_bram_cdma_intercon_to_s01_couplers_ARBURST;
  wire [3:0]bmm_bram_cdma_intercon_to_s01_couplers_ARCACHE;
  wire [7:0]bmm_bram_cdma_intercon_to_s01_couplers_ARLEN;
  wire [0:0]bmm_bram_cdma_intercon_to_s01_couplers_ARLOCK;
  wire [2:0]bmm_bram_cdma_intercon_to_s01_couplers_ARPROT;
  wire [3:0]bmm_bram_cdma_intercon_to_s01_couplers_ARQOS;
  wire [0:0]bmm_bram_cdma_intercon_to_s01_couplers_ARREADY;
  wire [2:0]bmm_bram_cdma_intercon_to_s01_couplers_ARSIZE;
  wire [0:0]bmm_bram_cdma_intercon_to_s01_couplers_ARVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s01_couplers_AWADDR;
  wire [1:0]bmm_bram_cdma_intercon_to_s01_couplers_AWBURST;
  wire [3:0]bmm_bram_cdma_intercon_to_s01_couplers_AWCACHE;
  wire [7:0]bmm_bram_cdma_intercon_to_s01_couplers_AWLEN;
  wire [0:0]bmm_bram_cdma_intercon_to_s01_couplers_AWLOCK;
  wire [2:0]bmm_bram_cdma_intercon_to_s01_couplers_AWPROT;
  wire [3:0]bmm_bram_cdma_intercon_to_s01_couplers_AWQOS;
  wire [0:0]bmm_bram_cdma_intercon_to_s01_couplers_AWREADY;
  wire [2:0]bmm_bram_cdma_intercon_to_s01_couplers_AWSIZE;
  wire [0:0]bmm_bram_cdma_intercon_to_s01_couplers_AWVALID;
  wire [0:0]bmm_bram_cdma_intercon_to_s01_couplers_BREADY;
  wire [1:0]bmm_bram_cdma_intercon_to_s01_couplers_BRESP;
  wire [0:0]bmm_bram_cdma_intercon_to_s01_couplers_BVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s01_couplers_RDATA;
  wire [0:0]bmm_bram_cdma_intercon_to_s01_couplers_RLAST;
  wire [0:0]bmm_bram_cdma_intercon_to_s01_couplers_RREADY;
  wire [1:0]bmm_bram_cdma_intercon_to_s01_couplers_RRESP;
  wire [0:0]bmm_bram_cdma_intercon_to_s01_couplers_RVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s01_couplers_WDATA;
  wire [0:0]bmm_bram_cdma_intercon_to_s01_couplers_WLAST;
  wire [0:0]bmm_bram_cdma_intercon_to_s01_couplers_WREADY;
  wire [3:0]bmm_bram_cdma_intercon_to_s01_couplers_WSTRB;
  wire [0:0]bmm_bram_cdma_intercon_to_s01_couplers_WVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s02_couplers_ARADDR;
  wire [1:0]bmm_bram_cdma_intercon_to_s02_couplers_ARBURST;
  wire [3:0]bmm_bram_cdma_intercon_to_s02_couplers_ARCACHE;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_ARID;
  wire [7:0]bmm_bram_cdma_intercon_to_s02_couplers_ARLEN;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_ARLOCK;
  wire [2:0]bmm_bram_cdma_intercon_to_s02_couplers_ARPROT;
  wire [3:0]bmm_bram_cdma_intercon_to_s02_couplers_ARQOS;
  wire bmm_bram_cdma_intercon_to_s02_couplers_ARREADY;
  wire [2:0]bmm_bram_cdma_intercon_to_s02_couplers_ARSIZE;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_ARUSER;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_ARVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s02_couplers_AWADDR;
  wire [1:0]bmm_bram_cdma_intercon_to_s02_couplers_AWBURST;
  wire [3:0]bmm_bram_cdma_intercon_to_s02_couplers_AWCACHE;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_AWID;
  wire [7:0]bmm_bram_cdma_intercon_to_s02_couplers_AWLEN;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_AWLOCK;
  wire [2:0]bmm_bram_cdma_intercon_to_s02_couplers_AWPROT;
  wire [3:0]bmm_bram_cdma_intercon_to_s02_couplers_AWQOS;
  wire bmm_bram_cdma_intercon_to_s02_couplers_AWREADY;
  wire [2:0]bmm_bram_cdma_intercon_to_s02_couplers_AWSIZE;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_AWUSER;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_AWVALID;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_BID;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_BREADY;
  wire [1:0]bmm_bram_cdma_intercon_to_s02_couplers_BRESP;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_BUSER;
  wire bmm_bram_cdma_intercon_to_s02_couplers_BVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s02_couplers_RDATA;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_RID;
  wire bmm_bram_cdma_intercon_to_s02_couplers_RLAST;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_RREADY;
  wire [1:0]bmm_bram_cdma_intercon_to_s02_couplers_RRESP;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_RUSER;
  wire bmm_bram_cdma_intercon_to_s02_couplers_RVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s02_couplers_WDATA;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_WLAST;
  wire bmm_bram_cdma_intercon_to_s02_couplers_WREADY;
  wire [3:0]bmm_bram_cdma_intercon_to_s02_couplers_WSTRB;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_WUSER;
  wire [0:0]bmm_bram_cdma_intercon_to_s02_couplers_WVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s03_couplers_ARADDR;
  wire [1:0]bmm_bram_cdma_intercon_to_s03_couplers_ARBURST;
  wire [3:0]bmm_bram_cdma_intercon_to_s03_couplers_ARCACHE;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_ARID;
  wire [7:0]bmm_bram_cdma_intercon_to_s03_couplers_ARLEN;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_ARLOCK;
  wire [2:0]bmm_bram_cdma_intercon_to_s03_couplers_ARPROT;
  wire [3:0]bmm_bram_cdma_intercon_to_s03_couplers_ARQOS;
  wire bmm_bram_cdma_intercon_to_s03_couplers_ARREADY;
  wire [2:0]bmm_bram_cdma_intercon_to_s03_couplers_ARSIZE;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_ARUSER;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_ARVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s03_couplers_AWADDR;
  wire [1:0]bmm_bram_cdma_intercon_to_s03_couplers_AWBURST;
  wire [3:0]bmm_bram_cdma_intercon_to_s03_couplers_AWCACHE;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_AWID;
  wire [7:0]bmm_bram_cdma_intercon_to_s03_couplers_AWLEN;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_AWLOCK;
  wire [2:0]bmm_bram_cdma_intercon_to_s03_couplers_AWPROT;
  wire [3:0]bmm_bram_cdma_intercon_to_s03_couplers_AWQOS;
  wire bmm_bram_cdma_intercon_to_s03_couplers_AWREADY;
  wire [2:0]bmm_bram_cdma_intercon_to_s03_couplers_AWSIZE;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_AWUSER;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_AWVALID;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_BID;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_BREADY;
  wire [1:0]bmm_bram_cdma_intercon_to_s03_couplers_BRESP;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_BUSER;
  wire bmm_bram_cdma_intercon_to_s03_couplers_BVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s03_couplers_RDATA;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_RID;
  wire bmm_bram_cdma_intercon_to_s03_couplers_RLAST;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_RREADY;
  wire [1:0]bmm_bram_cdma_intercon_to_s03_couplers_RRESP;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_RUSER;
  wire bmm_bram_cdma_intercon_to_s03_couplers_RVALID;
  wire [31:0]bmm_bram_cdma_intercon_to_s03_couplers_WDATA;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_WLAST;
  wire bmm_bram_cdma_intercon_to_s03_couplers_WREADY;
  wire [3:0]bmm_bram_cdma_intercon_to_s03_couplers_WSTRB;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_WUSER;
  wire [0:0]bmm_bram_cdma_intercon_to_s03_couplers_WVALID;
  wire [16:0]m00_couplers_to_bmm_bram_cdma_intercon_ARADDR;
  wire [1:0]m00_couplers_to_bmm_bram_cdma_intercon_ARBURST;
  wire [3:0]m00_couplers_to_bmm_bram_cdma_intercon_ARCACHE;
  wire [2:0]m00_couplers_to_bmm_bram_cdma_intercon_ARID;
  wire [7:0]m00_couplers_to_bmm_bram_cdma_intercon_ARLEN;
  wire [0:0]m00_couplers_to_bmm_bram_cdma_intercon_ARLOCK;
  wire [2:0]m00_couplers_to_bmm_bram_cdma_intercon_ARPROT;
  wire [0:0]m00_couplers_to_bmm_bram_cdma_intercon_ARREADY;
  wire [2:0]m00_couplers_to_bmm_bram_cdma_intercon_ARSIZE;
  wire [0:0]m00_couplers_to_bmm_bram_cdma_intercon_ARVALID;
  wire [16:0]m00_couplers_to_bmm_bram_cdma_intercon_AWADDR;
  wire [1:0]m00_couplers_to_bmm_bram_cdma_intercon_AWBURST;
  wire [3:0]m00_couplers_to_bmm_bram_cdma_intercon_AWCACHE;
  wire [2:0]m00_couplers_to_bmm_bram_cdma_intercon_AWID;
  wire [7:0]m00_couplers_to_bmm_bram_cdma_intercon_AWLEN;
  wire [0:0]m00_couplers_to_bmm_bram_cdma_intercon_AWLOCK;
  wire [2:0]m00_couplers_to_bmm_bram_cdma_intercon_AWPROT;
  wire [0:0]m00_couplers_to_bmm_bram_cdma_intercon_AWREADY;
  wire [2:0]m00_couplers_to_bmm_bram_cdma_intercon_AWSIZE;
  wire [0:0]m00_couplers_to_bmm_bram_cdma_intercon_AWVALID;
  wire [2:0]m00_couplers_to_bmm_bram_cdma_intercon_BID;
  wire [0:0]m00_couplers_to_bmm_bram_cdma_intercon_BREADY;
  wire [1:0]m00_couplers_to_bmm_bram_cdma_intercon_BRESP;
  wire [0:0]m00_couplers_to_bmm_bram_cdma_intercon_BVALID;
  wire [31:0]m00_couplers_to_bmm_bram_cdma_intercon_RDATA;
  wire [2:0]m00_couplers_to_bmm_bram_cdma_intercon_RID;
  wire [0:0]m00_couplers_to_bmm_bram_cdma_intercon_RLAST;
  wire [0:0]m00_couplers_to_bmm_bram_cdma_intercon_RREADY;
  wire [1:0]m00_couplers_to_bmm_bram_cdma_intercon_RRESP;
  wire [0:0]m00_couplers_to_bmm_bram_cdma_intercon_RVALID;
  wire [31:0]m00_couplers_to_bmm_bram_cdma_intercon_WDATA;
  wire [0:0]m00_couplers_to_bmm_bram_cdma_intercon_WLAST;
  wire [0:0]m00_couplers_to_bmm_bram_cdma_intercon_WREADY;
  wire [3:0]m00_couplers_to_bmm_bram_cdma_intercon_WSTRB;
  wire [0:0]m00_couplers_to_bmm_bram_cdma_intercon_WVALID;
  wire [16:0]m01_couplers_to_bmm_bram_cdma_intercon_ARADDR;
  wire [1:0]m01_couplers_to_bmm_bram_cdma_intercon_ARBURST;
  wire [3:0]m01_couplers_to_bmm_bram_cdma_intercon_ARCACHE;
  wire [2:0]m01_couplers_to_bmm_bram_cdma_intercon_ARID;
  wire [7:0]m01_couplers_to_bmm_bram_cdma_intercon_ARLEN;
  wire [0:0]m01_couplers_to_bmm_bram_cdma_intercon_ARLOCK;
  wire [2:0]m01_couplers_to_bmm_bram_cdma_intercon_ARPROT;
  wire [0:0]m01_couplers_to_bmm_bram_cdma_intercon_ARREADY;
  wire [2:0]m01_couplers_to_bmm_bram_cdma_intercon_ARSIZE;
  wire [0:0]m01_couplers_to_bmm_bram_cdma_intercon_ARVALID;
  wire [16:0]m01_couplers_to_bmm_bram_cdma_intercon_AWADDR;
  wire [1:0]m01_couplers_to_bmm_bram_cdma_intercon_AWBURST;
  wire [3:0]m01_couplers_to_bmm_bram_cdma_intercon_AWCACHE;
  wire [2:0]m01_couplers_to_bmm_bram_cdma_intercon_AWID;
  wire [7:0]m01_couplers_to_bmm_bram_cdma_intercon_AWLEN;
  wire [0:0]m01_couplers_to_bmm_bram_cdma_intercon_AWLOCK;
  wire [2:0]m01_couplers_to_bmm_bram_cdma_intercon_AWPROT;
  wire [0:0]m01_couplers_to_bmm_bram_cdma_intercon_AWREADY;
  wire [2:0]m01_couplers_to_bmm_bram_cdma_intercon_AWSIZE;
  wire [0:0]m01_couplers_to_bmm_bram_cdma_intercon_AWVALID;
  wire [2:0]m01_couplers_to_bmm_bram_cdma_intercon_BID;
  wire [0:0]m01_couplers_to_bmm_bram_cdma_intercon_BREADY;
  wire [1:0]m01_couplers_to_bmm_bram_cdma_intercon_BRESP;
  wire [0:0]m01_couplers_to_bmm_bram_cdma_intercon_BVALID;
  wire [31:0]m01_couplers_to_bmm_bram_cdma_intercon_RDATA;
  wire [2:0]m01_couplers_to_bmm_bram_cdma_intercon_RID;
  wire [0:0]m01_couplers_to_bmm_bram_cdma_intercon_RLAST;
  wire [0:0]m01_couplers_to_bmm_bram_cdma_intercon_RREADY;
  wire [1:0]m01_couplers_to_bmm_bram_cdma_intercon_RRESP;
  wire [0:0]m01_couplers_to_bmm_bram_cdma_intercon_RVALID;
  wire [31:0]m01_couplers_to_bmm_bram_cdma_intercon_WDATA;
  wire [0:0]m01_couplers_to_bmm_bram_cdma_intercon_WLAST;
  wire [0:0]m01_couplers_to_bmm_bram_cdma_intercon_WREADY;
  wire [3:0]m01_couplers_to_bmm_bram_cdma_intercon_WSTRB;
  wire [0:0]m01_couplers_to_bmm_bram_cdma_intercon_WVALID;
  wire [16:0]m02_couplers_to_bmm_bram_cdma_intercon_ARADDR;
  wire [1:0]m02_couplers_to_bmm_bram_cdma_intercon_ARBURST;
  wire [3:0]m02_couplers_to_bmm_bram_cdma_intercon_ARCACHE;
  wire [2:0]m02_couplers_to_bmm_bram_cdma_intercon_ARID;
  wire [7:0]m02_couplers_to_bmm_bram_cdma_intercon_ARLEN;
  wire [0:0]m02_couplers_to_bmm_bram_cdma_intercon_ARLOCK;
  wire [2:0]m02_couplers_to_bmm_bram_cdma_intercon_ARPROT;
  wire [0:0]m02_couplers_to_bmm_bram_cdma_intercon_ARREADY;
  wire [2:0]m02_couplers_to_bmm_bram_cdma_intercon_ARSIZE;
  wire [0:0]m02_couplers_to_bmm_bram_cdma_intercon_ARVALID;
  wire [16:0]m02_couplers_to_bmm_bram_cdma_intercon_AWADDR;
  wire [1:0]m02_couplers_to_bmm_bram_cdma_intercon_AWBURST;
  wire [3:0]m02_couplers_to_bmm_bram_cdma_intercon_AWCACHE;
  wire [2:0]m02_couplers_to_bmm_bram_cdma_intercon_AWID;
  wire [7:0]m02_couplers_to_bmm_bram_cdma_intercon_AWLEN;
  wire [0:0]m02_couplers_to_bmm_bram_cdma_intercon_AWLOCK;
  wire [2:0]m02_couplers_to_bmm_bram_cdma_intercon_AWPROT;
  wire [0:0]m02_couplers_to_bmm_bram_cdma_intercon_AWREADY;
  wire [2:0]m02_couplers_to_bmm_bram_cdma_intercon_AWSIZE;
  wire [0:0]m02_couplers_to_bmm_bram_cdma_intercon_AWVALID;
  wire [2:0]m02_couplers_to_bmm_bram_cdma_intercon_BID;
  wire [0:0]m02_couplers_to_bmm_bram_cdma_intercon_BREADY;
  wire [1:0]m02_couplers_to_bmm_bram_cdma_intercon_BRESP;
  wire [0:0]m02_couplers_to_bmm_bram_cdma_intercon_BVALID;
  wire [31:0]m02_couplers_to_bmm_bram_cdma_intercon_RDATA;
  wire [2:0]m02_couplers_to_bmm_bram_cdma_intercon_RID;
  wire [0:0]m02_couplers_to_bmm_bram_cdma_intercon_RLAST;
  wire [0:0]m02_couplers_to_bmm_bram_cdma_intercon_RREADY;
  wire [1:0]m02_couplers_to_bmm_bram_cdma_intercon_RRESP;
  wire [0:0]m02_couplers_to_bmm_bram_cdma_intercon_RVALID;
  wire [31:0]m02_couplers_to_bmm_bram_cdma_intercon_WDATA;
  wire [0:0]m02_couplers_to_bmm_bram_cdma_intercon_WLAST;
  wire [0:0]m02_couplers_to_bmm_bram_cdma_intercon_WREADY;
  wire [3:0]m02_couplers_to_bmm_bram_cdma_intercon_WSTRB;
  wire [0:0]m02_couplers_to_bmm_bram_cdma_intercon_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [0:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [0:0]s00_couplers_to_xbar_ARUSER;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [0:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire [0:0]s00_couplers_to_xbar_AWUSER;
  wire s00_couplers_to_xbar_AWVALID;
  wire [2:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BUSER;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [2:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RUSER;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WUSER;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire [0:0]s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire [0:0]s01_couplers_to_xbar_AWVALID;
  wire [0:0]s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire [0:0]s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire [0:0]s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire [0:0]s01_couplers_to_xbar_WVALID;
  wire [31:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [0:0]s02_couplers_to_xbar_ARID;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire [0:0]s02_couplers_to_xbar_ARUSER;
  wire s02_couplers_to_xbar_ARVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [0:0]s02_couplers_to_xbar_AWID;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire [0:0]s02_couplers_to_xbar_AWUSER;
  wire s02_couplers_to_xbar_AWVALID;
  wire [8:6]s02_couplers_to_xbar_BID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BUSER;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [95:64]s02_couplers_to_xbar_RDATA;
  wire [8:6]s02_couplers_to_xbar_RID;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RUSER;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [31:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [3:0]s02_couplers_to_xbar_WSTRB;
  wire [0:0]s02_couplers_to_xbar_WUSER;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]s03_couplers_to_xbar_ARADDR;
  wire [1:0]s03_couplers_to_xbar_ARBURST;
  wire [3:0]s03_couplers_to_xbar_ARCACHE;
  wire [0:0]s03_couplers_to_xbar_ARID;
  wire [7:0]s03_couplers_to_xbar_ARLEN;
  wire [0:0]s03_couplers_to_xbar_ARLOCK;
  wire [2:0]s03_couplers_to_xbar_ARPROT;
  wire [3:0]s03_couplers_to_xbar_ARQOS;
  wire [3:3]s03_couplers_to_xbar_ARREADY;
  wire [2:0]s03_couplers_to_xbar_ARSIZE;
  wire [0:0]s03_couplers_to_xbar_ARUSER;
  wire s03_couplers_to_xbar_ARVALID;
  wire [31:0]s03_couplers_to_xbar_AWADDR;
  wire [1:0]s03_couplers_to_xbar_AWBURST;
  wire [3:0]s03_couplers_to_xbar_AWCACHE;
  wire [0:0]s03_couplers_to_xbar_AWID;
  wire [7:0]s03_couplers_to_xbar_AWLEN;
  wire [0:0]s03_couplers_to_xbar_AWLOCK;
  wire [2:0]s03_couplers_to_xbar_AWPROT;
  wire [3:0]s03_couplers_to_xbar_AWQOS;
  wire [3:3]s03_couplers_to_xbar_AWREADY;
  wire [2:0]s03_couplers_to_xbar_AWSIZE;
  wire [0:0]s03_couplers_to_xbar_AWUSER;
  wire s03_couplers_to_xbar_AWVALID;
  wire [11:9]s03_couplers_to_xbar_BID;
  wire s03_couplers_to_xbar_BREADY;
  wire [7:6]s03_couplers_to_xbar_BRESP;
  wire [3:3]s03_couplers_to_xbar_BUSER;
  wire [3:3]s03_couplers_to_xbar_BVALID;
  wire [127:96]s03_couplers_to_xbar_RDATA;
  wire [11:9]s03_couplers_to_xbar_RID;
  wire [3:3]s03_couplers_to_xbar_RLAST;
  wire s03_couplers_to_xbar_RREADY;
  wire [7:6]s03_couplers_to_xbar_RRESP;
  wire [3:3]s03_couplers_to_xbar_RUSER;
  wire [3:3]s03_couplers_to_xbar_RVALID;
  wire [31:0]s03_couplers_to_xbar_WDATA;
  wire s03_couplers_to_xbar_WLAST;
  wire [3:3]s03_couplers_to_xbar_WREADY;
  wire [3:0]s03_couplers_to_xbar_WSTRB;
  wire [0:0]s03_couplers_to_xbar_WUSER;
  wire s03_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [2:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [2:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [2:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [2:0]xbar_to_m00_couplers_RID;
  wire [0:0]xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [5:3]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [5:3]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [2:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [2:0]xbar_to_m01_couplers_RID;
  wire [0:0]xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [8:6]xbar_to_m02_couplers_ARID;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [5:4]xbar_to_m02_couplers_AWBURST;
  wire [11:8]xbar_to_m02_couplers_AWCACHE;
  wire [8:6]xbar_to_m02_couplers_AWID;
  wire [23:16]xbar_to_m02_couplers_AWLEN;
  wire [2:2]xbar_to_m02_couplers_AWLOCK;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [8:6]xbar_to_m02_couplers_AWSIZE;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:0]xbar_to_m02_couplers_BID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:0]xbar_to_m02_couplers_RID;
  wire [0:0]xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [2:2]xbar_to_m02_couplers_WLAST;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [11:0]NLW_xbar_s_axi_arid_UNCONNECTED;
  wire [11:0]NLW_xbar_s_axi_awid_UNCONNECTED;
  wire [11:0]NLW_xbar_s_axi_bid_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_buser_UNCONNECTED;
  wire [11:0]NLW_xbar_s_axi_rid_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_ruser_UNCONNECTED;

  assign M00_AXI_araddr[16:0] = m00_couplers_to_bmm_bram_cdma_intercon_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_bmm_bram_cdma_intercon_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_bmm_bram_cdma_intercon_ARCACHE;
  assign M00_AXI_arid[2:0] = m00_couplers_to_bmm_bram_cdma_intercon_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_bmm_bram_cdma_intercon_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_bmm_bram_cdma_intercon_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_bmm_bram_cdma_intercon_ARPROT;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_bmm_bram_cdma_intercon_ARSIZE;
  assign M00_AXI_arvalid[0] = m00_couplers_to_bmm_bram_cdma_intercon_ARVALID;
  assign M00_AXI_awaddr[16:0] = m00_couplers_to_bmm_bram_cdma_intercon_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_bmm_bram_cdma_intercon_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_bmm_bram_cdma_intercon_AWCACHE;
  assign M00_AXI_awid[2:0] = m00_couplers_to_bmm_bram_cdma_intercon_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_bmm_bram_cdma_intercon_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_bmm_bram_cdma_intercon_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_bmm_bram_cdma_intercon_AWPROT;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_bmm_bram_cdma_intercon_AWSIZE;
  assign M00_AXI_awvalid[0] = m00_couplers_to_bmm_bram_cdma_intercon_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_bmm_bram_cdma_intercon_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_bmm_bram_cdma_intercon_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_bmm_bram_cdma_intercon_WDATA;
  assign M00_AXI_wlast[0] = m00_couplers_to_bmm_bram_cdma_intercon_WLAST;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_bmm_bram_cdma_intercon_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_bmm_bram_cdma_intercon_WVALID;
  assign M01_AXI_araddr[16:0] = m01_couplers_to_bmm_bram_cdma_intercon_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_bmm_bram_cdma_intercon_ARBURST;
  assign M01_AXI_arcache[3:0] = m01_couplers_to_bmm_bram_cdma_intercon_ARCACHE;
  assign M01_AXI_arid[2:0] = m01_couplers_to_bmm_bram_cdma_intercon_ARID;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_bmm_bram_cdma_intercon_ARLEN;
  assign M01_AXI_arlock[0] = m01_couplers_to_bmm_bram_cdma_intercon_ARLOCK;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_bmm_bram_cdma_intercon_ARPROT;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_bmm_bram_cdma_intercon_ARSIZE;
  assign M01_AXI_arvalid[0] = m01_couplers_to_bmm_bram_cdma_intercon_ARVALID;
  assign M01_AXI_awaddr[16:0] = m01_couplers_to_bmm_bram_cdma_intercon_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_bmm_bram_cdma_intercon_AWBURST;
  assign M01_AXI_awcache[3:0] = m01_couplers_to_bmm_bram_cdma_intercon_AWCACHE;
  assign M01_AXI_awid[2:0] = m01_couplers_to_bmm_bram_cdma_intercon_AWID;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_bmm_bram_cdma_intercon_AWLEN;
  assign M01_AXI_awlock[0] = m01_couplers_to_bmm_bram_cdma_intercon_AWLOCK;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_bmm_bram_cdma_intercon_AWPROT;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_bmm_bram_cdma_intercon_AWSIZE;
  assign M01_AXI_awvalid[0] = m01_couplers_to_bmm_bram_cdma_intercon_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_bmm_bram_cdma_intercon_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_bmm_bram_cdma_intercon_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_bmm_bram_cdma_intercon_WDATA;
  assign M01_AXI_wlast[0] = m01_couplers_to_bmm_bram_cdma_intercon_WLAST;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_bmm_bram_cdma_intercon_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_bmm_bram_cdma_intercon_WVALID;
  assign M02_AXI_araddr[16:0] = m02_couplers_to_bmm_bram_cdma_intercon_ARADDR;
  assign M02_AXI_arburst[1:0] = m02_couplers_to_bmm_bram_cdma_intercon_ARBURST;
  assign M02_AXI_arcache[3:0] = m02_couplers_to_bmm_bram_cdma_intercon_ARCACHE;
  assign M02_AXI_arid[2:0] = m02_couplers_to_bmm_bram_cdma_intercon_ARID;
  assign M02_AXI_arlen[7:0] = m02_couplers_to_bmm_bram_cdma_intercon_ARLEN;
  assign M02_AXI_arlock[0] = m02_couplers_to_bmm_bram_cdma_intercon_ARLOCK;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_bmm_bram_cdma_intercon_ARPROT;
  assign M02_AXI_arsize[2:0] = m02_couplers_to_bmm_bram_cdma_intercon_ARSIZE;
  assign M02_AXI_arvalid[0] = m02_couplers_to_bmm_bram_cdma_intercon_ARVALID;
  assign M02_AXI_awaddr[16:0] = m02_couplers_to_bmm_bram_cdma_intercon_AWADDR;
  assign M02_AXI_awburst[1:0] = m02_couplers_to_bmm_bram_cdma_intercon_AWBURST;
  assign M02_AXI_awcache[3:0] = m02_couplers_to_bmm_bram_cdma_intercon_AWCACHE;
  assign M02_AXI_awid[2:0] = m02_couplers_to_bmm_bram_cdma_intercon_AWID;
  assign M02_AXI_awlen[7:0] = m02_couplers_to_bmm_bram_cdma_intercon_AWLEN;
  assign M02_AXI_awlock[0] = m02_couplers_to_bmm_bram_cdma_intercon_AWLOCK;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_bmm_bram_cdma_intercon_AWPROT;
  assign M02_AXI_awsize[2:0] = m02_couplers_to_bmm_bram_cdma_intercon_AWSIZE;
  assign M02_AXI_awvalid[0] = m02_couplers_to_bmm_bram_cdma_intercon_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_bmm_bram_cdma_intercon_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_bmm_bram_cdma_intercon_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_bmm_bram_cdma_intercon_WDATA;
  assign M02_AXI_wlast[0] = m02_couplers_to_bmm_bram_cdma_intercon_WLAST;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_bmm_bram_cdma_intercon_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_bmm_bram_cdma_intercon_WVALID;
  assign S00_AXI_arready[0] = bmm_bram_cdma_intercon_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = bmm_bram_cdma_intercon_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[0] = bmm_bram_cdma_intercon_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = bmm_bram_cdma_intercon_to_s00_couplers_BRESP;
  assign S00_AXI_buser[0] = bmm_bram_cdma_intercon_to_s00_couplers_BUSER;
  assign S00_AXI_bvalid[0] = bmm_bram_cdma_intercon_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = bmm_bram_cdma_intercon_to_s00_couplers_RDATA;
  assign S00_AXI_rid[0] = bmm_bram_cdma_intercon_to_s00_couplers_RID;
  assign S00_AXI_rlast[0] = bmm_bram_cdma_intercon_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = bmm_bram_cdma_intercon_to_s00_couplers_RRESP;
  assign S00_AXI_ruser[0] = bmm_bram_cdma_intercon_to_s00_couplers_RUSER;
  assign S00_AXI_rvalid[0] = bmm_bram_cdma_intercon_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = bmm_bram_cdma_intercon_to_s00_couplers_WREADY;
  assign S01_AXI_arready[0] = bmm_bram_cdma_intercon_to_s01_couplers_ARREADY;
  assign S01_AXI_awready[0] = bmm_bram_cdma_intercon_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = bmm_bram_cdma_intercon_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid[0] = bmm_bram_cdma_intercon_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[31:0] = bmm_bram_cdma_intercon_to_s01_couplers_RDATA;
  assign S01_AXI_rlast[0] = bmm_bram_cdma_intercon_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = bmm_bram_cdma_intercon_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid[0] = bmm_bram_cdma_intercon_to_s01_couplers_RVALID;
  assign S01_AXI_wready[0] = bmm_bram_cdma_intercon_to_s01_couplers_WREADY;
  assign S02_AXI_arready[0] = bmm_bram_cdma_intercon_to_s02_couplers_ARREADY;
  assign S02_AXI_awready[0] = bmm_bram_cdma_intercon_to_s02_couplers_AWREADY;
  assign S02_AXI_bid[0] = bmm_bram_cdma_intercon_to_s02_couplers_BID;
  assign S02_AXI_bresp[1:0] = bmm_bram_cdma_intercon_to_s02_couplers_BRESP;
  assign S02_AXI_buser[0] = bmm_bram_cdma_intercon_to_s02_couplers_BUSER;
  assign S02_AXI_bvalid[0] = bmm_bram_cdma_intercon_to_s02_couplers_BVALID;
  assign S02_AXI_rdata[31:0] = bmm_bram_cdma_intercon_to_s02_couplers_RDATA;
  assign S02_AXI_rid[0] = bmm_bram_cdma_intercon_to_s02_couplers_RID;
  assign S02_AXI_rlast[0] = bmm_bram_cdma_intercon_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = bmm_bram_cdma_intercon_to_s02_couplers_RRESP;
  assign S02_AXI_ruser[0] = bmm_bram_cdma_intercon_to_s02_couplers_RUSER;
  assign S02_AXI_rvalid[0] = bmm_bram_cdma_intercon_to_s02_couplers_RVALID;
  assign S02_AXI_wready[0] = bmm_bram_cdma_intercon_to_s02_couplers_WREADY;
  assign S03_AXI_arready[0] = bmm_bram_cdma_intercon_to_s03_couplers_ARREADY;
  assign S03_AXI_awready[0] = bmm_bram_cdma_intercon_to_s03_couplers_AWREADY;
  assign S03_AXI_bid[0] = bmm_bram_cdma_intercon_to_s03_couplers_BID;
  assign S03_AXI_bresp[1:0] = bmm_bram_cdma_intercon_to_s03_couplers_BRESP;
  assign S03_AXI_buser[0] = bmm_bram_cdma_intercon_to_s03_couplers_BUSER;
  assign S03_AXI_bvalid[0] = bmm_bram_cdma_intercon_to_s03_couplers_BVALID;
  assign S03_AXI_rdata[31:0] = bmm_bram_cdma_intercon_to_s03_couplers_RDATA;
  assign S03_AXI_rid[0] = bmm_bram_cdma_intercon_to_s03_couplers_RID;
  assign S03_AXI_rlast[0] = bmm_bram_cdma_intercon_to_s03_couplers_RLAST;
  assign S03_AXI_rresp[1:0] = bmm_bram_cdma_intercon_to_s03_couplers_RRESP;
  assign S03_AXI_ruser[0] = bmm_bram_cdma_intercon_to_s03_couplers_RUSER;
  assign S03_AXI_rvalid[0] = bmm_bram_cdma_intercon_to_s03_couplers_RVALID;
  assign S03_AXI_wready[0] = bmm_bram_cdma_intercon_to_s03_couplers_WREADY;
  assign bmm_bram_cdma_intercon_ACLK_net = ACLK;
  assign bmm_bram_cdma_intercon_ARESETN_net = ARESETN[0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_ARID = S00_AXI_arid[0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_ARUSER = S00_AXI_aruser[0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_AWID = S00_AXI_awid[0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_AWUSER = S00_AXI_awuser[0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_WLAST = S00_AXI_wlast[0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_WUSER = S00_AXI_wuser[0];
  assign bmm_bram_cdma_intercon_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_ARLOCK = S01_AXI_arlock[0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_ARVALID = S01_AXI_arvalid[0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_AWLOCK = S01_AXI_awlock[0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_AWVALID = S01_AXI_awvalid[0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_BREADY = S01_AXI_bready[0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_RREADY = S01_AXI_rready[0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_WLAST = S01_AXI_wlast[0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign bmm_bram_cdma_intercon_to_s01_couplers_WVALID = S01_AXI_wvalid[0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_ARADDR = S02_AXI_araddr[31:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_ARID = S02_AXI_arid[0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_ARLOCK = S02_AXI_arlock[0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_ARQOS = S02_AXI_arqos[3:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_ARUSER = S02_AXI_aruser[0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_ARVALID = S02_AXI_arvalid[0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_AWADDR = S02_AXI_awaddr[31:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_AWID = S02_AXI_awid[0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_AWLOCK = S02_AXI_awlock[0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_AWQOS = S02_AXI_awqos[3:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_AWUSER = S02_AXI_awuser[0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_AWVALID = S02_AXI_awvalid[0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_BREADY = S02_AXI_bready[0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_RREADY = S02_AXI_rready[0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_WDATA = S02_AXI_wdata[31:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_WLAST = S02_AXI_wlast[0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_WSTRB = S02_AXI_wstrb[3:0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_WUSER = S02_AXI_wuser[0];
  assign bmm_bram_cdma_intercon_to_s02_couplers_WVALID = S02_AXI_wvalid[0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_ARADDR = S03_AXI_araddr[31:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_ARBURST = S03_AXI_arburst[1:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_ARCACHE = S03_AXI_arcache[3:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_ARID = S03_AXI_arid[0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_ARLEN = S03_AXI_arlen[7:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_ARLOCK = S03_AXI_arlock[0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_ARPROT = S03_AXI_arprot[2:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_ARQOS = S03_AXI_arqos[3:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_ARSIZE = S03_AXI_arsize[2:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_ARUSER = S03_AXI_aruser[0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_ARVALID = S03_AXI_arvalid[0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_AWADDR = S03_AXI_awaddr[31:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_AWBURST = S03_AXI_awburst[1:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_AWCACHE = S03_AXI_awcache[3:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_AWID = S03_AXI_awid[0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_AWLEN = S03_AXI_awlen[7:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_AWLOCK = S03_AXI_awlock[0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_AWPROT = S03_AXI_awprot[2:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_AWQOS = S03_AXI_awqos[3:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_AWSIZE = S03_AXI_awsize[2:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_AWUSER = S03_AXI_awuser[0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_AWVALID = S03_AXI_awvalid[0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_BREADY = S03_AXI_bready[0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_RREADY = S03_AXI_rready[0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_WDATA = S03_AXI_wdata[31:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_WLAST = S03_AXI_wlast[0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_WSTRB = S03_AXI_wstrb[3:0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_WUSER = S03_AXI_wuser[0];
  assign bmm_bram_cdma_intercon_to_s03_couplers_WVALID = S03_AXI_wvalid[0];
  assign m00_couplers_to_bmm_bram_cdma_intercon_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_bmm_bram_cdma_intercon_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_bmm_bram_cdma_intercon_BID = M00_AXI_bid[2:0];
  assign m00_couplers_to_bmm_bram_cdma_intercon_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_bmm_bram_cdma_intercon_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_bmm_bram_cdma_intercon_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_bmm_bram_cdma_intercon_RID = M00_AXI_rid[2:0];
  assign m00_couplers_to_bmm_bram_cdma_intercon_RLAST = M00_AXI_rlast[0];
  assign m00_couplers_to_bmm_bram_cdma_intercon_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_bmm_bram_cdma_intercon_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_bmm_bram_cdma_intercon_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_bmm_bram_cdma_intercon_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_bmm_bram_cdma_intercon_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_bmm_bram_cdma_intercon_BID = M01_AXI_bid[2:0];
  assign m01_couplers_to_bmm_bram_cdma_intercon_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_bmm_bram_cdma_intercon_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_bmm_bram_cdma_intercon_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_bmm_bram_cdma_intercon_RID = M01_AXI_rid[2:0];
  assign m01_couplers_to_bmm_bram_cdma_intercon_RLAST = M01_AXI_rlast[0];
  assign m01_couplers_to_bmm_bram_cdma_intercon_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_bmm_bram_cdma_intercon_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_bmm_bram_cdma_intercon_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_bmm_bram_cdma_intercon_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_bmm_bram_cdma_intercon_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_bmm_bram_cdma_intercon_BID = M02_AXI_bid[2:0];
  assign m02_couplers_to_bmm_bram_cdma_intercon_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_bmm_bram_cdma_intercon_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_bmm_bram_cdma_intercon_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_bmm_bram_cdma_intercon_RID = M02_AXI_rid[2:0];
  assign m02_couplers_to_bmm_bram_cdma_intercon_RLAST = M02_AXI_rlast[0];
  assign m02_couplers_to_bmm_bram_cdma_intercon_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_bmm_bram_cdma_intercon_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_bmm_bram_cdma_intercon_WREADY = M02_AXI_wready[0];
GND GND
       (.G(GND_1));
m00_couplers_imp_1BWYKNP m00_couplers
       (.M_ACLK(bmm_bram_cdma_intercon_ACLK_net),
        .M_ARESETN(bmm_bram_cdma_intercon_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_bmm_bram_cdma_intercon_ARADDR),
        .M_AXI_arburst(m00_couplers_to_bmm_bram_cdma_intercon_ARBURST),
        .M_AXI_arcache(m00_couplers_to_bmm_bram_cdma_intercon_ARCACHE),
        .M_AXI_arid(m00_couplers_to_bmm_bram_cdma_intercon_ARID),
        .M_AXI_arlen(m00_couplers_to_bmm_bram_cdma_intercon_ARLEN),
        .M_AXI_arlock(m00_couplers_to_bmm_bram_cdma_intercon_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_bmm_bram_cdma_intercon_ARPROT),
        .M_AXI_arready(m00_couplers_to_bmm_bram_cdma_intercon_ARREADY),
        .M_AXI_arsize(m00_couplers_to_bmm_bram_cdma_intercon_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_bmm_bram_cdma_intercon_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_bmm_bram_cdma_intercon_AWADDR),
        .M_AXI_awburst(m00_couplers_to_bmm_bram_cdma_intercon_AWBURST),
        .M_AXI_awcache(m00_couplers_to_bmm_bram_cdma_intercon_AWCACHE),
        .M_AXI_awid(m00_couplers_to_bmm_bram_cdma_intercon_AWID),
        .M_AXI_awlen(m00_couplers_to_bmm_bram_cdma_intercon_AWLEN),
        .M_AXI_awlock(m00_couplers_to_bmm_bram_cdma_intercon_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_bmm_bram_cdma_intercon_AWPROT),
        .M_AXI_awready(m00_couplers_to_bmm_bram_cdma_intercon_AWREADY),
        .M_AXI_awsize(m00_couplers_to_bmm_bram_cdma_intercon_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_bmm_bram_cdma_intercon_AWVALID),
        .M_AXI_bid(m00_couplers_to_bmm_bram_cdma_intercon_BID),
        .M_AXI_bready(m00_couplers_to_bmm_bram_cdma_intercon_BREADY),
        .M_AXI_bresp(m00_couplers_to_bmm_bram_cdma_intercon_BRESP),
        .M_AXI_bvalid(m00_couplers_to_bmm_bram_cdma_intercon_BVALID),
        .M_AXI_rdata(m00_couplers_to_bmm_bram_cdma_intercon_RDATA),
        .M_AXI_rid(m00_couplers_to_bmm_bram_cdma_intercon_RID),
        .M_AXI_rlast(m00_couplers_to_bmm_bram_cdma_intercon_RLAST),
        .M_AXI_rready(m00_couplers_to_bmm_bram_cdma_intercon_RREADY),
        .M_AXI_rresp(m00_couplers_to_bmm_bram_cdma_intercon_RRESP),
        .M_AXI_rvalid(m00_couplers_to_bmm_bram_cdma_intercon_RVALID),
        .M_AXI_wdata(m00_couplers_to_bmm_bram_cdma_intercon_WDATA),
        .M_AXI_wlast(m00_couplers_to_bmm_bram_cdma_intercon_WLAST),
        .M_AXI_wready(m00_couplers_to_bmm_bram_cdma_intercon_WREADY),
        .M_AXI_wstrb(m00_couplers_to_bmm_bram_cdma_intercon_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_bmm_bram_cdma_intercon_WVALID),
        .S_ACLK(bmm_bram_cdma_intercon_ACLK_net),
        .S_ARESETN(bmm_bram_cdma_intercon_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR[16:0]),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR[16:0]),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
m01_couplers_imp_IPPWKR m01_couplers
       (.M_ACLK(bmm_bram_cdma_intercon_ACLK_net),
        .M_ARESETN(bmm_bram_cdma_intercon_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_bmm_bram_cdma_intercon_ARADDR),
        .M_AXI_arburst(m01_couplers_to_bmm_bram_cdma_intercon_ARBURST),
        .M_AXI_arcache(m01_couplers_to_bmm_bram_cdma_intercon_ARCACHE),
        .M_AXI_arid(m01_couplers_to_bmm_bram_cdma_intercon_ARID),
        .M_AXI_arlen(m01_couplers_to_bmm_bram_cdma_intercon_ARLEN),
        .M_AXI_arlock(m01_couplers_to_bmm_bram_cdma_intercon_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_bmm_bram_cdma_intercon_ARPROT),
        .M_AXI_arready(m01_couplers_to_bmm_bram_cdma_intercon_ARREADY),
        .M_AXI_arsize(m01_couplers_to_bmm_bram_cdma_intercon_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_bmm_bram_cdma_intercon_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_bmm_bram_cdma_intercon_AWADDR),
        .M_AXI_awburst(m01_couplers_to_bmm_bram_cdma_intercon_AWBURST),
        .M_AXI_awcache(m01_couplers_to_bmm_bram_cdma_intercon_AWCACHE),
        .M_AXI_awid(m01_couplers_to_bmm_bram_cdma_intercon_AWID),
        .M_AXI_awlen(m01_couplers_to_bmm_bram_cdma_intercon_AWLEN),
        .M_AXI_awlock(m01_couplers_to_bmm_bram_cdma_intercon_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_bmm_bram_cdma_intercon_AWPROT),
        .M_AXI_awready(m01_couplers_to_bmm_bram_cdma_intercon_AWREADY),
        .M_AXI_awsize(m01_couplers_to_bmm_bram_cdma_intercon_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_bmm_bram_cdma_intercon_AWVALID),
        .M_AXI_bid(m01_couplers_to_bmm_bram_cdma_intercon_BID),
        .M_AXI_bready(m01_couplers_to_bmm_bram_cdma_intercon_BREADY),
        .M_AXI_bresp(m01_couplers_to_bmm_bram_cdma_intercon_BRESP),
        .M_AXI_bvalid(m01_couplers_to_bmm_bram_cdma_intercon_BVALID),
        .M_AXI_rdata(m01_couplers_to_bmm_bram_cdma_intercon_RDATA),
        .M_AXI_rid(m01_couplers_to_bmm_bram_cdma_intercon_RID),
        .M_AXI_rlast(m01_couplers_to_bmm_bram_cdma_intercon_RLAST),
        .M_AXI_rready(m01_couplers_to_bmm_bram_cdma_intercon_RREADY),
        .M_AXI_rresp(m01_couplers_to_bmm_bram_cdma_intercon_RRESP),
        .M_AXI_rvalid(m01_couplers_to_bmm_bram_cdma_intercon_RVALID),
        .M_AXI_wdata(m01_couplers_to_bmm_bram_cdma_intercon_WDATA),
        .M_AXI_wlast(m01_couplers_to_bmm_bram_cdma_intercon_WLAST),
        .M_AXI_wready(m01_couplers_to_bmm_bram_cdma_intercon_WREADY),
        .M_AXI_wstrb(m01_couplers_to_bmm_bram_cdma_intercon_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_bmm_bram_cdma_intercon_WVALID),
        .S_ACLK(bmm_bram_cdma_intercon_ACLK_net),
        .S_ARESETN(bmm_bram_cdma_intercon_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR[48:32]),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR[48:32]),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
m02_couplers_imp_1AOSRAG m02_couplers
       (.M_ACLK(bmm_bram_cdma_intercon_ACLK_net),
        .M_ARESETN(bmm_bram_cdma_intercon_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_bmm_bram_cdma_intercon_ARADDR),
        .M_AXI_arburst(m02_couplers_to_bmm_bram_cdma_intercon_ARBURST),
        .M_AXI_arcache(m02_couplers_to_bmm_bram_cdma_intercon_ARCACHE),
        .M_AXI_arid(m02_couplers_to_bmm_bram_cdma_intercon_ARID),
        .M_AXI_arlen(m02_couplers_to_bmm_bram_cdma_intercon_ARLEN),
        .M_AXI_arlock(m02_couplers_to_bmm_bram_cdma_intercon_ARLOCK),
        .M_AXI_arprot(m02_couplers_to_bmm_bram_cdma_intercon_ARPROT),
        .M_AXI_arready(m02_couplers_to_bmm_bram_cdma_intercon_ARREADY),
        .M_AXI_arsize(m02_couplers_to_bmm_bram_cdma_intercon_ARSIZE),
        .M_AXI_arvalid(m02_couplers_to_bmm_bram_cdma_intercon_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_bmm_bram_cdma_intercon_AWADDR),
        .M_AXI_awburst(m02_couplers_to_bmm_bram_cdma_intercon_AWBURST),
        .M_AXI_awcache(m02_couplers_to_bmm_bram_cdma_intercon_AWCACHE),
        .M_AXI_awid(m02_couplers_to_bmm_bram_cdma_intercon_AWID),
        .M_AXI_awlen(m02_couplers_to_bmm_bram_cdma_intercon_AWLEN),
        .M_AXI_awlock(m02_couplers_to_bmm_bram_cdma_intercon_AWLOCK),
        .M_AXI_awprot(m02_couplers_to_bmm_bram_cdma_intercon_AWPROT),
        .M_AXI_awready(m02_couplers_to_bmm_bram_cdma_intercon_AWREADY),
        .M_AXI_awsize(m02_couplers_to_bmm_bram_cdma_intercon_AWSIZE),
        .M_AXI_awvalid(m02_couplers_to_bmm_bram_cdma_intercon_AWVALID),
        .M_AXI_bid(m02_couplers_to_bmm_bram_cdma_intercon_BID),
        .M_AXI_bready(m02_couplers_to_bmm_bram_cdma_intercon_BREADY),
        .M_AXI_bresp(m02_couplers_to_bmm_bram_cdma_intercon_BRESP),
        .M_AXI_bvalid(m02_couplers_to_bmm_bram_cdma_intercon_BVALID),
        .M_AXI_rdata(m02_couplers_to_bmm_bram_cdma_intercon_RDATA),
        .M_AXI_rid(m02_couplers_to_bmm_bram_cdma_intercon_RID),
        .M_AXI_rlast(m02_couplers_to_bmm_bram_cdma_intercon_RLAST),
        .M_AXI_rready(m02_couplers_to_bmm_bram_cdma_intercon_RREADY),
        .M_AXI_rresp(m02_couplers_to_bmm_bram_cdma_intercon_RRESP),
        .M_AXI_rvalid(m02_couplers_to_bmm_bram_cdma_intercon_RVALID),
        .M_AXI_wdata(m02_couplers_to_bmm_bram_cdma_intercon_WDATA),
        .M_AXI_wlast(m02_couplers_to_bmm_bram_cdma_intercon_WLAST),
        .M_AXI_wready(m02_couplers_to_bmm_bram_cdma_intercon_WREADY),
        .M_AXI_wstrb(m02_couplers_to_bmm_bram_cdma_intercon_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_bmm_bram_cdma_intercon_WVALID),
        .S_ACLK(bmm_bram_cdma_intercon_ACLK_net),
        .S_ARESETN(bmm_bram_cdma_intercon_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR[80:64]),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m02_couplers_ARID),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR[80:64]),
        .S_AXI_awburst(xbar_to_m02_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m02_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m02_couplers_AWID),
        .S_AXI_awlen(xbar_to_m02_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m02_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m02_couplers_BID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rid(xbar_to_m02_couplers_RID),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m02_couplers_WLAST),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
s00_couplers_imp_KF6JNB s00_couplers
       (.M_ACLK(bmm_bram_cdma_intercon_ACLK_net),
        .M_ARESETN(bmm_bram_cdma_intercon_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID[0]),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_buser(s00_couplers_to_xbar_BUSER),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID[0]),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_ruser(s00_couplers_to_xbar_RUSER),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wuser(s00_couplers_to_xbar_WUSER),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(bmm_bram_cdma_intercon_ACLK_net),
        .S_ARESETN(bmm_bram_cdma_intercon_ARESETN_net),
        .S_AXI_araddr(bmm_bram_cdma_intercon_to_s00_couplers_ARADDR),
        .S_AXI_arburst(bmm_bram_cdma_intercon_to_s00_couplers_ARBURST),
        .S_AXI_arcache(bmm_bram_cdma_intercon_to_s00_couplers_ARCACHE),
        .S_AXI_arid(bmm_bram_cdma_intercon_to_s00_couplers_ARID),
        .S_AXI_arlen(bmm_bram_cdma_intercon_to_s00_couplers_ARLEN),
        .S_AXI_arlock(bmm_bram_cdma_intercon_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(bmm_bram_cdma_intercon_to_s00_couplers_ARPROT),
        .S_AXI_arqos(bmm_bram_cdma_intercon_to_s00_couplers_ARQOS),
        .S_AXI_arready(bmm_bram_cdma_intercon_to_s00_couplers_ARREADY),
        .S_AXI_arsize(bmm_bram_cdma_intercon_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(bmm_bram_cdma_intercon_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(bmm_bram_cdma_intercon_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(bmm_bram_cdma_intercon_to_s00_couplers_AWADDR),
        .S_AXI_awburst(bmm_bram_cdma_intercon_to_s00_couplers_AWBURST),
        .S_AXI_awcache(bmm_bram_cdma_intercon_to_s00_couplers_AWCACHE),
        .S_AXI_awid(bmm_bram_cdma_intercon_to_s00_couplers_AWID),
        .S_AXI_awlen(bmm_bram_cdma_intercon_to_s00_couplers_AWLEN),
        .S_AXI_awlock(bmm_bram_cdma_intercon_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(bmm_bram_cdma_intercon_to_s00_couplers_AWPROT),
        .S_AXI_awqos(bmm_bram_cdma_intercon_to_s00_couplers_AWQOS),
        .S_AXI_awready(bmm_bram_cdma_intercon_to_s00_couplers_AWREADY),
        .S_AXI_awsize(bmm_bram_cdma_intercon_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(bmm_bram_cdma_intercon_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(bmm_bram_cdma_intercon_to_s00_couplers_AWVALID),
        .S_AXI_bid(bmm_bram_cdma_intercon_to_s00_couplers_BID),
        .S_AXI_bready(bmm_bram_cdma_intercon_to_s00_couplers_BREADY),
        .S_AXI_bresp(bmm_bram_cdma_intercon_to_s00_couplers_BRESP),
        .S_AXI_buser(bmm_bram_cdma_intercon_to_s00_couplers_BUSER),
        .S_AXI_bvalid(bmm_bram_cdma_intercon_to_s00_couplers_BVALID),
        .S_AXI_rdata(bmm_bram_cdma_intercon_to_s00_couplers_RDATA),
        .S_AXI_rid(bmm_bram_cdma_intercon_to_s00_couplers_RID),
        .S_AXI_rlast(bmm_bram_cdma_intercon_to_s00_couplers_RLAST),
        .S_AXI_rready(bmm_bram_cdma_intercon_to_s00_couplers_RREADY),
        .S_AXI_rresp(bmm_bram_cdma_intercon_to_s00_couplers_RRESP),
        .S_AXI_ruser(bmm_bram_cdma_intercon_to_s00_couplers_RUSER),
        .S_AXI_rvalid(bmm_bram_cdma_intercon_to_s00_couplers_RVALID),
        .S_AXI_wdata(bmm_bram_cdma_intercon_to_s00_couplers_WDATA),
        .S_AXI_wlast(bmm_bram_cdma_intercon_to_s00_couplers_WLAST),
        .S_AXI_wready(bmm_bram_cdma_intercon_to_s00_couplers_WREADY),
        .S_AXI_wstrb(bmm_bram_cdma_intercon_to_s00_couplers_WSTRB),
        .S_AXI_wuser(bmm_bram_cdma_intercon_to_s00_couplers_WUSER),
        .S_AXI_wvalid(bmm_bram_cdma_intercon_to_s00_couplers_WVALID));
s01_couplers_imp_1A5P70P s01_couplers
       (.M_ACLK(bmm_bram_cdma_intercon_ACLK_net),
        .M_ARESETN(bmm_bram_cdma_intercon_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(bmm_bram_cdma_intercon_ACLK_net),
        .S_ARESETN(bmm_bram_cdma_intercon_ARESETN_net),
        .S_AXI_araddr(bmm_bram_cdma_intercon_to_s01_couplers_ARADDR),
        .S_AXI_arburst(bmm_bram_cdma_intercon_to_s01_couplers_ARBURST),
        .S_AXI_arcache(bmm_bram_cdma_intercon_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(bmm_bram_cdma_intercon_to_s01_couplers_ARLEN),
        .S_AXI_arlock(bmm_bram_cdma_intercon_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(bmm_bram_cdma_intercon_to_s01_couplers_ARPROT),
        .S_AXI_arqos(bmm_bram_cdma_intercon_to_s01_couplers_ARQOS),
        .S_AXI_arready(bmm_bram_cdma_intercon_to_s01_couplers_ARREADY),
        .S_AXI_arsize(bmm_bram_cdma_intercon_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(bmm_bram_cdma_intercon_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(bmm_bram_cdma_intercon_to_s01_couplers_AWADDR),
        .S_AXI_awburst(bmm_bram_cdma_intercon_to_s01_couplers_AWBURST),
        .S_AXI_awcache(bmm_bram_cdma_intercon_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(bmm_bram_cdma_intercon_to_s01_couplers_AWLEN),
        .S_AXI_awlock(bmm_bram_cdma_intercon_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(bmm_bram_cdma_intercon_to_s01_couplers_AWPROT),
        .S_AXI_awqos(bmm_bram_cdma_intercon_to_s01_couplers_AWQOS),
        .S_AXI_awready(bmm_bram_cdma_intercon_to_s01_couplers_AWREADY),
        .S_AXI_awsize(bmm_bram_cdma_intercon_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(bmm_bram_cdma_intercon_to_s01_couplers_AWVALID),
        .S_AXI_bready(bmm_bram_cdma_intercon_to_s01_couplers_BREADY),
        .S_AXI_bresp(bmm_bram_cdma_intercon_to_s01_couplers_BRESP),
        .S_AXI_bvalid(bmm_bram_cdma_intercon_to_s01_couplers_BVALID),
        .S_AXI_rdata(bmm_bram_cdma_intercon_to_s01_couplers_RDATA),
        .S_AXI_rlast(bmm_bram_cdma_intercon_to_s01_couplers_RLAST),
        .S_AXI_rready(bmm_bram_cdma_intercon_to_s01_couplers_RREADY),
        .S_AXI_rresp(bmm_bram_cdma_intercon_to_s01_couplers_RRESP),
        .S_AXI_rvalid(bmm_bram_cdma_intercon_to_s01_couplers_RVALID),
        .S_AXI_wdata(bmm_bram_cdma_intercon_to_s01_couplers_WDATA),
        .S_AXI_wlast(bmm_bram_cdma_intercon_to_s01_couplers_WLAST),
        .S_AXI_wready(bmm_bram_cdma_intercon_to_s01_couplers_WREADY),
        .S_AXI_wstrb(bmm_bram_cdma_intercon_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(bmm_bram_cdma_intercon_to_s01_couplers_WVALID));
s02_couplers_imp_LHCQTM s02_couplers
       (.M_ACLK(bmm_bram_cdma_intercon_ACLK_net),
        .M_ARESETN(bmm_bram_cdma_intercon_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s02_couplers_to_xbar_ARID),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s02_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s02_couplers_to_xbar_AWID),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s02_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s02_couplers_to_xbar_BID[6]),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_buser(s02_couplers_to_xbar_BUSER),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rid(s02_couplers_to_xbar_RID[6]),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_ruser(s02_couplers_to_xbar_RUSER),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wuser(s02_couplers_to_xbar_WUSER),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(bmm_bram_cdma_intercon_ACLK_net),
        .S_ARESETN(bmm_bram_cdma_intercon_ARESETN_net),
        .S_AXI_araddr(bmm_bram_cdma_intercon_to_s02_couplers_ARADDR),
        .S_AXI_arburst(bmm_bram_cdma_intercon_to_s02_couplers_ARBURST),
        .S_AXI_arcache(bmm_bram_cdma_intercon_to_s02_couplers_ARCACHE),
        .S_AXI_arid(bmm_bram_cdma_intercon_to_s02_couplers_ARID),
        .S_AXI_arlen(bmm_bram_cdma_intercon_to_s02_couplers_ARLEN),
        .S_AXI_arlock(bmm_bram_cdma_intercon_to_s02_couplers_ARLOCK),
        .S_AXI_arprot(bmm_bram_cdma_intercon_to_s02_couplers_ARPROT),
        .S_AXI_arqos(bmm_bram_cdma_intercon_to_s02_couplers_ARQOS),
        .S_AXI_arready(bmm_bram_cdma_intercon_to_s02_couplers_ARREADY),
        .S_AXI_arsize(bmm_bram_cdma_intercon_to_s02_couplers_ARSIZE),
        .S_AXI_aruser(bmm_bram_cdma_intercon_to_s02_couplers_ARUSER),
        .S_AXI_arvalid(bmm_bram_cdma_intercon_to_s02_couplers_ARVALID),
        .S_AXI_awaddr(bmm_bram_cdma_intercon_to_s02_couplers_AWADDR),
        .S_AXI_awburst(bmm_bram_cdma_intercon_to_s02_couplers_AWBURST),
        .S_AXI_awcache(bmm_bram_cdma_intercon_to_s02_couplers_AWCACHE),
        .S_AXI_awid(bmm_bram_cdma_intercon_to_s02_couplers_AWID),
        .S_AXI_awlen(bmm_bram_cdma_intercon_to_s02_couplers_AWLEN),
        .S_AXI_awlock(bmm_bram_cdma_intercon_to_s02_couplers_AWLOCK),
        .S_AXI_awprot(bmm_bram_cdma_intercon_to_s02_couplers_AWPROT),
        .S_AXI_awqos(bmm_bram_cdma_intercon_to_s02_couplers_AWQOS),
        .S_AXI_awready(bmm_bram_cdma_intercon_to_s02_couplers_AWREADY),
        .S_AXI_awsize(bmm_bram_cdma_intercon_to_s02_couplers_AWSIZE),
        .S_AXI_awuser(bmm_bram_cdma_intercon_to_s02_couplers_AWUSER),
        .S_AXI_awvalid(bmm_bram_cdma_intercon_to_s02_couplers_AWVALID),
        .S_AXI_bid(bmm_bram_cdma_intercon_to_s02_couplers_BID),
        .S_AXI_bready(bmm_bram_cdma_intercon_to_s02_couplers_BREADY),
        .S_AXI_bresp(bmm_bram_cdma_intercon_to_s02_couplers_BRESP),
        .S_AXI_buser(bmm_bram_cdma_intercon_to_s02_couplers_BUSER),
        .S_AXI_bvalid(bmm_bram_cdma_intercon_to_s02_couplers_BVALID),
        .S_AXI_rdata(bmm_bram_cdma_intercon_to_s02_couplers_RDATA),
        .S_AXI_rid(bmm_bram_cdma_intercon_to_s02_couplers_RID),
        .S_AXI_rlast(bmm_bram_cdma_intercon_to_s02_couplers_RLAST),
        .S_AXI_rready(bmm_bram_cdma_intercon_to_s02_couplers_RREADY),
        .S_AXI_rresp(bmm_bram_cdma_intercon_to_s02_couplers_RRESP),
        .S_AXI_ruser(bmm_bram_cdma_intercon_to_s02_couplers_RUSER),
        .S_AXI_rvalid(bmm_bram_cdma_intercon_to_s02_couplers_RVALID),
        .S_AXI_wdata(bmm_bram_cdma_intercon_to_s02_couplers_WDATA),
        .S_AXI_wlast(bmm_bram_cdma_intercon_to_s02_couplers_WLAST),
        .S_AXI_wready(bmm_bram_cdma_intercon_to_s02_couplers_WREADY),
        .S_AXI_wstrb(bmm_bram_cdma_intercon_to_s02_couplers_WSTRB),
        .S_AXI_wuser(bmm_bram_cdma_intercon_to_s02_couplers_WUSER),
        .S_AXI_wvalid(bmm_bram_cdma_intercon_to_s02_couplers_WVALID));
s03_couplers_imp_194Z56C s03_couplers
       (.M_ACLK(bmm_bram_cdma_intercon_ACLK_net),
        .M_ARESETN(bmm_bram_cdma_intercon_ARESETN_net),
        .M_AXI_araddr(s03_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s03_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s03_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s03_couplers_to_xbar_ARID),
        .M_AXI_arlen(s03_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s03_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s03_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s03_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s03_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s03_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s03_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s03_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s03_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s03_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s03_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s03_couplers_to_xbar_AWID),
        .M_AXI_awlen(s03_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s03_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s03_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s03_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s03_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s03_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s03_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s03_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s03_couplers_to_xbar_BID[9]),
        .M_AXI_bready(s03_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s03_couplers_to_xbar_BRESP),
        .M_AXI_buser(s03_couplers_to_xbar_BUSER),
        .M_AXI_bvalid(s03_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s03_couplers_to_xbar_RDATA),
        .M_AXI_rid(s03_couplers_to_xbar_RID[9]),
        .M_AXI_rlast(s03_couplers_to_xbar_RLAST),
        .M_AXI_rready(s03_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s03_couplers_to_xbar_RRESP),
        .M_AXI_ruser(s03_couplers_to_xbar_RUSER),
        .M_AXI_rvalid(s03_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s03_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s03_couplers_to_xbar_WLAST),
        .M_AXI_wready(s03_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s03_couplers_to_xbar_WSTRB),
        .M_AXI_wuser(s03_couplers_to_xbar_WUSER),
        .M_AXI_wvalid(s03_couplers_to_xbar_WVALID),
        .S_ACLK(bmm_bram_cdma_intercon_ACLK_net),
        .S_ARESETN(bmm_bram_cdma_intercon_ARESETN_net),
        .S_AXI_araddr(bmm_bram_cdma_intercon_to_s03_couplers_ARADDR),
        .S_AXI_arburst(bmm_bram_cdma_intercon_to_s03_couplers_ARBURST),
        .S_AXI_arcache(bmm_bram_cdma_intercon_to_s03_couplers_ARCACHE),
        .S_AXI_arid(bmm_bram_cdma_intercon_to_s03_couplers_ARID),
        .S_AXI_arlen(bmm_bram_cdma_intercon_to_s03_couplers_ARLEN),
        .S_AXI_arlock(bmm_bram_cdma_intercon_to_s03_couplers_ARLOCK),
        .S_AXI_arprot(bmm_bram_cdma_intercon_to_s03_couplers_ARPROT),
        .S_AXI_arqos(bmm_bram_cdma_intercon_to_s03_couplers_ARQOS),
        .S_AXI_arready(bmm_bram_cdma_intercon_to_s03_couplers_ARREADY),
        .S_AXI_arsize(bmm_bram_cdma_intercon_to_s03_couplers_ARSIZE),
        .S_AXI_aruser(bmm_bram_cdma_intercon_to_s03_couplers_ARUSER),
        .S_AXI_arvalid(bmm_bram_cdma_intercon_to_s03_couplers_ARVALID),
        .S_AXI_awaddr(bmm_bram_cdma_intercon_to_s03_couplers_AWADDR),
        .S_AXI_awburst(bmm_bram_cdma_intercon_to_s03_couplers_AWBURST),
        .S_AXI_awcache(bmm_bram_cdma_intercon_to_s03_couplers_AWCACHE),
        .S_AXI_awid(bmm_bram_cdma_intercon_to_s03_couplers_AWID),
        .S_AXI_awlen(bmm_bram_cdma_intercon_to_s03_couplers_AWLEN),
        .S_AXI_awlock(bmm_bram_cdma_intercon_to_s03_couplers_AWLOCK),
        .S_AXI_awprot(bmm_bram_cdma_intercon_to_s03_couplers_AWPROT),
        .S_AXI_awqos(bmm_bram_cdma_intercon_to_s03_couplers_AWQOS),
        .S_AXI_awready(bmm_bram_cdma_intercon_to_s03_couplers_AWREADY),
        .S_AXI_awsize(bmm_bram_cdma_intercon_to_s03_couplers_AWSIZE),
        .S_AXI_awuser(bmm_bram_cdma_intercon_to_s03_couplers_AWUSER),
        .S_AXI_awvalid(bmm_bram_cdma_intercon_to_s03_couplers_AWVALID),
        .S_AXI_bid(bmm_bram_cdma_intercon_to_s03_couplers_BID),
        .S_AXI_bready(bmm_bram_cdma_intercon_to_s03_couplers_BREADY),
        .S_AXI_bresp(bmm_bram_cdma_intercon_to_s03_couplers_BRESP),
        .S_AXI_buser(bmm_bram_cdma_intercon_to_s03_couplers_BUSER),
        .S_AXI_bvalid(bmm_bram_cdma_intercon_to_s03_couplers_BVALID),
        .S_AXI_rdata(bmm_bram_cdma_intercon_to_s03_couplers_RDATA),
        .S_AXI_rid(bmm_bram_cdma_intercon_to_s03_couplers_RID),
        .S_AXI_rlast(bmm_bram_cdma_intercon_to_s03_couplers_RLAST),
        .S_AXI_rready(bmm_bram_cdma_intercon_to_s03_couplers_RREADY),
        .S_AXI_rresp(bmm_bram_cdma_intercon_to_s03_couplers_RRESP),
        .S_AXI_ruser(bmm_bram_cdma_intercon_to_s03_couplers_RUSER),
        .S_AXI_rvalid(bmm_bram_cdma_intercon_to_s03_couplers_RVALID),
        .S_AXI_wdata(bmm_bram_cdma_intercon_to_s03_couplers_WDATA),
        .S_AXI_wlast(bmm_bram_cdma_intercon_to_s03_couplers_WLAST),
        .S_AXI_wready(bmm_bram_cdma_intercon_to_s03_couplers_WREADY),
        .S_AXI_wstrb(bmm_bram_cdma_intercon_to_s03_couplers_WSTRB),
        .S_AXI_wuser(bmm_bram_cdma_intercon_to_s03_couplers_WUSER),
        .S_AXI_wvalid(bmm_bram_cdma_intercon_to_s03_couplers_WVALID));
dma3_xbar_5 xbar
       (.aclk(bmm_bram_cdma_intercon_ACLK_net),
        .aresetn(bmm_bram_cdma_intercon_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m02_couplers_ARID,xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arsize({xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m02_couplers_AWID,xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awsize({xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m02_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_buser({GND_1,GND_1,GND_1}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m02_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_ruser({GND_1,GND_1,GND_1}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({s03_couplers_to_xbar_ARADDR,s02_couplers_to_xbar_ARADDR,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s03_couplers_to_xbar_ARBURST,s02_couplers_to_xbar_ARBURST,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s03_couplers_to_xbar_ARCACHE,s02_couplers_to_xbar_ARCACHE,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({s03_couplers_to_xbar_ARID,NLW_xbar_s_axi_arid_UNCONNECTED[8:7],s02_couplers_to_xbar_ARID,GND_1,GND_1,GND_1,NLW_xbar_s_axi_arid_UNCONNECTED[2:1],s00_couplers_to_xbar_ARID}),
        .s_axi_arlen({s03_couplers_to_xbar_ARLEN,s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s03_couplers_to_xbar_ARLOCK,s02_couplers_to_xbar_ARLOCK,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s03_couplers_to_xbar_ARPROT,s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s03_couplers_to_xbar_ARQOS,s02_couplers_to_xbar_ARQOS,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s03_couplers_to_xbar_ARREADY,s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s03_couplers_to_xbar_ARSIZE,s02_couplers_to_xbar_ARSIZE,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_aruser({s03_couplers_to_xbar_ARUSER,s02_couplers_to_xbar_ARUSER,GND_1,s00_couplers_to_xbar_ARUSER}),
        .s_axi_arvalid({s03_couplers_to_xbar_ARVALID,s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s03_couplers_to_xbar_AWADDR,s02_couplers_to_xbar_AWADDR,s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s03_couplers_to_xbar_AWBURST,s02_couplers_to_xbar_AWBURST,s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s03_couplers_to_xbar_AWCACHE,s02_couplers_to_xbar_AWCACHE,s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({s03_couplers_to_xbar_AWID,NLW_xbar_s_axi_awid_UNCONNECTED[8:7],s02_couplers_to_xbar_AWID,GND_1,GND_1,GND_1,NLW_xbar_s_axi_awid_UNCONNECTED[2:1],s00_couplers_to_xbar_AWID}),
        .s_axi_awlen({s03_couplers_to_xbar_AWLEN,s02_couplers_to_xbar_AWLEN,s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s03_couplers_to_xbar_AWLOCK,s02_couplers_to_xbar_AWLOCK,s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s03_couplers_to_xbar_AWPROT,s02_couplers_to_xbar_AWPROT,s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s03_couplers_to_xbar_AWQOS,s02_couplers_to_xbar_AWQOS,s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s03_couplers_to_xbar_AWREADY,s02_couplers_to_xbar_AWREADY,s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s03_couplers_to_xbar_AWSIZE,s02_couplers_to_xbar_AWSIZE,s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awuser({s03_couplers_to_xbar_AWUSER,s02_couplers_to_xbar_AWUSER,GND_1,s00_couplers_to_xbar_AWUSER}),
        .s_axi_awvalid({s03_couplers_to_xbar_AWVALID,s02_couplers_to_xbar_AWVALID,s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid({s03_couplers_to_xbar_BID,s02_couplers_to_xbar_BID,NLW_xbar_s_axi_bid_UNCONNECTED[5:3],s00_couplers_to_xbar_BID}),
        .s_axi_bready({s03_couplers_to_xbar_BREADY,s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s03_couplers_to_xbar_BRESP,s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_buser({s03_couplers_to_xbar_BUSER,s02_couplers_to_xbar_BUSER,NLW_xbar_s_axi_buser_UNCONNECTED[1],s00_couplers_to_xbar_BUSER}),
        .s_axi_bvalid({s03_couplers_to_xbar_BVALID,s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s03_couplers_to_xbar_RDATA,s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid({s03_couplers_to_xbar_RID,s02_couplers_to_xbar_RID,NLW_xbar_s_axi_rid_UNCONNECTED[5:3],s00_couplers_to_xbar_RID}),
        .s_axi_rlast({s03_couplers_to_xbar_RLAST,s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s03_couplers_to_xbar_RREADY,s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s03_couplers_to_xbar_RRESP,s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_ruser({s03_couplers_to_xbar_RUSER,s02_couplers_to_xbar_RUSER,NLW_xbar_s_axi_ruser_UNCONNECTED[1],s00_couplers_to_xbar_RUSER}),
        .s_axi_rvalid({s03_couplers_to_xbar_RVALID,s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s03_couplers_to_xbar_WDATA,s02_couplers_to_xbar_WDATA,s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s03_couplers_to_xbar_WLAST,s02_couplers_to_xbar_WLAST,s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s03_couplers_to_xbar_WREADY,s02_couplers_to_xbar_WREADY,s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s03_couplers_to_xbar_WSTRB,s02_couplers_to_xbar_WSTRB,s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wuser({s03_couplers_to_xbar_WUSER,s02_couplers_to_xbar_WUSER,GND_1,s00_couplers_to_xbar_WUSER}),
        .s_axi_wvalid({s03_couplers_to_xbar_WVALID,s02_couplers_to_xbar_WVALID,s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module dma3_axi_mem_intercon_1_7
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire cdma_sg_intercon_ACLK_net;
  wire [0:0]cdma_sg_intercon_ARESETN_net;
  wire [31:0]cdma_sg_intercon_to_s00_couplers_ARADDR;
  wire [1:0]cdma_sg_intercon_to_s00_couplers_ARBURST;
  wire [3:0]cdma_sg_intercon_to_s00_couplers_ARCACHE;
  wire [7:0]cdma_sg_intercon_to_s00_couplers_ARLEN;
  wire [2:0]cdma_sg_intercon_to_s00_couplers_ARPROT;
  wire cdma_sg_intercon_to_s00_couplers_ARREADY;
  wire [2:0]cdma_sg_intercon_to_s00_couplers_ARSIZE;
  wire cdma_sg_intercon_to_s00_couplers_ARVALID;
  wire [31:0]cdma_sg_intercon_to_s00_couplers_AWADDR;
  wire [1:0]cdma_sg_intercon_to_s00_couplers_AWBURST;
  wire [3:0]cdma_sg_intercon_to_s00_couplers_AWCACHE;
  wire [7:0]cdma_sg_intercon_to_s00_couplers_AWLEN;
  wire [2:0]cdma_sg_intercon_to_s00_couplers_AWPROT;
  wire cdma_sg_intercon_to_s00_couplers_AWREADY;
  wire [2:0]cdma_sg_intercon_to_s00_couplers_AWSIZE;
  wire cdma_sg_intercon_to_s00_couplers_AWVALID;
  wire cdma_sg_intercon_to_s00_couplers_BREADY;
  wire [1:0]cdma_sg_intercon_to_s00_couplers_BRESP;
  wire cdma_sg_intercon_to_s00_couplers_BVALID;
  wire [31:0]cdma_sg_intercon_to_s00_couplers_RDATA;
  wire cdma_sg_intercon_to_s00_couplers_RLAST;
  wire cdma_sg_intercon_to_s00_couplers_RREADY;
  wire [1:0]cdma_sg_intercon_to_s00_couplers_RRESP;
  wire cdma_sg_intercon_to_s00_couplers_RVALID;
  wire [31:0]cdma_sg_intercon_to_s00_couplers_WDATA;
  wire cdma_sg_intercon_to_s00_couplers_WLAST;
  wire cdma_sg_intercon_to_s00_couplers_WREADY;
  wire [3:0]cdma_sg_intercon_to_s00_couplers_WSTRB;
  wire cdma_sg_intercon_to_s00_couplers_WVALID;
  wire s00_aclk_1;
  wire [0:0]s00_aresetn_1;
  wire [31:0]s00_couplers_to_cdma_sg_intercon_ARADDR;
  wire [1:0]s00_couplers_to_cdma_sg_intercon_ARBURST;
  wire [3:0]s00_couplers_to_cdma_sg_intercon_ARCACHE;
  wire [3:0]s00_couplers_to_cdma_sg_intercon_ARLEN;
  wire [1:0]s00_couplers_to_cdma_sg_intercon_ARLOCK;
  wire [2:0]s00_couplers_to_cdma_sg_intercon_ARPROT;
  wire [3:0]s00_couplers_to_cdma_sg_intercon_ARQOS;
  wire s00_couplers_to_cdma_sg_intercon_ARREADY;
  wire [2:0]s00_couplers_to_cdma_sg_intercon_ARSIZE;
  wire s00_couplers_to_cdma_sg_intercon_ARVALID;
  wire [31:0]s00_couplers_to_cdma_sg_intercon_AWADDR;
  wire [1:0]s00_couplers_to_cdma_sg_intercon_AWBURST;
  wire [3:0]s00_couplers_to_cdma_sg_intercon_AWCACHE;
  wire [3:0]s00_couplers_to_cdma_sg_intercon_AWLEN;
  wire [1:0]s00_couplers_to_cdma_sg_intercon_AWLOCK;
  wire [2:0]s00_couplers_to_cdma_sg_intercon_AWPROT;
  wire [3:0]s00_couplers_to_cdma_sg_intercon_AWQOS;
  wire s00_couplers_to_cdma_sg_intercon_AWREADY;
  wire [2:0]s00_couplers_to_cdma_sg_intercon_AWSIZE;
  wire s00_couplers_to_cdma_sg_intercon_AWVALID;
  wire s00_couplers_to_cdma_sg_intercon_BREADY;
  wire [1:0]s00_couplers_to_cdma_sg_intercon_BRESP;
  wire s00_couplers_to_cdma_sg_intercon_BVALID;
  wire [31:0]s00_couplers_to_cdma_sg_intercon_RDATA;
  wire s00_couplers_to_cdma_sg_intercon_RLAST;
  wire s00_couplers_to_cdma_sg_intercon_RREADY;
  wire [1:0]s00_couplers_to_cdma_sg_intercon_RRESP;
  wire s00_couplers_to_cdma_sg_intercon_RVALID;
  wire [31:0]s00_couplers_to_cdma_sg_intercon_WDATA;
  wire s00_couplers_to_cdma_sg_intercon_WLAST;
  wire s00_couplers_to_cdma_sg_intercon_WREADY;
  wire [3:0]s00_couplers_to_cdma_sg_intercon_WSTRB;
  wire s00_couplers_to_cdma_sg_intercon_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_cdma_sg_intercon_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_cdma_sg_intercon_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_cdma_sg_intercon_ARCACHE;
  assign M00_AXI_arlen[3:0] = s00_couplers_to_cdma_sg_intercon_ARLEN;
  assign M00_AXI_arlock[1:0] = s00_couplers_to_cdma_sg_intercon_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_cdma_sg_intercon_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_cdma_sg_intercon_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_cdma_sg_intercon_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_cdma_sg_intercon_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_cdma_sg_intercon_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_cdma_sg_intercon_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_cdma_sg_intercon_AWCACHE;
  assign M00_AXI_awlen[3:0] = s00_couplers_to_cdma_sg_intercon_AWLEN;
  assign M00_AXI_awlock[1:0] = s00_couplers_to_cdma_sg_intercon_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_cdma_sg_intercon_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_cdma_sg_intercon_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_cdma_sg_intercon_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_cdma_sg_intercon_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_cdma_sg_intercon_BREADY;
  assign M00_AXI_rready = s00_couplers_to_cdma_sg_intercon_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_cdma_sg_intercon_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_cdma_sg_intercon_WLAST;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_cdma_sg_intercon_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_cdma_sg_intercon_WVALID;
  assign S00_AXI_arready = cdma_sg_intercon_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = cdma_sg_intercon_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = cdma_sg_intercon_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = cdma_sg_intercon_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = cdma_sg_intercon_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = cdma_sg_intercon_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = cdma_sg_intercon_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = cdma_sg_intercon_to_s00_couplers_RVALID;
  assign S00_AXI_wready = cdma_sg_intercon_to_s00_couplers_WREADY;
  assign cdma_sg_intercon_ACLK_net = M00_ACLK;
  assign cdma_sg_intercon_ARESETN_net = M00_ARESETN[0];
  assign cdma_sg_intercon_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign cdma_sg_intercon_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign cdma_sg_intercon_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign cdma_sg_intercon_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign cdma_sg_intercon_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign cdma_sg_intercon_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign cdma_sg_intercon_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign cdma_sg_intercon_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign cdma_sg_intercon_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign cdma_sg_intercon_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign cdma_sg_intercon_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign cdma_sg_intercon_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign cdma_sg_intercon_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign cdma_sg_intercon_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign cdma_sg_intercon_to_s00_couplers_BREADY = S00_AXI_bready;
  assign cdma_sg_intercon_to_s00_couplers_RREADY = S00_AXI_rready;
  assign cdma_sg_intercon_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign cdma_sg_intercon_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign cdma_sg_intercon_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign cdma_sg_intercon_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_aclk_1 = S00_ACLK;
  assign s00_aresetn_1 = S00_ARESETN[0];
  assign s00_couplers_to_cdma_sg_intercon_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_cdma_sg_intercon_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_cdma_sg_intercon_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_cdma_sg_intercon_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_cdma_sg_intercon_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_cdma_sg_intercon_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_cdma_sg_intercon_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_cdma_sg_intercon_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_cdma_sg_intercon_WREADY = M00_AXI_wready;
s00_couplers_imp_1ES7M3S s00_couplers
       (.M_ACLK(cdma_sg_intercon_ACLK_net),
        .M_ARESETN(cdma_sg_intercon_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_cdma_sg_intercon_ARADDR),
        .M_AXI_arburst(s00_couplers_to_cdma_sg_intercon_ARBURST),
        .M_AXI_arcache(s00_couplers_to_cdma_sg_intercon_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_cdma_sg_intercon_ARLEN),
        .M_AXI_arlock(s00_couplers_to_cdma_sg_intercon_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_cdma_sg_intercon_ARPROT),
        .M_AXI_arqos(s00_couplers_to_cdma_sg_intercon_ARQOS),
        .M_AXI_arready(s00_couplers_to_cdma_sg_intercon_ARREADY),
        .M_AXI_arsize(s00_couplers_to_cdma_sg_intercon_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_cdma_sg_intercon_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_cdma_sg_intercon_AWADDR),
        .M_AXI_awburst(s00_couplers_to_cdma_sg_intercon_AWBURST),
        .M_AXI_awcache(s00_couplers_to_cdma_sg_intercon_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_cdma_sg_intercon_AWLEN),
        .M_AXI_awlock(s00_couplers_to_cdma_sg_intercon_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_cdma_sg_intercon_AWPROT),
        .M_AXI_awqos(s00_couplers_to_cdma_sg_intercon_AWQOS),
        .M_AXI_awready(s00_couplers_to_cdma_sg_intercon_AWREADY),
        .M_AXI_awsize(s00_couplers_to_cdma_sg_intercon_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_cdma_sg_intercon_AWVALID),
        .M_AXI_bready(s00_couplers_to_cdma_sg_intercon_BREADY),
        .M_AXI_bresp(s00_couplers_to_cdma_sg_intercon_BRESP),
        .M_AXI_bvalid(s00_couplers_to_cdma_sg_intercon_BVALID),
        .M_AXI_rdata(s00_couplers_to_cdma_sg_intercon_RDATA),
        .M_AXI_rlast(s00_couplers_to_cdma_sg_intercon_RLAST),
        .M_AXI_rready(s00_couplers_to_cdma_sg_intercon_RREADY),
        .M_AXI_rresp(s00_couplers_to_cdma_sg_intercon_RRESP),
        .M_AXI_rvalid(s00_couplers_to_cdma_sg_intercon_RVALID),
        .M_AXI_wdata(s00_couplers_to_cdma_sg_intercon_WDATA),
        .M_AXI_wlast(s00_couplers_to_cdma_sg_intercon_WLAST),
        .M_AXI_wready(s00_couplers_to_cdma_sg_intercon_WREADY),
        .M_AXI_wstrb(s00_couplers_to_cdma_sg_intercon_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_cdma_sg_intercon_WVALID),
        .S_ACLK(s00_aclk_1),
        .S_ARESETN(s00_aresetn_1),
        .S_AXI_araddr(cdma_sg_intercon_to_s00_couplers_ARADDR),
        .S_AXI_arburst(cdma_sg_intercon_to_s00_couplers_ARBURST),
        .S_AXI_arcache(cdma_sg_intercon_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(cdma_sg_intercon_to_s00_couplers_ARLEN),
        .S_AXI_arprot(cdma_sg_intercon_to_s00_couplers_ARPROT),
        .S_AXI_arready(cdma_sg_intercon_to_s00_couplers_ARREADY),
        .S_AXI_arsize(cdma_sg_intercon_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(cdma_sg_intercon_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(cdma_sg_intercon_to_s00_couplers_AWADDR),
        .S_AXI_awburst(cdma_sg_intercon_to_s00_couplers_AWBURST),
        .S_AXI_awcache(cdma_sg_intercon_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(cdma_sg_intercon_to_s00_couplers_AWLEN),
        .S_AXI_awprot(cdma_sg_intercon_to_s00_couplers_AWPROT),
        .S_AXI_awready(cdma_sg_intercon_to_s00_couplers_AWREADY),
        .S_AXI_awsize(cdma_sg_intercon_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(cdma_sg_intercon_to_s00_couplers_AWVALID),
        .S_AXI_bready(cdma_sg_intercon_to_s00_couplers_BREADY),
        .S_AXI_bresp(cdma_sg_intercon_to_s00_couplers_BRESP),
        .S_AXI_bvalid(cdma_sg_intercon_to_s00_couplers_BVALID),
        .S_AXI_rdata(cdma_sg_intercon_to_s00_couplers_RDATA),
        .S_AXI_rlast(cdma_sg_intercon_to_s00_couplers_RLAST),
        .S_AXI_rready(cdma_sg_intercon_to_s00_couplers_RREADY),
        .S_AXI_rresp(cdma_sg_intercon_to_s00_couplers_RRESP),
        .S_AXI_rvalid(cdma_sg_intercon_to_s00_couplers_RVALID),
        .S_AXI_wdata(cdma_sg_intercon_to_s00_couplers_WDATA),
        .S_AXI_wlast(cdma_sg_intercon_to_s00_couplers_WLAST),
        .S_AXI_wready(cdma_sg_intercon_to_s00_couplers_WREADY),
        .S_AXI_wstrb(cdma_sg_intercon_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(cdma_sg_intercon_to_s00_couplers_WVALID));
endmodule

module dma3_axi_mem_intercon_2
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [7:0]M01_AXI_arlen;
  output [0:0]M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  output [3:0]M01_AXI_arqos;
  input [0:0]M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [7:0]M01_AXI_awlen;
  output [0:0]M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  output [3:0]M01_AXI_awqos;
  input [0:0]M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  input [0:0]M01_AXI_rlast;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  output [0:0]M01_AXI_wlast;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire GND_1;
  wire cdma_bram_intercon_ACLK_net;
  wire [0:0]cdma_bram_intercon_ARESETN_net;
  wire [31:0]cdma_bram_intercon_to_s00_couplers_ARADDR;
  wire [1:0]cdma_bram_intercon_to_s00_couplers_ARBURST;
  wire [3:0]cdma_bram_intercon_to_s00_couplers_ARCACHE;
  wire [7:0]cdma_bram_intercon_to_s00_couplers_ARLEN;
  wire [2:0]cdma_bram_intercon_to_s00_couplers_ARPROT;
  wire cdma_bram_intercon_to_s00_couplers_ARREADY;
  wire [2:0]cdma_bram_intercon_to_s00_couplers_ARSIZE;
  wire cdma_bram_intercon_to_s00_couplers_ARVALID;
  wire [31:0]cdma_bram_intercon_to_s00_couplers_AWADDR;
  wire [1:0]cdma_bram_intercon_to_s00_couplers_AWBURST;
  wire [3:0]cdma_bram_intercon_to_s00_couplers_AWCACHE;
  wire [7:0]cdma_bram_intercon_to_s00_couplers_AWLEN;
  wire [2:0]cdma_bram_intercon_to_s00_couplers_AWPROT;
  wire cdma_bram_intercon_to_s00_couplers_AWREADY;
  wire [2:0]cdma_bram_intercon_to_s00_couplers_AWSIZE;
  wire cdma_bram_intercon_to_s00_couplers_AWVALID;
  wire cdma_bram_intercon_to_s00_couplers_BREADY;
  wire [1:0]cdma_bram_intercon_to_s00_couplers_BRESP;
  wire cdma_bram_intercon_to_s00_couplers_BVALID;
  wire [31:0]cdma_bram_intercon_to_s00_couplers_RDATA;
  wire cdma_bram_intercon_to_s00_couplers_RLAST;
  wire cdma_bram_intercon_to_s00_couplers_RREADY;
  wire [1:0]cdma_bram_intercon_to_s00_couplers_RRESP;
  wire cdma_bram_intercon_to_s00_couplers_RVALID;
  wire [31:0]cdma_bram_intercon_to_s00_couplers_WDATA;
  wire cdma_bram_intercon_to_s00_couplers_WLAST;
  wire cdma_bram_intercon_to_s00_couplers_WREADY;
  wire [3:0]cdma_bram_intercon_to_s00_couplers_WSTRB;
  wire cdma_bram_intercon_to_s00_couplers_WVALID;
  wire m00_aclk_1;
  wire [0:0]m00_aresetn_1;
  wire [31:0]m00_couplers_to_cdma_bram_intercon_ARADDR;
  wire [1:0]m00_couplers_to_cdma_bram_intercon_ARBURST;
  wire [3:0]m00_couplers_to_cdma_bram_intercon_ARCACHE;
  wire [3:0]m00_couplers_to_cdma_bram_intercon_ARLEN;
  wire [1:0]m00_couplers_to_cdma_bram_intercon_ARLOCK;
  wire [2:0]m00_couplers_to_cdma_bram_intercon_ARPROT;
  wire [3:0]m00_couplers_to_cdma_bram_intercon_ARQOS;
  wire m00_couplers_to_cdma_bram_intercon_ARREADY;
  wire [2:0]m00_couplers_to_cdma_bram_intercon_ARSIZE;
  wire m00_couplers_to_cdma_bram_intercon_ARVALID;
  wire [31:0]m00_couplers_to_cdma_bram_intercon_AWADDR;
  wire [1:0]m00_couplers_to_cdma_bram_intercon_AWBURST;
  wire [3:0]m00_couplers_to_cdma_bram_intercon_AWCACHE;
  wire [3:0]m00_couplers_to_cdma_bram_intercon_AWLEN;
  wire [1:0]m00_couplers_to_cdma_bram_intercon_AWLOCK;
  wire [2:0]m00_couplers_to_cdma_bram_intercon_AWPROT;
  wire [3:0]m00_couplers_to_cdma_bram_intercon_AWQOS;
  wire m00_couplers_to_cdma_bram_intercon_AWREADY;
  wire [2:0]m00_couplers_to_cdma_bram_intercon_AWSIZE;
  wire m00_couplers_to_cdma_bram_intercon_AWVALID;
  wire m00_couplers_to_cdma_bram_intercon_BREADY;
  wire [1:0]m00_couplers_to_cdma_bram_intercon_BRESP;
  wire m00_couplers_to_cdma_bram_intercon_BVALID;
  wire [31:0]m00_couplers_to_cdma_bram_intercon_RDATA;
  wire m00_couplers_to_cdma_bram_intercon_RLAST;
  wire m00_couplers_to_cdma_bram_intercon_RREADY;
  wire [1:0]m00_couplers_to_cdma_bram_intercon_RRESP;
  wire m00_couplers_to_cdma_bram_intercon_RVALID;
  wire [31:0]m00_couplers_to_cdma_bram_intercon_WDATA;
  wire m00_couplers_to_cdma_bram_intercon_WLAST;
  wire m00_couplers_to_cdma_bram_intercon_WREADY;
  wire [3:0]m00_couplers_to_cdma_bram_intercon_WSTRB;
  wire m00_couplers_to_cdma_bram_intercon_WVALID;
  wire m01_aclk_1;
  wire [0:0]m01_aresetn_1;
  wire [31:0]m01_couplers_to_cdma_bram_intercon_ARADDR;
  wire [1:0]m01_couplers_to_cdma_bram_intercon_ARBURST;
  wire [3:0]m01_couplers_to_cdma_bram_intercon_ARCACHE;
  wire [7:0]m01_couplers_to_cdma_bram_intercon_ARLEN;
  wire [0:0]m01_couplers_to_cdma_bram_intercon_ARLOCK;
  wire [2:0]m01_couplers_to_cdma_bram_intercon_ARPROT;
  wire [3:0]m01_couplers_to_cdma_bram_intercon_ARQOS;
  wire [0:0]m01_couplers_to_cdma_bram_intercon_ARREADY;
  wire [2:0]m01_couplers_to_cdma_bram_intercon_ARSIZE;
  wire [0:0]m01_couplers_to_cdma_bram_intercon_ARVALID;
  wire [31:0]m01_couplers_to_cdma_bram_intercon_AWADDR;
  wire [1:0]m01_couplers_to_cdma_bram_intercon_AWBURST;
  wire [3:0]m01_couplers_to_cdma_bram_intercon_AWCACHE;
  wire [7:0]m01_couplers_to_cdma_bram_intercon_AWLEN;
  wire [0:0]m01_couplers_to_cdma_bram_intercon_AWLOCK;
  wire [2:0]m01_couplers_to_cdma_bram_intercon_AWPROT;
  wire [3:0]m01_couplers_to_cdma_bram_intercon_AWQOS;
  wire [0:0]m01_couplers_to_cdma_bram_intercon_AWREADY;
  wire [2:0]m01_couplers_to_cdma_bram_intercon_AWSIZE;
  wire [0:0]m01_couplers_to_cdma_bram_intercon_AWVALID;
  wire [0:0]m01_couplers_to_cdma_bram_intercon_BREADY;
  wire [1:0]m01_couplers_to_cdma_bram_intercon_BRESP;
  wire [0:0]m01_couplers_to_cdma_bram_intercon_BVALID;
  wire [31:0]m01_couplers_to_cdma_bram_intercon_RDATA;
  wire [0:0]m01_couplers_to_cdma_bram_intercon_RLAST;
  wire [0:0]m01_couplers_to_cdma_bram_intercon_RREADY;
  wire [1:0]m01_couplers_to_cdma_bram_intercon_RRESP;
  wire [0:0]m01_couplers_to_cdma_bram_intercon_RVALID;
  wire [31:0]m01_couplers_to_cdma_bram_intercon_WDATA;
  wire [0:0]m01_couplers_to_cdma_bram_intercon_WLAST;
  wire [0:0]m01_couplers_to_cdma_bram_intercon_WREADY;
  wire [3:0]m01_couplers_to_cdma_bram_intercon_WSTRB;
  wire [0:0]m01_couplers_to_cdma_bram_intercon_WVALID;
  wire s00_aclk_1;
  wire [0:0]s00_aresetn_1;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [0:0]xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_cdma_bram_intercon_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_cdma_bram_intercon_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_cdma_bram_intercon_ARCACHE;
  assign M00_AXI_arlen[3:0] = m00_couplers_to_cdma_bram_intercon_ARLEN;
  assign M00_AXI_arlock[1:0] = m00_couplers_to_cdma_bram_intercon_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_cdma_bram_intercon_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_cdma_bram_intercon_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_cdma_bram_intercon_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_cdma_bram_intercon_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_cdma_bram_intercon_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_cdma_bram_intercon_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_cdma_bram_intercon_AWCACHE;
  assign M00_AXI_awlen[3:0] = m00_couplers_to_cdma_bram_intercon_AWLEN;
  assign M00_AXI_awlock[1:0] = m00_couplers_to_cdma_bram_intercon_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_cdma_bram_intercon_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_cdma_bram_intercon_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_cdma_bram_intercon_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_cdma_bram_intercon_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_cdma_bram_intercon_BREADY;
  assign M00_AXI_rready = m00_couplers_to_cdma_bram_intercon_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_cdma_bram_intercon_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_cdma_bram_intercon_WLAST;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_cdma_bram_intercon_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_cdma_bram_intercon_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_cdma_bram_intercon_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_cdma_bram_intercon_ARBURST;
  assign M01_AXI_arcache[3:0] = m01_couplers_to_cdma_bram_intercon_ARCACHE;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_cdma_bram_intercon_ARLEN;
  assign M01_AXI_arlock[0] = m01_couplers_to_cdma_bram_intercon_ARLOCK;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_cdma_bram_intercon_ARPROT;
  assign M01_AXI_arqos[3:0] = m01_couplers_to_cdma_bram_intercon_ARQOS;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_cdma_bram_intercon_ARSIZE;
  assign M01_AXI_arvalid[0] = m01_couplers_to_cdma_bram_intercon_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_cdma_bram_intercon_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_cdma_bram_intercon_AWBURST;
  assign M01_AXI_awcache[3:0] = m01_couplers_to_cdma_bram_intercon_AWCACHE;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_cdma_bram_intercon_AWLEN;
  assign M01_AXI_awlock[0] = m01_couplers_to_cdma_bram_intercon_AWLOCK;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_cdma_bram_intercon_AWPROT;
  assign M01_AXI_awqos[3:0] = m01_couplers_to_cdma_bram_intercon_AWQOS;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_cdma_bram_intercon_AWSIZE;
  assign M01_AXI_awvalid[0] = m01_couplers_to_cdma_bram_intercon_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_cdma_bram_intercon_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_cdma_bram_intercon_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_cdma_bram_intercon_WDATA;
  assign M01_AXI_wlast[0] = m01_couplers_to_cdma_bram_intercon_WLAST;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_cdma_bram_intercon_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_cdma_bram_intercon_WVALID;
  assign S00_AXI_arready = cdma_bram_intercon_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = cdma_bram_intercon_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = cdma_bram_intercon_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = cdma_bram_intercon_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = cdma_bram_intercon_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = cdma_bram_intercon_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = cdma_bram_intercon_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = cdma_bram_intercon_to_s00_couplers_RVALID;
  assign S00_AXI_wready = cdma_bram_intercon_to_s00_couplers_WREADY;
  assign cdma_bram_intercon_ACLK_net = ACLK;
  assign cdma_bram_intercon_ARESETN_net = ARESETN[0];
  assign cdma_bram_intercon_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign cdma_bram_intercon_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign cdma_bram_intercon_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign cdma_bram_intercon_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign cdma_bram_intercon_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign cdma_bram_intercon_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign cdma_bram_intercon_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign cdma_bram_intercon_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign cdma_bram_intercon_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign cdma_bram_intercon_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign cdma_bram_intercon_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign cdma_bram_intercon_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign cdma_bram_intercon_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign cdma_bram_intercon_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign cdma_bram_intercon_to_s00_couplers_BREADY = S00_AXI_bready;
  assign cdma_bram_intercon_to_s00_couplers_RREADY = S00_AXI_rready;
  assign cdma_bram_intercon_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign cdma_bram_intercon_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign cdma_bram_intercon_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign cdma_bram_intercon_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_aclk_1 = M00_ACLK;
  assign m00_aresetn_1 = M00_ARESETN[0];
  assign m00_couplers_to_cdma_bram_intercon_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_cdma_bram_intercon_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_cdma_bram_intercon_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_cdma_bram_intercon_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_cdma_bram_intercon_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_cdma_bram_intercon_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_cdma_bram_intercon_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_cdma_bram_intercon_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_cdma_bram_intercon_WREADY = M00_AXI_wready;
  assign m01_aclk_1 = M01_ACLK;
  assign m01_aresetn_1 = M01_ARESETN[0];
  assign m01_couplers_to_cdma_bram_intercon_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_cdma_bram_intercon_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_cdma_bram_intercon_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_cdma_bram_intercon_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_cdma_bram_intercon_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_cdma_bram_intercon_RLAST = M01_AXI_rlast[0];
  assign m01_couplers_to_cdma_bram_intercon_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_cdma_bram_intercon_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_cdma_bram_intercon_WREADY = M01_AXI_wready[0];
  assign s00_aclk_1 = S00_ACLK;
  assign s00_aresetn_1 = S00_ARESETN[0];
GND GND
       (.G(GND_1));
m00_couplers_imp_BLZDDH m00_couplers
       (.M_ACLK(m00_aclk_1),
        .M_ARESETN(m00_aresetn_1),
        .M_AXI_araddr(m00_couplers_to_cdma_bram_intercon_ARADDR),
        .M_AXI_arburst(m00_couplers_to_cdma_bram_intercon_ARBURST),
        .M_AXI_arcache(m00_couplers_to_cdma_bram_intercon_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_cdma_bram_intercon_ARLEN),
        .M_AXI_arlock(m00_couplers_to_cdma_bram_intercon_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_cdma_bram_intercon_ARPROT),
        .M_AXI_arqos(m00_couplers_to_cdma_bram_intercon_ARQOS),
        .M_AXI_arready(m00_couplers_to_cdma_bram_intercon_ARREADY),
        .M_AXI_arsize(m00_couplers_to_cdma_bram_intercon_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_cdma_bram_intercon_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_cdma_bram_intercon_AWADDR),
        .M_AXI_awburst(m00_couplers_to_cdma_bram_intercon_AWBURST),
        .M_AXI_awcache(m00_couplers_to_cdma_bram_intercon_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_cdma_bram_intercon_AWLEN),
        .M_AXI_awlock(m00_couplers_to_cdma_bram_intercon_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_cdma_bram_intercon_AWPROT),
        .M_AXI_awqos(m00_couplers_to_cdma_bram_intercon_AWQOS),
        .M_AXI_awready(m00_couplers_to_cdma_bram_intercon_AWREADY),
        .M_AXI_awsize(m00_couplers_to_cdma_bram_intercon_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_cdma_bram_intercon_AWVALID),
        .M_AXI_bready(m00_couplers_to_cdma_bram_intercon_BREADY),
        .M_AXI_bresp(m00_couplers_to_cdma_bram_intercon_BRESP),
        .M_AXI_bvalid(m00_couplers_to_cdma_bram_intercon_BVALID),
        .M_AXI_rdata(m00_couplers_to_cdma_bram_intercon_RDATA),
        .M_AXI_rlast(m00_couplers_to_cdma_bram_intercon_RLAST),
        .M_AXI_rready(m00_couplers_to_cdma_bram_intercon_RREADY),
        .M_AXI_rresp(m00_couplers_to_cdma_bram_intercon_RRESP),
        .M_AXI_rvalid(m00_couplers_to_cdma_bram_intercon_RVALID),
        .M_AXI_wdata(m00_couplers_to_cdma_bram_intercon_WDATA),
        .M_AXI_wlast(m00_couplers_to_cdma_bram_intercon_WLAST),
        .M_AXI_wready(m00_couplers_to_cdma_bram_intercon_WREADY),
        .M_AXI_wstrb(m00_couplers_to_cdma_bram_intercon_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_cdma_bram_intercon_WVALID),
        .S_ACLK(cdma_bram_intercon_ACLK_net),
        .S_ARESETN(cdma_bram_intercon_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
m01_couplers_imp_1IYS5E3 m01_couplers
       (.M_ACLK(m01_aclk_1),
        .M_ARESETN(m01_aresetn_1),
        .M_AXI_araddr(m01_couplers_to_cdma_bram_intercon_ARADDR),
        .M_AXI_arburst(m01_couplers_to_cdma_bram_intercon_ARBURST),
        .M_AXI_arcache(m01_couplers_to_cdma_bram_intercon_ARCACHE),
        .M_AXI_arlen(m01_couplers_to_cdma_bram_intercon_ARLEN),
        .M_AXI_arlock(m01_couplers_to_cdma_bram_intercon_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_cdma_bram_intercon_ARPROT),
        .M_AXI_arqos(m01_couplers_to_cdma_bram_intercon_ARQOS),
        .M_AXI_arready(m01_couplers_to_cdma_bram_intercon_ARREADY),
        .M_AXI_arsize(m01_couplers_to_cdma_bram_intercon_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_cdma_bram_intercon_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_cdma_bram_intercon_AWADDR),
        .M_AXI_awburst(m01_couplers_to_cdma_bram_intercon_AWBURST),
        .M_AXI_awcache(m01_couplers_to_cdma_bram_intercon_AWCACHE),
        .M_AXI_awlen(m01_couplers_to_cdma_bram_intercon_AWLEN),
        .M_AXI_awlock(m01_couplers_to_cdma_bram_intercon_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_cdma_bram_intercon_AWPROT),
        .M_AXI_awqos(m01_couplers_to_cdma_bram_intercon_AWQOS),
        .M_AXI_awready(m01_couplers_to_cdma_bram_intercon_AWREADY),
        .M_AXI_awsize(m01_couplers_to_cdma_bram_intercon_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_cdma_bram_intercon_AWVALID),
        .M_AXI_bready(m01_couplers_to_cdma_bram_intercon_BREADY),
        .M_AXI_bresp(m01_couplers_to_cdma_bram_intercon_BRESP),
        .M_AXI_bvalid(m01_couplers_to_cdma_bram_intercon_BVALID),
        .M_AXI_rdata(m01_couplers_to_cdma_bram_intercon_RDATA),
        .M_AXI_rlast(m01_couplers_to_cdma_bram_intercon_RLAST),
        .M_AXI_rready(m01_couplers_to_cdma_bram_intercon_RREADY),
        .M_AXI_rresp(m01_couplers_to_cdma_bram_intercon_RRESP),
        .M_AXI_rvalid(m01_couplers_to_cdma_bram_intercon_RVALID),
        .M_AXI_wdata(m01_couplers_to_cdma_bram_intercon_WDATA),
        .M_AXI_wlast(m01_couplers_to_cdma_bram_intercon_WLAST),
        .M_AXI_wready(m01_couplers_to_cdma_bram_intercon_WREADY),
        .M_AXI_wstrb(m01_couplers_to_cdma_bram_intercon_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_cdma_bram_intercon_WVALID),
        .S_ACLK(cdma_bram_intercon_ACLK_net),
        .S_ARESETN(cdma_bram_intercon_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
s00_couplers_imp_1KV451Z s00_couplers
       (.M_ACLK(cdma_bram_intercon_ACLK_net),
        .M_ARESETN(cdma_bram_intercon_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(s00_aclk_1),
        .S_ARESETN(s00_aresetn_1),
        .S_AXI_araddr(cdma_bram_intercon_to_s00_couplers_ARADDR),
        .S_AXI_arburst(cdma_bram_intercon_to_s00_couplers_ARBURST),
        .S_AXI_arcache(cdma_bram_intercon_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(cdma_bram_intercon_to_s00_couplers_ARLEN),
        .S_AXI_arprot(cdma_bram_intercon_to_s00_couplers_ARPROT),
        .S_AXI_arready(cdma_bram_intercon_to_s00_couplers_ARREADY),
        .S_AXI_arsize(cdma_bram_intercon_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(cdma_bram_intercon_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(cdma_bram_intercon_to_s00_couplers_AWADDR),
        .S_AXI_awburst(cdma_bram_intercon_to_s00_couplers_AWBURST),
        .S_AXI_awcache(cdma_bram_intercon_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(cdma_bram_intercon_to_s00_couplers_AWLEN),
        .S_AXI_awprot(cdma_bram_intercon_to_s00_couplers_AWPROT),
        .S_AXI_awready(cdma_bram_intercon_to_s00_couplers_AWREADY),
        .S_AXI_awsize(cdma_bram_intercon_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(cdma_bram_intercon_to_s00_couplers_AWVALID),
        .S_AXI_bready(cdma_bram_intercon_to_s00_couplers_BREADY),
        .S_AXI_bresp(cdma_bram_intercon_to_s00_couplers_BRESP),
        .S_AXI_bvalid(cdma_bram_intercon_to_s00_couplers_BVALID),
        .S_AXI_rdata(cdma_bram_intercon_to_s00_couplers_RDATA),
        .S_AXI_rlast(cdma_bram_intercon_to_s00_couplers_RLAST),
        .S_AXI_rready(cdma_bram_intercon_to_s00_couplers_RREADY),
        .S_AXI_rresp(cdma_bram_intercon_to_s00_couplers_RRESP),
        .S_AXI_rvalid(cdma_bram_intercon_to_s00_couplers_RVALID),
        .S_AXI_wdata(cdma_bram_intercon_to_s00_couplers_WDATA),
        .S_AXI_wlast(cdma_bram_intercon_to_s00_couplers_WLAST),
        .S_AXI_wready(cdma_bram_intercon_to_s00_couplers_WREADY),
        .S_AXI_wstrb(cdma_bram_intercon_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(cdma_bram_intercon_to_s00_couplers_WVALID));
dma3_xbar_1 xbar
       (.aclk(cdma_bram_intercon_ACLK_net),
        .aresetn(cdma_bram_intercon_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arlen({xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize({xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awlen({xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize({xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rlast({xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(GND_1),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(GND_1),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module dma3_processing_system7_0_axi_periph_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [5:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [5:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output [4:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [4:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire ctrl_axilite_intercon_ACLK_net;
  wire [0:0]ctrl_axilite_intercon_ARESETN_net;
  wire [31:0]ctrl_axilite_intercon_to_s00_couplers_ARADDR;
  wire [1:0]ctrl_axilite_intercon_to_s00_couplers_ARBURST;
  wire [3:0]ctrl_axilite_intercon_to_s00_couplers_ARCACHE;
  wire [11:0]ctrl_axilite_intercon_to_s00_couplers_ARID;
  wire [3:0]ctrl_axilite_intercon_to_s00_couplers_ARLEN;
  wire [1:0]ctrl_axilite_intercon_to_s00_couplers_ARLOCK;
  wire [2:0]ctrl_axilite_intercon_to_s00_couplers_ARPROT;
  wire [3:0]ctrl_axilite_intercon_to_s00_couplers_ARQOS;
  wire ctrl_axilite_intercon_to_s00_couplers_ARREADY;
  wire [2:0]ctrl_axilite_intercon_to_s00_couplers_ARSIZE;
  wire ctrl_axilite_intercon_to_s00_couplers_ARVALID;
  wire [31:0]ctrl_axilite_intercon_to_s00_couplers_AWADDR;
  wire [1:0]ctrl_axilite_intercon_to_s00_couplers_AWBURST;
  wire [3:0]ctrl_axilite_intercon_to_s00_couplers_AWCACHE;
  wire [11:0]ctrl_axilite_intercon_to_s00_couplers_AWID;
  wire [3:0]ctrl_axilite_intercon_to_s00_couplers_AWLEN;
  wire [1:0]ctrl_axilite_intercon_to_s00_couplers_AWLOCK;
  wire [2:0]ctrl_axilite_intercon_to_s00_couplers_AWPROT;
  wire [3:0]ctrl_axilite_intercon_to_s00_couplers_AWQOS;
  wire ctrl_axilite_intercon_to_s00_couplers_AWREADY;
  wire [2:0]ctrl_axilite_intercon_to_s00_couplers_AWSIZE;
  wire ctrl_axilite_intercon_to_s00_couplers_AWVALID;
  wire [11:0]ctrl_axilite_intercon_to_s00_couplers_BID;
  wire ctrl_axilite_intercon_to_s00_couplers_BREADY;
  wire [1:0]ctrl_axilite_intercon_to_s00_couplers_BRESP;
  wire ctrl_axilite_intercon_to_s00_couplers_BVALID;
  wire [31:0]ctrl_axilite_intercon_to_s00_couplers_RDATA;
  wire [11:0]ctrl_axilite_intercon_to_s00_couplers_RID;
  wire ctrl_axilite_intercon_to_s00_couplers_RLAST;
  wire ctrl_axilite_intercon_to_s00_couplers_RREADY;
  wire [1:0]ctrl_axilite_intercon_to_s00_couplers_RRESP;
  wire ctrl_axilite_intercon_to_s00_couplers_RVALID;
  wire [31:0]ctrl_axilite_intercon_to_s00_couplers_WDATA;
  wire [11:0]ctrl_axilite_intercon_to_s00_couplers_WID;
  wire ctrl_axilite_intercon_to_s00_couplers_WLAST;
  wire ctrl_axilite_intercon_to_s00_couplers_WREADY;
  wire [3:0]ctrl_axilite_intercon_to_s00_couplers_WSTRB;
  wire ctrl_axilite_intercon_to_s00_couplers_WVALID;
  wire m00_aclk_1;
  wire [0:0]m00_aresetn_1;
  wire [5:0]m00_couplers_to_ctrl_axilite_intercon_ARADDR;
  wire m00_couplers_to_ctrl_axilite_intercon_ARREADY;
  wire m00_couplers_to_ctrl_axilite_intercon_ARVALID;
  wire [5:0]m00_couplers_to_ctrl_axilite_intercon_AWADDR;
  wire m00_couplers_to_ctrl_axilite_intercon_AWREADY;
  wire m00_couplers_to_ctrl_axilite_intercon_AWVALID;
  wire m00_couplers_to_ctrl_axilite_intercon_BREADY;
  wire [1:0]m00_couplers_to_ctrl_axilite_intercon_BRESP;
  wire m00_couplers_to_ctrl_axilite_intercon_BVALID;
  wire [31:0]m00_couplers_to_ctrl_axilite_intercon_RDATA;
  wire m00_couplers_to_ctrl_axilite_intercon_RREADY;
  wire [1:0]m00_couplers_to_ctrl_axilite_intercon_RRESP;
  wire m00_couplers_to_ctrl_axilite_intercon_RVALID;
  wire [31:0]m00_couplers_to_ctrl_axilite_intercon_WDATA;
  wire m00_couplers_to_ctrl_axilite_intercon_WREADY;
  wire m00_couplers_to_ctrl_axilite_intercon_WVALID;
  wire m01_aclk_1;
  wire [0:0]m01_aresetn_1;
  wire [4:0]m01_couplers_to_ctrl_axilite_intercon_ARADDR;
  wire m01_couplers_to_ctrl_axilite_intercon_ARREADY;
  wire m01_couplers_to_ctrl_axilite_intercon_ARVALID;
  wire [4:0]m01_couplers_to_ctrl_axilite_intercon_AWADDR;
  wire m01_couplers_to_ctrl_axilite_intercon_AWREADY;
  wire m01_couplers_to_ctrl_axilite_intercon_AWVALID;
  wire m01_couplers_to_ctrl_axilite_intercon_BREADY;
  wire [1:0]m01_couplers_to_ctrl_axilite_intercon_BRESP;
  wire m01_couplers_to_ctrl_axilite_intercon_BVALID;
  wire [31:0]m01_couplers_to_ctrl_axilite_intercon_RDATA;
  wire m01_couplers_to_ctrl_axilite_intercon_RREADY;
  wire [1:0]m01_couplers_to_ctrl_axilite_intercon_RRESP;
  wire m01_couplers_to_ctrl_axilite_intercon_RVALID;
  wire [31:0]m01_couplers_to_ctrl_axilite_intercon_WDATA;
  wire m01_couplers_to_ctrl_axilite_intercon_WREADY;
  wire [3:0]m01_couplers_to_ctrl_axilite_intercon_WSTRB;
  wire m01_couplers_to_ctrl_axilite_intercon_WVALID;
  wire s00_aclk_1;
  wire [0:0]s00_aresetn_1;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [7:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_AXI_araddr[5:0] = m00_couplers_to_ctrl_axilite_intercon_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_ctrl_axilite_intercon_ARVALID;
  assign M00_AXI_awaddr[5:0] = m00_couplers_to_ctrl_axilite_intercon_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_ctrl_axilite_intercon_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_ctrl_axilite_intercon_BREADY;
  assign M00_AXI_rready = m00_couplers_to_ctrl_axilite_intercon_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ctrl_axilite_intercon_WDATA;
  assign M00_AXI_wvalid = m00_couplers_to_ctrl_axilite_intercon_WVALID;
  assign M01_AXI_araddr[4:0] = m01_couplers_to_ctrl_axilite_intercon_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_ctrl_axilite_intercon_ARVALID;
  assign M01_AXI_awaddr[4:0] = m01_couplers_to_ctrl_axilite_intercon_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_ctrl_axilite_intercon_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_ctrl_axilite_intercon_BREADY;
  assign M01_AXI_rready = m01_couplers_to_ctrl_axilite_intercon_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ctrl_axilite_intercon_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ctrl_axilite_intercon_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_ctrl_axilite_intercon_WVALID;
  assign S00_AXI_arready = ctrl_axilite_intercon_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ctrl_axilite_intercon_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = ctrl_axilite_intercon_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ctrl_axilite_intercon_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ctrl_axilite_intercon_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ctrl_axilite_intercon_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = ctrl_axilite_intercon_to_s00_couplers_RID;
  assign S00_AXI_rlast = ctrl_axilite_intercon_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ctrl_axilite_intercon_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ctrl_axilite_intercon_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ctrl_axilite_intercon_to_s00_couplers_WREADY;
  assign ctrl_axilite_intercon_ACLK_net = ACLK;
  assign ctrl_axilite_intercon_ARESETN_net = ARESETN[0];
  assign ctrl_axilite_intercon_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ctrl_axilite_intercon_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ctrl_axilite_intercon_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ctrl_axilite_intercon_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign ctrl_axilite_intercon_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign ctrl_axilite_intercon_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign ctrl_axilite_intercon_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ctrl_axilite_intercon_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ctrl_axilite_intercon_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ctrl_axilite_intercon_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ctrl_axilite_intercon_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ctrl_axilite_intercon_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ctrl_axilite_intercon_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ctrl_axilite_intercon_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign ctrl_axilite_intercon_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign ctrl_axilite_intercon_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign ctrl_axilite_intercon_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ctrl_axilite_intercon_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ctrl_axilite_intercon_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ctrl_axilite_intercon_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ctrl_axilite_intercon_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ctrl_axilite_intercon_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ctrl_axilite_intercon_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ctrl_axilite_intercon_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign ctrl_axilite_intercon_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ctrl_axilite_intercon_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ctrl_axilite_intercon_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_aclk_1 = M00_ACLK;
  assign m00_aresetn_1 = M00_ARESETN[0];
  assign m00_couplers_to_ctrl_axilite_intercon_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_ctrl_axilite_intercon_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_ctrl_axilite_intercon_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ctrl_axilite_intercon_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_ctrl_axilite_intercon_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ctrl_axilite_intercon_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ctrl_axilite_intercon_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_ctrl_axilite_intercon_WREADY = M00_AXI_wready;
  assign m01_aclk_1 = M01_ACLK;
  assign m01_aresetn_1 = M01_ARESETN[0];
  assign m01_couplers_to_ctrl_axilite_intercon_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_ctrl_axilite_intercon_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_ctrl_axilite_intercon_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ctrl_axilite_intercon_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_ctrl_axilite_intercon_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ctrl_axilite_intercon_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ctrl_axilite_intercon_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_ctrl_axilite_intercon_WREADY = M01_AXI_wready;
  assign s00_aclk_1 = S00_ACLK;
  assign s00_aresetn_1 = S00_ARESETN[0];
m00_couplers_imp_1M0V94L m00_couplers
       (.M_ACLK(m00_aclk_1),
        .M_ARESETN(m00_aresetn_1),
        .M_AXI_araddr(m00_couplers_to_ctrl_axilite_intercon_ARADDR),
        .M_AXI_arready(m00_couplers_to_ctrl_axilite_intercon_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ctrl_axilite_intercon_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ctrl_axilite_intercon_AWADDR),
        .M_AXI_awready(m00_couplers_to_ctrl_axilite_intercon_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ctrl_axilite_intercon_AWVALID),
        .M_AXI_bready(m00_couplers_to_ctrl_axilite_intercon_BREADY),
        .M_AXI_bresp(m00_couplers_to_ctrl_axilite_intercon_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ctrl_axilite_intercon_BVALID),
        .M_AXI_rdata(m00_couplers_to_ctrl_axilite_intercon_RDATA),
        .M_AXI_rready(m00_couplers_to_ctrl_axilite_intercon_RREADY),
        .M_AXI_rresp(m00_couplers_to_ctrl_axilite_intercon_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ctrl_axilite_intercon_RVALID),
        .M_AXI_wdata(m00_couplers_to_ctrl_axilite_intercon_WDATA),
        .M_AXI_wready(m00_couplers_to_ctrl_axilite_intercon_WREADY),
        .M_AXI_wvalid(m00_couplers_to_ctrl_axilite_intercon_WVALID),
        .S_ACLK(ctrl_axilite_intercon_ACLK_net),
        .S_ARESETN(ctrl_axilite_intercon_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR[5:0]),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR[5:0]),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
m01_couplers_imp_HFXBRF m01_couplers
       (.M_ACLK(m01_aclk_1),
        .M_ARESETN(m01_aresetn_1),
        .M_AXI_araddr(m01_couplers_to_ctrl_axilite_intercon_ARADDR),
        .M_AXI_arready(m01_couplers_to_ctrl_axilite_intercon_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ctrl_axilite_intercon_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ctrl_axilite_intercon_AWADDR),
        .M_AXI_awready(m01_couplers_to_ctrl_axilite_intercon_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ctrl_axilite_intercon_AWVALID),
        .M_AXI_bready(m01_couplers_to_ctrl_axilite_intercon_BREADY),
        .M_AXI_bresp(m01_couplers_to_ctrl_axilite_intercon_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ctrl_axilite_intercon_BVALID),
        .M_AXI_rdata(m01_couplers_to_ctrl_axilite_intercon_RDATA),
        .M_AXI_rready(m01_couplers_to_ctrl_axilite_intercon_RREADY),
        .M_AXI_rresp(m01_couplers_to_ctrl_axilite_intercon_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ctrl_axilite_intercon_RVALID),
        .M_AXI_wdata(m01_couplers_to_ctrl_axilite_intercon_WDATA),
        .M_AXI_wready(m01_couplers_to_ctrl_axilite_intercon_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ctrl_axilite_intercon_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ctrl_axilite_intercon_WVALID),
        .S_ACLK(ctrl_axilite_intercon_ACLK_net),
        .S_ARESETN(ctrl_axilite_intercon_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR[36:32]),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR[36:32]),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
s00_couplers_imp_EHJ85Z s00_couplers
       (.M_ACLK(ctrl_axilite_intercon_ACLK_net),
        .M_ARESETN(ctrl_axilite_intercon_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(s00_aclk_1),
        .S_ARESETN(s00_aresetn_1),
        .S_AXI_araddr(ctrl_axilite_intercon_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ctrl_axilite_intercon_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ctrl_axilite_intercon_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ctrl_axilite_intercon_to_s00_couplers_ARID),
        .S_AXI_arlen(ctrl_axilite_intercon_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ctrl_axilite_intercon_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ctrl_axilite_intercon_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ctrl_axilite_intercon_to_s00_couplers_ARQOS),
        .S_AXI_arready(ctrl_axilite_intercon_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ctrl_axilite_intercon_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ctrl_axilite_intercon_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ctrl_axilite_intercon_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ctrl_axilite_intercon_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ctrl_axilite_intercon_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ctrl_axilite_intercon_to_s00_couplers_AWID),
        .S_AXI_awlen(ctrl_axilite_intercon_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ctrl_axilite_intercon_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ctrl_axilite_intercon_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ctrl_axilite_intercon_to_s00_couplers_AWQOS),
        .S_AXI_awready(ctrl_axilite_intercon_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ctrl_axilite_intercon_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ctrl_axilite_intercon_to_s00_couplers_AWVALID),
        .S_AXI_bid(ctrl_axilite_intercon_to_s00_couplers_BID),
        .S_AXI_bready(ctrl_axilite_intercon_to_s00_couplers_BREADY),
        .S_AXI_bresp(ctrl_axilite_intercon_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ctrl_axilite_intercon_to_s00_couplers_BVALID),
        .S_AXI_rdata(ctrl_axilite_intercon_to_s00_couplers_RDATA),
        .S_AXI_rid(ctrl_axilite_intercon_to_s00_couplers_RID),
        .S_AXI_rlast(ctrl_axilite_intercon_to_s00_couplers_RLAST),
        .S_AXI_rready(ctrl_axilite_intercon_to_s00_couplers_RREADY),
        .S_AXI_rresp(ctrl_axilite_intercon_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ctrl_axilite_intercon_to_s00_couplers_RVALID),
        .S_AXI_wdata(ctrl_axilite_intercon_to_s00_couplers_WDATA),
        .S_AXI_wid(ctrl_axilite_intercon_to_s00_couplers_WID),
        .S_AXI_wlast(ctrl_axilite_intercon_to_s00_couplers_WLAST),
        .S_AXI_wready(ctrl_axilite_intercon_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ctrl_axilite_intercon_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ctrl_axilite_intercon_to_s00_couplers_WVALID));
dma3_xbar_2 xbar
       (.aclk(ctrl_axilite_intercon_ACLK_net),
        .aresetn(ctrl_axilite_intercon_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[3:0]}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_1BWYKNP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [16:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [16:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [2:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [2:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [16:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [16:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [2:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire [0:0]m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [16:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [2:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire [0:0]m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [2:0]m00_couplers_to_m00_couplers_BID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [2:0]m00_couplers_to_m00_couplers_RID;
  wire [0:0]m00_couplers_to_m00_couplers_RLAST;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WLAST;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[16:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[2:0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[16:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[2:0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast[0] = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[2:0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[2:0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast[0] = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[16:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[2:0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[16:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[2:0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[2:0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[2:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast[0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast[0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_1M0V94L
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [5:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [5:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [5:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [5:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire [5:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [5:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[5:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[5:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[5:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[5:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_BLZDDH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire [1:0]auto_pc_to_m00_couplers_ARBURST;
  wire [3:0]auto_pc_to_m00_couplers_ARCACHE;
  wire [3:0]auto_pc_to_m00_couplers_ARLEN;
  wire [1:0]auto_pc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m00_couplers_ARPROT;
  wire [3:0]auto_pc_to_m00_couplers_ARQOS;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire [2:0]auto_pc_to_m00_couplers_ARSIZE;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire [1:0]auto_pc_to_m00_couplers_AWBURST;
  wire [3:0]auto_pc_to_m00_couplers_AWCACHE;
  wire [3:0]auto_pc_to_m00_couplers_AWLEN;
  wire [1:0]auto_pc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m00_couplers_AWPROT;
  wire [3:0]auto_pc_to_m00_couplers_AWQOS;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire [2:0]auto_pc_to_m00_couplers_AWSIZE;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [31:0]auto_pc_to_m00_couplers_RDATA;
  wire auto_pc_to_m00_couplers_RLAST;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [31:0]auto_pc_to_m00_couplers_WDATA;
  wire auto_pc_to_m00_couplers_WLAST;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [3:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [31:0]m00_couplers_to_auto_pc_RDATA;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [31:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [3:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;
  wire s_aclk_1;
  wire [0:0]s_aresetn_1;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen[3:0] = auto_pc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen[3:0] = auto_pc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  assign s_aclk_1 = S_ACLK;
  assign s_aresetn_1 = S_ARESETN[0];
dma3_auto_pc_157 auto_pc
       (.aclk(s_aclk_1),
        .aresetn(s_aresetn_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m01_couplers_imp_1IYS5E3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [1:0]m01_couplers_to_m01_couplers_ARBURST;
  wire [3:0]m01_couplers_to_m01_couplers_ARCACHE;
  wire [7:0]m01_couplers_to_m01_couplers_ARLEN;
  wire [0:0]m01_couplers_to_m01_couplers_ARLOCK;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire [3:0]m01_couplers_to_m01_couplers_ARQOS;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [2:0]m01_couplers_to_m01_couplers_ARSIZE;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [1:0]m01_couplers_to_m01_couplers_AWBURST;
  wire [3:0]m01_couplers_to_m01_couplers_AWCACHE;
  wire [7:0]m01_couplers_to_m01_couplers_AWLEN;
  wire [0:0]m01_couplers_to_m01_couplers_AWLOCK;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire [3:0]m01_couplers_to_m01_couplers_AWQOS;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [2:0]m01_couplers_to_m01_couplers_AWSIZE;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RLAST;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WLAST;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m01_couplers_to_m01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m01_couplers_to_m01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m01_couplers_to_m01_couplers_ARLEN;
  assign M_AXI_arlock[0] = m01_couplers_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m01_couplers_to_m01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m01_couplers_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m01_couplers_to_m01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m01_couplers_to_m01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m01_couplers_to_m01_couplers_AWLEN;
  assign M_AXI_awlock[0] = m01_couplers_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m01_couplers_to_m01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m01_couplers_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wlast[0] = m01_couplers_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rlast[0] = m01_couplers_to_m01_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_m01_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_m01_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_m01_couplers_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_m01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_m01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_m01_couplers_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RLAST = M_AXI_rlast[0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WLAST = S_AXI_wlast[0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_HFXBRF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [4:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [4:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [4:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [4:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [4:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [4:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[4:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[4:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[4:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[4:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_IPPWKR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [16:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [16:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [2:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [2:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [16:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [16:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [1:0]m01_couplers_to_m01_couplers_ARBURST;
  wire [3:0]m01_couplers_to_m01_couplers_ARCACHE;
  wire [2:0]m01_couplers_to_m01_couplers_ARID;
  wire [7:0]m01_couplers_to_m01_couplers_ARLEN;
  wire [0:0]m01_couplers_to_m01_couplers_ARLOCK;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [2:0]m01_couplers_to_m01_couplers_ARSIZE;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [16:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [1:0]m01_couplers_to_m01_couplers_AWBURST;
  wire [3:0]m01_couplers_to_m01_couplers_AWCACHE;
  wire [2:0]m01_couplers_to_m01_couplers_AWID;
  wire [7:0]m01_couplers_to_m01_couplers_AWLEN;
  wire [0:0]m01_couplers_to_m01_couplers_AWLOCK;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [2:0]m01_couplers_to_m01_couplers_AWSIZE;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [2:0]m01_couplers_to_m01_couplers_BID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [2:0]m01_couplers_to_m01_couplers_RID;
  wire [0:0]m01_couplers_to_m01_couplers_RLAST;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WLAST;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[16:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m01_couplers_to_m01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m01_couplers_to_m01_couplers_ARCACHE;
  assign M_AXI_arid[2:0] = m01_couplers_to_m01_couplers_ARID;
  assign M_AXI_arlen[7:0] = m01_couplers_to_m01_couplers_ARLEN;
  assign M_AXI_arlock[0] = m01_couplers_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m01_couplers_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[16:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m01_couplers_to_m01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m01_couplers_to_m01_couplers_AWCACHE;
  assign M_AXI_awid[2:0] = m01_couplers_to_m01_couplers_AWID;
  assign M_AXI_awlen[7:0] = m01_couplers_to_m01_couplers_AWLEN;
  assign M_AXI_awlock[0] = m01_couplers_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m01_couplers_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wlast[0] = m01_couplers_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bid[2:0] = m01_couplers_to_m01_couplers_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rid[2:0] = m01_couplers_to_m01_couplers_RID;
  assign S_AXI_rlast[0] = m01_couplers_to_m01_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[16:0];
  assign m01_couplers_to_m01_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_m01_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_m01_couplers_ARID = S_AXI_arid[2:0];
  assign m01_couplers_to_m01_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_m01_couplers_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[16:0];
  assign m01_couplers_to_m01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_m01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_m01_couplers_AWID = S_AXI_awid[2:0];
  assign m01_couplers_to_m01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_m01_couplers_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BID = M_AXI_bid[2:0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RID = M_AXI_rid[2:0];
  assign m01_couplers_to_m01_couplers_RLAST = M_AXI_rlast[0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WLAST = S_AXI_wlast[0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_1AOSRAG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [16:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [16:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [2:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [2:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [16:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [16:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [1:0]m02_couplers_to_m02_couplers_ARBURST;
  wire [3:0]m02_couplers_to_m02_couplers_ARCACHE;
  wire [2:0]m02_couplers_to_m02_couplers_ARID;
  wire [7:0]m02_couplers_to_m02_couplers_ARLEN;
  wire [0:0]m02_couplers_to_m02_couplers_ARLOCK;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [2:0]m02_couplers_to_m02_couplers_ARSIZE;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [16:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [1:0]m02_couplers_to_m02_couplers_AWBURST;
  wire [3:0]m02_couplers_to_m02_couplers_AWCACHE;
  wire [2:0]m02_couplers_to_m02_couplers_AWID;
  wire [7:0]m02_couplers_to_m02_couplers_AWLEN;
  wire [0:0]m02_couplers_to_m02_couplers_AWLOCK;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [2:0]m02_couplers_to_m02_couplers_AWSIZE;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [2:0]m02_couplers_to_m02_couplers_BID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [2:0]m02_couplers_to_m02_couplers_RID;
  wire [0:0]m02_couplers_to_m02_couplers_RLAST;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WLAST;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[16:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m02_couplers_to_m02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m02_couplers_to_m02_couplers_ARCACHE;
  assign M_AXI_arid[2:0] = m02_couplers_to_m02_couplers_ARID;
  assign M_AXI_arlen[7:0] = m02_couplers_to_m02_couplers_ARLEN;
  assign M_AXI_arlock[0] = m02_couplers_to_m02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m02_couplers_to_m02_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[16:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m02_couplers_to_m02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m02_couplers_to_m02_couplers_AWCACHE;
  assign M_AXI_awid[2:0] = m02_couplers_to_m02_couplers_AWID;
  assign M_AXI_awlen[7:0] = m02_couplers_to_m02_couplers_AWLEN;
  assign M_AXI_awlock[0] = m02_couplers_to_m02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m02_couplers_to_m02_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wlast[0] = m02_couplers_to_m02_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bid[2:0] = m02_couplers_to_m02_couplers_BID;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rid[2:0] = m02_couplers_to_m02_couplers_RID;
  assign S_AXI_rlast[0] = m02_couplers_to_m02_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[16:0];
  assign m02_couplers_to_m02_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m02_couplers_to_m02_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m02_couplers_to_m02_couplers_ARID = S_AXI_arid[2:0];
  assign m02_couplers_to_m02_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m02_couplers_to_m02_couplers_ARLOCK = S_AXI_arlock[0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[16:0];
  assign m02_couplers_to_m02_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m02_couplers_to_m02_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m02_couplers_to_m02_couplers_AWID = S_AXI_awid[2:0];
  assign m02_couplers_to_m02_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m02_couplers_to_m02_couplers_AWLOCK = S_AXI_awlock[0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BID = M_AXI_bid[2:0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RID = M_AXI_rid[2:0];
  assign m02_couplers_to_m02_couplers_RLAST = M_AXI_rlast[0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WLAST = S_AXI_wlast[0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_1ES7M3S
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire GND_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [1:0]auto_pc_to_s00_couplers_ARBURST;
  wire [3:0]auto_pc_to_s00_couplers_ARCACHE;
  wire [3:0]auto_pc_to_s00_couplers_ARLEN;
  wire [1:0]auto_pc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire [3:0]auto_pc_to_s00_couplers_ARQOS;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire [2:0]auto_pc_to_s00_couplers_ARSIZE;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [3:0]auto_pc_to_s00_couplers_AWLEN;
  wire [1:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RLAST;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;
  wire s_aclk_1;
  wire [0:0]s_aresetn_1;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[3:0] = auto_pc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[3:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  assign s_aclk_1 = S_ACLK;
  assign s_aresetn_1 = S_ARESETN[0];
GND GND
       (.G(GND_1));
dma3_auto_pc_158 auto_pc
       (.aclk(s_aclk_1),
        .aresetn(s_aresetn_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(GND_1),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(GND_1),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_1KV451Z
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RLAST;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WLAST;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_EHJ85Z
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;
  wire s_aclk_1;
  wire [0:0]s_aresetn_1;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  assign s_aclk_1 = S_ACLK;
  assign s_aresetn_1 = S_ARESETN[0];
dma3_auto_pc_156 auto_pc
       (.aclk(s_aclk_1),
        .aresetn(s_aresetn_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_KF6JNB
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_buser,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_ruser,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wuser,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_buser,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_ruser,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [0:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_buser;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [0:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_ruser;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wuser;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_buser;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_ruser;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wuser;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [0:0]s00_couplers_to_s00_couplers_ARID;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire [0:0]s00_couplers_to_s00_couplers_ARLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [3:0]s00_couplers_to_s00_couplers_ARQOS;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire [0:0]s00_couplers_to_s00_couplers_ARUSER;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [0:0]s00_couplers_to_s00_couplers_AWID;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire [0:0]s00_couplers_to_s00_couplers_AWLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [3:0]s00_couplers_to_s00_couplers_AWQOS;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire [0:0]s00_couplers_to_s00_couplers_AWUSER;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BUSER;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RID;
  wire s00_couplers_to_s00_couplers_RLAST;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RUSER;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WLAST;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WUSER;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[0] = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[0] = s00_couplers_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[0] = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser[0] = s00_couplers_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wuser[0] = s00_couplers_to_s00_couplers_WUSER;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bid[0] = s00_couplers_to_s00_couplers_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_buser[0] = s00_couplers_to_s00_couplers_BUSER;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rid[0] = s00_couplers_to_s00_couplers_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_ruser[0] = s00_couplers_to_s00_couplers_RUSER;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid[0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARUSER = S_AXI_aruser[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid[0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWUSER = S_AXI_awuser[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BID = M_AXI_bid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BUSER = M_AXI_buser[0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RID = M_AXI_rid[0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RUSER = M_AXI_ruser[0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WUSER = S_AXI_wuser[0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s01_couplers_imp_1A5P70P
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s01_couplers_to_s01_couplers_ARADDR;
  wire [1:0]s01_couplers_to_s01_couplers_ARBURST;
  wire [3:0]s01_couplers_to_s01_couplers_ARCACHE;
  wire [7:0]s01_couplers_to_s01_couplers_ARLEN;
  wire [0:0]s01_couplers_to_s01_couplers_ARLOCK;
  wire [2:0]s01_couplers_to_s01_couplers_ARPROT;
  wire [3:0]s01_couplers_to_s01_couplers_ARQOS;
  wire [0:0]s01_couplers_to_s01_couplers_ARREADY;
  wire [2:0]s01_couplers_to_s01_couplers_ARSIZE;
  wire [0:0]s01_couplers_to_s01_couplers_ARVALID;
  wire [31:0]s01_couplers_to_s01_couplers_AWADDR;
  wire [1:0]s01_couplers_to_s01_couplers_AWBURST;
  wire [3:0]s01_couplers_to_s01_couplers_AWCACHE;
  wire [7:0]s01_couplers_to_s01_couplers_AWLEN;
  wire [0:0]s01_couplers_to_s01_couplers_AWLOCK;
  wire [2:0]s01_couplers_to_s01_couplers_AWPROT;
  wire [3:0]s01_couplers_to_s01_couplers_AWQOS;
  wire [0:0]s01_couplers_to_s01_couplers_AWREADY;
  wire [2:0]s01_couplers_to_s01_couplers_AWSIZE;
  wire [0:0]s01_couplers_to_s01_couplers_AWVALID;
  wire [0:0]s01_couplers_to_s01_couplers_BREADY;
  wire [1:0]s01_couplers_to_s01_couplers_BRESP;
  wire [0:0]s01_couplers_to_s01_couplers_BVALID;
  wire [31:0]s01_couplers_to_s01_couplers_RDATA;
  wire [0:0]s01_couplers_to_s01_couplers_RLAST;
  wire [0:0]s01_couplers_to_s01_couplers_RREADY;
  wire [1:0]s01_couplers_to_s01_couplers_RRESP;
  wire [0:0]s01_couplers_to_s01_couplers_RVALID;
  wire [31:0]s01_couplers_to_s01_couplers_WDATA;
  wire [0:0]s01_couplers_to_s01_couplers_WLAST;
  wire [0:0]s01_couplers_to_s01_couplers_WREADY;
  wire [3:0]s01_couplers_to_s01_couplers_WSTRB;
  wire [0:0]s01_couplers_to_s01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s01_couplers_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s01_couplers_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s01_couplers_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s01_couplers_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = s01_couplers_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s01_couplers_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s01_couplers_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s01_couplers_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = s01_couplers_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s01_couplers_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_couplers_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_couplers_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s01_couplers_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = s01_couplers_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s01_couplers_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s01_couplers_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s01_couplers_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = s01_couplers_to_s01_couplers_AWVALID;
  assign M_AXI_bready[0] = s01_couplers_to_s01_couplers_BREADY;
  assign M_AXI_rready[0] = s01_couplers_to_s01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s01_couplers_to_s01_couplers_WDATA;
  assign M_AXI_wlast[0] = s01_couplers_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s01_couplers_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s01_couplers_to_s01_couplers_WVALID;
  assign S_AXI_arready[0] = s01_couplers_to_s01_couplers_ARREADY;
  assign S_AXI_awready[0] = s01_couplers_to_s01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_couplers_BRESP;
  assign S_AXI_bvalid[0] = s01_couplers_to_s01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_s01_couplers_RDATA;
  assign S_AXI_rlast[0] = s01_couplers_to_s01_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_couplers_RRESP;
  assign S_AXI_rvalid[0] = s01_couplers_to_s01_couplers_RVALID;
  assign S_AXI_wready[0] = s01_couplers_to_s01_couplers_WREADY;
  assign s01_couplers_to_s01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_s01_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_couplers_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_s01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_couplers_ARREADY = M_AXI_arready[0];
  assign s01_couplers_to_s01_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_couplers_ARVALID = S_AXI_arvalid[0];
  assign s01_couplers_to_s01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_couplers_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_s01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_s01_couplers_AWREADY = M_AXI_awready[0];
  assign s01_couplers_to_s01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_couplers_AWVALID = S_AXI_awvalid[0];
  assign s01_couplers_to_s01_couplers_BREADY = S_AXI_bready[0];
  assign s01_couplers_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_couplers_to_s01_couplers_BVALID = M_AXI_bvalid[0];
  assign s01_couplers_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign s01_couplers_to_s01_couplers_RLAST = M_AXI_rlast[0];
  assign s01_couplers_to_s01_couplers_RREADY = S_AXI_rready[0];
  assign s01_couplers_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_couplers_to_s01_couplers_RVALID = M_AXI_rvalid[0];
  assign s01_couplers_to_s01_couplers_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_s01_couplers_WLAST = S_AXI_wlast[0];
  assign s01_couplers_to_s01_couplers_WREADY = M_AXI_wready[0];
  assign s01_couplers_to_s01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_s01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s02_couplers_imp_LHCQTM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_buser,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_ruser,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wuser,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_buser,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_ruser,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [0:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_buser;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [0:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_ruser;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wuser;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_buser;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_ruser;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wuser;
  input S_AXI_wvalid;

  wire [31:0]s02_couplers_to_s02_couplers_ARADDR;
  wire [1:0]s02_couplers_to_s02_couplers_ARBURST;
  wire [3:0]s02_couplers_to_s02_couplers_ARCACHE;
  wire [0:0]s02_couplers_to_s02_couplers_ARID;
  wire [7:0]s02_couplers_to_s02_couplers_ARLEN;
  wire [0:0]s02_couplers_to_s02_couplers_ARLOCK;
  wire [2:0]s02_couplers_to_s02_couplers_ARPROT;
  wire [3:0]s02_couplers_to_s02_couplers_ARQOS;
  wire s02_couplers_to_s02_couplers_ARREADY;
  wire [2:0]s02_couplers_to_s02_couplers_ARSIZE;
  wire [0:0]s02_couplers_to_s02_couplers_ARUSER;
  wire s02_couplers_to_s02_couplers_ARVALID;
  wire [31:0]s02_couplers_to_s02_couplers_AWADDR;
  wire [1:0]s02_couplers_to_s02_couplers_AWBURST;
  wire [3:0]s02_couplers_to_s02_couplers_AWCACHE;
  wire [0:0]s02_couplers_to_s02_couplers_AWID;
  wire [7:0]s02_couplers_to_s02_couplers_AWLEN;
  wire [0:0]s02_couplers_to_s02_couplers_AWLOCK;
  wire [2:0]s02_couplers_to_s02_couplers_AWPROT;
  wire [3:0]s02_couplers_to_s02_couplers_AWQOS;
  wire s02_couplers_to_s02_couplers_AWREADY;
  wire [2:0]s02_couplers_to_s02_couplers_AWSIZE;
  wire [0:0]s02_couplers_to_s02_couplers_AWUSER;
  wire s02_couplers_to_s02_couplers_AWVALID;
  wire [0:0]s02_couplers_to_s02_couplers_BID;
  wire s02_couplers_to_s02_couplers_BREADY;
  wire [1:0]s02_couplers_to_s02_couplers_BRESP;
  wire [0:0]s02_couplers_to_s02_couplers_BUSER;
  wire s02_couplers_to_s02_couplers_BVALID;
  wire [31:0]s02_couplers_to_s02_couplers_RDATA;
  wire [0:0]s02_couplers_to_s02_couplers_RID;
  wire s02_couplers_to_s02_couplers_RLAST;
  wire s02_couplers_to_s02_couplers_RREADY;
  wire [1:0]s02_couplers_to_s02_couplers_RRESP;
  wire [0:0]s02_couplers_to_s02_couplers_RUSER;
  wire s02_couplers_to_s02_couplers_RVALID;
  wire [31:0]s02_couplers_to_s02_couplers_WDATA;
  wire s02_couplers_to_s02_couplers_WLAST;
  wire s02_couplers_to_s02_couplers_WREADY;
  wire [3:0]s02_couplers_to_s02_couplers_WSTRB;
  wire [0:0]s02_couplers_to_s02_couplers_WUSER;
  wire s02_couplers_to_s02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s02_couplers_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s02_couplers_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s02_couplers_to_s02_couplers_ARCACHE;
  assign M_AXI_arid[0] = s02_couplers_to_s02_couplers_ARID;
  assign M_AXI_arlen[7:0] = s02_couplers_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = s02_couplers_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s02_couplers_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s02_couplers_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s02_couplers_to_s02_couplers_ARSIZE;
  assign M_AXI_aruser[0] = s02_couplers_to_s02_couplers_ARUSER;
  assign M_AXI_arvalid = s02_couplers_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s02_couplers_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s02_couplers_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s02_couplers_to_s02_couplers_AWCACHE;
  assign M_AXI_awid[0] = s02_couplers_to_s02_couplers_AWID;
  assign M_AXI_awlen[7:0] = s02_couplers_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = s02_couplers_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s02_couplers_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s02_couplers_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s02_couplers_to_s02_couplers_AWSIZE;
  assign M_AXI_awuser[0] = s02_couplers_to_s02_couplers_AWUSER;
  assign M_AXI_awvalid = s02_couplers_to_s02_couplers_AWVALID;
  assign M_AXI_bready = s02_couplers_to_s02_couplers_BREADY;
  assign M_AXI_rready = s02_couplers_to_s02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s02_couplers_to_s02_couplers_WDATA;
  assign M_AXI_wlast = s02_couplers_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s02_couplers_to_s02_couplers_WSTRB;
  assign M_AXI_wuser[0] = s02_couplers_to_s02_couplers_WUSER;
  assign M_AXI_wvalid = s02_couplers_to_s02_couplers_WVALID;
  assign S_AXI_arready = s02_couplers_to_s02_couplers_ARREADY;
  assign S_AXI_awready = s02_couplers_to_s02_couplers_AWREADY;
  assign S_AXI_bid[0] = s02_couplers_to_s02_couplers_BID;
  assign S_AXI_bresp[1:0] = s02_couplers_to_s02_couplers_BRESP;
  assign S_AXI_buser[0] = s02_couplers_to_s02_couplers_BUSER;
  assign S_AXI_bvalid = s02_couplers_to_s02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s02_couplers_to_s02_couplers_RDATA;
  assign S_AXI_rid[0] = s02_couplers_to_s02_couplers_RID;
  assign S_AXI_rlast = s02_couplers_to_s02_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_s02_couplers_RRESP;
  assign S_AXI_ruser[0] = s02_couplers_to_s02_couplers_RUSER;
  assign S_AXI_rvalid = s02_couplers_to_s02_couplers_RVALID;
  assign S_AXI_wready = s02_couplers_to_s02_couplers_WREADY;
  assign s02_couplers_to_s02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s02_couplers_to_s02_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_s02_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_s02_couplers_ARID = S_AXI_arid[0];
  assign s02_couplers_to_s02_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_s02_couplers_ARLOCK = S_AXI_arlock[0];
  assign s02_couplers_to_s02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_s02_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s02_couplers_to_s02_couplers_ARREADY = M_AXI_arready;
  assign s02_couplers_to_s02_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_s02_couplers_ARUSER = S_AXI_aruser[0];
  assign s02_couplers_to_s02_couplers_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_s02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_s02_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_s02_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_s02_couplers_AWID = S_AXI_awid[0];
  assign s02_couplers_to_s02_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_s02_couplers_AWLOCK = S_AXI_awlock[0];
  assign s02_couplers_to_s02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_s02_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s02_couplers_to_s02_couplers_AWREADY = M_AXI_awready;
  assign s02_couplers_to_s02_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_s02_couplers_AWUSER = S_AXI_awuser[0];
  assign s02_couplers_to_s02_couplers_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_s02_couplers_BID = M_AXI_bid[0];
  assign s02_couplers_to_s02_couplers_BREADY = S_AXI_bready;
  assign s02_couplers_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign s02_couplers_to_s02_couplers_BUSER = M_AXI_buser[0];
  assign s02_couplers_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign s02_couplers_to_s02_couplers_RDATA = M_AXI_rdata[31:0];
  assign s02_couplers_to_s02_couplers_RID = M_AXI_rid[0];
  assign s02_couplers_to_s02_couplers_RLAST = M_AXI_rlast;
  assign s02_couplers_to_s02_couplers_RREADY = S_AXI_rready;
  assign s02_couplers_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign s02_couplers_to_s02_couplers_RUSER = M_AXI_ruser[0];
  assign s02_couplers_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign s02_couplers_to_s02_couplers_WDATA = S_AXI_wdata[31:0];
  assign s02_couplers_to_s02_couplers_WLAST = S_AXI_wlast;
  assign s02_couplers_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_s02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s02_couplers_to_s02_couplers_WUSER = S_AXI_wuser[0];
  assign s02_couplers_to_s02_couplers_WVALID = S_AXI_wvalid;
endmodule

module s03_couplers_imp_194Z56C
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_buser,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_ruser,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wuser,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_buser,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_ruser,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [0:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_buser;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [0:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_ruser;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wuser;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_buser;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_ruser;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wuser;
  input S_AXI_wvalid;

  wire [31:0]s03_couplers_to_s03_couplers_ARADDR;
  wire [1:0]s03_couplers_to_s03_couplers_ARBURST;
  wire [3:0]s03_couplers_to_s03_couplers_ARCACHE;
  wire [0:0]s03_couplers_to_s03_couplers_ARID;
  wire [7:0]s03_couplers_to_s03_couplers_ARLEN;
  wire [0:0]s03_couplers_to_s03_couplers_ARLOCK;
  wire [2:0]s03_couplers_to_s03_couplers_ARPROT;
  wire [3:0]s03_couplers_to_s03_couplers_ARQOS;
  wire s03_couplers_to_s03_couplers_ARREADY;
  wire [2:0]s03_couplers_to_s03_couplers_ARSIZE;
  wire [0:0]s03_couplers_to_s03_couplers_ARUSER;
  wire s03_couplers_to_s03_couplers_ARVALID;
  wire [31:0]s03_couplers_to_s03_couplers_AWADDR;
  wire [1:0]s03_couplers_to_s03_couplers_AWBURST;
  wire [3:0]s03_couplers_to_s03_couplers_AWCACHE;
  wire [0:0]s03_couplers_to_s03_couplers_AWID;
  wire [7:0]s03_couplers_to_s03_couplers_AWLEN;
  wire [0:0]s03_couplers_to_s03_couplers_AWLOCK;
  wire [2:0]s03_couplers_to_s03_couplers_AWPROT;
  wire [3:0]s03_couplers_to_s03_couplers_AWQOS;
  wire s03_couplers_to_s03_couplers_AWREADY;
  wire [2:0]s03_couplers_to_s03_couplers_AWSIZE;
  wire [0:0]s03_couplers_to_s03_couplers_AWUSER;
  wire s03_couplers_to_s03_couplers_AWVALID;
  wire [0:0]s03_couplers_to_s03_couplers_BID;
  wire s03_couplers_to_s03_couplers_BREADY;
  wire [1:0]s03_couplers_to_s03_couplers_BRESP;
  wire [0:0]s03_couplers_to_s03_couplers_BUSER;
  wire s03_couplers_to_s03_couplers_BVALID;
  wire [31:0]s03_couplers_to_s03_couplers_RDATA;
  wire [0:0]s03_couplers_to_s03_couplers_RID;
  wire s03_couplers_to_s03_couplers_RLAST;
  wire s03_couplers_to_s03_couplers_RREADY;
  wire [1:0]s03_couplers_to_s03_couplers_RRESP;
  wire [0:0]s03_couplers_to_s03_couplers_RUSER;
  wire s03_couplers_to_s03_couplers_RVALID;
  wire [31:0]s03_couplers_to_s03_couplers_WDATA;
  wire s03_couplers_to_s03_couplers_WLAST;
  wire s03_couplers_to_s03_couplers_WREADY;
  wire [3:0]s03_couplers_to_s03_couplers_WSTRB;
  wire [0:0]s03_couplers_to_s03_couplers_WUSER;
  wire s03_couplers_to_s03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s03_couplers_to_s03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s03_couplers_to_s03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s03_couplers_to_s03_couplers_ARCACHE;
  assign M_AXI_arid[0] = s03_couplers_to_s03_couplers_ARID;
  assign M_AXI_arlen[7:0] = s03_couplers_to_s03_couplers_ARLEN;
  assign M_AXI_arlock[0] = s03_couplers_to_s03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s03_couplers_to_s03_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s03_couplers_to_s03_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s03_couplers_to_s03_couplers_ARSIZE;
  assign M_AXI_aruser[0] = s03_couplers_to_s03_couplers_ARUSER;
  assign M_AXI_arvalid = s03_couplers_to_s03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s03_couplers_to_s03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s03_couplers_to_s03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s03_couplers_to_s03_couplers_AWCACHE;
  assign M_AXI_awid[0] = s03_couplers_to_s03_couplers_AWID;
  assign M_AXI_awlen[7:0] = s03_couplers_to_s03_couplers_AWLEN;
  assign M_AXI_awlock[0] = s03_couplers_to_s03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s03_couplers_to_s03_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s03_couplers_to_s03_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s03_couplers_to_s03_couplers_AWSIZE;
  assign M_AXI_awuser[0] = s03_couplers_to_s03_couplers_AWUSER;
  assign M_AXI_awvalid = s03_couplers_to_s03_couplers_AWVALID;
  assign M_AXI_bready = s03_couplers_to_s03_couplers_BREADY;
  assign M_AXI_rready = s03_couplers_to_s03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s03_couplers_to_s03_couplers_WDATA;
  assign M_AXI_wlast = s03_couplers_to_s03_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s03_couplers_to_s03_couplers_WSTRB;
  assign M_AXI_wuser[0] = s03_couplers_to_s03_couplers_WUSER;
  assign M_AXI_wvalid = s03_couplers_to_s03_couplers_WVALID;
  assign S_AXI_arready = s03_couplers_to_s03_couplers_ARREADY;
  assign S_AXI_awready = s03_couplers_to_s03_couplers_AWREADY;
  assign S_AXI_bid[0] = s03_couplers_to_s03_couplers_BID;
  assign S_AXI_bresp[1:0] = s03_couplers_to_s03_couplers_BRESP;
  assign S_AXI_buser[0] = s03_couplers_to_s03_couplers_BUSER;
  assign S_AXI_bvalid = s03_couplers_to_s03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s03_couplers_to_s03_couplers_RDATA;
  assign S_AXI_rid[0] = s03_couplers_to_s03_couplers_RID;
  assign S_AXI_rlast = s03_couplers_to_s03_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s03_couplers_to_s03_couplers_RRESP;
  assign S_AXI_ruser[0] = s03_couplers_to_s03_couplers_RUSER;
  assign S_AXI_rvalid = s03_couplers_to_s03_couplers_RVALID;
  assign S_AXI_wready = s03_couplers_to_s03_couplers_WREADY;
  assign s03_couplers_to_s03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s03_couplers_to_s03_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s03_couplers_to_s03_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s03_couplers_to_s03_couplers_ARID = S_AXI_arid[0];
  assign s03_couplers_to_s03_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s03_couplers_to_s03_couplers_ARLOCK = S_AXI_arlock[0];
  assign s03_couplers_to_s03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s03_couplers_to_s03_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s03_couplers_to_s03_couplers_ARREADY = M_AXI_arready;
  assign s03_couplers_to_s03_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s03_couplers_to_s03_couplers_ARUSER = S_AXI_aruser[0];
  assign s03_couplers_to_s03_couplers_ARVALID = S_AXI_arvalid;
  assign s03_couplers_to_s03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s03_couplers_to_s03_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s03_couplers_to_s03_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s03_couplers_to_s03_couplers_AWID = S_AXI_awid[0];
  assign s03_couplers_to_s03_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s03_couplers_to_s03_couplers_AWLOCK = S_AXI_awlock[0];
  assign s03_couplers_to_s03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s03_couplers_to_s03_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s03_couplers_to_s03_couplers_AWREADY = M_AXI_awready;
  assign s03_couplers_to_s03_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s03_couplers_to_s03_couplers_AWUSER = S_AXI_awuser[0];
  assign s03_couplers_to_s03_couplers_AWVALID = S_AXI_awvalid;
  assign s03_couplers_to_s03_couplers_BID = M_AXI_bid[0];
  assign s03_couplers_to_s03_couplers_BREADY = S_AXI_bready;
  assign s03_couplers_to_s03_couplers_BRESP = M_AXI_bresp[1:0];
  assign s03_couplers_to_s03_couplers_BUSER = M_AXI_buser[0];
  assign s03_couplers_to_s03_couplers_BVALID = M_AXI_bvalid;
  assign s03_couplers_to_s03_couplers_RDATA = M_AXI_rdata[31:0];
  assign s03_couplers_to_s03_couplers_RID = M_AXI_rid[0];
  assign s03_couplers_to_s03_couplers_RLAST = M_AXI_rlast;
  assign s03_couplers_to_s03_couplers_RREADY = S_AXI_rready;
  assign s03_couplers_to_s03_couplers_RRESP = M_AXI_rresp[1:0];
  assign s03_couplers_to_s03_couplers_RUSER = M_AXI_ruser[0];
  assign s03_couplers_to_s03_couplers_RVALID = M_AXI_rvalid;
  assign s03_couplers_to_s03_couplers_WDATA = S_AXI_wdata[31:0];
  assign s03_couplers_to_s03_couplers_WLAST = S_AXI_wlast;
  assign s03_couplers_to_s03_couplers_WREADY = M_AXI_wready;
  assign s03_couplers_to_s03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s03_couplers_to_s03_couplers_WUSER = S_AXI_wuser[0];
  assign s03_couplers_to_s03_couplers_WVALID = S_AXI_wvalid;
endmodule
