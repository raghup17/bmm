#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("inPtr_req_din", 1, hls_out, 0, "ap_bus", "fifo_data", 1),
	Port_Property("inPtr_req_full_n", 1, hls_in, 0, "ap_bus", "fifo_status", 1),
	Port_Property("inPtr_req_write", 1, hls_out, 0, "ap_bus", "fifo_update", 1),
	Port_Property("inPtr_rsp_empty_n", 1, hls_in, 0, "ap_bus", "fifo_status", 1),
	Port_Property("inPtr_rsp_read", 1, hls_out, 0, "ap_bus", "fifo_update", 1),
	Port_Property("inPtr_address", 32, hls_out, 0, "ap_bus", "unknown", 1),
	Port_Property("inPtr_datain", 32, hls_in, 0, "ap_bus", "unknown", 1),
	Port_Property("inPtr_dataout", 32, hls_out, 0, "ap_bus", "unknown", 1),
	Port_Property("inPtr_size", 32, hls_out, 0, "ap_bus", "unknown", 1),
};
const char* HLS_Design_Meta::dut_name = "simple_top";
