# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Adapter definition:
set corename CONTROL
set opts {
    {
        id -1
        name ap_start
        reset_level 1
        sync_rst true
        type scalar
        dir I
        width 1
        mode ap_ctrl
    }
    {
        id -2
        name ap_ready
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 1
        mode ap_ctrl
    }
    {
        id -3
        name ap_done
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 1
        mode ap_ctrl
    }
    {
        id -4
        name ap_idle
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 1
        mode ap_ctrl
    }
}
set portmap { }
set metadata {}
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::axi_slave_int_gen] == "::AESL_LIB_XILADAPTER::axi_slave_int_gen"} {
eval "::AESL_LIB_XILADAPTER::axi_slave_int_gen { \
    corename ${corename} \
    reset_level 1 \
    sync_rst true \
    opts {${opts}} \
    portmap {${portmap}} \
    metadata {${metadata}} \
}"
} else {
puts "@W Can not find gen function '::AESL_LIB_XILADAPTER::axi_slave_int_gen' in the library. Ignored generation of adapter for '${corename}'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name start \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_start \
    op interface \
    ports { start { O 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name idle \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_idle \
    op interface \
    ports { idle { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name done \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_done \
    op interface \
    ports { done { I 32 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -5 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -6 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


