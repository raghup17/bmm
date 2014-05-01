// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.3
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "bmm_top.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic bmm_top::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic bmm_top::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> bmm_top::ap_ST_st1_fsm_0 = "00000";
const sc_lv<5> bmm_top::ap_ST_st2_fsm_1 = "1";
const sc_lv<5> bmm_top::ap_ST_st3_fsm_2 = "10";
const sc_lv<5> bmm_top::ap_ST_st4_fsm_3 = "11";
const sc_lv<5> bmm_top::ap_ST_st5_fsm_4 = "100";
const sc_lv<5> bmm_top::ap_ST_st6_fsm_5 = "101";
const sc_lv<5> bmm_top::ap_ST_st7_fsm_6 = "110";
const sc_lv<5> bmm_top::ap_ST_st8_fsm_7 = "111";
const sc_lv<5> bmm_top::ap_ST_st9_fsm_8 = "1000";
const sc_lv<5> bmm_top::ap_ST_st10_fsm_9 = "1001";
const sc_lv<5> bmm_top::ap_ST_st11_fsm_10 = "1010";
const sc_lv<5> bmm_top::ap_ST_st12_fsm_11 = "1011";
const sc_lv<5> bmm_top::ap_ST_st13_fsm_12 = "1100";
const sc_lv<5> bmm_top::ap_ST_st14_fsm_13 = "1101";
const sc_lv<5> bmm_top::ap_ST_st15_fsm_14 = "1110";
const sc_lv<5> bmm_top::ap_ST_st16_fsm_15 = "1111";
const sc_lv<5> bmm_top::ap_ST_st17_fsm_16 = "10000";
const sc_lv<5> bmm_top::ap_ST_st18_fsm_17 = "10001";
const sc_lv<5> bmm_top::ap_ST_st19_fsm_18 = "10010";
const sc_lv<5> bmm_top::ap_ST_st20_fsm_19 = "10011";
const sc_lv<5> bmm_top::ap_ST_st21_fsm_20 = "10100";
const sc_lv<5> bmm_top::ap_ST_st22_fsm_21 = "10101";
const sc_lv<5> bmm_top::ap_ST_st23_fsm_22 = "10110";
const sc_lv<5> bmm_top::ap_ST_st24_fsm_23 = "10111";
const sc_lv<1> bmm_top::ap_const_lv1_0 = "0";
const sc_lv<7> bmm_top::ap_const_lv7_0 = "0000000";
const sc_lv<32> bmm_top::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> bmm_top::ap_const_lv32_1 = "1";
const sc_lv<7> bmm_top::ap_const_lv7_40 = "1000000";
const sc_lv<7> bmm_top::ap_const_lv7_1 = "1";
const sc_lv<6> bmm_top::ap_const_lv6_0 = "000000";

