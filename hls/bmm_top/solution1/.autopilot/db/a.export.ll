; ModuleID = '/home/raghu/work/projects/dma3/hls/bmm_top/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"AXI4M\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str4 = private unnamed_addr constant [20 x i8] c"-bus_bundle CONTROL\00", align 1
@p_str5 = private unnamed_addr constant [6 x i8] c"ap_hs\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
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

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define void @bmm_top(i32* %b1, i32* %b2, i32* %b3, i32 %blockSize) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %b1), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %b2), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %b3), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %blockSize) nounwind, !map !21
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  %blockSize_read = call i32 @_ssdm_op_Read.ap_hs.i32(i32 %blockSize)
  call void (...)* @_ssdm_op_SpecBus(i32* %b1, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %b1, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecBus(i32* %b2, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %b2, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecBus(i32* %b3, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %b3, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [20 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %blockSize, [6 x i8]* @p_str5, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 %blockSize, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [20 x i8]* @p_str4) nounwind
  %cast = zext i32 %blockSize_read to i64
  %bound = mul i64 %cast, %cast
  br label %1

; <label>:1                                       ; preds = %0, %7
  %indvar_flatten = phi i64 [ 0, %0 ], [ %indvar_flatten_next, %7 ]
  %i = phi i32 [ 0, %0 ], [ %i_mid2, %7 ]
  %j = phi i32 [ 0, %0 ], [ %j_1, %7 ]
  %exitcond_flatten = icmp eq i64 %indvar_flatten, %bound
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 -8589934591, i64 0)
  %indvar_flatten_next = add i64 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %8, label %.preheader1

; <label>:2                                       ; preds = %6, %.preheader1
  %k = phi i32 [ %k_1_3, %6 ], [ 0, %.preheader1 ]
  %tmpVal = phi i32 [ %tmpVal_1_3, %6 ], [ 0, %.preheader1 ]
  %exitcond = icmp eq i32 %k, %blockSize_read
  br i1 %exitcond, label %7, label %3

; <label>:3                                       ; preds = %2
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 0, i64 0)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind
  %tmp_6_cast4 = sext i32 %k to i40
  %tmp_7 = add i40 %tmp_5_cast, %tmp_6_cast4
  %tmp_7_cast = sext i40 %tmp_7 to i64
  %b1_addr = getelementptr i32* %b1, i64 %tmp_7_cast
  %b1_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b1_addr, i32 1)
  %b1_addr_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b1_addr)
  %tmp_8 = call i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32 %k, i7 0)
  %tmp_8_cast = sext i39 %tmp_8 to i40
  %tmp_9 = add i40 %tmp_8_cast, %tmp_3_cast
  %tmp_9_cast = sext i40 %tmp_9 to i64
  %b2_addr = getelementptr i32* %b2, i64 %tmp_9_cast
  %b2_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b2_addr, i32 1)
  %b2_addr_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b2_addr)
  %tmp_s = mul nsw i32 %b2_addr_read, %b1_addr_read
  %tmpVal_1 = add nsw i32 %tmp_s, %tmpVal
  %empty_31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_2) nounwind
  %tmp = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %k, i32 1, i32 31)
  %k_1_s = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp, i1 true)
  %exitcond_1 = icmp eq i32 %k_1_s, %blockSize_read
  br i1 %exitcond_1, label %7, label %4

; <label>:4                                       ; preds = %3
  %tmp_6_1_cast3 = sext i32 %k_1_s to i40
  %tmp_1 = add i40 %tmp_5_cast, %tmp_6_1_cast3
  %tmp_11_cast = sext i40 %tmp_1 to i64
  %b1_addr_1 = getelementptr i32* %b1, i64 %tmp_11_cast
  %b1_load_1_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b1_addr_1, i32 1)
  %b1_addr_1_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b1_addr_1)
  %tmp_3 = call i39 @_ssdm_op_BitConcatenate.i39.i31.i8(i31 %tmp, i8 -128)
  %tmp_12_cast = sext i39 %tmp_3 to i40
  %tmp_6 = add i40 %tmp_12_cast, %tmp_3_cast
  %tmp_13_cast = sext i40 %tmp_6 to i64
  %b2_addr_1 = getelementptr i32* %b2, i64 %tmp_13_cast
  %b2_load_1_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b2_addr_1, i32 1)
  %b2_addr_1_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b2_addr_1)
  %tmp_7_1 = mul nsw i32 %b2_addr_1_read, %b1_addr_1_read
  %tmpVal_1_1 = add nsw i32 %tmp_7_1, %tmpVal_1
  %tmp_13 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %k, i32 2, i32 31)
  %k_1_1 = call i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30 %tmp_13, i2 -2)
  %exitcond_2 = icmp eq i32 %k_1_1, %blockSize_read
  br i1 %exitcond_2, label %7, label %5

