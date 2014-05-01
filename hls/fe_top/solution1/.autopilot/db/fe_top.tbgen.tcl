set moduleName fe_top
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName fe_top
set C_modelType { void 0 }
set C_modelArgList { 
	{ start int 32 regular {pointer 1 volatile }  }
	{ idle int 32 regular {pointer 0 volatile }  }
	{ done int 32 regular {pointer 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "rtlName" : "start","bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "start","cData": "unsigned int","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "rtlName" : "idle","bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "idle","cData": "unsigned int","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "rtlName" : "done","bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "done","cData": "unsigned int","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start sc_out sc_lv 32 signal 0 } 
	{ idle sc_in sc_lv 32 signal 1 } 
	{ done sc_in sc_lv 32 signal 2 } 
}

set Spec2ImplPortList { 
	start { ap_none {  { start out_data 1 32 } } }
	idle { ap_none {  { idle in_data 0 32 } } }
	done { ap_none {  { done in_data 0 32 } } }
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