bmm_top::bmm_top(sc_module_name name) : sc_module(name), mVcdFile(0) {
    bmm_top_mul_32s_32s_32_6_U1 = new bmm_top_mul_32s_32s_32_6<1,6,32,32,32>("bmm_top_mul_32s_32s_32_6_U1");
    bmm_top_mul_32s_32s_32_6_U1->clk(ap_clk);
    bmm_top_mul_32s_32s_32_6_U1->reset(ap_rst);
    bmm_top_mul_32s_32s_32_6_U1->din0(grp_fu_238_p0);
    bmm_top_mul_32s_32s_32_6_U1->din1(grp_fu_238_p1);
    bmm_top_mul_32s_32s_32_6_U1->ce(grp_fu_238_ce);
    bmm_top_mul_32s_32s_32_6_U1->dout(grp_fu_238_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond3_fu_136_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond3_fu_136_p2 );

    SC_METHOD(thread_ap_sig_bdd_121);
    sensitive << ( b1_rsp_empty_n );
    sensitive << ( b2_rsp_empty_n );

    SC_METHOD(thread_b1_address);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_8_cast_fu_218_p1 );

    SC_METHOD(thread_b1_dataout);

    SC_METHOD(thread_b1_req_din);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_b1_req_write);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_b1_rsp_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_121 );

    SC_METHOD(thread_b1_size);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_b2_address);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_cast_fu_228_p1 );

    SC_METHOD(thread_b2_dataout);

    SC_METHOD(thread_b2_req_din);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_b2_req_write);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_b2_rsp_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_121 );

    SC_METHOD(thread_b2_size);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_b3_address);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b3_req_full_n );
    sensitive << ( b3_addr_reg_341 );
    sensitive << ( tmp_4_cast_fu_248_p1 );

    SC_METHOD(thread_b3_dataout);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b3_req_full_n );
    sensitive << ( tmp_3_reg_352 );

    SC_METHOD(thread_b3_req_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b3_req_full_n );

    SC_METHOD(thread_b3_req_write);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b3_req_full_n );

    SC_METHOD(thread_b3_rsp_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b3_rsp_empty_n );

    SC_METHOD(thread_b3_size);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b3_req_full_n );

    SC_METHOD(thread_exitcond2_fu_160_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( j_reg_101 );

    SC_METHOD(thread_exitcond3_fu_136_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( i_reg_90 );

    SC_METHOD(thread_exitcond_fu_176_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( k_reg_112 );

    SC_METHOD(thread_grp_fu_238_ce);

    SC_METHOD(thread_grp_fu_238_p0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b2_addr_read_reg_331 );

    SC_METHOD(thread_grp_fu_238_p1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b1_addr_read_reg_326 );

    SC_METHOD(thread_i_1_fu_142_p2);
    sensitive << ( i_reg_90 );

    SC_METHOD(thread_j_1_fu_166_p2);
    sensitive << ( j_reg_101 );

    SC_METHOD(thread_k_1_fu_182_p2);
    sensitive << ( k_reg_112 );

    SC_METHOD(thread_tmpVal_1_fu_242_p2);
    sensitive << ( tmpVal_reg_123 );
    sensitive << ( grp_fu_238_p2 );

    SC_METHOD(thread_tmp_1_fu_197_p1);
    sensitive << ( k_reg_112 );

    SC_METHOD(thread_tmp_2_cast_fu_172_p1);
    sensitive << ( j_reg_101 );

    SC_METHOD(thread_tmp_3_fu_258_p2);
    sensitive << ( b3_addr_read_reg_347 );
    sensitive << ( tmpVal_reg_123 );

    SC_METHOD(thread_tmp_4_cast_fu_248_p1);
    sensitive << ( tmp_4_reg_309 );

    SC_METHOD(thread_tmp_4_fu_214_p2);
    sensitive << ( tmp_7_reg_271 );
    sensitive << ( tmp_2_cast_reg_285 );

    SC_METHOD(thread_tmp_5_cast_fu_188_p1);
    sensitive << ( k_reg_112 );

    SC_METHOD(thread_tmp_7_fu_152_p3);
    sensitive << ( tmp_fu_148_p1 );

    SC_METHOD(thread_tmp_8_cast_fu_218_p1);
    sensitive << ( tmp_8_reg_299 );

    SC_METHOD(thread_tmp_8_fu_192_p2);
    sensitive << ( tmp_7_reg_271 );
    sensitive << ( tmp_5_cast_fu_188_p1 );

    SC_METHOD(thread_tmp_9_fu_201_p3);
    sensitive << ( tmp_1_fu_197_p1 );

    SC_METHOD(thread_tmp_cast_fu_228_p1);
    sensitive << ( tmp_s_reg_304 );

    SC_METHOD(thread_tmp_fu_148_p1);
    sensitive << ( i_reg_90 );

    SC_METHOD(thread_tmp_s_fu_209_p2);
    sensitive << ( tmp_2_cast_reg_285 );
    sensitive << ( tmp_9_fu_201_p3 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( b3_req_full_n );
    sensitive << ( b3_rsp_empty_n );
    sensitive << ( exitcond3_fu_136_p2 );
    sensitive << ( exitcond2_fu_160_p2 );
    sensitive << ( exitcond_fu_176_p2 );
    sensitive << ( ap_sig_bdd_121 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "00000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "bmm_top_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    const char* dump_vcd = std::getenv("AP_WRITE_VCD");
    if (dump_vcd && string(dump_vcd) == "1" ) {
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, b1_req_din, "(port)b1_req_din");
    sc_trace(mVcdFile, b1_req_full_n, "(port)b1_req_full_n");
    sc_trace(mVcdFile, b1_req_write, "(port)b1_req_write");
    sc_trace(mVcdFile, b1_rsp_empty_n, "(port)b1_rsp_empty_n");
    sc_trace(mVcdFile, b1_rsp_read, "(port)b1_rsp_read");
    sc_trace(mVcdFile, b1_address, "(port)b1_address");
    sc_trace(mVcdFile, b1_datain, "(port)b1_datain");
    sc_trace(mVcdFile, b1_dataout, "(port)b1_dataout");
    sc_trace(mVcdFile, b1_size, "(port)b1_size");
    sc_trace(mVcdFile, b2_req_din, "(port)b2_req_din");
    sc_trace(mVcdFile, b2_req_full_n, "(port)b2_req_full_n");
    sc_trace(mVcdFile, b2_req_write, "(port)b2_req_write");
    sc_trace(mVcdFile, b2_rsp_empty_n, "(port)b2_rsp_empty_n");
    sc_trace(mVcdFile, b2_rsp_read, "(port)b2_rsp_read");
    sc_trace(mVcdFile, b2_address, "(port)b2_address");
    sc_trace(mVcdFile, b2_datain, "(port)b2_datain");
    sc_trace(mVcdFile, b2_dataout, "(port)b2_dataout");
    sc_trace(mVcdFile, b2_size, "(port)b2_size");
    sc_trace(mVcdFile, b3_req_din, "(port)b3_req_din");
    sc_trace(mVcdFile, b3_req_full_n, "(port)b3_req_full_n");
    sc_trace(mVcdFile, b3_req_write, "(port)b3_req_write");
    sc_trace(mVcdFile, b3_rsp_empty_n, "(port)b3_rsp_empty_n");
    sc_trace(mVcdFile, b3_rsp_read, "(port)b3_rsp_read");
    sc_trace(mVcdFile, b3_address, "(port)b3_address");
    sc_trace(mVcdFile, b3_datain, "(port)b3_datain");
    sc_trace(mVcdFile, b3_dataout, "(port)b3_dataout");
    sc_trace(mVcdFile, b3_size, "(port)b3_size");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, i_1_fu_142_p2, "i_1_fu_142_p2");
    sc_trace(mVcdFile, i_1_reg_266, "i_1_reg_266");
    sc_trace(mVcdFile, tmp_7_fu_152_p3, "tmp_7_fu_152_p3");
    sc_trace(mVcdFile, tmp_7_reg_271, "tmp_7_reg_271");
    sc_trace(mVcdFile, exitcond3_fu_136_p2, "exitcond3_fu_136_p2");
    sc_trace(mVcdFile, j_1_fu_166_p2, "j_1_fu_166_p2");
    sc_trace(mVcdFile, j_1_reg_280, "j_1_reg_280");
    sc_trace(mVcdFile, tmp_2_cast_fu_172_p1, "tmp_2_cast_fu_172_p1");
    sc_trace(mVcdFile, tmp_2_cast_reg_285, "tmp_2_cast_reg_285");
    sc_trace(mVcdFile, exitcond2_fu_160_p2, "exitcond2_fu_160_p2");
    sc_trace(mVcdFile, k_1_fu_182_p2, "k_1_fu_182_p2");
    sc_trace(mVcdFile, k_1_reg_294, "k_1_reg_294");
    sc_trace(mVcdFile, tmp_8_fu_192_p2, "tmp_8_fu_192_p2");
    sc_trace(mVcdFile, tmp_8_reg_299, "tmp_8_reg_299");
    sc_trace(mVcdFile, exitcond_fu_176_p2, "exitcond_fu_176_p2");
    sc_trace(mVcdFile, tmp_s_fu_209_p2, "tmp_s_fu_209_p2");
    sc_trace(mVcdFile, tmp_s_reg_304, "tmp_s_reg_304");
    sc_trace(mVcdFile, tmp_4_fu_214_p2, "tmp_4_fu_214_p2");
    sc_trace(mVcdFile, tmp_4_reg_309, "tmp_4_reg_309");
    sc_trace(mVcdFile, b1_addr_read_reg_326, "b1_addr_read_reg_326");
    sc_trace(mVcdFile, ap_sig_bdd_121, "ap_sig_bdd_121");
    sc_trace(mVcdFile, b2_addr_read_reg_331, "b2_addr_read_reg_331");
    sc_trace(mVcdFile, tmpVal_1_fu_242_p2, "tmpVal_1_fu_242_p2");
    sc_trace(mVcdFile, b3_addr_reg_341, "b3_addr_reg_341");
    sc_trace(mVcdFile, b3_addr_read_reg_347, "b3_addr_read_reg_347");
    sc_trace(mVcdFile, tmp_3_fu_258_p2, "tmp_3_fu_258_p2");
    sc_trace(mVcdFile, tmp_3_reg_352, "tmp_3_reg_352");
    sc_trace(mVcdFile, i_reg_90, "i_reg_90");
    sc_trace(mVcdFile, j_reg_101, "j_reg_101");
    sc_trace(mVcdFile, k_reg_112, "k_reg_112");
    sc_trace(mVcdFile, tmpVal_reg_123, "tmpVal_reg_123");
    sc_trace(mVcdFile, tmp_8_cast_fu_218_p1, "tmp_8_cast_fu_218_p1");
    sc_trace(mVcdFile, tmp_cast_fu_228_p1, "tmp_cast_fu_228_p1");
    sc_trace(mVcdFile, tmp_4_cast_fu_248_p1, "tmp_4_cast_fu_248_p1");
    sc_trace(mVcdFile, tmp_fu_148_p1, "tmp_fu_148_p1");
    sc_trace(mVcdFile, tmp_5_cast_fu_188_p1, "tmp_5_cast_fu_188_p1");
    sc_trace(mVcdFile, tmp_1_fu_197_p1, "tmp_1_fu_197_p1");
    sc_trace(mVcdFile, tmp_9_fu_201_p3, "tmp_9_fu_201_p3");
    sc_trace(mVcdFile, grp_fu_238_p0, "grp_fu_238_p0");
    sc_trace(mVcdFile, grp_fu_238_p1, "grp_fu_238_p1");
    sc_trace(mVcdFile, grp_fu_238_p2, "grp_fu_238_p2");
    sc_trace(mVcdFile, grp_fu_238_ce, "grp_fu_238_ce");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");

    }
    mHdltvinHandle.open("bmm_top.hdltvin.dat");
    mHdltvoutHandle.open("bmm_top.hdltvout.dat");
}

bmm_top::~bmm_top() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete bmm_top_mul_32s_32s_32_6_U1;
}

void bmm_top::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_160_p2.read()))) {
        i_reg_90 = i_1_reg_266.read();
    } else if ((esl_seteq<1,5,5>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i_reg_90 = ap_const_lv7_0;
    }
    if ((esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond3_fu_136_p2.read(), ap_const_lv1_0))) {
        j_reg_101 = ap_const_lv7_0;
    } else if ((esl_seteq<1,5,5>(ap_ST_st24_fsm_23, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(b3_req_full_n.read(), ap_const_logic_0))) {
        j_reg_101 = j_1_reg_280.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_160_p2.read()))) {
        k_reg_112 = ap_const_lv7_0;
    } else if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        k_reg_112 = k_1_reg_294.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_160_p2.read()))) {
        tmpVal_reg_123 = ap_const_lv32_0;
    } else if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        tmpVal_reg_123 = tmpVal_1_fu_242_p2.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st10_fsm_9, ap_CS_fsm.read()) && !ap_sig_bdd_121.read())) {
        b1_addr_read_reg_326 = b1_datain.read();
        b2_addr_read_reg_331 = b2_datain.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st22_fsm_21, ap_CS_fsm.read()) && !esl_seteq<1,1,1>(b3_rsp_empty_n.read(), ap_const_logic_0))) {
        b3_addr_read_reg_347 = b3_datain.read();
    }
    if (esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read())) {
        b3_addr_reg_341 =  (sc_lv<32>) (tmp_4_cast_fu_248_p1.read());
    }
    if (esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        i_1_reg_266 = i_1_fu_142_p2.read();
    }
    if (esl_seteq<1,5,5>(ap_ST_st3_fsm_2, ap_CS_fsm.read())) {
        j_1_reg_280 = j_1_fu_166_p2.read();
    }
    if (esl_seteq<1,5,5>(ap_ST_st4_fsm_3, ap_CS_fsm.read())) {
        k_1_reg_294 = k_1_fu_182_p2.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_160_p2.read()))) {
        tmp_2_cast_reg_285 = tmp_2_cast_fu_172_p1.read();
    }
    if (esl_seteq<1,5,5>(ap_ST_st23_fsm_22, ap_CS_fsm.read())) {
        tmp_3_reg_352 = tmp_3_fu_258_p2.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st4_fsm_3, ap_CS_fsm.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_176_p2.read()))) {
        tmp_4_reg_309 = tmp_4_fu_214_p2.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && esl_seteq<1,1,1>(exitcond3_fu_136_p2.read(), ap_const_lv1_0))) {
        tmp_7_reg_271 = tmp_7_fu_152_p3.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st4_fsm_3, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_176_p2.read()))) {
        tmp_8_reg_299 = tmp_8_fu_192_p2.read();
        tmp_s_reg_304 = tmp_s_fu_209_p2.read();
    }
}

