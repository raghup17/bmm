; ModuleID = '/home/raghu/work/projects/dma3/hls/simple_top/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"AXI4M\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [11 x i8] c"simple_top\00"

define void @simple_top(i32* %inPtr) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %inPtr) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @str) nounwind
  %i = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecBus(i32* %inPtr, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32* %inPtr, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  store volatile i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i_load = load volatile i32* %i, align 4
  %tmp = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %i_load, i32 5, i32 31)
  %icmp = icmp slt i27 %tmp, 1
  br i1 %icmp, label %2, label %3

; <label>:2                                       ; preds = %1
  %i_load_1 = load volatile i32* %i, align 4
  %tmp_1 = sext i32 %i_load_1 to i64
  %inPtr_addr = getelementptr inbounds i32* %inPtr, i64 %tmp_1
  %inPtr_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %inPtr_addr, i32 1) nounwind
  %inPtr_addr_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %inPtr_addr) nounwind
  %tmp_2 = add nsw i32 %inPtr_addr_read, 10
  %i_load_2 = load volatile i32* %i, align 4
  %tmp_3 = sext i32 %i_load_2 to i64
  %inPtr_addr_1 = getelementptr inbounds i32* %inPtr, i64 %tmp_3
  %inPtr_addr_1_req = call i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32* %inPtr_addr_1, i32 1) nounwind
  call void @_ssdm_op_Write.ap_bus.volatile.i32P(i32* %inPtr_addr_1, i32 %tmp_2) nounwind
  %i_load_3 = load volatile i32* %i, align 4
  %i_1 = add nsw i32 %i_load_3, 1
  store volatile i32 %i_1, i32* %i, align 4
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_SpecBus(...) nounwind {
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

define weak void @_ssdm_op_Write.ap_bus.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_4 = trunc i32 %empty to i27
  ret i27 %empty_4
}

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
