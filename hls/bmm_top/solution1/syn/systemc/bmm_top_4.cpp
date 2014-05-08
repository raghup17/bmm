#include "bmm_top.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void bmm_top::thread_ap_done() {
    if ((esl_seteq<1,5,5>(ap_ST_st14_fsm_13, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_13136_p2.read()))) {
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
    if ((esl_seteq<1,5,5>(ap_ST_st14_fsm_13, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_13136_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void bmm_top::thread_ap_sig_bdd_1884() {
    ap_sig_bdd_1884 = (esl_seteq<1,1,1>(b1_req_full_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(b2_req_full_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(b3_req_full_n.read(), ap_const_logic_0));
}

void bmm_top::thread_ap_sig_bdd_80() {
    ap_sig_bdd_80 = (esl_seteq<1,1,1>(blockSize_ap_vld.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0));
}

void bmm_top::thread_ap_sig_bdd_882() {
    ap_sig_bdd_882 = (esl_seteq<1,5,5>(ap_ST_st14_fsm_13, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_13136_p2.read()));
}

void bmm_top::thread_ap_sig_bdd_897() {
    ap_sig_bdd_897 = (esl_seteq<1,1,1>(b1_rsp_empty_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(b2_rsp_empty_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(b3_rsp_empty_n.read(), ap_const_logic_0));
}

void bmm_top::thread_arow_0_fu_7833_p1() {
    arow_0_fu_7833_p1 = b1_datain.read().range(32-1, 0);
}

void bmm_top::thread_b1_address() {
    if ((esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read()) && 
         !ap_sig_bdd_1884.read())) {
        b1_address =  (sc_lv<32>) (tmp_6_fu_13269_p1.read());
    } else if ((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(exitcond1_fu_5873_p2.read(), ap_const_lv1_0))) {
        b1_address =  (sc_lv<32>) (tmp_2_fu_5884_p1.read());
    } else {
        b1_address = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_b1_dataout() {
    b1_dataout = p_Result_6_7_reg_20482.read();
}

void bmm_top::thread_b1_req_din() {
    if (((esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read()) && 
          !ap_sig_bdd_1884.read()))) {
        b1_req_din = ap_const_logic_1;
    } else if ((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(exitcond1_fu_5873_p2.read(), ap_const_lv1_0))) {
        b1_req_din = ap_const_logic_0;
    } else {
        b1_req_din = ap_const_logic_0;
    }
}

void bmm_top::thread_b1_req_write() {
    if (((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(exitcond1_fu_5873_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read()) && 
          !ap_sig_bdd_1884.read()))) {
        b1_req_write = ap_const_logic_1;
    } else {
        b1_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b1_rsp_read() {
    if ((esl_seteq<1,5,5>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) && 
         !ap_sig_bdd_897.read())) {
        b1_rsp_read = ap_const_logic_1;
    } else {
        b1_rsp_read = ap_const_logic_0;
    }
}

void bmm_top::thread_b1_size() {
    b1_size = ap_const_lv32_1;
}

void bmm_top::thread_b2_address() {
    if ((esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read()) && 
         !ap_sig_bdd_1884.read())) {
        b2_address =  (sc_lv<32>) (tmp_6_fu_13269_p1.read());
    } else if ((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(exitcond1_fu_5873_p2.read(), ap_const_lv1_0))) {
        b2_address =  (sc_lv<32>) (tmp_2_fu_5884_p1.read());
    } else {
        b2_address = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_b2_dataout() {
    b2_dataout = p_Result_7_7_reg_20487.read();
}

void bmm_top::thread_b2_req_din() {
    if (((esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read()) && 
          !ap_sig_bdd_1884.read()))) {
        b2_req_din = ap_const_logic_1;
    } else if ((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(exitcond1_fu_5873_p2.read(), ap_const_lv1_0))) {
        b2_req_din = ap_const_logic_0;
    } else {
        b2_req_din = ap_const_logic_0;
    }
}

void bmm_top::thread_b2_req_write() {
    if (((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(exitcond1_fu_5873_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read()) && 
          !ap_sig_bdd_1884.read()))) {
        b2_req_write = ap_const_logic_1;
    } else {
        b2_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b2_rsp_read() {
    if ((esl_seteq<1,5,5>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) && 
         !ap_sig_bdd_897.read())) {
        b2_rsp_read = ap_const_logic_1;
    } else {
        b2_rsp_read = ap_const_logic_0;
    }
}

void bmm_top::thread_b2_size() {
    b2_size = ap_const_lv32_1;
}

void bmm_top::thread_b3_address() {
    if ((esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read()) && 
         !ap_sig_bdd_1884.read())) {
        b3_address =  (sc_lv<32>) (tmp_6_fu_13269_p1.read());
    } else if ((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(exitcond1_fu_5873_p2.read(), ap_const_lv1_0))) {
        b3_address =  (sc_lv<32>) (tmp_2_fu_5884_p1.read());
    } else {
        b3_address = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_b3_dataout() {
    b3_dataout = esl_concat<224,32>(esl_concat<192,32>(esl_concat<160,32>(esl_concat<128,32>(esl_concat<96,32>(esl_concat<64,32>(esl_concat<32,32>(p_Repl2_2_7_phi_reg_4667.read(), p_Repl2_2_6_phi_reg_4555.read()), p_Repl2_2_5_phi_reg_4443.read()), p_Repl2_2_4_phi_reg_4331.read()), p_Repl2_2_3_phi_reg_4219.read()), p_Repl2_2_2_phi_reg_4107.read()), p_Repl2_2_1_phi_reg_3995.read()), p_Repl2_2_0_phi_reg_3883.read());
}

void bmm_top::thread_b3_req_din() {
    if (((esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read()) && 
          !ap_sig_bdd_1884.read()))) {
        b3_req_din = ap_const_logic_1;
    } else if ((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(exitcond1_fu_5873_p2.read(), ap_const_lv1_0))) {
        b3_req_din = ap_const_logic_0;
    } else {
        b3_req_din = ap_const_logic_0;
    }
}

void bmm_top::thread_b3_req_write() {
    if (((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(exitcond1_fu_5873_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,5,5>(ap_ST_st17_fsm_16, ap_CS_fsm.read()) && 
          !ap_sig_bdd_1884.read()))) {
        b3_req_write = ap_const_logic_1;
    } else {
        b3_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b3_rsp_read() {
    if ((esl_seteq<1,5,5>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) && 
         !ap_sig_bdd_897.read())) {
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
         !ap_sig_bdd_80.read())) {
        blockSize_ap_ack = ap_const_logic_1;
    } else {
        blockSize_ap_ack = ap_const_logic_0;
    }
}

void bmm_top::thread_brow_0_1_fu_11838_p2() {
    brow_0_1_fu_11838_p2 = (!ap_const_lv32_1.is_01())? sc_lv<32>(): arow_0_2_reg_3531.read() << (unsigned short)ap_const_lv32_1.to_uint();
}

void bmm_top::thread_brow_0_fu_7924_p1() {
    brow_0_fu_7924_p1 = b2_datain.read().range(32-1, 0);
}

void bmm_top::thread_crow_0_1_fu_12490_p2() {
    crow_0_1_fu_12490_p2 = (!tmp_12_fu_12484_p2.read().is_01() || !arow_0_2_reg_3531.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_12_fu_12484_p2.read()) + sc_biguint<32>(arow_0_2_reg_3531.read()));
}

void bmm_top::thread_crow_0_fu_8008_p1() {
    crow_0_fu_8008_p1 = b3_datain.read().range(32-1, 0);
}

void bmm_top::thread_exitcond1_fu_5873_p2() {
    exitcond1_fu_5873_p2 = (!i_reg_3490.read().is_01() || !tmp_3_reg_15609.read().is_01())? sc_lv<1>(): sc_lv<1>(i_reg_3490.read() == tmp_3_reg_15609.read());
}

void bmm_top::thread_exitcond_fu_13136_p2() {
    exitcond_fu_13136_p2 = (!i5_reg_3796.read().is_01() || !tmp_3_reg_15609.read().is_01())? sc_lv<1>(): sc_lv<1>(i5_reg_3796.read() == tmp_3_reg_15609.read());
}

void bmm_top::thread_grp_fu_4705_ce() {
    if (((esl_seteq<1,5,5>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
          !ap_sig_bdd_80.read()) || 
         esl_seteq<1,5,5>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) || 
         esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) || 
         esl_seteq<1,5,5>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) || 
         esl_seteq<1,5,5>(ap_ST_st4_fsm_3, ap_CS_fsm.read()) || 
         esl_seteq<1,5,5>(ap_ST_st5_fsm_4, ap_CS_fsm.read()))) {
        grp_fu_4705_ce = ap_const_logic_1;
    } else {
        grp_fu_4705_ce = ap_const_logic_0;
    }
}

void bmm_top::thread_grp_fu_4705_p0() {
    grp_fu_4705_p0 = blockSize.read();
}

void bmm_top::thread_grp_fu_4705_p1() {
    grp_fu_4705_p1 = blockSize.read();
}

void bmm_top::thread_i_1_fu_5878_p2() {
    i_1_fu_5878_p2 = (!i_reg_3490.read().is_01() || !ap_const_lv29_1.is_01())? sc_lv<29>(): (sc_bigint<29>(i_reg_3490.read()) + sc_biguint<29>(ap_const_lv29_1));
}

void bmm_top::thread_i_2_fu_13141_p2() {
    i_2_fu_13141_p2 = (!i5_reg_3796.read().is_01() || !ap_const_lv29_1.is_01())? sc_lv<29>(): (sc_bigint<29>(i5_reg_3796.read()) + sc_biguint<29>(ap_const_lv29_1));
}

void bmm_top::thread_p_Repl2_116_phi_phi_fu_3924_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_1, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_145_load_reg_18385.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_71, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_257_load_reg_18945.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_69, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_249_load_reg_18905.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_61, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_241_load_reg_18865.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_59, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_233_load_reg_18825.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_51, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_225_load_reg_18785.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_49, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_217_load_reg_18745.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_41, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_209_load_reg_18705.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_39, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_201_load_reg_18665.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_31, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_193_load_reg_18625.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_29, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_185_load_reg_18585.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_21, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_177_load_reg_18545.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_19, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_169_load_reg_18505.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_11, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_161_load_reg_18465.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_9, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_153_load_reg_18425.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_116_phi_phi_fu_3924_p32 = arow_127_265_load_reg_18985.read();
        } else {
            p_Repl2_116_phi_phi_fu_3924_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_116_phi_phi_fu_3924_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_1_1_phi_phi_fu_3961_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_1, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_145_load_reg_19025.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_71, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_257_load_reg_19585.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_69, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_249_load_reg_19545.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_61, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_241_load_reg_19505.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_59, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_233_load_reg_19465.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_51, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_225_load_reg_19425.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_49, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_217_load_reg_19385.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_41, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_209_load_reg_19345.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_39, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_201_load_reg_19305.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_31, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_193_load_reg_19265.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_29, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_185_load_reg_19225.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_21, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_177_load_reg_19185.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_19, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_169_load_reg_19145.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_11, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_161_load_reg_19105.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_9, tmp_17_118_t_fu_13159_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_153_load_reg_19065.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = brow_127_265_load_reg_19625.read();
        } else {
            p_Repl2_1_1_phi_phi_fu_3961_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_1_1_phi_phi_fu_3961_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_1_2_phi_phi_fu_4073_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_2, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_146_load_reg_19030.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_72, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_258_load_reg_19590.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6A, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_250_load_reg_19550.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_62, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_242_load_reg_19510.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5A, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_234_load_reg_19470.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_52, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_226_load_reg_19430.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4A, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_218_load_reg_19390.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_42, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_210_load_reg_19350.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3A, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_202_load_reg_19310.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_32, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_194_load_reg_19270.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2A, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_186_load_reg_19230.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_22, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_178_load_reg_19190.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1A, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_170_load_reg_19150.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_12, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_162_load_reg_19110.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_A, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_154_load_reg_19070.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = brow_127_266_load_reg_19630.read();
        } else {
            p_Repl2_1_2_phi_phi_fu_4073_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_1_2_phi_phi_fu_4073_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_1_3_phi_phi_fu_4185_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_3, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_147_load_reg_19035.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_73, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_259_load_reg_19595.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6B, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_251_load_reg_19555.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_63, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_243_load_reg_19515.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5B, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_235_load_reg_19475.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_53, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_227_load_reg_19435.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4B, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_219_load_reg_19395.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_43, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_211_load_reg_19355.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3B, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_203_load_reg_19315.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_33, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_195_load_reg_19275.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2B, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_187_load_reg_19235.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_23, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_179_load_reg_19195.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1B, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_171_load_reg_19155.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_13, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_163_load_reg_19115.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_B, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_155_load_reg_19075.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = brow_127_267_load_reg_19635.read();
        } else {
            p_Repl2_1_3_phi_phi_fu_4185_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_1_3_phi_phi_fu_4185_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_1_4_phi_phi_fu_4297_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_4, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_148_load_reg_19040.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_74, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_260_load_reg_19600.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6C, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_252_load_reg_19560.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_64, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_244_load_reg_19520.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5C, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_236_load_reg_19480.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_54, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_228_load_reg_19440.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4C, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_220_load_reg_19400.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_44, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_212_load_reg_19360.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3C, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_204_load_reg_19320.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_34, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_196_load_reg_19280.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2C, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_188_load_reg_19240.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_24, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_180_load_reg_19200.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1C, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_172_load_reg_19160.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_14, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_164_load_reg_19120.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_C, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_156_load_reg_19080.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = brow_127_268_load_reg_19640.read();
        } else {
            p_Repl2_1_4_phi_phi_fu_4297_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_1_4_phi_phi_fu_4297_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_1_5_phi_phi_fu_4409_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_5, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_149_load_reg_19045.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_75, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_261_load_reg_19605.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6D, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_253_load_reg_19565.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_65, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_245_load_reg_19525.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5D, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_237_load_reg_19485.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_55, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_229_load_reg_19445.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4D, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_221_load_reg_19405.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_45, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_213_load_reg_19365.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3D, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_205_load_reg_19325.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_35, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_197_load_reg_19285.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2D, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_189_load_reg_19245.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_25, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_181_load_reg_19205.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1D, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_173_load_reg_19165.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_15, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_165_load_reg_19125.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_D, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_157_load_reg_19085.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = brow_127_269_load_reg_19645.read();
        } else {
            p_Repl2_1_5_phi_phi_fu_4409_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_1_5_phi_phi_fu_4409_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_1_6_phi_phi_fu_4521_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_6, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_150_load_reg_19050.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_76, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_262_load_reg_19610.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6E, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_254_load_reg_19570.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_66, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_246_load_reg_19530.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5E, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_238_load_reg_19490.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_56, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_230_load_reg_19450.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4E, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_222_load_reg_19410.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_46, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_214_load_reg_19370.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3E, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_206_load_reg_19330.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_36, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_198_load_reg_19290.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2E, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_190_load_reg_19250.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_26, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_182_load_reg_19210.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1E, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_174_load_reg_19170.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_16, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_166_load_reg_19130.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_E, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_158_load_reg_19090.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = brow_127_270_load_reg_19650.read();
        } else {
            p_Repl2_1_6_phi_phi_fu_4521_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_1_6_phi_phi_fu_4521_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_1_7_phi_phi_fu_4633_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_7, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_151_load_reg_19055.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_77, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_263_load_reg_19615.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6F, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_255_load_reg_19575.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_67, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_247_load_reg_19535.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5F, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_239_load_reg_19495.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_57, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_231_load_reg_19455.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4F, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_223_load_reg_19415.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_47, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_215_load_reg_19375.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3F, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_207_load_reg_19335.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_37, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_199_load_reg_19295.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2F, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_191_load_reg_19255.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_27, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_183_load_reg_19215.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1F, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_175_load_reg_19175.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_17, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_167_load_reg_19135.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_F, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_159_load_reg_19095.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = brow_127_271_load_reg_19655.read();
        } else {
            p_Repl2_1_7_phi_phi_fu_4633_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_1_7_phi_phi_fu_4633_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_217_phi_phi_fu_4036_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_2, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_146_load_reg_18390.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_72, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_258_load_reg_18950.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6A, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_250_load_reg_18910.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_62, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_242_load_reg_18870.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5A, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_234_load_reg_18830.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_52, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_226_load_reg_18790.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4A, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_218_load_reg_18750.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_42, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_210_load_reg_18710.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3A, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_202_load_reg_18670.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_32, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_194_load_reg_18630.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2A, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_186_load_reg_18590.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_22, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_178_load_reg_18550.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1A, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_170_load_reg_18510.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_12, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_162_load_reg_18470.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_A, tmp_17_219_t_fu_13166_p3.read())) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_154_load_reg_18430.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_217_phi_phi_fu_4036_p32 = arow_127_266_load_reg_18990.read();
        } else {
            p_Repl2_217_phi_phi_fu_4036_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_217_phi_phi_fu_4036_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_3_phi_phi_fu_4148_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_3, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_147_load_reg_18395.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_73, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_259_load_reg_18955.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6B, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_251_load_reg_18915.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_63, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_243_load_reg_18875.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5B, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_235_load_reg_18835.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_53, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_227_load_reg_18795.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4B, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_219_load_reg_18755.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_43, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_211_load_reg_18715.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3B, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_203_load_reg_18675.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_33, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_195_load_reg_18635.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2B, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_187_load_reg_18595.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_23, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_179_load_reg_18555.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1B, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_171_load_reg_18515.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_13, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_163_load_reg_18475.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_B, tmp_17_320_t_fu_13173_p3.read())) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_155_load_reg_18435.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_3_phi_phi_fu_4148_p32 = arow_127_267_load_reg_18995.read();
        } else {
            p_Repl2_3_phi_phi_fu_4148_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_3_phi_phi_fu_4148_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_4_phi_phi_fu_4260_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_4, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_148_load_reg_18400.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_74, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_260_load_reg_18960.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6C, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_252_load_reg_18920.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_64, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_244_load_reg_18880.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5C, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_236_load_reg_18840.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_54, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_228_load_reg_18800.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4C, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_220_load_reg_18760.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_44, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_212_load_reg_18720.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3C, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_204_load_reg_18680.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_34, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_196_load_reg_18640.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2C, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_188_load_reg_18600.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_24, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_180_load_reg_18560.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1C, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_172_load_reg_18520.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_14, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_164_load_reg_18480.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_C, tmp_17_421_t_fu_13180_p3.read())) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_156_load_reg_18440.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_4_phi_phi_fu_4260_p32 = arow_127_268_load_reg_19000.read();
        } else {
            p_Repl2_4_phi_phi_fu_4260_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_4_phi_phi_fu_4260_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_5_phi_phi_fu_4372_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_5, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_149_load_reg_18405.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_75, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_261_load_reg_18965.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6D, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_253_load_reg_18925.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_65, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_245_load_reg_18885.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5D, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_237_load_reg_18845.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_55, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_229_load_reg_18805.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4D, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_221_load_reg_18765.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_45, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_213_load_reg_18725.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3D, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_205_load_reg_18685.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_35, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_197_load_reg_18645.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2D, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_189_load_reg_18605.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_25, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_181_load_reg_18565.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1D, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_173_load_reg_18525.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_15, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_165_load_reg_18485.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_D, tmp_17_522_t_fu_13187_p3.read())) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_157_load_reg_18445.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_5_phi_phi_fu_4372_p32 = arow_127_269_load_reg_19005.read();
        } else {
            p_Repl2_5_phi_phi_fu_4372_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_5_phi_phi_fu_4372_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_6_phi_phi_fu_4484_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_6, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_150_load_reg_18410.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_76, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_262_load_reg_18970.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6E, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_254_load_reg_18930.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_66, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_246_load_reg_18890.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5E, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_238_load_reg_18850.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_56, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_230_load_reg_18810.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4E, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_222_load_reg_18770.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_46, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_214_load_reg_18730.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3E, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_206_load_reg_18690.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_36, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_198_load_reg_18650.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2E, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_190_load_reg_18610.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_26, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_182_load_reg_18570.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1E, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_174_load_reg_18530.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_16, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_166_load_reg_18490.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_E, tmp_17_623_t_fu_13194_p3.read())) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_158_load_reg_18450.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_6_phi_phi_fu_4484_p32 = arow_127_270_load_reg_19010.read();
        } else {
            p_Repl2_6_phi_phi_fu_4484_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_6_phi_phi_fu_4484_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_7_phi_phi_fu_4596_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_7, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_151_load_reg_18415.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_77, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_263_load_reg_18975.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6F, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_255_load_reg_18935.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_67, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_247_load_reg_18895.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5F, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_239_load_reg_18855.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_57, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_231_load_reg_18815.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4F, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_223_load_reg_18775.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_47, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_215_load_reg_18735.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3F, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_207_load_reg_18695.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_37, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_199_load_reg_18655.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2F, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_191_load_reg_18615.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_27, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_183_load_reg_18575.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1F, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_175_load_reg_18535.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_17, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_167_load_reg_18495.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_F, tmp_17_724_t_fu_13201_p3.read())) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_159_load_reg_18455.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_7_phi_phi_fu_4596_p32 = arow_127_271_load_reg_19015.read();
        } else {
            p_Repl2_7_phi_phi_fu_4596_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_7_phi_phi_fu_4596_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Result_6_7_fu_13208_p9() {
    p_Result_6_7_fu_13208_p9 = esl_concat<224,32>(esl_concat<192,32>(esl_concat<160,32>(esl_concat<128,32>(esl_concat<96,32>(esl_concat<64,32>(esl_concat<32,32>(p_Repl2_7_phi_phi_fu_4596_p32.read(), p_Repl2_6_phi_phi_fu_4484_p32.read()), p_Repl2_5_phi_phi_fu_4372_p32.read()), p_Repl2_4_phi_phi_fu_4260_p32.read()), p_Repl2_3_phi_phi_fu_4148_p32.read()), p_Repl2_217_phi_phi_fu_4036_p32.read()), p_Repl2_116_phi_phi_fu_3924_p32.read()), p_Repl2_0_phi_reg_3808.read());
}

void bmm_top::thread_p_Result_7_7_fu_13228_p9() {
    p_Result_7_7_fu_13228_p9 = esl_concat<224,32>(esl_concat<192,32>(esl_concat<160,32>(esl_concat<128,32>(esl_concat<96,32>(esl_concat<64,32>(esl_concat<32,32>(p_Repl2_1_7_phi_phi_fu_4633_p32.read(), p_Repl2_1_6_phi_phi_fu_4521_p32.read()), p_Repl2_1_5_phi_phi_fu_4409_p32.read()), p_Repl2_1_4_phi_phi_fu_4297_p32.read()), p_Repl2_1_3_phi_phi_fu_4185_p32.read()), p_Repl2_1_2_phi_phi_fu_4073_p32.read()), p_Repl2_1_1_phi_phi_fu_3961_p32.read()), p_Repl2_1_0_phi_reg_3846.read());
}

void bmm_top::thread_t1_fu_11188_p2() {
    t1_fu_11188_p2 = (!arow_0_2_reg_3531.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(arow_0_2_reg_3531.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void bmm_top::thread_tmp_12_fu_12484_p2() {
    tmp_12_fu_12484_p2 = (!ap_const_lv32_2.is_01())? sc_lv<32>(): arow_0_2_reg_3531.read() << (unsigned short)ap_const_lv32_2.to_uint();
}

void bmm_top::thread_tmp_15_t_fu_13151_p3() {
    tmp_15_t_fu_13151_p3 = esl_concat<4,3>(tmp_9_fu_13147_p1.read(), ap_const_lv3_0);
}

void bmm_top::thread_tmp_17_118_t_fu_13159_p3() {
    tmp_17_118_t_fu_13159_p3 = esl_concat<4,3>(tmp_9_reg_20446.read(), ap_const_lv3_1);
}

void bmm_top::thread_tmp_17_219_t_fu_13166_p3() {
    tmp_17_219_t_fu_13166_p3 = esl_concat<4,3>(tmp_9_reg_20446.read(), ap_const_lv3_2);
}

void bmm_top::thread_tmp_17_320_t_fu_13173_p3() {
    tmp_17_320_t_fu_13173_p3 = esl_concat<4,3>(tmp_9_reg_20446.read(), ap_const_lv3_3);
}

void bmm_top::thread_tmp_17_421_t_fu_13180_p3() {
    tmp_17_421_t_fu_13180_p3 = esl_concat<4,3>(tmp_9_reg_20446.read(), ap_const_lv3_4);
}

void bmm_top::thread_tmp_17_522_t_fu_13187_p3() {
    tmp_17_522_t_fu_13187_p3 = esl_concat<4,3>(tmp_9_reg_20446.read(), ap_const_lv3_5);
}

void bmm_top::thread_tmp_17_623_t_fu_13194_p3() {
    tmp_17_623_t_fu_13194_p3 = esl_concat<4,3>(tmp_9_reg_20446.read(), ap_const_lv3_6);
}

void bmm_top::thread_tmp_17_724_t_fu_13201_p3() {
    tmp_17_724_t_fu_13201_p3 = esl_concat<4,3>(tmp_9_reg_20446.read(), ap_const_lv3_7);
}

void bmm_top::thread_tmp_2_fu_5884_p1() {
    tmp_2_fu_5884_p1 = esl_zext<64,29>(i_reg_3490.read());
}

void bmm_top::thread_tmp_3_t_fu_7837_p3() {
    tmp_3_t_fu_7837_p3 = esl_concat<4,3>(tmp_5_reg_15656.read(), ap_const_lv3_0);
}

void bmm_top::thread_tmp_4_fu_11183_p2() {
    tmp_4_fu_11183_p2 = (!arow_0_2_reg_3531.read().is_01() || !tmp_reg_15604.read().is_01())? sc_lv<1>(): (sc_bigint<32>(arow_0_2_reg_3531.read()) < sc_bigint<32>(tmp_reg_15604.read()));
}

void bmm_top::thread_tmp_5_fu_5909_p1() {
    tmp_5_fu_5909_p1 = i_reg_3490.read().range(4-1, 0);
}

void bmm_top::thread_tmp_6_fu_13269_p1() {
    tmp_6_fu_13269_p1 = esl_zext<64,29>(i5_reg_3796.read());
}

void bmm_top::thread_tmp_7_fu_11194_p1() {
    tmp_7_fu_11194_p1 = arow_0_2_reg_3531.read().range(7-1, 0);
}

void bmm_top::thread_tmp_9_125_t_fu_8102_p3() {
    tmp_9_125_t_fu_8102_p3 = esl_concat<4,3>(tmp_5_reg_15656.read(), ap_const_lv3_1);
}

void bmm_top::thread_tmp_9_226_t_fu_8379_p3() {
    tmp_9_226_t_fu_8379_p3 = esl_concat<4,3>(tmp_5_reg_15656.read(), ap_const_lv3_2);
}

void bmm_top::thread_tmp_9_327_t_fu_8656_p3() {
    tmp_9_327_t_fu_8656_p3 = esl_concat<4,3>(tmp_5_reg_15656.read(), ap_const_lv3_3);
}

void bmm_top::thread_tmp_9_428_t_fu_8933_p3() {
    tmp_9_428_t_fu_8933_p3 = esl_concat<4,3>(tmp_5_reg_15656.read(), ap_const_lv3_4);
}

void bmm_top::thread_tmp_9_529_t_fu_9210_p3() {
    tmp_9_529_t_fu_9210_p3 = esl_concat<4,3>(tmp_5_reg_15656.read(), ap_const_lv3_5);
}

void bmm_top::thread_tmp_9_630_t_fu_9487_p3() {
    tmp_9_630_t_fu_9487_p3 = esl_concat<4,3>(tmp_5_reg_15656.read(), ap_const_lv3_6);
}

void bmm_top::thread_tmp_9_731_t_fu_9764_p3() {
    tmp_9_731_t_fu_9764_p3 = esl_concat<4,3>(tmp_5_reg_15656.read(), ap_const_lv3_7);
}

void bmm_top::thread_tmp_9_fu_13147_p1() {
    tmp_9_fu_13147_p1 = i5_reg_3796.read().range(4-1, 0);
}

}

