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
const sc_lv<1> bmm_top::ap_const_lv1_0 = "0";
const sc_lv<32> bmm_top::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> bmm_top::ap_const_lv32_1 = "1";
const sc_lv<256> bmm_top::ap_const_lv256_lc_1 = "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<32> bmm_top::ap_const_lv32_1F = "11111";
const sc_lv<32> bmm_top::ap_const_lv32_8 = "1000";
const sc_lv<25> bmm_top::ap_const_lv25_0 = "0000000000000000000000000";
const sc_lv<32> bmm_top::ap_const_lv32_2 = "10";
const sc_lv<32> bmm_top::ap_const_lv32_18 = "11000";
const sc_lv<3> bmm_top::ap_const_lv3_0 = "000";

bmm_top::bmm_top(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_3_fu_255_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_3_fu_255_p2 );

    SC_METHOD(thread_ap_sig_bdd_138);
    sensitive << ( b1_rsp_empty_n );
    sensitive << ( b3_rsp_empty_n );

    SC_METHOD(thread_ap_sig_bdd_82);
    sensitive << ( ap_start );
    sensitive << ( blockSize_ap_vld );

    SC_METHOD(thread_b1_address);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_6_fu_277_p1 );

    SC_METHOD(thread_b1_dataout);

    SC_METHOD(thread_b1_req_din);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_b1_req_write);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_b1_rsp_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_138 );

    SC_METHOD(thread_b1_size);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_b2_address);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_9_fu_322_p1 );

    SC_METHOD(thread_b2_dataout);

    SC_METHOD(thread_b2_req_din);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_b2_req_write);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_b2_rsp_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b2_rsp_empty_n );

    SC_METHOD(thread_b2_size);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_b3_address);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b3_req_full_n );
    sensitive << ( tmp_6_fu_277_p1 );
    sensitive << ( tmp_11_fu_354_p1 );

    SC_METHOD(thread_b3_dataout);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b3_req_full_n );

    SC_METHOD(thread_b3_req_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b3_req_full_n );

    SC_METHOD(thread_b3_req_write);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b3_req_full_n );

    SC_METHOD(thread_b3_rsp_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_138 );

    SC_METHOD(thread_b3_size);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b3_req_full_n );

    SC_METHOD(thread_blockSize_ap_ack);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_82 );

    SC_METHOD(thread_dim_cast_fu_251_p1);
    sensitive << ( dim_fu_243_p3 );

    SC_METHOD(thread_dim_fu_243_p3);
    sensitive << ( tmp_13_fu_233_p4 );

    SC_METHOD(thread_i_1_fu_349_p2);
    sensitive << ( dim_cast_reg_370 );
    sensitive << ( i_reg_119 );

    SC_METHOD(thread_j_1_fu_299_p2);
    sensitive << ( j_reg_142 );

    SC_METHOD(thread_p_lshr_cast_fu_201_p1);
    sensitive << ( tmp_1_fu_191_p4 );

    SC_METHOD(thread_p_lshr_f_cast_fu_221_p1);
    sensitive << ( tmp_12_fu_211_p4 );

    SC_METHOD(thread_p_neg_fu_185_p2);
    sensitive << ( blockSize );

    SC_METHOD(thread_p_neg_t_fu_205_p2);
    sensitive << ( p_lshr_cast_fu_201_p1 );

    SC_METHOD(thread_t1_1_fu_265_p2);
    sensitive << ( t1_reg_131 );

    SC_METHOD(thread_t1_2_fu_310_p2);
    sensitive << ( t_reg_154 );

    SC_METHOD(thread_t1_3_fu_337_p2);
    sensitive << ( t3_reg_165 );

    SC_METHOD(thread_tmp_10_fu_343_p2);
    sensitive << ( i_reg_119 );
    sensitive << ( t3_reg_165 );

    SC_METHOD(thread_tmp_11_fu_354_p1);
    sensitive << ( tmp_10_reg_441 );

    SC_METHOD(thread_tmp_12_fu_211_p4);
    sensitive << ( blockSize );

    SC_METHOD(thread_tmp_13_fu_233_p4);
    sensitive << ( tmp_fu_225_p3 );

    SC_METHOD(thread_tmp_14_fu_177_p3);
    sensitive << ( blockSize );

    SC_METHOD(thread_tmp_1_fu_191_p4);
    sensitive << ( p_neg_fu_185_p2 );

    SC_METHOD(thread_tmp_2_fu_305_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( dim_cast_reg_370 );
    sensitive << ( t_reg_154 );

    SC_METHOD(thread_tmp_3_fu_255_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( blockSize_read_reg_364 );
    sensitive << ( i_reg_119 );

    SC_METHOD(thread_tmp_4_fu_260_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( dim_cast_reg_370 );
    sensitive << ( t1_reg_131 );

    SC_METHOD(thread_tmp_5_fu_271_p2);
    sensitive << ( i_reg_119 );
    sensitive << ( t1_reg_131 );

    SC_METHOD(thread_tmp_6_fu_277_p1);
    sensitive << ( tmp_5_reg_389 );

    SC_METHOD(thread_tmp_7_fu_332_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( dim_cast_reg_370 );
    sensitive << ( t3_reg_165 );

    SC_METHOD(thread_tmp_8_fu_316_p2);
    sensitive << ( j_reg_142 );
    sensitive << ( t_reg_154 );

    SC_METHOD(thread_tmp_9_fu_322_p1);
    sensitive << ( tmp_8_reg_422 );

    SC_METHOD(thread_tmp_fu_225_p3);
    sensitive << ( tmp_14_fu_177_p3 );
    sensitive << ( p_neg_t_fu_205_p2 );
    sensitive << ( p_lshr_f_cast_fu_221_p1 );

    SC_METHOD(thread_tmp_s_fu_294_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( blockSize_read_reg_364 );
    sensitive << ( j_reg_142 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( b2_rsp_empty_n );
    sensitive << ( b3_req_full_n );
    sensitive << ( ap_sig_bdd_82 );
    sensitive << ( tmp_4_fu_260_p2 );
    sensitive << ( tmp_2_fu_305_p2 );
    sensitive << ( tmp_7_fu_332_p2 );
    sensitive << ( ap_sig_bdd_138 );
    sensitive << ( tmp_3_fu_255_p2 );
    sensitive << ( tmp_s_fu_294_p2 );

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
    sc_trace(mVcdFile, blockSize, "(port)blockSize");
    sc_trace(mVcdFile, blockSize_ap_vld, "(port)blockSize_ap_vld");
    sc_trace(mVcdFile, blockSize_ap_ack, "(port)blockSize_ap_ack");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, blockSize_read_reg_364, "blockSize_read_reg_364");
    sc_trace(mVcdFile, ap_sig_bdd_82, "ap_sig_bdd_82");
    sc_trace(mVcdFile, dim_cast_fu_251_p1, "dim_cast_fu_251_p1");
    sc_trace(mVcdFile, dim_cast_reg_370, "dim_cast_reg_370");
    sc_trace(mVcdFile, t1_1_fu_265_p2, "t1_1_fu_265_p2");
    sc_trace(mVcdFile, t1_1_reg_384, "t1_1_reg_384");
    sc_trace(mVcdFile, tmp_5_fu_271_p2, "tmp_5_fu_271_p2");
    sc_trace(mVcdFile, tmp_5_reg_389, "tmp_5_reg_389");
    sc_trace(mVcdFile, tmp_4_fu_260_p2, "tmp_4_fu_260_p2");
    sc_trace(mVcdFile, j_1_fu_299_p2, "j_1_fu_299_p2");
    sc_trace(mVcdFile, j_1_reg_409, "j_1_reg_409");
    sc_trace(mVcdFile, t1_2_fu_310_p2, "t1_2_fu_310_p2");
    sc_trace(mVcdFile, t1_2_reg_417, "t1_2_reg_417");
    sc_trace(mVcdFile, tmp_8_fu_316_p2, "tmp_8_fu_316_p2");
    sc_trace(mVcdFile, tmp_8_reg_422, "tmp_8_reg_422");
    sc_trace(mVcdFile, tmp_2_fu_305_p2, "tmp_2_fu_305_p2");
    sc_trace(mVcdFile, t1_3_fu_337_p2, "t1_3_fu_337_p2");
    sc_trace(mVcdFile, t1_3_reg_436, "t1_3_reg_436");
    sc_trace(mVcdFile, tmp_10_fu_343_p2, "tmp_10_fu_343_p2");
    sc_trace(mVcdFile, tmp_10_reg_441, "tmp_10_reg_441");
    sc_trace(mVcdFile, tmp_7_fu_332_p2, "tmp_7_fu_332_p2");
    sc_trace(mVcdFile, i_1_fu_349_p2, "i_1_fu_349_p2");
    sc_trace(mVcdFile, i_reg_119, "i_reg_119");
    sc_trace(mVcdFile, t1_reg_131, "t1_reg_131");
    sc_trace(mVcdFile, ap_sig_bdd_138, "ap_sig_bdd_138");
    sc_trace(mVcdFile, tmp_3_fu_255_p2, "tmp_3_fu_255_p2");
    sc_trace(mVcdFile, j_reg_142, "j_reg_142");
    sc_trace(mVcdFile, t_reg_154, "t_reg_154");
    sc_trace(mVcdFile, tmp_s_fu_294_p2, "tmp_s_fu_294_p2");
    sc_trace(mVcdFile, t3_reg_165, "t3_reg_165");
    sc_trace(mVcdFile, tmp_6_fu_277_p1, "tmp_6_fu_277_p1");
    sc_trace(mVcdFile, tmp_9_fu_322_p1, "tmp_9_fu_322_p1");
    sc_trace(mVcdFile, tmp_11_fu_354_p1, "tmp_11_fu_354_p1");
    sc_trace(mVcdFile, p_neg_fu_185_p2, "p_neg_fu_185_p2");
    sc_trace(mVcdFile, tmp_1_fu_191_p4, "tmp_1_fu_191_p4");
    sc_trace(mVcdFile, p_lshr_cast_fu_201_p1, "p_lshr_cast_fu_201_p1");
    sc_trace(mVcdFile, tmp_12_fu_211_p4, "tmp_12_fu_211_p4");
    sc_trace(mVcdFile, tmp_14_fu_177_p3, "tmp_14_fu_177_p3");
    sc_trace(mVcdFile, p_neg_t_fu_205_p2, "p_neg_t_fu_205_p2");
    sc_trace(mVcdFile, p_lshr_f_cast_fu_221_p1, "p_lshr_f_cast_fu_221_p1");
    sc_trace(mVcdFile, tmp_fu_225_p3, "tmp_fu_225_p3");
    sc_trace(mVcdFile, tmp_13_fu_233_p4, "tmp_13_fu_233_p4");
    sc_trace(mVcdFile, dim_fu_243_p3, "dim_fu_243_p3");
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
}

void bmm_top::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st18_fsm_17, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_7_fu_332_p2.read()))) {
        i_reg_119 = i_1_fu_349_p2.read();
    } else if ((esl_seteq<1,5,5>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
                !ap_sig_bdd_82.read())) {
        i_reg_119 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,5,5>(ap_ST_st11_fsm_10, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_2_fu_305_p2.read()))) {
        j_reg_142 = j_1_reg_409.read();
    } else if ((esl_seteq<1,5,5>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(tmp_4_fu_260_p2.read(), ap_const_lv1_0))) {
        j_reg_142 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_3_fu_255_p2.read()))) {
        t1_reg_131 = ap_const_lv32_0;
    } else if ((esl_seteq<1,5,5>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
                !ap_sig_bdd_138.read())) {
        t1_reg_131 = t1_1_reg_384.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st10_fsm_9, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_s_fu_294_p2.read()))) {
        t3_reg_165 = ap_const_lv32_0;
    } else if ((esl_seteq<1,5,5>(ap_ST_st19_fsm_18, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(b3_req_full_n.read(), ap_const_logic_0))) {
        t3_reg_165 = t1_3_reg_436.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st10_fsm_9, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_s_fu_294_p2.read()))) {
        t_reg_154 = ap_const_lv32_0;
    } else if ((esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(b2_rsp_empty_n.read(), ap_const_logic_0))) {
        t_reg_154 = t1_2_reg_417.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && !ap_sig_bdd_82.read())) {
        blockSize_read_reg_364 = blockSize.read();
        dim_cast_reg_370 = dim_cast_fu_251_p1.read();
    }
    if (esl_seteq<1,5,5>(ap_ST_st10_fsm_9, ap_CS_fsm.read())) {
        j_1_reg_409 = j_1_fu_299_p2.read();
    }
    if (esl_seteq<1,5,5>(ap_ST_st3_fsm_2, ap_CS_fsm.read())) {
        t1_1_reg_384 = t1_1_fu_265_p2.read();
    }
    if (esl_seteq<1,5,5>(ap_ST_st11_fsm_10, ap_CS_fsm.read())) {
        t1_2_reg_417 = t1_2_fu_310_p2.read();
    }
    if (esl_seteq<1,5,5>(ap_ST_st18_fsm_17, ap_CS_fsm.read())) {
        t1_3_reg_436 = t1_3_fu_337_p2.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st18_fsm_17, ap_CS_fsm.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_7_fu_332_p2.read()))) {
        tmp_10_reg_441 = tmp_10_fu_343_p2.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && !esl_seteq<1,1,1>(tmp_4_fu_260_p2.read(), ap_const_lv1_0))) {
        tmp_5_reg_389 = tmp_5_fu_271_p2.read();
    }
    if ((esl_seteq<1,5,5>(ap_ST_st11_fsm_10, ap_CS_fsm.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_2_fu_305_p2.read()))) {
        tmp_8_reg_422 = tmp_8_fu_316_p2.read();
    }
}

