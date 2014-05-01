; ModuleID = '/home/raghu/work/projects/dma3/hls/fe_top/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=3 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=7 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str3 = private unnamed_addr constant [20 x i8] c"-bus_bundle CONTROL\00", align 1 ; [#uses=1 type=[20 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [7 x i8] c"fe_top\00"    ; [#uses=1 type=[7 x i8]*]

; [#uses=0]
define void @fe_top(i32* %start, i32* %idle, i32* %done) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %start) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %idle) nounwind, !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %done) nounwind, !map !15
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !19), !dbg !29 ; [debug line = 2:36] [debug variable = start]
  call void @llvm.dbg.value(metadata !{i32* %idle}, i64 0, metadata !30), !dbg !31 ; [debug line = 2:65] [debug variable = idle]
  call void @llvm.dbg.value(metadata !{i32* %done}, i64 0, metadata !32), !dbg !33 ; [debug line = 2:93] [debug variable = done]
  call void (...)* @_ssdm_op_SpecWire(i32* %start, [8 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !34 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecWire(i32* %idle, [8 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !36 ; [debug line = 5:1]
  call void (...)* @_ssdm_op_SpecWire(i32* %done, [8 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !37 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [20 x i8]* @p_str3) nounwind, !dbg !38 ; [debug line = 7:1]
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %start, i32 0) nounwind, !dbg !39 ; [debug line = 8:2]
  br label %._crit_edge, !dbg !40                 ; [debug line = 9:2]

._crit_edge:                                      ; preds = %._crit_edge, %0
  %idle_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %idle) nounwind, !dbg !40 ; [#uses=1 type=i32] [debug line = 9:2]
  %tmp = icmp eq i32 %idle_read, 0, !dbg !40      ; [#uses=1 type=i1] [debug line = 9:2]
  br i1 %tmp, label %._crit_edge, label %1, !dbg !40 ; [debug line = 9:2]

; <label>:1                                       ; preds = %._crit_edge
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %start, i32 -1) nounwind, !dbg !41 ; [debug line = 10:2]
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %start, i32 0) nounwind, !dbg !42 ; [debug line = 11:2]
  br label %._crit_edge2, !dbg !43                ; [debug line = 12:2]

._crit_edge2:                                     ; preds = %._crit_edge1, %1
  %idle_read_1 = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %idle) nounwind, !dbg !43 ; [#uses=1 type=i32] [debug line = 12:2]
  %tmp_1 = icmp eq i32 %idle_read_1, 0, !dbg !43  ; [#uses=1 type=i1] [debug line = 12:2]
  br i1 %tmp_1, label %2, label %._crit_edge1, !dbg !43 ; [debug line = 12:2]

; <label>:2                                       ; preds = %._crit_edge2
  %done_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %done) nounwind, !dbg !43 ; [#uses=1 type=i32] [debug line = 12:2]
  %phitmp = icmp eq i32 %done_read, 0, !dbg !43   ; [#uses=1 type=i1] [debug line = 12:2]
  br label %._crit_edge1, !dbg !43                ; [debug line = 12:2]

._crit_edge1:                                     ; preds = %2, %._crit_edge2
  %tmp_2 = phi i1 [ %phitmp, %2 ], [ false, %._crit_edge2 ], !dbg !43 ; [#uses=1 type=i1] [debug line = 12:2]
  br i1 %tmp_2, label %._crit_edge2, label %3, !dbg !43 ; [debug line = 12:2]

; <label>:3                                       ; preds = %._crit_edge1
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %start, i32 0) nounwind, !dbg !44 ; [debug line = 13:2]
  ret void, !dbg !45                              ; [debug line = 14:1]
}

; [#uses=3]
define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

; [#uses=3]
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

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_Write.ap_none.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

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
!10 = metadata !{metadata !"start", metadata !5, metadata !"unsigned int"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 31, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"idle", metadata !5, metadata !"unsigned int"}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 31, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"done", metadata !5, metadata !"unsigned int"}
!19 = metadata !{i32 786689, metadata !20, metadata !"start", metadata !21, i32 16777218, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 786478, i32 0, metadata !21, metadata !"fe_top", metadata !"fe_top", metadata !"_Z6fe_topPVjS0_S0_", metadata !21, i32 2, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32*)* @fe_top, null, null, metadata !27, i32 3} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786473, metadata !"fe_top/fe_top.cpp", metadata !"/home/raghu/work/projects/dma3", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24, metadata !24, metadata !24}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_volatile_type ]
!26 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!29 = metadata !{i32 2, i32 36, metadata !20, null}
!30 = metadata !{i32 786689, metadata !20, metadata !"idle", metadata !21, i32 33554434, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 2, i32 65, metadata !20, null}
!32 = metadata !{i32 786689, metadata !20, metadata !"done", metadata !21, i32 50331650, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 2, i32 93, metadata !20, null}
!34 = metadata !{i32 4, i32 1, metadata !35, null}
!35 = metadata !{i32 786443, metadata !20, i32 3, i32 1, metadata !21, i32 0} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 5, i32 1, metadata !35, null}
!37 = metadata !{i32 6, i32 1, metadata !35, null}
!38 = metadata !{i32 7, i32 1, metadata !35, null}
!39 = metadata !{i32 8, i32 2, metadata !35, null}
!40 = metadata !{i32 9, i32 2, metadata !35, null}
!41 = metadata !{i32 10, i32 2, metadata !35, null}
!42 = metadata !{i32 11, i32 2, metadata !35, null}
!43 = metadata !{i32 12, i32 2, metadata !35, null}
!44 = metadata !{i32 13, i32 2, metadata !35, null}
!45 = metadata !{i32 14, i32 1, metadata !35, null}
