; ModuleID = '/home/raghu/work/projects/dma3/hls/bmm_top/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"AXI4M\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str4 = private unnamed_addr constant [20 x i8] c"-bus_bundle CONTROL\00", align 1
@p_str5 = private unnamed_addr constant [6 x i8] c"ap_hs\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [8 x i8] c"bmm_top\00"

define weak void @_ssdm_op_SpecBus(...) nounwind {
entry:
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

define void @bmm_top(i256* %b1, i256* %b2, i256* %b3, i32 %blockSize) {
  call void (...)* @_ssdm_op_SpecBitsMap(i256* %b1), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i256* %b2), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i256* %b3), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %blockSize) nounwind, !map !21
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  %blockSize_read = call i32 @_ssdm_op_Read.ap_hs.i32(i32 %blockSize)
  call void (...)* @_ssdm_op_SpecBus(i256* %b1, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i256* %b1, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecBus(i256* %b2, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i256* %b2, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecBus(i256* %b3, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i256* %b3, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [20 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %blockSize, [6 x i8]* @p_str5, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 %blockSize, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [20 x i8]* @p_str4) nounwind
  %tmp_7 = shl i32 %blockSize_read, 3
  %tmp_10 = shl i32 %blockSize_read, 1
  %tmp = add i32 %tmp_7, %tmp_10
  %tmp_1 = sext i32 %tmp to i256
  %b1_req = call i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256* %b1, i32 1)
  call void @_ssdm_op_Write.ap_bus.volatile.i256P(i256* %b1, i256 %tmp_1)
  %tmp_11 = shl i32 %blockSize_read, 4
  %tmp_12 = shl i32 %blockSize_read, 2
  %tmp_2 = add i32 %tmp_11, %tmp_12
  %tmp_3 = sext i32 %tmp_2 to i256
  %b2_req = call i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256* %b2, i32 1)
  call void @_ssdm_op_Write.ap_bus.volatile.i256P(i256* %b2, i256 %tmp_3)
  %tmp_13 = shl i32 %blockSize_read, 5
  %tmp_4 = sub i32 %tmp_13, %tmp_10
  %tmp_5 = sext i32 %tmp_4 to i256
  %b3_req = call i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256* %b3, i32 1)
  call void @_ssdm_op_Write.ap_bus.volatile.i256P(i256* %b3, i256 %tmp_5)
  %tmp_6 = mul nsw i32 %blockSize_read, %blockSize_read
  %tmp_s = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %tmp_6, i32 3, i32 31)
  br label %1

; <label>:1                                       ; preds = %branch896, %0
  %i = phi i29 [ 0, %0 ], [ %i_1, %branch896 ]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 536870911, i64 0)
  %exitcond1 = icmp eq i29 %i, %tmp_s
  %i_1 = add i29 %i, 1
  br i1 %exitcond1, label %.preheader1, label %branch896

branch896:                                        ; preds = %1
  %tmp_8 = zext i29 %i to i64
  %b1_addr = getelementptr i256* %b1, i64 %tmp_8
  %curElemA_req = call i1 @_ssdm_op_ReadReq.ap_bus.i256P(i256* %b1_addr, i32 1)
  %curElemA = call i256 @_ssdm_op_Read.ap_bus.volatile.i256P(i256* %b1_addr)
  %b2_addr = getelementptr i256* %b2, i64 %tmp_8
  %curElemB_req = call i1 @_ssdm_op_ReadReq.ap_bus.i256P(i256* %b2_addr, i32 1)
  %curElemB = call i256 @_ssdm_op_Read.ap_bus.volatile.i256P(i256* %b2_addr)
  %b3_addr = getelementptr i256* %b3, i64 %tmp_8
  %curElemC_req = call i1 @_ssdm_op_ReadReq.ap_bus.i256P(i256* %b3_addr, i32 1)
  %curElemC = call i256 @_ssdm_op_Read.ap_bus.volatile.i256P(i256* %b3_addr)
  br label %1

.preheader1:                                      ; preds = %1, %.preheader
  %i5 = phi i29 [ %i_2, %.preheader ], [ 0, %1 ]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 536870911, i64 0)
  %exitcond = icmp eq i29 %i5, %tmp_s
  %i_2 = add i29 %i5, 1
  br i1 %exitcond, label %2, label %.preheader

.preheader:                                       ; preds = %.preheader1
  %tmp_9 = zext i29 %i5 to i64
  %b1_addr_1 = getelementptr i256* %b1, i64 %tmp_9
  %b1_addr_1_req = call i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256* %b1_addr_1, i32 1)
  call void @_ssdm_op_Write.ap_bus.volatile.i256P(i256* %b1_addr_1, i256 0)
  %b2_addr_1 = getelementptr i256* %b2, i64 %tmp_9
  %b2_addr_1_req = call i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256* %b2_addr_1, i32 1)
  call void @_ssdm_op_Write.ap_bus.volatile.i256P(i256* %b2_addr_1, i256 0)
  %b3_addr_1 = getelementptr i256* %b3, i64 %tmp_9
  %b3_addr_1_req = call i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256* %b3_addr_1, i32 1)
  call void @_ssdm_op_Write.ap_bus.volatile.i256P(i256* %b3_addr_1, i256 0)
  br label %.preheader1

; <label>:2                                       ; preds = %.preheader1
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i29
  ret i29 %empty_5
}

define weak i32 @_ssdm_op_Read.ap_hs.i32(i32) {
entry:
  ret i32 %0
}

define weak void @_ssdm_op_Write.ap_bus.volatile.i256P(i256*, i256) {
entry:
  store i256 %1, i256* %0
  ret void
}

define weak i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256*, i32) {
entry:
  ret i1 true
}

define weak i256 @_ssdm_op_Read.ap_bus.volatile.i256P(i256*) {
entry:
  %empty = load i256* %0
  ret i256 %empty
}

define weak i1 @_ssdm_op_ReadReq.ap_bus.i256P(i256*, i32) {
entry:
  ret i1 true
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

declare i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i28.i4(i28, i4) nounwind readnone

declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone

declare i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i27.i5(i27, i5) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 255, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"b1", metadata !11, metadata !"int256"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 2047, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 255, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"b2", metadata !11, metadata !"int256"}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 255, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"b3", metadata !11, metadata !"int256"}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 31, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"blockSize", metadata !25, metadata !"int"}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 0, i32 0}