; <label>:5                                       ; preds = %4
  %tmp_6_2_cast2 = sext i32 %k_1_1 to i40
  %tmp_10 = add i40 %tmp_5_cast, %tmp_6_2_cast2
  %tmp_15_cast = sext i40 %tmp_10 to i64
  %b1_addr_2 = getelementptr i32* %b1, i64 %tmp_15_cast
  %b1_load_2_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b1_addr_2, i32 1)
  %b1_addr_2_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b1_addr_2)
  %tmp_11 = call i39 @_ssdm_op_BitConcatenate.i39.i30.i9(i30 %tmp_13, i9 -256)
  %tmp_16_cast = sext i39 %tmp_11 to i40
  %tmp_12 = add i40 %tmp_16_cast, %tmp_3_cast
  %tmp_17_cast = sext i40 %tmp_12 to i64
  %b2_addr_2 = getelementptr i32* %b2, i64 %tmp_17_cast
  %b2_load_2_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b2_addr_2, i32 1)
  %b2_addr_2_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b2_addr_2)
  %tmp_7_2 = mul nsw i32 %b2_addr_2_read, %b1_addr_2_read
  %tmpVal_1_2 = add nsw i32 %tmp_7_2, %tmpVal_1_1
  %k_1_2 = call i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30 %tmp_13, i2 -1)
  %exitcond_3 = icmp eq i32 %k_1_2, %blockSize_read
  br i1 %exitcond_3, label %7, label %6

; <label>:6                                       ; preds = %5
  %tmp_6_3_cast1 = sext i32 %k_1_2 to i40
  %tmp_15 = add i40 %tmp_5_cast, %tmp_6_3_cast1
  %tmp_21_cast = sext i40 %tmp_15 to i64
  %b1_addr_3 = getelementptr i32* %b1, i64 %tmp_21_cast
  %b1_load_3_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b1_addr_3, i32 1)
  %b1_addr_3_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b1_addr_3)
  %tmp_16 = call i39 @_ssdm_op_BitConcatenate.i39.i30.i9(i30 %tmp_13, i9 -128)
  %tmp_22_cast = sext i39 %tmp_16 to i40
  %tmp_17 = add i40 %tmp_22_cast, %tmp_3_cast
  %tmp_23_cast = sext i40 %tmp_17 to i64
  %b2_addr_3 = getelementptr i32* %b2, i64 %tmp_23_cast
  %b2_load_3_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b2_addr_3, i32 1)
  %b2_addr_3_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b2_addr_3)
  %tmp_7_3 = mul nsw i32 %b2_addr_3_read, %b1_addr_3_read
  %tmpVal_1_3 = add nsw i32 %tmp_7_3, %tmpVal_1_2
  %k_1_3 = add nsw i32 %k, 4
  br label %2

; <label>:7                                       ; preds = %5, %4, %3, %2
  %tmpVal_lcssa = phi i32 [ %tmpVal, %2 ], [ %tmpVal_1, %3 ], [ %tmpVal_1_1, %4 ], [ %tmpVal_1_2, %5 ]
  %tmp_14 = add i40 %tmp_5_cast, %tmp_3_cast
  %tmp_19_cast = sext i40 %tmp_14 to i64
  %b3_addr = getelementptr i32* %b3, i64 %tmp_19_cast
  %b3_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b3_addr, i32 1)
  %b3_addr_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b3_addr)
  %tmp_4 = add nsw i32 %b3_addr_read, %tmpVal_lcssa
  %b3_addr_req = call i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32* %b3_addr, i32 1)
  call void @_ssdm_op_Write.ap_bus.volatile.i32P(i32* %b3_addr, i32 %tmp_4)
  %j_1 = add nsw i32 %j_mid2, 1
  br label %1

.preheader1:                                      ; preds = %1
  %exitcond1 = icmp eq i32 %j, %blockSize_read
  %j_mid2 = select i1 %exitcond1, i32 0, i32 %j
  %i_s = add nsw i32 %i, 1
  %i_mid2 = select i1 %exitcond1, i32 %i_s, i32 %i
  %tmp_5 = call i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32 %i_mid2, i7 0)
  %tmp_5_cast = sext i39 %tmp_5 to i40
  %tmp_3_cast = sext i32 %j_mid2 to i40
  br label %2

