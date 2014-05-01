set moduleName simple_top
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName simple_top
set C_modelType { void 0 }
set C_modelArgList { 
	{ inPtr int 32 regular {bus 2}  }
}
set C_modelArgMapList {[ 
	{ "rtlName" : "inPtr","bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "inPtr","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inPtr_req_din sc_out sc_logic 1 signal 0 } 
	{ inPtr_req_full_n sc_in sc_logic 1 signal 0 } 
	{ inPtr_req_write sc_out sc_logic 1 signal 0 } 
	{ inPtr_rsp_empty_n sc_in sc_logic 1 signal 0 } 
	{ inPtr_rsp_read sc_out sc_logic 1 signal 0 } 
	{ inPtr_address sc_out sc_lv 32 signal 0 } 
	{ inPtr_datain sc_in sc_lv 32 signal 0 } 
	{ inPtr_dataout sc_out sc_lv 32 signal 0 } 
	{ inPtr_size sc_out sc_lv 32 signal 0 } 
}

set Spec2ImplPortList { 
	inPtr { ap_bus {  { inPtr_req_din fifo_data 1 1 }  { inPtr_req_full_n fifo_status 0 1 }  { inPtr_req_write fifo_update 1 1 }  { inPtr_rsp_empty_n fifo_status 0 1 }  { inPtr_rsp_read fifo_update 1 1 }  { inPtr_address unknown 1 32 }  { inPtr_datain unknown 0 32 }  { inPtr_dataout unknown 1 32 }  { inPtr_size unknown 1 32 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
