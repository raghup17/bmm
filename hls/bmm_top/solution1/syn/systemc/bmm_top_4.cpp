#include "bmm_top.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void bmm_top::thread_ap_done() {
    if ((esl_seteq<1,5,5>(ap_ST_st18_fsm_17, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_112052_p2.read()))) {
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
    if ((esl_seteq<1,5,5>(ap_ST_st18_fsm_17, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_112052_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void bmm_top::thread_ap_sig_bdd_11305() {
    ap_sig_bdd_11305 = (esl_seteq<1,1,1>(b1_req_full_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(b2_req_full_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(b3_req_full_n.read(), ap_const_logic_0));
}

void bmm_top::thread_ap_sig_bdd_84() {
    ap_sig_bdd_84 = (esl_seteq<1,1,1>(blockSize_ap_vld.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0));
}

void bmm_top::thread_ap_sig_bdd_888() {
    ap_sig_bdd_888 = (esl_seteq<1,5,5>(ap_ST_st13_fsm_12, ap_CS_fsm.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_s_fu_110721_p2.read()));
}

void bmm_top::thread_ap_sig_bdd_899() {
    ap_sig_bdd_899 = (esl_seteq<1,5,5>(ap_ST_st18_fsm_17, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_112052_p2.read()));
}

void bmm_top::thread_ap_sig_bdd_914() {
    ap_sig_bdd_914 = (esl_seteq<1,1,1>(b1_rsp_empty_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(b2_rsp_empty_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(b3_rsp_empty_n.read(), ap_const_logic_0));
}

void bmm_top::thread_arow_0_1_fu_110736_p2() {
    arow_0_1_fu_110736_p2 = (!ap_const_lv32_1.is_01())? sc_lv<32>(): arow_load_phi_reg_37083.read() << (unsigned short)ap_const_lv32_1.to_uint();
}

void bmm_top::thread_arow_0_fu_107755_p1() {
    arow_0_fu_107755_p1 = b1_datain.read().range(32-1, 0);
}

void bmm_top::thread_b1_address() {
    if ((esl_seteq<1,5,5>(ap_ST_st21_fsm_20, ap_CS_fsm.read()) && 
         !ap_sig_bdd_11305.read())) {
        b1_address =  (sc_lv<32>) (tmp_12_fu_112185_p1.read());
    } else if ((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(exitcond1_fu_106435_p2.read(), ap_const_lv1_0))) {
        b1_address =  (sc_lv<32>) (tmp_8_fu_106446_p1.read());
    } else if ((!ap_sig_bdd_11305.read() && 
                esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read()))) {
        b1_address = ap_const_lv32_0;
    } else {
        b1_address = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_b1_dataout() {
    if (!ap_sig_bdd_11305.read()) {
        if (esl_seteq<1,5,5>(ap_ST_st21_fsm_20, ap_CS_fsm.read())) {
            b1_dataout = p_Result_6_7_reg_118902.read();
        } else if (esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
            b1_dataout = tmp_1_fu_105261_p1.read();
        } else {
            b1_dataout =  (sc_lv<256>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        }
    } else {
        b1_dataout =  (sc_lv<256>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void bmm_top::thread_b1_req_din() {
    if ((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_106435_p2.read(), ap_const_lv1_0))) {
        b1_req_din = ap_const_logic_0;
    } else if (((esl_seteq<1,5,5>(ap_ST_st21_fsm_20, ap_CS_fsm.read()) && 
                 !ap_sig_bdd_11305.read()) || 
                (!ap_sig_bdd_11305.read() && 
                 esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read())))) {
        b1_req_din = ap_const_logic_1;
    } else {
        b1_req_din = ap_const_logic_0;
    }
}

void bmm_top::thread_b1_req_write() {
    if (((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(exitcond1_fu_106435_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,5,5>(ap_ST_st21_fsm_20, ap_CS_fsm.read()) && 
          !ap_sig_bdd_11305.read()) || 
         (!ap_sig_bdd_11305.read() && 
          esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read())))) {
        b1_req_write = ap_const_logic_1;
    } else {
        b1_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b1_rsp_read() {
    if ((esl_seteq<1,5,5>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) && 
         !ap_sig_bdd_914.read())) {
        b1_rsp_read = ap_const_logic_1;
    } else {
        b1_rsp_read = ap_const_logic_0;
    }
}

void bmm_top::thread_b1_size() {
    b1_size = ap_const_lv32_1;
}

void bmm_top::thread_b2_address() {
    if ((esl_seteq<1,5,5>(ap_ST_st21_fsm_20, ap_CS_fsm.read()) && 
         !ap_sig_bdd_11305.read())) {
        b2_address =  (sc_lv<32>) (tmp_12_fu_112185_p1.read());
    } else if ((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(exitcond1_fu_106435_p2.read(), ap_const_lv1_0))) {
        b2_address =  (sc_lv<32>) (tmp_8_fu_106446_p1.read());
    } else if ((!ap_sig_bdd_11305.read() && 
                esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read()))) {
        b2_address = ap_const_lv32_0;
    } else {
        b2_address = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_b2_dataout() {
    if (!ap_sig_bdd_11305.read()) {
        if (esl_seteq<1,5,5>(ap_ST_st21_fsm_20, ap_CS_fsm.read())) {
            b2_dataout = p_Result_7_7_reg_118907.read();
        } else if (esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
            b2_dataout = tmp_3_fu_105265_p1.read();
        } else {
            b2_dataout =  (sc_lv<256>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        }
    } else {
        b2_dataout =  (sc_lv<256>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void bmm_top::thread_b2_req_din() {
    if ((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_106435_p2.read(), ap_const_lv1_0))) {
        b2_req_din = ap_const_logic_0;
    } else if (((esl_seteq<1,5,5>(ap_ST_st21_fsm_20, ap_CS_fsm.read()) && 
                 !ap_sig_bdd_11305.read()) || 
                (!ap_sig_bdd_11305.read() && 
                 esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read())))) {
        b2_req_din = ap_const_logic_1;
    } else {
        b2_req_din = ap_const_logic_0;
    }
}

void bmm_top::thread_b2_req_write() {
    if (((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(exitcond1_fu_106435_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,5,5>(ap_ST_st21_fsm_20, ap_CS_fsm.read()) && 
          !ap_sig_bdd_11305.read()) || 
         (!ap_sig_bdd_11305.read() && 
          esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read())))) {
        b2_req_write = ap_const_logic_1;
    } else {
        b2_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b2_rsp_read() {
    if ((esl_seteq<1,5,5>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) && 
         !ap_sig_bdd_914.read())) {
        b2_rsp_read = ap_const_logic_1;
    } else {
        b2_rsp_read = ap_const_logic_0;
    }
}

void bmm_top::thread_b2_size() {
    b2_size = ap_const_lv32_1;
}

void bmm_top::thread_b3_address() {
    if ((esl_seteq<1,5,5>(ap_ST_st21_fsm_20, ap_CS_fsm.read()) && 
         !ap_sig_bdd_11305.read())) {
        b3_address =  (sc_lv<32>) (tmp_12_fu_112185_p1.read());
    } else if ((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(exitcond1_fu_106435_p2.read(), ap_const_lv1_0))) {
        b3_address =  (sc_lv<32>) (tmp_8_fu_106446_p1.read());
    } else if ((!ap_sig_bdd_11305.read() && 
                esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read()))) {
        b3_address = ap_const_lv32_0;
    } else {
        b3_address = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_b3_dataout() {
    if (!ap_sig_bdd_11305.read()) {
        if (esl_seteq<1,5,5>(ap_ST_st21_fsm_20, ap_CS_fsm.read())) {
            b3_dataout = p_Result_8_7_fu_112164_p9.read();
        } else if (esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
            b3_dataout = tmp_5_fu_105269_p1.read();
        } else {
            b3_dataout =  (sc_lv<256>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        }
    } else {
        b3_dataout =  (sc_lv<256>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void bmm_top::thread_b3_req_din() {
    if ((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_106435_p2.read(), ap_const_lv1_0))) {
        b3_req_din = ap_const_logic_0;
    } else if (((esl_seteq<1,5,5>(ap_ST_st21_fsm_20, ap_CS_fsm.read()) && 
                 !ap_sig_bdd_11305.read()) || 
                (!ap_sig_bdd_11305.read() && 
                 esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read())))) {
        b3_req_din = ap_const_logic_1;
    } else {
        b3_req_din = ap_const_logic_0;
    }
}

void bmm_top::thread_b3_req_write() {
    if (((esl_seteq<1,5,5>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(exitcond1_fu_106435_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,5,5>(ap_ST_st21_fsm_20, ap_CS_fsm.read()) && 
          !ap_sig_bdd_11305.read()) || 
         (!ap_sig_bdd_11305.read() && 
          esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read())))) {
        b3_req_write = ap_const_logic_1;
    } else {
        b3_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b3_rsp_read() {
    if ((esl_seteq<1,5,5>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) && 
         !ap_sig_bdd_914.read())) {
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
         !ap_sig_bdd_84.read())) {
        blockSize_ap_ack = ap_const_logic_1;
    } else {
        blockSize_ap_ack = ap_const_logic_0;
    }
}

void bmm_top::thread_brow_0_1_fu_111388_p2() {
    brow_0_1_fu_111388_p2 = (!tmp_22_fu_111382_p2.read().is_01() || !brow_load_phi_reg_37344.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_22_fu_111382_p2.read()) + sc_biguint<32>(brow_load_phi_reg_37344.read()));
}

void bmm_top::thread_brow_0_fu_107846_p1() {
    brow_0_fu_107846_p1 = b2_datain.read().range(32-1, 0);
}

void bmm_top::thread_crow_0_1_fu_111406_p2() {
    crow_0_1_fu_111406_p2 = (!tmp_23_fu_111394_p2.read().is_01() || !tmp_24_fu_111400_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_23_fu_111394_p2.read()) + sc_biguint<32>(tmp_24_fu_111400_p2.read()));
}

void bmm_top::thread_crow_0_fu_107930_p1() {
    crow_0_fu_107930_p1 = b3_datain.read().range(32-1, 0);
}

void bmm_top::thread_exitcond1_fu_106435_p2() {
    exitcond1_fu_106435_p2 = (!i_reg_2985.read().is_01() || !tmp_14_reg_114536.read().is_01())? sc_lv<1>(): sc_lv<1>(i_reg_2985.read() == tmp_14_reg_114536.read());
}

void bmm_top::thread_exitcond_fu_112052_p2() {
    exitcond_fu_112052_p2 = (!i5_reg_104170.read().is_01() || !tmp_14_reg_114536.read().is_01())? sc_lv<1>(): sc_lv<1>(i5_reg_104170.read() == tmp_14_reg_114536.read());
}

void bmm_top::thread_grp_fu_105255_ce() {
    if (((esl_seteq<1,5,5>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
          !ap_sig_bdd_84.read()) || 
         esl_seteq<1,5,5>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) || 
         (!ap_sig_bdd_11305.read() && 
          esl_seteq<1,5,5>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) || 
         esl_seteq<1,5,5>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) || 
         esl_seteq<1,5,5>(ap_ST_st4_fsm_3, ap_CS_fsm.read()) || 
         esl_seteq<1,5,5>(ap_ST_st5_fsm_4, ap_CS_fsm.read()))) {
        grp_fu_105255_ce = ap_const_logic_1;
    } else {
        grp_fu_105255_ce = ap_const_logic_0;
    }
}

void bmm_top::thread_grp_fu_105255_p0() {
    grp_fu_105255_p0 = blockSize.read();
}

void bmm_top::thread_grp_fu_105255_p1() {
    grp_fu_105255_p1 = blockSize.read();
}

void bmm_top::thread_i_1_fu_106440_p2() {
    i_1_fu_106440_p2 = (!i_reg_2985.read().is_01() || !ap_const_lv29_1.is_01())? sc_lv<29>(): (sc_bigint<29>(i_reg_2985.read()) + sc_biguint<29>(ap_const_lv29_1));
}

void bmm_top::thread_i_2_fu_112057_p2() {
    i_2_fu_112057_p2 = (!i5_reg_104170.read().is_01() || !ap_const_lv29_1.is_01())? sc_lv<29>(): (sc_bigint<29>(i5_reg_104170.read()) + sc_biguint<29>(ap_const_lv29_1));
}

void bmm_top::thread_p_Repl2_124_phi_phi_fu_104314_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st20_fsm_19, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_1, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_145_load_reg_117057.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_71, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_257_load_reg_117729.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_69, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_249_load_reg_117681.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_61, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_241_load_reg_117633.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_59, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_233_load_reg_117585.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_51, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_225_load_reg_117537.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_49, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_217_load_reg_117489.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_41, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_209_load_reg_117441.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_39, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_201_load_reg_117393.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_31, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_193_load_reg_117345.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_29, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_185_load_reg_117297.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_21, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_177_load_reg_117249.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_19, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_169_load_reg_117201.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_11, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_161_load_reg_117153.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_9, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_153_load_reg_117105.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_124_phi_phi_fu_104314_p32 = arow_127_265_load_reg_117777.read();
        } else {
            p_Repl2_124_phi_phi_fu_104314_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_124_phi_phi_fu_104314_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_1_1_phi_phi_fu_104351_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st20_fsm_19, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_1, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_1_2_reg_36290.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_71, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_113_2_reg_6722.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_69, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_105_2_reg_8834.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_61, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_97_2_reg_10946.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_59, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_89_2_reg_13058.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_51, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_81_2_reg_15170.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_49, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_73_2_reg_17282.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_41, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_65_2_reg_19394.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_39, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_57_2_reg_21506.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_31, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_49_2_reg_23618.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_29, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_41_2_reg_25730.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_21, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_33_2_reg_27842.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_19, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_25_2_reg_29954.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_11, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_17_2_reg_32066.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_9, tmp_24_126_t_fu_112075_p3.read())) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_9_2_reg_34178.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = brow_121_2_50_reg_4610.read();
        } else {
            p_Repl2_1_1_phi_phi_fu_104351_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_1_1_phi_phi_fu_104351_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_1_2_phi_phi_fu_104479_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st20_fsm_19, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_2, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_2_2_reg_36026.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_72, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_114_2_reg_6458.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6A, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_106_2_reg_8570.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_62, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_98_2_reg_10682.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5A, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_90_2_reg_12794.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_52, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_82_2_reg_14906.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4A, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_74_2_reg_17018.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_42, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_66_2_reg_19130.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3A, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_58_2_reg_21242.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_32, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_50_2_reg_23354.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2A, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_42_2_reg_25466.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_22, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_34_2_reg_27578.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1A, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_26_2_reg_29690.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_12, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_18_2_reg_31802.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_A, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_10_2_reg_33914.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = brow_122_2_49_reg_4346.read();
        } else {
            p_Repl2_1_2_phi_phi_fu_104479_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_1_2_phi_phi_fu_104479_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_1_3_phi_phi_fu_104607_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st20_fsm_19, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_3, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_3_2_reg_35762.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_73, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_115_2_reg_6194.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6B, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_107_2_reg_8306.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_63, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_99_2_reg_10418.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5B, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_91_2_reg_12530.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_53, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_83_2_reg_14642.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4B, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_75_2_reg_16754.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_43, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_67_2_reg_18866.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3B, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_59_2_reg_20978.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_33, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_51_2_reg_23090.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2B, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_43_2_reg_25202.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_23, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_35_2_reg_27314.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1B, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_27_2_reg_29426.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_13, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_19_2_reg_31538.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_B, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_11_2_reg_33650.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = brow_123_2_48_reg_4082.read();
        } else {
            p_Repl2_1_3_phi_phi_fu_104607_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_1_3_phi_phi_fu_104607_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_1_4_phi_phi_fu_104735_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st20_fsm_19, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_4, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_4_2_reg_35498.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_74, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_116_2_reg_5930.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6C, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_108_2_reg_8042.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_64, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_100_2_reg_10154.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5C, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_92_2_reg_12266.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_54, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_84_2_reg_14378.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4C, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_76_2_reg_16490.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_44, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_68_2_reg_18602.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3C, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_60_2_reg_20714.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_34, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_52_2_reg_22826.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2C, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_44_2_reg_24938.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_24, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_36_2_reg_27050.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1C, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_28_2_reg_29162.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_14, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_20_2_reg_31274.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_C, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_12_2_reg_33386.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = brow_124_2_47_reg_3818.read();
        } else {
            p_Repl2_1_4_phi_phi_fu_104735_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_1_4_phi_phi_fu_104735_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_1_5_phi_phi_fu_104863_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st20_fsm_19, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_5, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_5_2_reg_35234.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_75, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_117_2_reg_5666.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6D, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_109_2_reg_7778.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_65, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_101_2_reg_9890.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5D, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_93_2_reg_12002.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_55, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_85_2_reg_14114.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4D, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_77_2_reg_16226.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_45, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_69_2_reg_18338.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3D, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_61_2_reg_20450.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_35, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_53_2_reg_22562.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2D, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_45_2_reg_24674.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_25, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_37_2_reg_26786.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1D, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_29_2_reg_28898.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_15, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_21_2_reg_31010.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_D, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_13_2_reg_33122.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = brow_125_2_46_reg_3554.read();
        } else {
            p_Repl2_1_5_phi_phi_fu_104863_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_1_5_phi_phi_fu_104863_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_1_6_phi_phi_fu_104991_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st20_fsm_19, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_6, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_6_2_reg_34970.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_76, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_118_2_reg_5402.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6E, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_110_2_reg_7514.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_66, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_102_2_reg_9626.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5E, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_94_2_reg_11738.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_56, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_86_2_reg_13850.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4E, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_78_2_reg_15962.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_46, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_70_2_reg_18074.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3E, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_62_2_reg_20186.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_36, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_54_2_reg_22298.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2E, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_46_2_reg_24410.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_26, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_38_2_reg_26522.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1E, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_30_2_reg_28634.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_16, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_22_2_reg_30746.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_E, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_14_2_reg_32858.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = brow_126_2_45_reg_3290.read();
        } else {
            p_Repl2_1_6_phi_phi_fu_104991_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_1_6_phi_phi_fu_104991_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_1_7_phi_phi_fu_105119_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st20_fsm_19, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_7, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_7_2_reg_34706.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_77, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_119_2_reg_5138.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6F, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_111_2_reg_7250.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_67, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_103_2_reg_9362.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5F, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_95_2_reg_11474.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_57, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_87_2_reg_13586.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4F, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_79_2_reg_15698.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_47, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_71_2_reg_17810.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3F, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_63_2_reg_19922.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_37, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_55_2_reg_22034.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2F, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_47_2_reg_24146.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_27, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_39_2_reg_26258.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1F, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_31_2_reg_28370.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_17, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_23_2_reg_30482.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_F, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_15_2_reg_32594.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = brow_127_2_44_reg_3026.read();
        } else {
            p_Repl2_1_7_phi_phi_fu_105119_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_1_7_phi_phi_fu_105119_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_225_phi_phi_fu_104442_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st20_fsm_19, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_2, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_146_load_reg_117063.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_72, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_258_load_reg_117735.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6A, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_250_load_reg_117687.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_62, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_242_load_reg_117639.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5A, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_234_load_reg_117591.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_52, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_226_load_reg_117543.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4A, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_218_load_reg_117495.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_42, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_210_load_reg_117447.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3A, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_202_load_reg_117399.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_32, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_194_load_reg_117351.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2A, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_186_load_reg_117303.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_22, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_178_load_reg_117255.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1A, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_170_load_reg_117207.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_12, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_162_load_reg_117159.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_A, tmp_24_227_t_fu_112082_p3.read())) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_154_load_reg_117111.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_225_phi_phi_fu_104442_p32 = arow_127_266_load_reg_117783.read();
        } else {
            p_Repl2_225_phi_phi_fu_104442_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_225_phi_phi_fu_104442_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_3_phi_phi_fu_104570_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st20_fsm_19, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_3, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_147_load_reg_117069.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_73, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_259_load_reg_117741.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6B, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_251_load_reg_117693.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_63, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_243_load_reg_117645.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5B, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_235_load_reg_117597.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_53, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_227_load_reg_117549.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4B, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_219_load_reg_117501.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_43, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_211_load_reg_117453.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3B, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_203_load_reg_117405.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_33, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_195_load_reg_117357.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2B, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_187_load_reg_117309.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_23, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_179_load_reg_117261.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1B, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_171_load_reg_117213.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_13, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_163_load_reg_117165.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_B, tmp_24_328_t_fu_112089_p3.read())) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_155_load_reg_117117.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_3_phi_phi_fu_104570_p32 = arow_127_267_load_reg_117789.read();
        } else {
            p_Repl2_3_phi_phi_fu_104570_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_3_phi_phi_fu_104570_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_4_phi_phi_fu_104698_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st20_fsm_19, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_4, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_148_load_reg_117075.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_74, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_260_load_reg_117747.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6C, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_252_load_reg_117699.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_64, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_244_load_reg_117651.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5C, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_236_load_reg_117603.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_54, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_228_load_reg_117555.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4C, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_220_load_reg_117507.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_44, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_212_load_reg_117459.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3C, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_204_load_reg_117411.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_34, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_196_load_reg_117363.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2C, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_188_load_reg_117315.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_24, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_180_load_reg_117267.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1C, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_172_load_reg_117219.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_14, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_164_load_reg_117171.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_C, tmp_24_429_t_fu_112096_p3.read())) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_156_load_reg_117123.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_4_phi_phi_fu_104698_p32 = arow_127_268_load_reg_117795.read();
        } else {
            p_Repl2_4_phi_phi_fu_104698_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_4_phi_phi_fu_104698_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_5_phi_phi_fu_104826_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st20_fsm_19, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_5, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_149_load_reg_117081.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_75, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_261_load_reg_117753.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6D, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_253_load_reg_117705.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_65, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_245_load_reg_117657.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5D, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_237_load_reg_117609.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_55, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_229_load_reg_117561.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4D, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_221_load_reg_117513.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_45, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_213_load_reg_117465.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3D, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_205_load_reg_117417.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_35, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_197_load_reg_117369.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2D, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_189_load_reg_117321.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_25, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_181_load_reg_117273.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1D, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_173_load_reg_117225.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_15, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_165_load_reg_117177.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_D, tmp_24_530_t_fu_112103_p3.read())) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_157_load_reg_117129.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_5_phi_phi_fu_104826_p32 = arow_127_269_load_reg_117801.read();
        } else {
            p_Repl2_5_phi_phi_fu_104826_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_5_phi_phi_fu_104826_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_6_phi_phi_fu_104954_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st20_fsm_19, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_6, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_150_load_reg_117087.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_76, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_262_load_reg_117759.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6E, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_254_load_reg_117711.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_66, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_246_load_reg_117663.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5E, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_238_load_reg_117615.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_56, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_230_load_reg_117567.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4E, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_222_load_reg_117519.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_46, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_214_load_reg_117471.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3E, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_206_load_reg_117423.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_36, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_198_load_reg_117375.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2E, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_190_load_reg_117327.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_26, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_182_load_reg_117279.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1E, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_174_load_reg_117231.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_16, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_166_load_reg_117183.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_E, tmp_24_631_t_fu_112110_p3.read())) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_158_load_reg_117135.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_6_phi_phi_fu_104954_p32 = arow_127_270_load_reg_117807.read();
        } else {
            p_Repl2_6_phi_phi_fu_104954_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_6_phi_phi_fu_104954_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Repl2_7_phi_phi_fu_105082_p32() {
    if (esl_seteq<1,5,5>(ap_ST_st20_fsm_19, ap_CS_fsm.read())) {
        if (esl_seteq<1,7,7>(ap_const_lv7_7, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_151_load_reg_117093.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_77, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_263_load_reg_117765.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_6F, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_255_load_reg_117717.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_67, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_247_load_reg_117669.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_5F, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_239_load_reg_117621.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_57, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_231_load_reg_117573.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_4F, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_223_load_reg_117525.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_47, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_215_load_reg_117477.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_3F, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_207_load_reg_117429.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_37, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_199_load_reg_117381.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_2F, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_191_load_reg_117333.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_27, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_183_load_reg_117285.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_1F, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_175_load_reg_117237.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_17, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_167_load_reg_117189.read();
        } else if (esl_seteq<1,7,7>(ap_const_lv7_F, tmp_24_732_t_fu_112117_p3.read())) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_159_load_reg_117141.read();
        } else if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            p_Repl2_7_phi_phi_fu_105082_p32 = arow_127_271_load_reg_117813.read();
        } else {
            p_Repl2_7_phi_phi_fu_105082_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        p_Repl2_7_phi_phi_fu_105082_p32 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_p_Result_6_7_fu_112124_p9() {
    p_Result_6_7_fu_112124_p9 = esl_concat<224,32>(esl_concat<192,32>(esl_concat<160,32>(esl_concat<128,32>(esl_concat<96,32>(esl_concat<64,32>(esl_concat<32,32>(p_Repl2_7_phi_phi_fu_105082_p32.read(), p_Repl2_6_phi_phi_fu_104954_p32.read()), p_Repl2_5_phi_phi_fu_104826_p32.read()), p_Repl2_4_phi_phi_fu_104698_p32.read()), p_Repl2_3_phi_phi_fu_104570_p32.read()), p_Repl2_225_phi_phi_fu_104442_p32.read()), p_Repl2_124_phi_phi_fu_104314_p32.read()), p_Repl2_0_phi_reg_104182.read());
}

void bmm_top::thread_p_Result_7_7_fu_112144_p9() {
    p_Result_7_7_fu_112144_p9 = esl_concat<224,32>(esl_concat<192,32>(esl_concat<160,32>(esl_concat<128,32>(esl_concat<96,32>(esl_concat<64,32>(esl_concat<32,32>(p_Repl2_1_7_phi_phi_fu_105119_p32.read(), p_Repl2_1_6_phi_phi_fu_104991_p32.read()), p_Repl2_1_5_phi_phi_fu_104863_p32.read()), p_Repl2_1_4_phi_phi_fu_104735_p32.read()), p_Repl2_1_3_phi_phi_fu_104607_p32.read()), p_Repl2_1_2_phi_phi_fu_104479_p32.read()), p_Repl2_1_1_phi_phi_fu_104351_p32.read()), p_Repl2_1_0_phi_reg_104220.read());
}

void bmm_top::thread_p_Result_8_7_fu_112164_p9() {
    p_Result_8_7_fu_112164_p9 = esl_concat<224,32>(esl_concat<192,32>(esl_concat<160,32>(esl_concat<128,32>(esl_concat<96,32>(esl_concat<64,32>(esl_concat<32,32>(p_Repl2_2_7_phi_reg_105169.read(), p_Repl2_2_6_phi_reg_105041.read()), p_Repl2_2_5_phi_reg_104913.read()), p_Repl2_2_4_phi_reg_104785.read()), p_Repl2_2_3_phi_reg_104657.read()), p_Repl2_2_2_phi_reg_104529.read()), p_Repl2_2_1_phi_reg_104401.read()), p_Repl2_2_0_phi_reg_104273.read());
}

void bmm_top::thread_t1_1_fu_110726_p2() {
    t1_1_fu_110726_p2 = (!t1_reg_36818.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(t1_reg_36818.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void bmm_top::thread_tmp_10_fu_105225_p0() {
    tmp_10_fu_105225_p0 = blockSize.read();
}

void bmm_top::thread_tmp_10_fu_105225_p2() {
    tmp_10_fu_105225_p2 = (!ap_const_lv32_4.is_01())? sc_lv<32>(): tmp_10_fu_105225_p0.read() << (unsigned short)ap_const_lv32_4.to_uint();
}

void bmm_top::thread_tmp_11_fu_105231_p0() {
    tmp_11_fu_105231_p0 = blockSize.read();
}

void bmm_top::thread_tmp_11_fu_105231_p2() {
    tmp_11_fu_105231_p2 = (!ap_const_lv32_2.is_01())? sc_lv<32>(): tmp_11_fu_105231_p0.read() << (unsigned short)ap_const_lv32_2.to_uint();
}

void bmm_top::thread_tmp_12_fu_112185_p1() {
    tmp_12_fu_112185_p1 = esl_zext<64,29>(i5_reg_104170.read());
}

void bmm_top::thread_tmp_13_133_t_fu_108024_p3() {
    tmp_13_133_t_fu_108024_p3 = esl_concat<4,3>(tmp_16_reg_115223.read(), ap_const_lv3_1);
}

void bmm_top::thread_tmp_13_234_t_fu_108301_p3() {
    tmp_13_234_t_fu_108301_p3 = esl_concat<4,3>(tmp_16_reg_115223.read(), ap_const_lv3_2);
}

void bmm_top::thread_tmp_13_335_t_fu_108578_p3() {
    tmp_13_335_t_fu_108578_p3 = esl_concat<4,3>(tmp_16_reg_115223.read(), ap_const_lv3_3);
}

void bmm_top::thread_tmp_13_436_t_fu_108855_p3() {
    tmp_13_436_t_fu_108855_p3 = esl_concat<4,3>(tmp_16_reg_115223.read(), ap_const_lv3_4);
}

void bmm_top::thread_tmp_13_537_t_fu_109132_p3() {
    tmp_13_537_t_fu_109132_p3 = esl_concat<4,3>(tmp_16_reg_115223.read(), ap_const_lv3_5);
}

void bmm_top::thread_tmp_13_638_t_fu_109409_p3() {
    tmp_13_638_t_fu_109409_p3 = esl_concat<4,3>(tmp_16_reg_115223.read(), ap_const_lv3_6);
}

void bmm_top::thread_tmp_13_739_t_fu_109686_p3() {
    tmp_13_739_t_fu_109686_p3 = esl_concat<4,3>(tmp_16_reg_115223.read(), ap_const_lv3_7);
}

void bmm_top::thread_tmp_13_fu_105243_p0() {
    tmp_13_fu_105243_p0 = blockSize.read();
}

void bmm_top::thread_tmp_13_fu_105243_p2() {
    tmp_13_fu_105243_p2 = (!ap_const_lv32_5.is_01())? sc_lv<32>(): tmp_13_fu_105243_p0.read() << (unsigned short)ap_const_lv32_5.to_uint();
}

void bmm_top::thread_tmp_16_fu_106471_p1() {
    tmp_16_fu_106471_p1 = i_reg_2985.read().range(4-1, 0);
}

void bmm_top::thread_tmp_17_fu_110732_p1() {
    tmp_17_fu_110732_p1 = t1_reg_36818.read().range(7-1, 0);
}

void bmm_top::thread_tmp_19_fu_112063_p1() {
    tmp_19_fu_112063_p1 = i5_reg_104170.read().range(4-1, 0);
}

void bmm_top::thread_tmp_1_fu_105261_p1() {
    tmp_1_fu_105261_p1 = esl_sext<256,32>(tmp_reg_114521.read());
}

void bmm_top::thread_tmp_22_fu_111382_p2() {
    tmp_22_fu_111382_p2 = (!ap_const_lv32_2.is_01())? sc_lv<32>(): brow_load_phi_reg_37344.read() << (unsigned short)ap_const_lv32_2.to_uint();
}

void bmm_top::thread_tmp_22_t_fu_112067_p3() {
    tmp_22_t_fu_112067_p3 = esl_concat<4,3>(tmp_19_fu_112063_p1.read(), ap_const_lv3_0);
}

void bmm_top::thread_tmp_23_fu_111394_p2() {
    tmp_23_fu_111394_p2 = (!ap_const_lv32_3.is_01())? sc_lv<32>(): crow_load_phi_reg_103909.read() << (unsigned short)ap_const_lv32_3.to_uint();
}

void bmm_top::thread_tmp_24_126_t_fu_112075_p3() {
    tmp_24_126_t_fu_112075_p3 = esl_concat<4,3>(tmp_19_reg_118866.read(), ap_const_lv3_1);
}

void bmm_top::thread_tmp_24_227_t_fu_112082_p3() {
    tmp_24_227_t_fu_112082_p3 = esl_concat<4,3>(tmp_19_reg_118866.read(), ap_const_lv3_2);
}

void bmm_top::thread_tmp_24_328_t_fu_112089_p3() {
    tmp_24_328_t_fu_112089_p3 = esl_concat<4,3>(tmp_19_reg_118866.read(), ap_const_lv3_3);
}

void bmm_top::thread_tmp_24_429_t_fu_112096_p3() {
    tmp_24_429_t_fu_112096_p3 = esl_concat<4,3>(tmp_19_reg_118866.read(), ap_const_lv3_4);
}

void bmm_top::thread_tmp_24_530_t_fu_112103_p3() {
    tmp_24_530_t_fu_112103_p3 = esl_concat<4,3>(tmp_19_reg_118866.read(), ap_const_lv3_5);
}

void bmm_top::thread_tmp_24_631_t_fu_112110_p3() {
    tmp_24_631_t_fu_112110_p3 = esl_concat<4,3>(tmp_19_reg_118866.read(), ap_const_lv3_6);
}

void bmm_top::thread_tmp_24_732_t_fu_112117_p3() {
    tmp_24_732_t_fu_112117_p3 = esl_concat<4,3>(tmp_19_reg_118866.read(), ap_const_lv3_7);
}

void bmm_top::thread_tmp_24_fu_111400_p2() {
    tmp_24_fu_111400_p2 = (!ap_const_lv32_1.is_01())? sc_lv<32>(): crow_load_phi_reg_103909.read() << (unsigned short)ap_const_lv32_1.to_uint();
}

void bmm_top::thread_tmp_2_fu_105237_p2() {
    tmp_2_fu_105237_p2 = (!tmp_10_fu_105225_p2.read().is_01() || !tmp_11_fu_105231_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_10_fu_105225_p2.read()) + sc_biguint<32>(tmp_11_fu_105231_p2.read()));
}

void bmm_top::thread_tmp_3_fu_105265_p1() {
    tmp_3_fu_105265_p1 = esl_sext<256,32>(tmp_2_reg_114526.read());
}

void bmm_top::thread_tmp_4_fu_105249_p2() {
    tmp_4_fu_105249_p2 = (!tmp_13_fu_105243_p2.read().is_01() || !tmp_9_fu_105213_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_13_fu_105243_p2.read()) - sc_biguint<32>(tmp_9_fu_105213_p2.read()));
}

void bmm_top::thread_tmp_5_fu_105269_p1() {
    tmp_5_fu_105269_p1 = esl_sext<256,32>(tmp_4_reg_114531.read());
}

void bmm_top::thread_tmp_7_fu_105207_p0() {
    tmp_7_fu_105207_p0 = blockSize.read();
}

void bmm_top::thread_tmp_7_fu_105207_p2() {
    tmp_7_fu_105207_p2 = (!ap_const_lv32_3.is_01())? sc_lv<32>(): tmp_7_fu_105207_p0.read() << (unsigned short)ap_const_lv32_3.to_uint();
}

void bmm_top::thread_tmp_8_fu_106446_p1() {
    tmp_8_fu_106446_p1 = esl_zext<64,29>(i_reg_2985.read());
}

void bmm_top::thread_tmp_9_fu_105213_p0() {
    tmp_9_fu_105213_p0 = blockSize.read();
}

void bmm_top::thread_tmp_9_fu_105213_p2() {
    tmp_9_fu_105213_p2 = (!ap_const_lv32_1.is_01())? sc_lv<32>(): tmp_9_fu_105213_p0.read() << (unsigned short)ap_const_lv32_1.to_uint();
}

void bmm_top::thread_tmp_9_t_fu_107759_p3() {
    tmp_9_t_fu_107759_p3 = esl_concat<4,3>(tmp_16_reg_115223.read(), ap_const_lv3_0);
}

void bmm_top::thread_tmp_fu_105219_p2() {
    tmp_fu_105219_p2 = (!tmp_7_fu_105207_p2.read().is_01() || !tmp_9_fu_105213_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_7_fu_105207_p2.read()) + sc_biguint<32>(tmp_9_fu_105213_p2.read()));
}

void bmm_top::thread_tmp_s_fu_110721_p2() {
    tmp_s_fu_110721_p2 = (!t1_reg_36818.read().is_01() || !blockSize_read_reg_114514.read().is_01())? sc_lv<1>(): (sc_bigint<32>(t1_reg_36818.read()) < sc_bigint<32>(blockSize_read_reg_114514.read()));
}

}

