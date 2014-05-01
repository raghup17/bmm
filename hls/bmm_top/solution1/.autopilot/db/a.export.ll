; ModuleID = '/home/raghu/work/projects/dma3/hls/bmm_top/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"AXI4M\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str4 = private unnamed_addr constant [20 x i8] c"-bus_bundle CONTROL\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [8 x i8] c"bmm_top\00"

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

define void @bmm_top(i32* %b1, i32* %b2, i32* %b3) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %b1), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %b2), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %b3), !map !17
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecBus(i32* %b1, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %b1, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecBus(i32* %b2, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %b2, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecBus(i32* %b3, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %b3, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [20 x i8]* @p_str4) nounwind
  br label %.loopexit

.loopexit:                                        ; preds = %1, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %1 ]
  %exitcond3 = icmp eq i7 %i, -64
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %i_1 = add i7 %i, 1
  br i1 %exitcond3, label %5, label %.preheader1

.preheader1:                                      ; preds = %.loopexit
  %tmp = trunc i7 %i to i6
  %tmp_7 = call i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6 %tmp, i6 0)
  br label %1

; <label>:1                                       ; preds = %4, %.preheader1
  %j = phi i7 [ %j_1, %4 ], [ 0, %.preheader1 ]
  %exitcond2 = icmp eq i7 %j, -64
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %j_1 = add i7 %j, 1
  br i1 %exitcond2, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %1
  %tmp_2_cast = zext i7 %j to i12
  br label %2

; <label>:2                                       ; preds = %3, %.preheader
  %k = phi i7 [ %k_1, %3 ], [ 0, %.preheader ]
  %tmpVal = phi i32 [ %tmpVal_1, %3 ], [ 0, %.preheader ]
  %exitcond = icmp eq i7 %k, -64
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %k_1 = add i7 %k, 1
  br i1 %exitcond, label %4, label %3

; <label>:3                                       ; preds = %2
  %tmp_5_cast = zext i7 %k to i12
  %tmp_8 = add i12 %tmp_7, %tmp_5_cast
  %tmp_8_cast = zext i12 %tmp_8 to i64
  %b1_addr = getelementptr i32* %b1, i64 %tmp_8_cast
  %b1_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b1_addr, i32 1)
  %b1_addr_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b1_addr)
  %tmp_1 = trunc i7 %k to i6
  %tmp_9 = call i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6 %tmp_1, i6 0)
  %tmp_s = add i12 %tmp_9, %tmp_2_cast
  %tmp_cast = zext i12 %tmp_s to i64
  %b2_addr = getelementptr i32* %b2, i64 %tmp_cast
  %b2_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b2_addr, i32 1)
  %b2_addr_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b2_addr)
  %tmp_6 = mul nsw i32 %b2_addr_read, %b1_addr_read
  %tmpVal_1 = add nsw i32 %tmp_6, %tmpVal
  br label %2

; <label>:4                                       ; preds = %2
  %tmp_4 = add i12 %tmp_7, %tmp_2_cast
  %tmp_4_cast = zext i12 %tmp_4 to i64
  %b3_addr = getelementptr i32* %b3, i64 %tmp_4_cast
  %b3_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b3_addr, i32 1)
  %b3_addr_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b3_addr)
  %tmp_3 = add nsw i32 %b3_addr_read, %tmpVal
  %b3_addr_req = call i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32* %b3_addr, i32 1)
  call void @_ssdm_op_Write.ap_bus.volatile.i32P(i32* %b3_addr, i32 %tmp_3)
  br label %1

; <label>:5                                       ; preds = %.loopexit
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6, i6) nounwind readnone {
entry:
  %empty = zext i6 %0 to i12
  %empty_9 = zext i6 %1 to i12
  %empty_10 = trunc i12 %empty to i6
  %empty_11 = call i6 @_ssdm_op_PartSelect.i6.i12.i32.i32(i12 %empty_9, i32 6, i32 11)
  %empty_12 = or i6 %empty_10, %empty_11
  %empty_13 = call i12 @_ssdm_op_PartSet.i12.i12.i6.i32.i32(i12 %empty_9, i6 %empty_12, i32 6, i32 11)
  ret i12 %empty_13
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

define weak void @_ssdm_op_Write.ap_bus.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32*, i32) {
entry:
  ret i1 true
}

declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

define weak i6 @_ssdm_op_PartSelect.i6.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_14 = trunc i12 %empty to i6
  ret i6 %empty_14
}

define weak i12 @_ssdm_op_PartSet.i12.i12.i6.i32.i32(i12, i6, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.set.i12.i6(i12 %0, i6 %1, i32 %2, i32 %3)
  ret i12 %empty
}

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

declare i12 @llvm.part.set.i12.i6(i12, i6, i32, i32) nounwind readnone

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
!10 = metadata !{metadata !"b1", metadata !11, metadata !"int"}
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 0, i32 63, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"b2", metadata !11, metadata !"int"}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"b3", metadata !11, metadata !"int"}
