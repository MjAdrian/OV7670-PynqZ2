// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Block_proc_HH_
#define _Block_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Block_proc : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<11> > inImage_rows_V_out_din;
    sc_in< sc_logic > inImage_rows_V_out_full_n;
    sc_out< sc_logic > inImage_rows_V_out_write;
    sc_out< sc_lv<11> > inImage_cols_V_out_din;
    sc_in< sc_logic > inImage_cols_V_out_full_n;
    sc_out< sc_logic > inImage_cols_V_out_write;


    // Module declarations
    Block_proc(sc_module_name name);
    SC_HAS_PROCESS(Block_proc);

    ~Block_proc();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > inImage_rows_V_out_blk_n;
    sc_signal< sc_logic > inImage_cols_V_out_blk_n;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<11> ap_const_lv11_258;
    static const sc_lv<11> ap_const_lv11_320;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_inImage_cols_V_out_blk_n();
    void thread_inImage_cols_V_out_din();
    void thread_inImage_cols_V_out_write();
    void thread_inImage_rows_V_out_blk_n();
    void thread_inImage_rows_V_out_din();
    void thread_inImage_rows_V_out_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
