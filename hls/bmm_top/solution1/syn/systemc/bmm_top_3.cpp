#include "bmm_top.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

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

