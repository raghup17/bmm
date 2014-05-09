#include "bmm_top.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void bmm_top::thread_ap_done() {
    if ((esl_seteq<1,6,6>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_fu_109471_p2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void bmm_top::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,6,6>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void bmm_top::thread_ap_ready() {
    if ((esl_seteq<1,6,6>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_fu_109471_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void bmm_top::thread_ap_sig_bdd_104() {
    ap_sig_bdd_104 = (esl_seteq<1,1,1>(blockSize_ap_vld.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0));
}

void bmm_top::thread_ap_sig_bdd_394() {
    ap_sig_bdd_394 = (esl_seteq<1,1,1>(b1_rsp_empty_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(b3_rsp_empty_n.read(), ap_const_logic_0));
}

void bmm_top::thread_ap_sig_bdd_711() {
    ap_sig_bdd_711 = (esl_seteq<1,6,6>(ap_ST_st31_fsm_30, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_fu_111767_p2.read()));
}

void bmm_top::thread_ap_sig_bdd_736() {
    ap_sig_bdd_736 = (esl_seteq<1,1,1>(b3_req_full_n.read(), ap_const_logic_0) && !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_111815_p2.read()));
}

void bmm_top::thread_ap_sig_bdd_742() {
    ap_sig_bdd_742 = (esl_seteq<1,6,6>(ap_ST_st40_fsm_39, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_111815_p2.read()) && !ap_sig_bdd_736.read());
}

void bmm_top::thread_arow_0_fu_109959_p1() {
    arow_0_fu_109959_p1 = p_Result_s_fu_109950_p4.read().range(32-1, 0);
}

void bmm_top::thread_b1_address() {
    b1_address =  (sc_lv<32>) (tmp_2_fu_109893_p1.read());
}

void bmm_top::thread_b1_dataout() {
    b1_dataout = ap_const_lv256_lc_1;
}

void bmm_top::thread_b1_req_din() {
    b1_req_din = ap_const_logic_0;
}

void bmm_top::thread_b1_req_write() {
    if (esl_seteq<1,6,6>(ap_ST_st9_fsm_8, ap_CS_fsm.read())) {
        b1_req_write = ap_const_logic_1;
    } else {
        b1_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b1_rsp_read() {
    if ((esl_seteq<1,6,6>(ap_ST_st14_fsm_13, ap_CS_fsm.read()) && 
         !ap_sig_bdd_394.read())) {
        b1_rsp_read = ap_const_logic_1;
    } else {
        b1_rsp_read = ap_const_logic_0;
    }
}

void bmm_top::thread_b1_size() {
    b1_size = ap_const_lv32_1;
}

void bmm_top::thread_b2_address() {
    b2_address =  (sc_lv<32>) (tmp_7_fu_111048_p1.read());
}

void bmm_top::thread_b2_dataout() {
    b2_dataout = ap_const_lv256_lc_1;
}

void bmm_top::thread_b2_req_din() {
    b2_req_din = ap_const_logic_0;
}

void bmm_top::thread_b2_req_write() {
    if (esl_seteq<1,6,6>(ap_ST_st24_fsm_23, ap_CS_fsm.read())) {
        b2_req_write = ap_const_logic_1;
    } else {
        b2_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b2_rsp_read() {
    if ((esl_seteq<1,6,6>(ap_ST_st29_fsm_28, ap_CS_fsm.read()) && 
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
    if ((esl_seteq<1,6,6>(ap_ST_st40_fsm_39, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_111815_p2.read()) && 
         !ap_sig_bdd_736.read())) {
        b3_address =  (sc_lv<32>) (tmp_8_fu_111841_p1.read());
    } else if (esl_seteq<1,6,6>(ap_ST_st9_fsm_8, ap_CS_fsm.read())) {
        b3_address =  (sc_lv<32>) (tmp_2_fu_109893_p1.read());
    } else {
        b3_address = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void bmm_top::thread_b3_dataout() {
    b3_dataout = p_Val2_2_reg_108997.read();
}

void bmm_top::thread_b3_req_din() {
    if (((esl_seteq<1,6,6>(ap_ST_st40_fsm_39, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_111815_p2.read()) && 
          !ap_sig_bdd_736.read()))) {
        b3_req_din = ap_const_logic_1;
    } else if (esl_seteq<1,6,6>(ap_ST_st9_fsm_8, ap_CS_fsm.read())) {
        b3_req_din = ap_const_logic_0;
    } else {
        b3_req_din = ap_const_logic_0;
    }
}

void bmm_top::thread_b3_req_write() {
    if ((esl_seteq<1,6,6>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) || 
         (esl_seteq<1,6,6>(ap_ST_st40_fsm_39, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_111815_p2.read()) && 
          !ap_sig_bdd_736.read()))) {
        b3_req_write = ap_const_logic_1;
    } else {
        b3_req_write = ap_const_logic_0;
    }
}

void bmm_top::thread_b3_rsp_read() {
    if ((esl_seteq<1,6,6>(ap_ST_st14_fsm_13, ap_CS_fsm.read()) && 
         !ap_sig_bdd_394.read())) {
        b3_rsp_read = ap_const_logic_1;
    } else {
        b3_rsp_read = ap_const_logic_0;
    }
}

void bmm_top::thread_b3_size() {
    b3_size = ap_const_lv32_1;
}

void bmm_top::thread_blockSize_ap_ack() {
    if ((esl_seteq<1,6,6>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
         !ap_sig_bdd_104.read())) {
        blockSize_ap_ack = ap_const_logic_1;
    } else {
        blockSize_ap_ack = ap_const_logic_0;
    }
}

void bmm_top::thread_brow_0_fu_111107_p1() {
    brow_0_fu_111107_p1 = p_Result_2_fu_111098_p4.read().range(32-1, 0);
}

void bmm_top::thread_crow_0_1_17_fu_111788_p2() {
    crow_0_1_17_fu_111788_p2 = (!crow_load_phi_reg_108563.read().is_01() || !tmp_15_reg_115127.read().is_01())? sc_lv<32>(): (sc_bigint<32>(crow_load_phi_reg_108563.read()) + sc_biguint<32>(tmp_15_reg_115127.read()));
}

void bmm_top::thread_crow_0_fu_110616_p1() {
    crow_0_fu_110616_p1 = p_Result_1_fu_110607_p4.read().range(32-1, 0);
}

void bmm_top::thread_curIdx_1_fu_111804_p2() {
    curIdx_1_fu_111804_p2 = (!j_2_reg_108976.read().is_01() || !rowBaseIdx_reg_113451.read().is_01())? sc_lv<32>(): (sc_bigint<32>(j_2_reg_108976.read()) + sc_biguint<32>(rowBaseIdx_reg_113451.read()));
}

void bmm_top::thread_curIdx_2_fu_111037_p2() {
    curIdx_2_fu_111037_p2 = (!j_1_reg_57438.read().is_01() || !rowBaseIdxB_reg_114293.read().is_01())? sc_lv<32>(): (sc_bigint<32>(j_1_reg_57438.read()) + sc_biguint<32>(rowBaseIdxB_reg_114293.read()));
}

void bmm_top::thread_curIdx_fu_109882_p2() {
    curIdx_fu_109882_p2 = (!j_reg_4378.read().is_01() || !rowBaseIdx_reg_113451.read().is_01())? sc_lv<32>(): (sc_bigint<32>(j_reg_4378.read()) + sc_biguint<32>(rowBaseIdx_reg_113451.read()));
}

void bmm_top::thread_exitcond3_fu_111767_p2() {
    exitcond3_fu_111767_p2 = (!t1_reg_107774.read().is_01() || !blockSize_read_reg_113427.read().is_01())? sc_lv<1>(): sc_lv<1>(t1_reg_107774.read() == blockSize_read_reg_113427.read());
}

void bmm_top::thread_exitcond6_fu_111058_p2() {
    exitcond6_fu_111058_p2 = (!k_3_reg_57449.read().is_01() || !indvars_iv4_reg_57414.read().is_01())? sc_lv<1>(): sc_lv<1>(k_3_reg_57449.read() == indvars_iv4_reg_57414.read());
}

void bmm_top::thread_exitcond7_fu_110626_p2() {
    exitcond7_fu_110626_p2 = (!rowIdxB_reg_57402.read().is_01() || !blockSize_read_reg_113427.read().is_01())? sc_lv<1>(): sc_lv<1>(rowIdxB_reg_57402.read() == blockSize_read_reg_113427.read());
}

void bmm_top::thread_exitcond8_fu_109910_p2() {
    exitcond8_fu_109910_p2 = (!t2_reg_5925.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(t2_reg_5925.read() == ap_const_lv4_8);
}

void bmm_top::thread_exitcond_fu_111815_p2() {
    exitcond_fu_111815_p2 = (!k_5_reg_108987.read().is_01() || !indvars_iv_reg_108952.read().is_01())? sc_lv<1>(): sc_lv<1>(k_5_reg_108987.read() == indvars_iv_reg_108952.read());
}

void bmm_top::thread_grp_fu_109482_ce() {
    grp_fu_109482_ce = ap_const_logic_1;
}

void bmm_top::thread_grp_fu_109482_p0() {
    grp_fu_109482_p0 = rowIdx_reg_2946.read();
}

void bmm_top::thread_grp_fu_109482_p1() {
    grp_fu_109482_p1 =  (sc_lv<30>) (rowSize_cast_reg_113434.read());
}

void bmm_top::thread_grp_fu_110637_ce() {
    grp_fu_110637_ce = ap_const_logic_1;
}

void bmm_top::thread_grp_fu_110637_p0() {
    grp_fu_110637_p0 = rowIdxB_reg_57402.read();
}

void bmm_top::thread_grp_fu_110637_p1() {
    grp_fu_110637_p1 =  (sc_lv<30>) (rowSize_cast_reg_113434.read());
}

void bmm_top::thread_grp_fu_111782_ce() {
    grp_fu_111782_ce = ap_const_logic_1;
}

void bmm_top::thread_grp_fu_111782_p0() {
    grp_fu_111782_p0 = brow_load_phi_reg_108301.read();
}

void bmm_top::thread_grp_fu_111782_p1() {
    grp_fu_111782_p1 = arow_load_phi_reg_108039.read();
}

void bmm_top::thread_indvars_iv_next5_fu_111761_p2() {
    indvars_iv_next5_fu_111761_p2 = (!indvars_iv4_reg_57414.read().is_01() || !ap_const_lv32_8.is_01())? sc_lv<32>(): (sc_bigint<32>(indvars_iv4_reg_57414.read()) + sc_biguint<32>(ap_const_lv32_8));
}

void bmm_top::thread_indvars_iv_next_fu_111851_p2() {
    indvars_iv_next_fu_111851_p2 = (!indvars_iv_reg_108952.read().is_01() || !ap_const_lv32_8.is_01())? sc_lv<32>(): (sc_bigint<32>(indvars_iv_reg_108952.read()) + sc_biguint<32>(ap_const_lv32_8));
}

void bmm_top::thread_j_3_fu_109876_p2() {
    j_3_fu_109876_p2 = (!j_reg_4378.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(j_reg_4378.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void bmm_top::thread_j_4_fu_111798_p2() {
    j_4_fu_111798_p2 = (!j_2_reg_108976.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(j_2_reg_108976.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void bmm_top::thread_j_5_fu_111031_p2() {
    j_5_fu_111031_p2 = (!j_1_reg_57438.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(j_1_reg_57438.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void bmm_top::thread_k_6_fu_109887_p2() {
    k_6_fu_109887_p2 = (!k_reg_4366.read().is_01() || !ap_const_lv32_8.is_01())? sc_lv<32>(): (sc_bigint<32>(k_reg_4366.read()) + sc_biguint<32>(ap_const_lv32_8));
}

void bmm_top::thread_k_7_fu_111809_p2() {
    k_7_fu_111809_p2 = (!k_4_reg_108964.read().is_01() || !ap_const_lv32_8.is_01())? sc_lv<32>(): (sc_bigint<32>(k_4_reg_108964.read()) + sc_biguint<32>(ap_const_lv32_8));
}

void bmm_top::thread_k_8_fu_111042_p2() {
    k_8_fu_111042_p2 = (!k_2_reg_57426.read().is_01() || !ap_const_lv32_8.is_01())? sc_lv<32>(): (sc_bigint<32>(k_2_reg_57426.read()) + sc_biguint<32>(ap_const_lv32_8));
}

void bmm_top::thread_p_Result_1_fu_110607_p4() {
    p_Result_1_fu_110607_p4 = (!tmp_5_cast_fu_109934_p1.read().is_01() || !tmp_6_cast_fu_109946_p1.read().is_01())? sc_lv<256>(): ((sc_biguint<32>(tmp_6_cast_fu_109946_p1.read()).to_uint() >= 256 || sc_biguint<32>(tmp_5_cast_fu_109934_p1.read()).to_uint() >= 256)? sc_lv<256>():(curElemC_1_reg_114132.read().range(sc_biguint<32>(tmp_6_cast_fu_109946_p1.read()).to_uint(), sc_biguint<32>(tmp_5_cast_fu_109934_p1.read()).to_uint())));
}

void bmm_top::thread_p_Result_2_fu_111098_p4() {
    p_Result_2_fu_111098_p4 = (!tmp_9_cast_fu_111082_p1.read().is_01() || !tmp_10_cast_fu_111094_p1.read().is_01())? sc_lv<256>(): ((sc_biguint<32>(tmp_10_cast_fu_111094_p1.read()).to_uint() >= 256 || sc_biguint<32>(tmp_9_cast_fu_111082_p1.read()).to_uint() >= 256)? sc_lv<256>():(curElemB_reg_114962.read().range(sc_biguint<32>(tmp_10_cast_fu_111094_p1.read()).to_uint(), sc_biguint<32>(tmp_9_cast_fu_111082_p1.read()).to_uint())));
}

void bmm_top::thread_p_Result_4_fu_111879_p5() {
    p_Result_4_fu_111879_p5 = esl_partset<256,256,32,32,32>(p_Val2_2_reg_108997.read(), p_Repl2_s_reg_109021.read(), tmp_11_cast_fu_111864_p1.read(), tmp_12_cast_fu_111875_p1.read());
}

void bmm_top::thread_p_Result_s_fu_109950_p4() {
    p_Result_s_fu_109950_p4 = (!tmp_5_cast_fu_109934_p1.read().is_01() || !tmp_6_cast_fu_109946_p1.read().is_01())? sc_lv<256>(): ((sc_biguint<32>(tmp_6_cast_fu_109946_p1.read()).to_uint() >= 256 || sc_biguint<32>(tmp_5_cast_fu_109934_p1.read()).to_uint() >= 256)? sc_lv<256>():(curElemA_reg_114127.read().range(sc_biguint<32>(tmp_6_cast_fu_109946_p1.read()).to_uint(), sc_biguint<32>(tmp_5_cast_fu_109934_p1.read()).to_uint())));
}

void bmm_top::thread_p_lshr_cast_fu_109435_p1() {
    p_lshr_cast_fu_109435_p1 = esl_zext<30,29>(tmp_16_fu_109425_p4.read());
}

void bmm_top::thread_p_lshr_f_cast_fu_109455_p1() {
    p_lshr_f_cast_fu_109455_p1 = esl_zext<30,29>(tmp_17_fu_109445_p4.read());
}

void bmm_top::thread_p_neg_fu_109419_p2() {
    p_neg_fu_109419_p2 = (!ap_const_lv32_0.is_01() || !blockSize.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(blockSize.read()));
}

void bmm_top::thread_p_neg_t_fu_109439_p2() {
    p_neg_t_fu_109439_p2 = (!ap_const_lv30_0.is_01() || !p_lshr_cast_fu_109435_p1.read().is_01())? sc_lv<30>(): (sc_bigint<30>(ap_const_lv30_0) - sc_biguint<30>(p_lshr_cast_fu_109435_p1.read()));
}

void bmm_top::thread_rowIdxB_1_fu_110631_p2() {
    rowIdxB_1_fu_110631_p2 = (!rowIdxB_reg_57402.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(rowIdxB_reg_57402.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void bmm_top::thread_rowIdx_1_fu_109476_p2() {
    rowIdx_1_fu_109476_p2 = (!rowIdx_reg_2946.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(rowIdx_reg_2946.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void bmm_top::thread_rowSize_cast_fu_109467_p1() {
    rowSize_cast_fu_109467_p1 = esl_sext<32,30>(rowSize_fu_109459_p3.read());
}

void bmm_top::thread_rowSize_fu_109459_p3() {
    rowSize_fu_109459_p3 = (!tmp_18_fu_109411_p3.read()[0].is_01())? sc_lv<30>(): ((tmp_18_fu_109411_p3.read()[0].to_bool())? p_neg_t_fu_109439_p2.read(): p_lshr_f_cast_fu_109455_p1.read());
}

void bmm_top::thread_t1_1_fu_111772_p2() {
    t1_1_fu_111772_p2 = (!t1_reg_107774.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(t1_reg_107774.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void bmm_top::thread_t2_1_fu_109916_p2() {
    t2_1_fu_109916_p2 = (!t2_reg_5925.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_bigint<4>(t2_reg_5925.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void bmm_top::thread_t2_2_fu_111821_p2() {
    t2_2_fu_111821_p2 = (!t_reg_109010.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_bigint<4>(t_reg_109010.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void bmm_top::thread_t2_3_fu_111064_p2() {
    t2_3_fu_111064_p2 = (!t3_reg_57459.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_bigint<4>(t3_reg_57459.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void bmm_top::thread_tmp_10_cast_fu_111094_p1() {
    tmp_10_cast_fu_111094_p1 = esl_zext<32,8>(tmp_10_fu_111086_p3.read());
}

void bmm_top::thread_tmp_10_fu_111086_p3() {
    tmp_10_fu_111086_p3 = esl_concat<3,5>(tmp_25_fu_111070_p1.read(), ap_const_lv5_1F);
}

void bmm_top::thread_tmp_11_cast_fu_111864_p1() {
    tmp_11_cast_fu_111864_p1 = esl_zext<32,8>(tmp_11_fu_111857_p3.read());
}

void bmm_top::thread_tmp_11_fu_111857_p3() {
    tmp_11_fu_111857_p3 = esl_concat<3,5>(tmp_28_reg_115293.read(), ap_const_lv5_0);
}

void bmm_top::thread_tmp_12_cast_fu_111875_p1() {
    tmp_12_cast_fu_111875_p1 = esl_zext<32,8>(tmp_12_fu_111868_p3.read());
}

void bmm_top::thread_tmp_12_fu_111868_p3() {
    tmp_12_fu_111868_p3 = esl_concat<3,5>(tmp_28_reg_115293.read(), ap_const_lv5_1F);
}

void bmm_top::thread_tmp_13_fu_111835_p2() {
    tmp_13_fu_111835_p2 = (!k_5_reg_108987.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(k_5_reg_108987.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void bmm_top::thread_tmp_14_fu_111755_p2() {
    tmp_14_fu_111755_p2 = (!k_3_reg_57449.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(k_3_reg_57449.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void bmm_top::thread_tmp_16_fu_109425_p4() {
    tmp_16_fu_109425_p4 = p_neg_fu_109419_p2.read().range(31, 3);
}

void bmm_top::thread_tmp_17_fu_109445_p4() {
    tmp_17_fu_109445_p4 = blockSize.read().range(31, 3);
}

void bmm_top::thread_tmp_18_fu_109411_p3() {
    tmp_18_fu_109411_p3 = blockSize.read().range(31, 31);
}

void bmm_top::thread_tmp_19_fu_109922_p1() {
    tmp_19_fu_109922_p1 = t2_reg_5925.read().range(3-1, 0);
}

void bmm_top::thread_tmp_1_fu_109871_p2() {
    tmp_1_fu_109871_p2 = (!j_reg_4378.read().is_01() || !rowSize_cast_reg_113434.read().is_01())? sc_lv<1>(): (sc_bigint<32>(j_reg_4378.read()) < sc_bigint<32>(rowSize_cast_reg_113434.read()));
}

void bmm_top::thread_tmp_21_fu_109963_p1() {
    tmp_21_fu_109963_p1 = k_1_reg_5936.read().range(7-1, 0);
}

void bmm_top::thread_tmp_23_fu_111827_p1() {
    tmp_23_fu_111827_p1 = k_5_reg_108987.read().range(7-1, 0);
}

void bmm_top::thread_tmp_24_fu_111778_p1() {
    tmp_24_fu_111778_p1 = t1_reg_107774.read().range(7-1, 0);
}

void bmm_top::thread_tmp_25_fu_111070_p1() {
    tmp_25_fu_111070_p1 = t3_reg_57459.read().range(3-1, 0);
}

void bmm_top::thread_tmp_27_fu_111111_p1() {
    tmp_27_fu_111111_p1 = k_3_reg_57449.read().range(7-1, 0);
}

void bmm_top::thread_tmp_28_fu_111831_p1() {
    tmp_28_fu_111831_p1 = t_reg_109010.read().range(3-1, 0);
}

void bmm_top::thread_tmp_2_fu_109893_p1() {
    tmp_2_fu_109893_p1 = esl_sext<64,32>(curIdx_reg_114105.read());
}

void bmm_top::thread_tmp_3_fu_111793_p2() {
    tmp_3_fu_111793_p2 = (!j_2_reg_108976.read().is_01() || !rowSize_cast_reg_113434.read().is_01())? sc_lv<1>(): (sc_bigint<32>(j_2_reg_108976.read()) < sc_bigint<32>(rowSize_cast_reg_113434.read()));
}

void bmm_top::thread_tmp_4_fu_111026_p2() {
    tmp_4_fu_111026_p2 = (!j_1_reg_57438.read().is_01() || !rowSize_cast_reg_113434.read().is_01())? sc_lv<1>(): (sc_bigint<32>(j_1_reg_57438.read()) < sc_bigint<32>(rowSize_cast_reg_113434.read()));
}

void bmm_top::thread_tmp_5_cast_fu_109934_p1() {
    tmp_5_cast_fu_109934_p1 = esl_zext<32,8>(tmp_5_fu_109926_p3.read());
}

void bmm_top::thread_tmp_5_fu_109926_p3() {
    tmp_5_fu_109926_p3 = esl_concat<3,5>(tmp_19_fu_109922_p1.read(), ap_const_lv5_0);
}

void bmm_top::thread_tmp_6_cast_fu_109946_p1() {
    tmp_6_cast_fu_109946_p1 = esl_zext<32,8>(tmp_6_fu_109938_p3.read());
}

void bmm_top::thread_tmp_6_fu_109938_p3() {
    tmp_6_fu_109938_p3 = esl_concat<3,5>(tmp_19_fu_109922_p1.read(), ap_const_lv5_1F);
}

void bmm_top::thread_tmp_7_fu_111048_p1() {
    tmp_7_fu_111048_p1 = esl_sext<64,32>(curIdx_2_reg_114946.read());
}

void bmm_top::thread_tmp_8_fu_111841_p1() {
    tmp_8_fu_111841_p1 = esl_sext<64,32>(curIdx_1_reg_115272.read());
}

void bmm_top::thread_tmp_9_cast_fu_111082_p1() {
    tmp_9_cast_fu_111082_p1 = esl_zext<32,8>(tmp_9_fu_111074_p3.read());
}

void bmm_top::thread_tmp_9_fu_111074_p3() {
    tmp_9_fu_111074_p3 = esl_concat<3,5>(tmp_25_fu_111070_p1.read(), ap_const_lv5_0);
}

void bmm_top::thread_tmp_fu_109471_p2() {
    tmp_fu_109471_p2 = (!rowIdx_reg_2946.read().is_01() || !blockSize_read_reg_113427.read().is_01())? sc_lv<1>(): (sc_bigint<32>(rowIdx_reg_2946.read()) < sc_bigint<32>(blockSize_read_reg_113427.read()));
}

void bmm_top::thread_tmp_s_fu_110620_p2() {
    tmp_s_fu_110620_p2 = (!k_1_reg_5936.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(k_1_reg_5936.read()) + sc_biguint<32>(ap_const_lv32_1));
}

}

