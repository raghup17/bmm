; ModuleID = '/home/raghu/work/projects/dma3/hls/simple_top/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1 ; [#uses=1 type=[7 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [6 x i8] c"AXI4M\00", align 1 ; [#uses=1 type=[6 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [11 x i8] c"simple_top\00" ; [#uses=1 type=[11 x i8]*]

; [#uses=0]
define void @simple_top(i32* %inPtr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %inPtr) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @str) nounwind
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  call void @llvm.dbg.value(metadata !{i32* %inPtr}, i64 0, metadata !11), !dbg !21 ; [debug line = 5:31] [debug variable = inPtr]
  call void (...)* @_ssdm_op_SpecBus(i32* %inPtr, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !22 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %inPtr, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !24 ; [debug line = 8:1]
  store volatile i32 0, i32* %i, align 4, !dbg !25 ; [debug line = 20:7]
  br label %1, !dbg !25                           ; [debug line = 20:7]

; <label>:1                                       ; preds = %2, %0
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !27), !dbg !25 ; [debug line = 20:7] [debug variable = i]
  %i_load = load volatile i32* %i, align 4, !dbg !25 ; [#uses=1 type=i32] [debug line = 20:7]
  %tmp = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %i_load, i32 5, i32 31), !dbg !25 ; [#uses=1 type=i27] [debug line = 20:7]
  %icmp = icmp slt i27 %tmp, 1, !dbg !25          ; [#uses=1 type=i1] [debug line = 20:7]
  br i1 %icmp, label %2, label %3, !dbg !25       ; [debug line = 20:7]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !27), !dbg !28 ; [debug line = 21:3] [debug variable = i]
  %i_load_1 = load volatile i32* %i, align 4, !dbg !28 ; [#uses=1 type=i32] [debug line = 21:3]
  %tmp_1 = sext i32 %i_load_1 to i64, !dbg !28    ; [#uses=1 type=i64] [debug line = 21:3]
  %inPtr_addr = getelementptr inbounds i32* %inPtr, i64 %tmp_1, !dbg !28 ; [#uses=2 type=i32*] [debug line = 21:3]
  %inPtr_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %inPtr_addr, i32 1) nounwind, !dbg !28 ; [#uses=0 type=i1] [debug line = 21:3]
  %inPtr_addr_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %inPtr_addr) nounwind, !dbg !28 ; [#uses=1 type=i32] [debug line = 21:3]
  %tmp_2 = add nsw i32 %inPtr_addr_read, 10, !dbg !28 ; [#uses=1 type=i32] [debug line = 21:3]
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !27), !dbg !28 ; [debug line = 21:3] [debug variable = i]
  %i_load_2 = load volatile i32* %i, align 4, !dbg !28 ; [#uses=1 type=i32] [debug line = 21:3]
  %tmp_3 = sext i32 %i_load_2 to i64, !dbg !28    ; [#uses=1 type=i64] [debug line = 21:3]
  %inPtr_addr_1 = getelementptr inbounds i32* %inPtr, i64 %tmp_3, !dbg !28 ; [#uses=2 type=i32*] [debug line = 21:3]
  %inPtr_addr_1_req = call i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32* %inPtr_addr_1, i32 1) nounwind, !dbg !28 ; [#uses=0 type=i1] [debug line = 21:3]
  call void @_ssdm_op_Write.ap_bus.volatile.i32P(i32* %inPtr_addr_1, i32 %tmp_2) nounwind, !dbg !28 ; [debug line = 21:3]
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !27), !dbg !30 ; [debug line = 20:18] [debug variable = i]
  %i_load_3 = load volatile i32* %i, align 4, !dbg !30 ; [#uses=1 type=i32] [debug line = 20:18]
  %i_1 = add nsw i32 %i_load_3, 1, !dbg !30       ; [#uses=1 type=i32] [debug line = 20:18]
  call void @llvm.dbg.value(metadata !{i32 %i_1}, i64 0, metadata !27), !dbg !30 ; [debug line = 20:18] [debug variable = i]
  store volatile i32 %i_1, i32* %i, align 4, !dbg !30 ; [debug line = 20:18]
  br label %1, !dbg !30                           ; [debug line = 20:18]

; <label>:3                                       ; preds = %1
  ret void, !dbg !31                              ; [debug line = 24:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecBus(...) nounwind {
entry:
  ret void
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_bus.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_4 = trunc i32 %empty to i27              ; [#uses=1 type=i27]
  ret i27 %empty_4
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"inPtr", metadata !5, metadata !"int"}
!11 = metadata !{i32 786689, metadata !12, metadata !"inPtr", metadata !13, i32 16777221, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!12 = metadata !{i32 786478, i32 0, metadata !13, metadata !"simple_top", metadata !"simple_top", metadata !"_Z10simple_topPVi", metadata !13, i32 5, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @simple_top, null, null, metadata !19, i32 6} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786473, metadata !"simple_top/simple_top.cpp", metadata !"/home/raghu/work/projects/dma3", null} ; [ DW_TAG_file_type ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{null, metadata !16}
!16 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_volatile_type ]
!18 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!21 = metadata !{i32 5, i32 31, metadata !12, null}
!22 = metadata !{i32 7, i32 1, metadata !23, null}
!23 = metadata !{i32 786443, metadata !12, i32 6, i32 1, metadata !13, i32 0} ; [ DW_TAG_lexical_block ]
!24 = metadata !{i32 8, i32 1, metadata !23, null}
!25 = metadata !{i32 20, i32 7, metadata !26, null}
!26 = metadata !{i32 786443, metadata !23, i32 20, i32 2, metadata !13, i32 1} ; [ DW_TAG_lexical_block ]
!27 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !13, i32 13, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!28 = metadata !{i32 21, i32 3, metadata !29, null}
!29 = metadata !{i32 786443, metadata !26, i32 20, i32 23, metadata !13, i32 2} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 20, i32 18, metadata !26, null}
!31 = metadata !{i32 24, i32 1, metadata !23, null}