void bmm_top::thread_ap_done() {
    if ((esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_3_fu_255_p2.read()))) {
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
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_3_fu_255_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void bmm_top::thread_ap_sig_bdd_138() {
    ap_sig_bdd_138 = (esl_seteq<1,1,1>(b1_rsp_empty_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(b3_rsp_empty_n.read(), ap_const_logic_0));
}

void bmm_top::thread_ap_sig_bdd_82() {
    ap_sig_bdd_82 = (esl_seteq<1,1,1>(blockSize_ap_vld.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0));
}

void bmm_top::thread_b1_address() {
    b1_address =  (sc_lv<32>) (tmp_6_fu_277_p1.read());
}

void bmm_top::thread_b1_dataout() {
    b1_dataout = ap_const_lv256_lc_1;
}

void bmm_top::thread_b1_req_din() {
    b1_req_din = ap_const_logic_0;
}

void bmm_top::thread_b1_req_write() {
    if (esl_seteq<1,5,5>(ap_ST_st4_fsm_3, ap_CS_fsm.read())) {
        b1_req_write = ap_const_logic_1;
    } else {
        b1_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b1_rsp_read() {
    if ((esl_seteq<1,5,5>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
         !ap_sig_bdd_138.read())) {
        b1_rsp_read = ap_const_logic_1;
    } else {
        b1_rsp_read = ap_const_logic_0;
    }
}

void bmm_top::thread_b1_size() {
    b1_size = ap_const_lv32_1;
}

void bmm_top::thread_b2_address() {
    b2_address =  (sc_lv<32>) (tmp_9_fu_322_p1.read());
}

void bmm_top::thread_b2_dataout() {
    b2_dataout = ap_const_lv256_lc_1;
}

void bmm_top::thread_b2_req_din() {
    b2_req_din = ap_const_logic_0;
}

void bmm_top::thread_b2_req_write() {
    if (esl_seteq<1,5,5>(ap_ST_st12_fsm_11, ap_CS_fsm.read())) {
        b2_req_write = ap_const_logic_1;
    } else {
        b2_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b2_rsp_read() {
    if ((esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(b2_rsp_empty_n.read(), ap_const_logic_0))) {
        b2_rsp_read = ap_const_logic_1;
    } else {
        b2_rsp_read = ap_const_logic_0;
    }
}

void bmm_top::thread_b2_size() {
    b2_size = ap_const_lv32_1;
}

void bmm_top::thread_b3_address() {
    if ((esl_seteq<1,5,5>(ap_ST_st19_fsm_18, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(b3_req_full_n.read(), ap_const_logic_0))) {
        b3_address =  (sc_lv<32>) (tmp_11_fu_354_p1.read());
    } else if (esl_seteq<1,5,5>(ap_ST_st4_fsm_3, ap_CS_fsm.read())) {
        b3_address =  (sc_lv<32>) (tmp_6_fu_277_p1.read());
    } else {
        b3_address = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_b3_dataout() {
    b3_dataout = ap_const_lv256_lc_1;
}

void bmm_top::thread_b3_req_din() {
    if (((esl_seteq<1,5,5>(ap_ST_st19_fsm_18, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(b3_req_full_n.read(), ap_const_logic_0)))) {
        b3_req_din = ap_const_logic_1;
    } else if (esl_seteq<1,5,5>(ap_ST_st4_fsm_3, ap_CS_fsm.read())) {
        b3_req_din = ap_const_logic_0;
    } else {
        b3_req_din = ap_const_logic_0;
    }
}

void bmm_top::thread_b3_req_write() {
    if ((esl_seteq<1,5,5>(ap_ST_st4_fsm_3, ap_CS_fsm.read()) || 
         (esl_seteq<1,5,5>(ap_ST_st19_fsm_18, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(b3_req_full_n.read(), ap_const_logic_0)))) {
        b3_req_write = ap_const_logic_1;
    } else {
        b3_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b3_rsp_read() {
    if ((esl_seteq<1,5,5>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
         !ap_sig_bdd_138.read())) {
        b3_rsp_read = ap_const_logic_1;
    } else {
        b3_rsp_read = ap_const_logic_0;
    }
}

void bmm_top::thread_b3_size() {
    b3_size = ap_const_lv32_1;
}

void bmm_top::thread_blockSize_ap_ack() {
    if ((esl_seteq<1,5,5>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
         !ap_sig_bdd_82.read())) {
        blockSize_ap_ack = ap_const_logic_1;
    } else {
        blockSize_ap_ack = ap_const_logic_0;
    }
}

void bmm_top::thread_dim_cast_fu_251_p1() {
    dim_cast_fu_251_p1 = esl_sext<32,26>(dim_fu_243_p3.read());
}

void bmm_top::thread_dim_fu_243_p3() {
    dim_fu_243_p3 = esl_concat<23,3>(tmp_13_fu_233_p4.read(), ap_const_lv3_0);
}

void bmm_top::thread_i_1_fu_349_p2() {
    i_1_fu_349_p2 = (!i_reg_119.read().is_01() || !dim_cast_reg_370.read().is_01())? sc_lv<32>(): (sc_bigint<32>(i_reg_119.read()) + sc_biguint<32>(dim_cast_reg_370.read()));
}

void bmm_top::thread_j_1_fu_299_p2() {
    j_1_fu_299_p2 = (!j_reg_142.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(j_reg_142.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void bmm_top::thread_p_lshr_cast_fu_201_p1() {
    p_lshr_cast_fu_201_p1 = esl_zext<25,24>(tmp_1_fu_191_p4.read());
}

void bmm_top::thread_p_lshr_f_cast_fu_221_p1() {
    p_lshr_f_cast_fu_221_p1 = esl_zext<25,24>(tmp_12_fu_211_p4.read());
}

void bmm_top::thread_p_neg_fu_185_p2() {
    p_neg_fu_185_p2 = (!ap_const_lv32_0.is_01() || !blockSize.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(blockSize.read()));
}

void bmm_top::thread_p_neg_t_fu_205_p2() {
    p_neg_t_fu_205_p2 = (!ap_const_lv25_0.is_01() || !p_lshr_cast_fu_201_p1.read().is_01())? sc_lv<25>(): (sc_bigint<25>(ap_const_lv25_0) - sc_biguint<25>(p_lshr_cast_fu_201_p1.read()));
}

void bmm_top::thread_t1_1_fu_265_p2() {
    t1_1_fu_265_p2 = (!t1_reg_131.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(t1_reg_131.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void bmm_top::thread_t1_2_fu_310_p2() {
    t1_2_fu_310_p2 = (!t_reg_154.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(t_reg_154.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void bmm_top::thread_t1_3_fu_337_p2() {
    t1_3_fu_337_p2 = (!t3_reg_165.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(t3_reg_165.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void bmm_top::thread_tmp_10_fu_343_p2() {
    tmp_10_fu_343_p2 = (!t3_reg_165.read().is_01() || !i_reg_119.read().is_01())? sc_lv<32>(): (sc_bigint<32>(t3_reg_165.read()) + sc_biguint<32>(i_reg_119.read()));
}

void bmm_top::thread_tmp_11_fu_354_p1() {
    tmp_11_fu_354_p1 = esl_sext<64,32>(tmp_10_reg_441.read());
}

void bmm_top::thread_tmp_12_fu_211_p4() {
    tmp_12_fu_211_p4 = blockSize.read().range(31, 8);
}

void bmm_top::thread_tmp_13_fu_233_p4() {
    tmp_13_fu_233_p4 = tmp_fu_225_p3.read().range(24, 2);
}

void bmm_top::thread_tmp_14_fu_177_p3() {
    tmp_14_fu_177_p3 = blockSize.read().range(31, 31);
}

void bmm_top::thread_tmp_1_fu_191_p4() {
    tmp_1_fu_191_p4 = p_neg_fu_185_p2.read().range(31, 8);
}

void bmm_top::thread_tmp_2_fu_305_p2() {
    tmp_2_fu_305_p2 = (!t_reg_154.read().is_01() || !dim_cast_reg_370.read().is_01())? sc_lv<1>(): (sc_bigint<32>(t_reg_154.read()) < sc_bigint<32>(dim_cast_reg_370.read()));
}

void bmm_top::thread_tmp_3_fu_255_p2() {
    tmp_3_fu_255_p2 = (!i_reg_119.read().is_01() || !blockSize_read_reg_364.read().is_01())? sc_lv<1>(): (sc_bigint<32>(i_reg_119.read()) < sc_bigint<32>(blockSize_read_reg_364.read()));
}

void bmm_top::thread_tmp_4_fu_260_p2() {
    tmp_4_fu_260_p2 = (!t1_reg_131.read().is_01() || !dim_cast_reg_370.read().is_01())? sc_lv<1>(): (sc_bigint<32>(t1_reg_131.read()) < sc_bigint<32>(dim_cast_reg_370.read()));
}

void bmm_top::thread_tmp_5_fu_271_p2() {
    tmp_5_fu_271_p2 = (!t1_reg_131.read().is_01() || !i_reg_119.read().is_01())? sc_lv<32>(): (sc_bigint<32>(t1_reg_131.read()) + sc_biguint<32>(i_reg_119.read()));
}

void bmm_top::thread_tmp_6_fu_277_p1() {
    tmp_6_fu_277_p1 = esl_sext<64,32>(tmp_5_reg_389.read());
}

void bmm_top::thread_tmp_7_fu_332_p2() {
    tmp_7_fu_332_p2 = (!t3_reg_165.read().is_01() || !dim_cast_reg_370.read().is_01())? sc_lv<1>(): (sc_bigint<32>(t3_reg_165.read()) < sc_bigint<32>(dim_cast_reg_370.read()));
}

void bmm_top::thread_tmp_8_fu_316_p2() {
    tmp_8_fu_316_p2 = (!t_reg_154.read().is_01() || !j_reg_142.read().is_01())? sc_lv<32>(): (sc_bigint<32>(t_reg_154.read()) + sc_biguint<32>(j_reg_142.read()));
}

void bmm_top::thread_tmp_9_fu_322_p1() {
    tmp_9_fu_322_p1 = esl_sext<64,32>(tmp_8_reg_422.read());
}

void bmm_top::thread_tmp_fu_225_p3() {
    tmp_fu_225_p3 = (!tmp_14_fu_177_p3.read()[0].is_01())? sc_lv<25>(): ((tmp_14_fu_177_p3.read()[0].to_bool())? p_neg_t_fu_205_p2.read(): p_lshr_f_cast_fu_221_p1.read());
}

void bmm_top::thread_tmp_s_fu_294_p2() {
    tmp_s_fu_294_p2 = (!j_reg_142.read().is_01() || !blockSize_read_reg_364.read().is_01())? sc_lv<1>(): (sc_bigint<32>(j_reg_142.read()) < sc_bigint<32>(blockSize_read_reg_364.read()));
}

void bmm_top::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint()) {
        case 0 : 
            if (!ap_sig_bdd_82.read()) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 1 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_3_fu_255_p2.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 2 : 
            if (esl_seteq<1,1,1>(tmp_4_fu_260_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st10_fsm_9;
            } else {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            }
            break;
        case 3 : 
            ap_NS_fsm = ap_ST_st5_fsm_4;
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
            if (!ap_sig_bdd_138.read()) {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            } else {
                ap_NS_fsm = ap_ST_st9_fsm_8;
            }
            break;
        case 9 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_s_fu_294_p2.read())) {
                ap_NS_fsm = ap_ST_st18_fsm_17;
            } else {
                ap_NS_fsm = ap_ST_st11_fsm_10;
            }
            break;
        case 10 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, tmp_2_fu_305_p2.read())) {
                ap_NS_fsm = ap_ST_st12_fsm_11;
            } else {
                ap_NS_fsm = ap_ST_st10_fsm_9;
            }
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
            ap_NS_fsm = ap_ST_st17_fsm_16;
            break;
        case 16 : 
            if (!esl_seteq<1,1,1>(b2_rsp_empty_n.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st11_fsm_10;
            } else {
                ap_NS_fsm = ap_ST_st17_fsm_16;
            }
            break;
        case 17 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_7_fu_332_p2.read())) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st19_fsm_18;
            }
            break;
        case 18 : 
            if (!esl_seteq<1,1,1>(b3_req_full_n.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st18_fsm_17;
            } else {
                ap_NS_fsm = ap_ST_st19_fsm_18;
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
        mHdltvinHandle << " , " <<  " \"blockSize\" :  \"" << blockSize.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"blockSize_ap_vld\" :  \"" << blockSize_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"blockSize_ap_ack\" :  \"" << blockSize_ap_ack.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

