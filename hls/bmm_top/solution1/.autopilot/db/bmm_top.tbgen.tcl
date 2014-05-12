set moduleName bmm_top
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName bmm_top
set C_modelType { void 0 }
set C_modelArgList { 
	{ b1 int 256 regular {bus 0}  }
	{ b2 int 256 regular {bus 0}  }
	{ b3 int 256 regular {bus 2}  }
	{ blockSize int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "rtlName" : "b1","bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "b1","cData": "int256","cArray": [{"low" : 0,"up" : 2047,"step" : 1}]}]}]} , 
 	{ "rtlName" : "b2","bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "b2","cData": "int256","cArray": [{"low" : 0,"up" : 2047,"step" : 1}]}]}]} , 
 	{ "rtlName" : "b3","bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "b3","cData": "int256","cArray": [{"low" : 0,"up" : 2047,"step" : 1}]}]}]} , 
 	{ "rtlName" : "blockSize","bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "blockSize","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ b1_req_din sc_out sc_logic 1 signal 0 } 
	{ b1_req_full_n sc_in sc_logic 1 signal 0 } 
	{ b1_req_write sc_out sc_logic 1 signal 0 } 
	{ b1_rsp_empty_n sc_in sc_logic 1 signal 0 } 
	{ b1_rsp_read sc_out sc_logic 1 signal 0 } 
	{ b1_address sc_out sc_lv 32 signal 0 } 
	{ b1_datain sc_in sc_lv 256 signal 0 } 
	{ b1_dataout sc_out sc_lv 256 signal 0 } 
	{ b1_size sc_out sc_lv 32 signal 0 } 
	{ b2_req_din sc_out sc_logic 1 signal 1 } 
	{ b2_req_full_n sc_in sc_logic 1 signal 1 } 
	{ b2_req_write sc_out sc_logic 1 signal 1 } 
	{ b2_rsp_empty_n sc_in sc_logic 1 signal 1 } 
	{ b2_rsp_read sc_out sc_logic 1 signal 1 } 
	{ b2_address sc_out sc_lv 32 signal 1 } 
	{ b2_datain sc_in sc_lv 256 signal 1 } 
	{ b2_dataout sc_out sc_lv 256 signal 1 } 
	{ b2_size sc_out sc_lv 32 signal 1 } 
	{ b3_req_din sc_out sc_logic 1 signal 2 } 
	{ b3_req_full_n sc_in sc_logic 1 signal 2 } 
	{ b3_req_write sc_out sc_logic 1 signal 2 } 
	{ b3_rsp_empty_n sc_in sc_logic 1 signal 2 } 
	{ b3_rsp_read sc_out sc_logic 1 signal 2 } 
	{ b3_address sc_out sc_lv 32 signal 2 } 
	{ b3_datain sc_in sc_lv 256 signal 2 } 
	{ b3_dataout sc_out sc_lv 256 signal 2 } 
	{ b3_size sc_out sc_lv 32 signal 2 } 
	{ blockSize sc_in sc_lv 32 signal 3 } 
	{ blockSize_ap_vld sc_in sc_logic 1 invld 3 } 
	{ blockSize_ap_ack sc_out sc_logic 1 inacc 3 } 
}

set Spec2ImplPortList { 
	b1 { ap_bus {  { b1_req_din fifo_data 1 1 }  { b1_req_full_n fifo_status 0 1 }  { b1_req_write fifo_update 1 1 }  { b1_rsp_empty_n fifo_status 0 1 }  { b1_rsp_read fifo_update 1 1 }  { b1_address unknown 1 32 }  { b1_datain unknown 0 256 }  { b1_dataout unknown 1 256 }  { b1_size unknown 1 32 } } }
	b2 { ap_bus {  { b2_req_din fifo_data 1 1 }  { b2_req_full_n fifo_status 0 1 }  { b2_req_write fifo_update 1 1 }  { b2_rsp_empty_n fifo_status 0 1 }  { b2_rsp_read fifo_update 1 1 }  { b2_address unknown 1 32 }  { b2_datain unknown 0 256 }  { b2_dataout unknown 1 256 }  { b2_size unknown 1 32 } } }
	b3 { ap_bus {  { b3_req_din fifo_data 1 1 }  { b3_req_full_n fifo_status 0 1 }  { b3_req_write fifo_update 1 1 }  { b3_rsp_empty_n fifo_status 0 1 }  { b3_rsp_read fifo_update 1 1 }  { b3_address unknown 1 32 }  { b3_datain unknown 0 256 }  { b3_dataout unknown 1 256 }  { b3_size unknown 1 32 } } }
	blockSize { ap_hs {  { blockSize in_data 0 32 }  { blockSize_ap_vld in_vld 0 1 }  { blockSize_ap_ack in_acc 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ b1 4 }
	{ b2 4 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