; <label>:8                                       ; preds = %1
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32, i7) nounwind readnone {
entry:
  %empty = zext i32 %0 to i39
  %empty_32 = zext i7 %1 to i39
  %empty_33 = trunc i39 %empty to i32
  %empty_34 = call i32 @_ssdm_op_PartSelect.i32.i39.i32.i32(i39 %empty_32, i32 7, i32 38)
  %empty_35 = or i32 %empty_33, %empty_34
  %empty_36 = call i39 @_ssdm_op_PartSet.i39.i39.i32.i32.i32(i39 %empty_32, i32 %empty_35, i32 7, i32 38)
  ret i39 %empty_36
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_37 = trunc i32 %empty to i31
  ret i31 %empty_37
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone {
entry:
  %empty = zext i31 %0 to i32
  %empty_38 = zext i1 %1 to i32
  %empty_39 = trunc i32 %empty to i31
  %empty_40 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %empty_38, i32 1, i32 31)
  %empty_41 = or i31 %empty_39, %empty_40
  %empty_42 = call i32 @_ssdm_op_PartSet.i32.i32.i31.i32.i32(i32 %empty_38, i31 %empty_41, i32 1, i32 31)
  ret i32 %empty_42
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_43 = trunc i32 %empty to i30
  ret i30 %empty_43
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i30.i1.i1(i30, i1, i1) nounwind readnone {
entry:
  %empty = zext i1 %1 to i2
  %empty_44 = zext i1 %2 to i2
  %empty_45 = trunc i2 %empty to i1
  %empty_46 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %empty_44, i32 1)
  %empty_47 = or i1 %empty_45, %empty_46
  %empty_48 = call i2 @_ssdm_op_PartSet.i2.i2.i1.i32.i32(i2 %empty_44, i1 %empty_47, i32 1, i32 1)
  %empty_49 = zext i30 %0 to i32
  %empty_50 = zext i2 %empty_48 to i32
  %empty_51 = trunc i32 %empty_49 to i30
  %empty_52 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %empty_50, i32 2, i32 31)
  %empty_53 = or i30 %empty_51, %empty_52
  %empty_54 = call i32 @_ssdm_op_PartSet.i32.i32.i30.i32.i32(i32 %empty_50, i30 %empty_53, i32 2, i32 31)
  ret i32 %empty_54
}

define weak i39 @_ssdm_op_BitConcatenate.i39.i31.i8(i31, i8) nounwind readnone {
entry:
  %empty = zext i31 %0 to i39
  %empty_55 = zext i8 %1 to i39
  %empty_56 = trunc i39 %empty to i31
  %empty_57 = call i31 @_ssdm_op_PartSelect.i31.i39.i32.i32(i39 %empty_55, i32 8, i32 38)
  %empty_58 = or i31 %empty_56, %empty_57
  %empty_59 = call i39 @_ssdm_op_PartSet.i39.i39.i31.i32.i32(i39 %empty_55, i31 %empty_58, i32 8, i32 38)
  ret i39 %empty_59
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone {
entry:
  %empty = zext i30 %0 to i32
  %empty_60 = zext i2 %1 to i32
  %empty_61 = trunc i32 %empty to i30
  %empty_62 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %empty_60, i32 2, i32 31)
  %empty_63 = or i30 %empty_61, %empty_62
  %empty_64 = call i32 @_ssdm_op_PartSet.i32.i32.i30.i32.i32(i32 %empty_60, i30 %empty_63, i32 2, i32 31)
  ret i32 %empty_64
}

define weak i39 @_ssdm_op_BitConcatenate.i39.i30.i1.i1.i7(i30, i1, i1, i7) nounwind readnone {
entry:
  %empty = zext i1 %2 to i8
  %empty_65 = zext i7 %3 to i8
  %empty_66 = trunc i8 %empty to i1
  %empty_67 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %empty_65, i32 7)
  %empty_68 = or i1 %empty_66, %empty_67
  %empty_69 = call i8 @_ssdm_op_PartSet.i8.i8.i1.i32.i32(i8 %empty_65, i1 %empty_68, i32 7, i32 7)
  %empty_70 = zext i1 %1 to i9
  %empty_71 = zext i8 %empty_69 to i9
  %empty_72 = trunc i9 %empty_70 to i1
  %empty_73 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %empty_71, i32 8)
  %empty_74 = or i1 %empty_72, %empty_73
  %empty_75 = call i9 @_ssdm_op_PartSet.i9.i9.i1.i32.i32(i9 %empty_71, i1 %empty_74, i32 8, i32 8)
  %empty_76 = zext i30 %0 to i39
  %empty_77 = zext i9 %empty_75 to i39
  %empty_78 = trunc i39 %empty_76 to i30
  %empty_79 = call i30 @_ssdm_op_PartSelect.i30.i39.i32.i32(i39 %empty_77, i32 9, i32 38)
  %empty_80 = or i30 %empty_78, %empty_79
  %empty_81 = call i39 @_ssdm_op_PartSet.i39.i39.i30.i32.i32(i39 %empty_77, i30 %empty_80, i32 9, i32 38)
  ret i39 %empty_81
}

