; ModuleID = '/home/raghu/work/projects/dma3/hls/fe_top/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str3 = private unnamed_addr constant [20 x i8] c"-bus_bundle CONTROL\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [7 x i8] c"fe_top\00"

define void @fe_top(i32* %start, i32* %idle, i32* %done) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %start) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %idle) nounwind, !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %done) nounwind, !map !15
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %start, [8 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %idle, [8 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %done, [8 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [20 x i8]* @p_str3) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %start, i32 0) nounwind
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge, %0
  %idle_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %idle) nounwind
  %tmp = icmp eq i32 %idle_read, 0
  br i1 %tmp, label %._crit_edge, label %1

; <label>:1                                       ; preds = %._crit_edge
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %start, i32 -1) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %start, i32 0) nounwind
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %._crit_edge1, %1
  %idle_read_1 = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %idle) nounwind
  %tmp_1 = icmp eq i32 %idle_read_1, 0
  br i1 %tmp_1, label %2, label %._crit_edge1

; <label>:2                                       ; preds = %._crit_edge2
  %done_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %done) nounwind
  %phitmp = icmp eq i32 %done_read, 0
  br label %._crit_edge1

._crit_edge1:                                     ; preds = %2, %._crit_edge2
  %tmp_2 = phi i1 [ %phitmp, %2 ], [ false, %._crit_edge2 ]
  br i1 %tmp_2, label %._crit_edge2, label %3

; <label>:3                                       ; preds = %._crit_edge1
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %start, i32 0) nounwind
  ret void
}

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak void @_ssdm_op_Write.ap_none.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0
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
