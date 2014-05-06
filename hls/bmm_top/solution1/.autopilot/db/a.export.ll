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
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %blockSize_read, i32 31)
  %p_neg = sub i32 0, %blockSize_read
  %tmp_1 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %p_neg, i32 8, i32 31)
  %p_lshr_cast = zext i24 %tmp_1 to i25
  %p_neg_t = sub i25 0, %p_lshr_cast
  %tmp_12 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %blockSize_read, i32 8, i32 31)
  %p_lshr_f_cast = zext i24 %tmp_12 to i25
  %tmp = select i1 %tmp_14, i25 %p_neg_t, i25 %p_lshr_f_cast
  %tmp_13 = call i23 @_ssdm_op_PartSelect.i23.i25.i32.i32(i25 %tmp, i32 2, i32 24)
  %dim = call i26 @_ssdm_op_BitConcatenate.i26.i23.i3(i23 %tmp_13, i3 0)
  %dim_cast = sext i26 %dim to i32
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i_1, %2 ]
  %tmp_3 = icmp slt i32 %i, %blockSize_read
  br i1 %tmp_3, label %.preheader5, label %3

.preheader5:                                      ; preds = %1, %branch65920
  %t1 = phi i32 [ %t1_1, %branch65920 ], [ 0, %1 ]
  %tmp_4 = icmp slt i32 %t1, %dim_cast
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 33554431, i64 0)
  %t1_1 = add nsw i32 %t1, 1
  br i1 %tmp_4, label %branch65920, label %.preheader4

branch65920:                                      ; preds = %.preheader5
  %tmp_5 = add nsw i32 %t1, %i
  %tmp_6 = sext i32 %tmp_5 to i64
  %b1_addr = getelementptr i256* %b1, i64 %tmp_6
  %curElemA_req = call i1 @_ssdm_op_ReadReq.ap_bus.i256P(i256* %b1_addr, i32 1)
  %curElemA = call i256 @_ssdm_op_Read.ap_bus.volatile.i256P(i256* %b1_addr)
  %b3_addr = getelementptr i256* %b3, i64 %tmp_6
  %curElemC_req = call i1 @_ssdm_op_ReadReq.ap_bus.i256P(i256* %b3_addr, i32 1)
  %curElemC = call i256 @_ssdm_op_Read.ap_bus.volatile.i256P(i256* %b3_addr)
  br label %.preheader5

.preheader4:                                      ; preds = %.preheader3, %.preheader5
  %j = phi i32 [ 0, %.preheader5 ], [ %j_1, %.preheader3 ]
  %tmp_s = icmp slt i32 %j, %blockSize_read
  %j_1 = add nsw i32 %j, 1
  br i1 %tmp_s, label %.preheader3, label %.preheader1

.preheader3:                                      ; preds = %.preheader4, %branch131968
  %t = phi i32 [ %t1_2, %branch131968 ], [ 0, %.preheader4 ]
  %tmp_2 = icmp slt i32 %t, %dim_cast
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 33554431, i64 0)
  %t1_2 = add nsw i32 %t, 1
  br i1 %tmp_2, label %branch131968, label %.preheader4

branch131968:                                     ; preds = %.preheader3
  %tmp_8 = add nsw i32 %t, %j
  %tmp_9 = sext i32 %tmp_8 to i64
  %b2_addr = getelementptr i256* %b2, i64 %tmp_9
  %curElemB_req = call i1 @_ssdm_op_ReadReq.ap_bus.i256P(i256* %b2_addr, i32 1)
  %curElemB = call i256 @_ssdm_op_Read.ap_bus.volatile.i256P(i256* %b2_addr)
  br label %.preheader3

.preheader1:                                      ; preds = %.preheader4, %.preheader.preheader_ifconv
  %t3 = phi i32 [ %t1_3, %.preheader.preheader_ifconv ], [ 0, %.preheader4 ]
  %tmp_7 = icmp slt i32 %t3, %dim_cast
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 33554431, i64 0)
  %t1_3 = add nsw i32 %t3, 1
  br i1 %tmp_7, label %.preheader.preheader_ifconv, label %2

.preheader.preheader_ifconv:                      ; preds = %.preheader1
  %tmp_10 = add nsw i32 %t3, %i
  %tmp_11 = sext i32 %tmp_10 to i64
  %b3_addr_1 = getelementptr i256* %b3, i64 %tmp_11
  %b3_addr_1_req = call i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256* %b3_addr_1, i32 1)
  call void @_ssdm_op_Write.ap_bus.volatile.i256P(i256* %b3_addr_1, i256 0)
  br label %.preheader1

; <label>:2                                       ; preds = %.preheader1
  %i_1 = add nsw i32 %i, %dim_cast
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i26 @_ssdm_op_BitConcatenate.i26.i23.i3(i23, i3) nounwind readnone {
entry:
  %empty = zext i23 %0 to i26
  %empty_13 = zext i3 %1 to i26
  %empty_14 = trunc i26 %empty to i23
  %empty_15 = call i23 @_ssdm_op_PartSelect.i23.i26.i32.i32(i26 %empty_13, i32 3, i32 25)
  %empty_16 = or i23 %empty_14, %empty_15
  %empty_17 = call i26 @_ssdm_op_PartSet.i26.i26.i23.i32.i32(i26 %empty_13, i23 %empty_16, i32 3, i32 25)
  ret i26 %empty_17
}

define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_18 = trunc i32 %empty to i24
  ret i24 %empty_18
}

define weak i23 @_ssdm_op_PartSelect.i23.i25.i32.i32(i25, i32, i32) nounwind readnone {
entry:
  %empty = call i25 @llvm.part.select.i25(i25 %0, i32 %1, i32 %2)
  %empty_19 = trunc i25 %empty to i23
  ret i23 %empty_19
}

define weak i32 @_ssdm_op_Read.ap_hs.i32(i32) {
entry:
  ret i32 %0
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

define weak void @_ssdm_op_Write.ap_bus.volatile.i256P(i256*, i256) {
entry:
  store i256 %1, i256* %0
  ret void
}

define weak i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_20 = and i32 %0, %empty
  %empty_21 = icmp ne i32 %empty_20, 0
  ret i1 %empty_21
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i25 @llvm.part.select.i25(i25, i32, i32) nounwind readnone

define weak i23 @_ssdm_op_PartSelect.i23.i26.i32.i32(i26, i32, i32) nounwind readnone {
entry:
  %empty = call i26 @llvm.part.select.i26(i26 %0, i32 %1, i32 %2)
  %empty_22 = trunc i26 %empty to i23
  ret i23 %empty_22
}

define weak i26 @_ssdm_op_PartSet.i26.i26.i23.i32.i32(i26, i23, i32, i32) nounwind readnone {
entry:
  %empty = call i26 @llvm.part.set.i26.i23(i26 %0, i23 %1, i32 %2, i32 %3)
  ret i26 %empty
}

declare i26 @llvm.part.select.i26(i26, i32, i32) nounwind readnone

declare i26 @llvm.part.set.i26.i23(i26, i23, i32, i32) nounwind readnone

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