define weak i39 @_ssdm_op_BitConcatenate.i39.i30.i9(i30, i9) nounwind readnone {
entry:
  %empty = zext i30 %0 to i39
  %empty_82 = zext i9 %1 to i39
  %empty_83 = trunc i39 %empty to i30
  %empty_84 = call i30 @_ssdm_op_PartSelect.i30.i39.i32.i32(i39 %empty_82, i32 9, i32 38)
  %empty_85 = or i30 %empty_83, %empty_84
  %empty_86 = call i39 @_ssdm_op_PartSet.i39.i39.i30.i32.i32(i39 %empty_82, i30 %empty_85, i32 9, i32 38)
  ret i39 %empty_86
}

define weak i32 @_ssdm_op_Read.ap_hs.i32(i32) {
entry:
  ret i32 %0
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

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i39.i32.i32(i39, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.select.i39(i39 %0, i32 %1, i32 %2)
  %empty_87 = trunc i39 %empty to i32
  ret i32 %empty_87
}

define weak i39 @_ssdm_op_PartSet.i39.i39.i32.i32.i32(i39, i32, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.set.i39.i32(i39 %0, i32 %1, i32 %2, i32 %3)
  ret i39 %empty
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i31.i32.i32(i32, i31, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i31(i32 %0, i31 %1, i32 %2, i32 %3)
  ret i32 %empty
}

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

define weak i2 @_ssdm_op_PartSet.i2.i2.i1.i32.i32(i2, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i2 @llvm.part.set.i2.i1(i2 %0, i1 %1, i32 %2, i32 %3)
  ret i2 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2
  %empty_88 = shl i2 1, %empty
  %empty_89 = and i2 %0, %empty_88
  %empty_90 = icmp ne i2 %empty_89, 0
  ret i1 %empty_90
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i30.i32.i32(i32, i30, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i30(i32 %0, i30 %1, i32 %2, i32 %3)
  ret i32 %empty
}

define weak i31 @_ssdm_op_PartSelect.i31.i39.i32.i32(i39, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.select.i39(i39 %0, i32 %1, i32 %2)
  %empty_91 = trunc i39 %empty to i31
  ret i31 %empty_91
}

define weak i39 @_ssdm_op_PartSet.i39.i39.i31.i32.i32(i39, i31, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.set.i39.i31(i39 %0, i31 %1, i32 %2, i32 %3)
  ret i39 %empty
}

declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSet.i8.i8.i1.i32.i32(i8, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.set.i8.i1(i8 %0, i1 %1, i32 %2, i32 %3)
  ret i8 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_92 = shl i8 1, %empty
  %empty_93 = and i8 %0, %empty_92
  %empty_94 = icmp ne i8 %empty_93, 0
  ret i1 %empty_94
}

declare i1 @_ssdm_op_PartSelect.i1.i9.i32.i32(i9, i32, i32) nounwind readnone

define weak i9 @_ssdm_op_PartSet.i9.i9.i1.i32.i32(i9, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.set.i9.i1(i9 %0, i1 %1, i32 %2, i32 %3)
  ret i9 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_95 = shl i9 1, %empty
  %empty_96 = and i9 %0, %empty_95
  %empty_97 = icmp ne i9 %empty_96, 0
  ret i1 %empty_97
}

define weak i30 @_ssdm_op_PartSelect.i30.i39.i32.i32(i39, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.select.i39(i39 %0, i32 %1, i32 %2)
  %empty_98 = trunc i39 %empty to i30
  ret i30 %empty_98
}

define weak i39 @_ssdm_op_PartSet.i39.i39.i30.i32.i32(i39, i30, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.set.i39.i30(i39 %0, i30 %1, i32 %2, i32 %3)
  ret i39 %empty
}

declare i39 @llvm.part.select.i39(i39, i32, i32) nounwind readnone

declare i39 @llvm.part.set.i39.i32(i39, i32, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i31(i32, i31, i32, i32) nounwind readnone

declare i2 @llvm.part.set.i2.i1(i2, i1, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i30(i32, i30, i32, i32) nounwind readnone

declare i39 @llvm.part.set.i39.i31(i39, i31, i32, i32) nounwind readnone

declare i8 @llvm.part.set.i8.i1(i8, i1, i32, i32) nounwind readnone

declare i9 @llvm.part.set.i9.i1(i9, i1, i32, i32) nounwind readnone

declare i39 @llvm.part.set.i39.i30(i39, i30, i32, i32) nounwind readnone

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
!12 = metadata !{i32 0, i32 127, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"b2", metadata !11, metadata !"int"}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"b3", metadata !11, metadata !"int"}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 31, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"blockSize", metadata !25, metadata !"int"}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 0, i32 0}