void bmm_top::thread_ap_done() {
    if ((esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(exitcond3_fu_136_p2.read(), ap_const_lv1_0))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void bmm_top::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,5,5>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void bmm_top::thread_ap_ready() {
    if ((esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(exitcond3_fu_136_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void bmm_top::thread_ap_sig_bdd_121() {
    ap_sig_bdd_121 = (esl_seteq<1,1,1>(b1_rsp_empty_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(b2_rsp_empty_n.read(), ap_const_logic_0));
}

void bmm_top::thread_b1_address() {
    b1_address =  (sc_lv<32>) (tmp_8_cast_fu_218_p1.read());
}

void bmm_top::thread_b1_dataout() {
    b1_dataout = ap_const_lv32_0;
}

void bmm_top::thread_b1_req_din() {
    b1_req_din = ap_const_logic_0;
}

void bmm_top::thread_b1_req_write() {
    if (esl_seteq<1,5,5>(ap_ST_st5_fsm_4, ap_CS_fsm.read())) {
        b1_req_write = ap_const_logic_1;
    } else {
        b1_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b1_rsp_read() {
    if ((esl_seteq<1,5,5>(ap_ST_st10_fsm_9, ap_CS_fsm.read()) && 
         !ap_sig_bdd_121.read())) {
        b1_rsp_read = ap_const_logic_1;
    } else {
        b1_rsp_read = ap_const_logic_0;
    }
}

void bmm_top::thread_b1_size() {
    b1_size = ap_const_lv32_1;
}

void bmm_top::thread_b2_address() {
    b2_address =  (sc_lv<32>) (tmp_cast_fu_228_p1.read());
}

void bmm_top::thread_b2_dataout() {
    b2_dataout = ap_const_lv32_0;
}

void bmm_top::thread_b2_req_din() {
    b2_req_din = ap_const_logic_0;
}

void bmm_top::thread_b2_req_write() {
    if (esl_seteq<1,5,5>(ap_ST_st5_fsm_4, ap_CS_fsm.read())) {
        b2_req_write = ap_const_logic_1;
    } else {
        b2_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b2_rsp_read() {
    if ((esl_seteq<1,5,5>(ap_ST_st10_fsm_9, ap_CS_fsm.read()) && 
         !ap_sig_bdd_121.read())) {
        b2_rsp_read = ap_const_logic_1;
    } else {
        b2_rsp_read = ap_const_logic_0;
    }
}

void bmm_top::thread_b2_size() {
    b2_size = ap_const_lv32_1;
}

void bmm_top::thread_b3_address() {
    if ((esl_seteq<1,5,5>(ap_ST_st24_fsm_23, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(b3_req_full_n.read(), ap_const_logic_0))) {
        b3_address = b3_addr_reg_341.read();
    } else if (esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read())) {
        b3_address =  (sc_lv<32>) (tmp_4_cast_fu_248_p1.read());
    } else {
        b3_address = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_b3_dataout() {
    b3_dataout = tmp_3_reg_352.read();
}

void bmm_top::thread_b3_req_din() {
    if (((esl_seteq<1,5,5>(ap_ST_st24_fsm_23, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(b3_req_full_n.read(), ap_const_logic_0)))) {
        b3_req_din = ap_const_logic_1;
    } else if (esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read())) {
        b3_req_din = ap_const_logic_0;
    } else {
        b3_req_din = ap_const_logic_0;
    }
}

void bmm_top::thread_b3_req_write() {
    if ((esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read()) || 
         (esl_seteq<1,5,5>(ap_ST_st24_fsm_23, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(b3_req_full_n.read(), ap_const_logic_0)))) {
        b3_req_write = ap_const_logic_1;
    } else {
        b3_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b3_rsp_read() {
    if ((esl_seteq<1,5,5>(ap_ST_st22_fsm_21, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(b3_rsp_empty_n.read(), ap_const_logic_0))) {
        b3_rsp_read = ap_const_logic_1;
    } else {
        b3_rsp_read = ap_const_logic_0;
    }
}

void bmm_top::thread_b3_size() {
    b3_size = ap_const_lv32_1;
}

void bmm_top::thread_exitcond2_fu_160_p2() {
    exitcond2_fu_160_p2 = (!j_reg_101.read().is_01() || !ap_const_lv7_40.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_101.read() == ap_const_lv7_40);
}

void bmm_top::thread_exitcond3_fu_136_p2() {
    exitcond3_fu_136_p2 = (!i_reg_90.read().is_01() || !ap_const_lv7_40.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_90.read() == ap_const_lv7_40);
}

void bmm_top::thread_exitcond_fu_176_p2() {
    exitcond_fu_176_p2 = (!k_reg_112.read().is_01() || !ap_const_lv7_40.is_01())? sc_lv<1>(): sc_lv<1>(k_reg_112.read() == ap_const_lv7_40);
}

void bmm_top::thread_grp_fu_238_ce() {
    grp_fu_238_ce = ap_const_logic_1;
}

void bmm_top::thread_grp_fu_238_p0() {
    grp_fu_238_p0 = b2_addr_read_reg_331.read();
}

void bmm_top::thread_grp_fu_238_p1() {
    grp_fu_238_p1 = b1_addr_read_reg_326.read();
}

void bmm_top::thread_i_1_fu_142_p2() {
    i_1_fu_142_p2 = (!i_reg_90.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(i_reg_90.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void bmm_top::thread_j_1_fu_166_p2() {
    j_1_fu_166_p2 = (!j_reg_101.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(j_reg_101.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void bmm_top::thread_k_1_fu_182_p2() {
    k_1_fu_182_p2 = (!k_reg_112.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_bigint<7>(k_reg_112.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void bmm_top::thread_tmpVal_1_fu_242_p2() {
    tmpVal_1_fu_242_p2 = (!grp_fu_238_p2.read().is_01() || !tmpVal_reg_123.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_238_p2.read()) + sc_biguint<32>(tmpVal_reg_123.read()));
}

void bmm_top::thread_tmp_1_fu_197_p1() {
    tmp_1_fu_197_p1 = k_reg_112.read().range(6-1, 0);
}

void bmm_top::thread_tmp_2_cast_fu_172_p1() {
    tmp_2_cast_fu_172_p1 = esl_zext<12,7>(j_reg_101.read());
}

void bmm_top::thread_tmp_3_fu_258_p2() {
    tmp_3_fu_258_p2 = (!b3_addr_read_reg_347.read().is_01() || !tmpVal_reg_123.read().is_01())? sc_lv<32>(): (sc_bigint<32>(b3_addr_read_reg_347.read()) + sc_biguint<32>(tmpVal_reg_123.read()));
}

void bmm_top::thread_tmp_4_cast_fu_248_p1() {
    tmp_4_cast_fu_248_p1 = esl_zext<64,12>(tmp_4_reg_309.read());
}

void bmm_top::thread_tmp_4_fu_214_p2() {
    tmp_4_fu_214_p2 = (!tmp_7_reg_271.read().is_01() || !tmp_2_cast_reg_285.read().is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_7_reg_271.read()) + sc_biguint<12>(tmp_2_cast_reg_285.read()));
}

void bmm_top::thread_tmp_5_cast_fu_188_p1() {
    tmp_5_cast_fu_188_p1 = esl_zext<12,7>(k_reg_112.read());
}

void bmm_top::thread_tmp_7_fu_152_p3() {
    tmp_7_fu_152_p3 = esl_concat<6,6>(tmp_fu_148_p1.read(), ap_const_lv6_0);
}

void bmm_top::thread_tmp_8_cast_fu_218_p1() {
    tmp_8_cast_fu_218_p1 = esl_zext<64,12>(tmp_8_reg_299.read());
}

void bmm_top::thread_tmp_8_fu_192_p2() {
    tmp_8_fu_192_p2 = (!tmp_7_reg_271.read().is_01() || !tmp_5_cast_fu_188_p1.read().is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_7_reg_271.read()) + sc_biguint<12>(tmp_5_cast_fu_188_p1.read()));
}

void bmm_top::thread_tmp_9_fu_201_p3() {
    tmp_9_fu_201_p3 = esl_concat<6,6>(tmp_1_fu_197_p1.read(), ap_const_lv6_0);
}

void bmm_top::thread_tmp_cast_fu_228_p1() {
    tmp_cast_fu_228_p1 = esl_zext<64,12>(tmp_s_reg_304.read());
}

void bmm_top::thread_tmp_fu_148_p1() {
    tmp_fu_148_p1 = i_reg_90.read().range(6-1, 0);
}

void bmm_top::thread_tmp_s_fu_209_p2() {
    tmp_s_fu_209_p2 = (!tmp_9_fu_201_p3.read().is_01() || !tmp_2_cast_reg_285.read().is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_9_fu_201_p3.read()) + sc_biguint<12>(tmp_2_cast_reg_285.read()));
}

void bmm_top::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint()) {
        case 0 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 1 : 
            if (!esl_seteq<1,1,1>(exitcond3_fu_136_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 2 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_160_p2.read())) {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        case 3 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_176_p2.read())) {
                ap_NS_fsm = ap_ST_st17_fsm_16;
            } else {
                ap_NS_fsm = ap_ST_st5_fsm_4;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
            break;
        case 5 : 
            ap_NS_fsm = ap_ST_st7_fsm_6;
            break;
        case 6 : 
            ap_NS_fsm = ap_ST_st8_fsm_7;
            break;
        case 7 : 
            ap_NS_fsm = ap_ST_st9_fsm_8;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_st10_fsm_9;
            break;
        case 9 : 
            if (!ap_sig_bdd_121.read()) {
                ap_NS_fsm = ap_ST_st11_fsm_10;
            } else {
                ap_NS_fsm = ap_ST_st10_fsm_9;
            }
            break;
        case 10 : 
            ap_NS_fsm = ap_ST_st12_fsm_11;
            break;
        case 11 : 
            ap_NS_fsm = ap_ST_st13_fsm_12;
            break;
        case 12 : 
            ap_NS_fsm = ap_ST_st14_fsm_13;
            break;
        case 13 : 
            ap_NS_fsm = ap_ST_st15_fsm_14;
            break;
        case 14 : 
            ap_NS_fsm = ap_ST_st16_fsm_15;
            break;
        case 15 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_st18_fsm_17;
            break;
        case 17 : 
            ap_NS_fsm = ap_ST_st19_fsm_18;
            break;
        case 18 : 
            ap_NS_fsm = ap_ST_st20_fsm_19;
            break;
        case 19 : 
            ap_NS_fsm = ap_ST_st21_fsm_20;
            break;
        case 20 : 
            ap_NS_fsm = ap_ST_st22_fsm_21;
            break;
        case 21 : 
            if (!esl_seteq<1,1,1>(b3_rsp_empty_n.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st23_fsm_22;
            } else {
                ap_NS_fsm = ap_ST_st22_fsm_21;
            }
            break;
        case 22 : 
            ap_NS_fsm = ap_ST_st24_fsm_23;
            break;
        case 23 : 
            if (!esl_seteq<1,1,1>(b3_req_full_n.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            } else {
                ap_NS_fsm = ap_ST_st24_fsm_23;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<5>) ("XXXXX");
            break;
    }
}
void bmm_top::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b1_req_din\" :  \"" << b1_req_din.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b1_req_full_n\" :  \"" << b1_req_full_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b1_req_write\" :  \"" << b1_req_write.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b1_rsp_empty_n\" :  \"" << b1_rsp_empty_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b1_rsp_read\" :  \"" << b1_rsp_read.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b1_address\" :  \"" << b1_address.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b1_datain\" :  \"" << b1_datain.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b1_dataout\" :  \"" << b1_dataout.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b1_size\" :  \"" << b1_size.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b2_req_din\" :  \"" << b2_req_din.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b2_req_full_n\" :  \"" << b2_req_full_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b2_req_write\" :  \"" << b2_req_write.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b2_rsp_empty_n\" :  \"" << b2_rsp_empty_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b2_rsp_read\" :  \"" << b2_rsp_read.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b2_address\" :  \"" << b2_address.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b2_datain\" :  \"" << b2_datain.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b2_dataout\" :  \"" << b2_dataout.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b2_size\" :  \"" << b2_size.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b3_req_din\" :  \"" << b3_req_din.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b3_req_full_n\" :  \"" << b3_req_full_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b3_req_write\" :  \"" << b3_req_write.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b3_rsp_empty_n\" :  \"" << b3_rsp_empty_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b3_rsp_read\" :  \"" << b3_rsp_read.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b3_address\" :  \"" << b3_address.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b3_datain\" :  \"" << b3_datain.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b3_dataout\" :  \"" << b3_dataout.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b3_size\" :  \"" << b3_size.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

