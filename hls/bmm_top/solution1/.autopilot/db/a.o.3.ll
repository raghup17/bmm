; ModuleID = '/home/raghu/work/projects/dma3/hls/bmm_top/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1 ; [#uses=3 type=[7 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=28 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [6 x i8] c"AXI4M\00", align 1 ; [#uses=3 type=[6 x i8]*]
@p_str3 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=2 type=[10 x i8]*]
@p_str4 = private unnamed_addr constant [20 x i8] c"-bus_bundle CONTROL\00", align 1 ; [#uses=2 type=[20 x i8]*]
@p_str5 = private unnamed_addr constant [6 x i8] c"ap_hs\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [8 x i8] c"bmm_top\00"   ; [#uses=1 type=[8 x i8]*]

; [#uses=3]
define weak void @_ssdm_op_SpecBus(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=27]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
define void @bmm_top(i32* %b1, i32* %b2, i32* %b3, i32 %blockSize) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %b1), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %b2), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %b3), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %blockSize) nounwind, !map !21
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  %blockSize_read = call i32 @_ssdm_op_Read.ap_hs.i32(i32 %blockSize) ; [#uses=6 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32* %b1}, i64 0, metadata !41), !dbg !44 ; [debug line = 4:27] [debug variable = b1]
  call void @llvm.dbg.value(metadata !{i32* %b2}, i64 0, metadata !45), !dbg !46 ; [debug line = 4:54] [debug variable = b2]
  call void @llvm.dbg.value(metadata !{i32* %b3}, i64 0, metadata !47), !dbg !48 ; [debug line = 4:81] [debug variable = b3]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !40 ; [debug line = 4:99] [debug variable = blockSize]
  call void (...)* @_ssdm_op_SpecBus(i32* %b1, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1), !dbg !49 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %b1, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1), !dbg !51 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecBus(i32* %b2, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1), !dbg !52 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %b2, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1), !dbg !53 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecBus(i32* %b3, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1), !dbg !54 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %b3, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1), !dbg !55 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [20 x i8]* @p_str4) nounwind, !dbg !56 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecWire(i32 %blockSize, [6 x i8]* @p_str5, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !57 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 %blockSize, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [20 x i8]* @p_str4) nounwind, !dbg !58 ; [debug line = 14:1]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !59), !dbg !60 ; [debug line = 17:23] [debug variable = bsize]
  %cast = zext i32 %blockSize_read to i64         ; [#uses=2 type=i64]
  %bound = mul i64 %cast, %cast                   ; [#uses=1 type=i64]
  br label %1, !dbg !61                           ; [debug line = 18:7]

; <label>:1                                       ; preds = %7, %0
  %indvar_flatten = phi i64 [ 0, %0 ], [ %indvar_flatten_next, %7 ] ; [#uses=2 type=i64]
  %i = phi i32 [ 0, %0 ], [ %i_mid2, %7 ]         ; [#uses=2 type=i32]
  %j = phi i32 [ 0, %0 ], [ %j_1, %7 ]            ; [#uses=2 type=i32]
  %exitcond_flatten = icmp eq i64 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 -8589934591, i64 0) ; [#uses=0 type=i32]
  %indvar_flatten_next = add i64 %indvar_flatten, 1 ; [#uses=1 type=i64]
  br i1 %exitcond_flatten, label %8, label %.preheader1

; <label>:2                                       ; preds = %.preheader1, %6
  %k = phi i32 [ %k_1_3, %6 ], [ 0, %.preheader1 ] ; [#uses=6 type=i32]
  %tmpVal = phi i32 [ %tmpVal_1_3, %6 ], [ 0, %.preheader1 ] ; [#uses=2 type=i32]
  %exitcond = icmp eq i32 %k, %blockSize_read, !dbg !63 ; [#uses=1 type=i1] [debug line = 21:9]
  br i1 %exitcond, label %7, label %3, !dbg !63   ; [debug line = 21:9]

; <label>:3                                       ; preds = %2
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 0, i64 0) ; [#uses=0 type=i32]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6) nounwind, !dbg !68 ; [#uses=1 type=i32] [debug line = 21:29]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !70 ; [debug line = 23:1]
  %tmp_6_cast4 = sext i32 %k to i40               ; [#uses=1 type=i40]
  %tmp_7 = add i40 %tmp_5_cast, %tmp_6_cast4      ; [#uses=1 type=i40]
  %tmp_7_cast = sext i40 %tmp_7 to i64            ; [#uses=1 type=i64]
  %b1_addr = getelementptr i32* %b1, i64 %tmp_7_cast ; [#uses=2 type=i32*]
  %b1_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b1_addr, i32 1), !dbg !71 ; [#uses=0 type=i1] [debug line = 24:2]
  %b1_addr_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b1_addr), !dbg !71 ; [#uses=1 type=i32] [debug line = 24:2]
  %tmp_8 = call i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32 %k, i7 0) ; [#uses=1 type=i39]
  %tmp_8_cast = sext i39 %tmp_8 to i40            ; [#uses=1 type=i40]
  %tmp_9 = add i40 %tmp_8_cast, %tmp_3_cast       ; [#uses=1 type=i40]
  %tmp_9_cast = sext i40 %tmp_9 to i64            ; [#uses=1 type=i64]
  %b2_addr = getelementptr i32* %b2, i64 %tmp_9_cast ; [#uses=2 type=i32*]
  %b2_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b2_addr, i32 1), !dbg !71 ; [#uses=0 type=i1] [debug line = 24:2]
  %b2_addr_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b2_addr), !dbg !71 ; [#uses=1 type=i32] [debug line = 24:2]
  %tmp_s = mul nsw i32 %b2_addr_read, %b1_addr_read, !dbg !71 ; [#uses=1 type=i32] [debug line = 24:2]
  %tmpVal_1 = add nsw i32 %tmp_s, %tmpVal, !dbg !71 ; [#uses=2 type=i32] [debug line = 24:2]
  %empty_31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_2) nounwind, !dbg !72 ; [#uses=0 type=i32] [debug line = 25:4]
  %tmp = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %k, i32 1, i32 31) ; [#uses=2 type=i31]
  %k_1_s = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp, i1 true), !dbg !73 ; [#uses=2 type=i32] [debug line = 21:23]
  %exitcond_1 = icmp eq i32 %k_1_s, %blockSize_read, !dbg !63 ; [#uses=1 type=i1] [debug line = 21:9]
  br i1 %exitcond_1, label %7, label %4, !dbg !63 ; [debug line = 21:9]

; <label>:4                                       ; preds = %3
  %tmp_6_1_cast3 = sext i32 %k_1_s to i40         ; [#uses=1 type=i40]
  %tmp_1 = add i40 %tmp_5_cast, %tmp_6_1_cast3    ; [#uses=1 type=i40]
  %tmp_11_cast = sext i40 %tmp_1 to i64           ; [#uses=1 type=i64]
  %b1_addr_1 = getelementptr i32* %b1, i64 %tmp_11_cast ; [#uses=2 type=i32*]
  %b1_load_1_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b1_addr_1, i32 1), !dbg !71 ; [#uses=0 type=i1] [debug line = 24:2]
  %b1_addr_1_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b1_addr_1), !dbg !71 ; [#uses=1 type=i32] [debug line = 24:2]
  %tmp_3 = call i39 @_ssdm_op_BitConcatenate.i39.i31.i8(i31 %tmp, i8 -128) ; [#uses=1 type=i39]
  %tmp_12_cast = sext i39 %tmp_3 to i40           ; [#uses=1 type=i40]
  %tmp_6 = add i40 %tmp_12_cast, %tmp_3_cast      ; [#uses=1 type=i40]
  %tmp_13_cast = sext i40 %tmp_6 to i64           ; [#uses=1 type=i64]
  %b2_addr_1 = getelementptr i32* %b2, i64 %tmp_13_cast ; [#uses=2 type=i32*]
  %b2_load_1_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b2_addr_1, i32 1), !dbg !71 ; [#uses=0 type=i1] [debug line = 24:2]
  %b2_addr_1_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b2_addr_1), !dbg !71 ; [#uses=1 type=i32] [debug line = 24:2]
  %tmp_7_1 = mul nsw i32 %b2_addr_1_read, %b1_addr_1_read, !dbg !71 ; [#uses=1 type=i32] [debug line = 24:2]
  %tmpVal_1_1 = add nsw i32 %tmp_7_1, %tmpVal_1, !dbg !71 ; [#uses=2 type=i32] [debug line = 24:2]
  %tmp_13 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %k, i32 2, i32 31) ; [#uses=4 type=i30]
  %k_1_1 = call i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30 %tmp_13, i2 -2), !dbg !73 ; [#uses=2 type=i32] [debug line = 21:23]
  %exitcond_2 = icmp eq i32 %k_1_1, %blockSize_read, !dbg !63 ; [#uses=1 type=i1] [debug line = 21:9]
  br i1 %exitcond_2, label %7, label %5, !dbg !63 ; [debug line = 21:9]

; <label>:5                                       ; preds = %4
  %tmp_6_2_cast2 = sext i32 %k_1_1 to i40         ; [#uses=1 type=i40]
  %tmp_10 = add i40 %tmp_5_cast, %tmp_6_2_cast2   ; [#uses=1 type=i40]
  %tmp_15_cast = sext i40 %tmp_10 to i64          ; [#uses=1 type=i64]
  %b1_addr_2 = getelementptr i32* %b1, i64 %tmp_15_cast ; [#uses=2 type=i32*]
  %b1_load_2_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b1_addr_2, i32 1), !dbg !71 ; [#uses=0 type=i1] [debug line = 24:2]
  %b1_addr_2_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b1_addr_2), !dbg !71 ; [#uses=1 type=i32] [debug line = 24:2]
  %tmp_11 = call i39 @_ssdm_op_BitConcatenate.i39.i30.i9(i30 %tmp_13, i9 -256) ; [#uses=1 type=i39]
  %tmp_16_cast = sext i39 %tmp_11 to i40          ; [#uses=1 type=i40]
  %tmp_12 = add i40 %tmp_16_cast, %tmp_3_cast     ; [#uses=1 type=i40]
  %tmp_17_cast = sext i40 %tmp_12 to i64          ; [#uses=1 type=i64]
  %b2_addr_2 = getelementptr i32* %b2, i64 %tmp_17_cast ; [#uses=2 type=i32*]
  %b2_load_2_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b2_addr_2, i32 1), !dbg !71 ; [#uses=0 type=i1] [debug line = 24:2]
  %b2_addr_2_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b2_addr_2), !dbg !71 ; [#uses=1 type=i32] [debug line = 24:2]
  %tmp_7_2 = mul nsw i32 %b2_addr_2_read, %b1_addr_2_read, !dbg !71 ; [#uses=1 type=i32] [debug line = 24:2]
  %tmpVal_1_2 = add nsw i32 %tmp_7_2, %tmpVal_1_1, !dbg !71 ; [#uses=2 type=i32] [debug line = 24:2]
  %k_1_2 = call i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30 %tmp_13, i2 -1), !dbg !73 ; [#uses=2 type=i32] [debug line = 21:23]
  %exitcond_3 = icmp eq i32 %k_1_2, %blockSize_read, !dbg !63 ; [#uses=1 type=i1] [debug line = 21:9]
  br i1 %exitcond_3, label %7, label %6, !dbg !63 ; [debug line = 21:9]

; <label>:6                                       ; preds = %5
  %tmp_6_3_cast1 = sext i32 %k_1_2 to i40         ; [#uses=1 type=i40]
  %tmp_15 = add i40 %tmp_5_cast, %tmp_6_3_cast1   ; [#uses=1 type=i40]
  %tmp_21_cast = sext i40 %tmp_15 to i64          ; [#uses=1 type=i64]
  %b1_addr_3 = getelementptr i32* %b1, i64 %tmp_21_cast ; [#uses=2 type=i32*]
  %b1_load_3_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b1_addr_3, i32 1), !dbg !71 ; [#uses=0 type=i1] [debug line = 24:2]
  %b1_addr_3_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b1_addr_3), !dbg !71 ; [#uses=1 type=i32] [debug line = 24:2]
  %tmp_16 = call i39 @_ssdm_op_BitConcatenate.i39.i30.i9(i30 %tmp_13, i9 -128) ; [#uses=1 type=i39]
  %tmp_22_cast = sext i39 %tmp_16 to i40          ; [#uses=1 type=i40]
  %tmp_17 = add i40 %tmp_22_cast, %tmp_3_cast     ; [#uses=1 type=i40]
  %tmp_23_cast = sext i40 %tmp_17 to i64          ; [#uses=1 type=i64]
  %b2_addr_3 = getelementptr i32* %b2, i64 %tmp_23_cast ; [#uses=2 type=i32*]
  %b2_load_3_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b2_addr_3, i32 1), !dbg !71 ; [#uses=0 type=i1] [debug line = 24:2]
  %b2_addr_3_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b2_addr_3), !dbg !71 ; [#uses=1 type=i32] [debug line = 24:2]
  %tmp_7_3 = mul nsw i32 %b2_addr_3_read, %b1_addr_3_read, !dbg !71 ; [#uses=1 type=i32] [debug line = 24:2]
  %tmpVal_1_3 = add nsw i32 %tmp_7_3, %tmpVal_1_2, !dbg !71 ; [#uses=1 type=i32] [debug line = 24:2]
  %k_1_3 = add nsw i32 %k, 4, !dbg !73            ; [#uses=1 type=i32] [debug line = 21:23]
  br label %2, !dbg !73                           ; [debug line = 21:23]

; <label>:7                                       ; preds = %5, %4, %3, %2
  %tmpVal_lcssa = phi i32 [ %tmpVal, %2 ], [ %tmpVal_1, %3 ], [ %tmpVal_1_1, %4 ], [ %tmpVal_1_2, %5 ] ; [#uses=1 type=i32]
  %tmp_14 = add i40 %tmp_5_cast, %tmp_3_cast      ; [#uses=1 type=i40]
  %tmp_19_cast = sext i40 %tmp_14 to i64          ; [#uses=1 type=i64]
  %b3_addr = getelementptr i32* %b3, i64 %tmp_19_cast ; [#uses=4 type=i32*]
  %b3_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b3_addr, i32 1), !dbg !74 ; [#uses=0 type=i1] [debug line = 26:4]
  %b3_addr_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b3_addr), !dbg !74 ; [#uses=1 type=i32] [debug line = 26:4]
  %tmp_4 = add nsw i32 %b3_addr_read, %tmpVal_lcssa, !dbg !74 ; [#uses=1 type=i32] [debug line = 26:4]
  %b3_addr_req = call i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32* %b3_addr, i32 1), !dbg !74 ; [#uses=0 type=i1] [debug line = 26:4]
  call void @_ssdm_op_Write.ap_bus.volatile.i32P(i32* %b3_addr, i32 %tmp_4), !dbg !74 ; [debug line = 26:4]
  %j_1 = add nsw i32 %j_mid2, 1, !dbg !75         ; [#uses=1 type=i32] [debug line = 19:22]
  call void @llvm.dbg.value(metadata !{i32 %j_1}, i64 0, metadata !76), !dbg !75 ; [debug line = 19:22] [debug variable = j]
  br label %1, !dbg !75                           ; [debug line = 19:22]

.preheader1:                                      ; preds = %1
  %exitcond1 = icmp eq i32 %j, %blockSize_read, !dbg !77 ; [#uses=2 type=i1] [debug line = 19:8]
  %j_mid2 = select i1 %exitcond1, i32 0, i32 %j   ; [#uses=2 type=i32]
  %i_s = add nsw i32 %i, 1, !dbg !78              ; [#uses=1 type=i32] [debug line = 18:21]
  %i_mid2 = select i1 %exitcond1, i32 %i_s, i32 %i ; [#uses=2 type=i32]
  %tmp_5 = call i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32 %i_mid2, i7 0) ; [#uses=1 type=i39]
  %tmp_5_cast = sext i39 %tmp_5 to i40            ; [#uses=5 type=i40]
  %tmp_3_cast = sext i32 %j_mid2 to i40, !dbg !63 ; [#uses=5 type=i40] [debug line = 21:9]
  br label %2, !dbg !63                           ; [debug line = 21:9]

; <label>:8                                       ; preds = %1
  ret void, !dbg !79                              ; [debug line = 29:1]
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32, i7) nounwind readnone {
entry:
  %empty = zext i32 %0 to i39                     ; [#uses=1 type=i39]
  %empty_32 = zext i7 %1 to i39                   ; [#uses=2 type=i39]
  %empty_33 = trunc i39 %empty to i32             ; [#uses=1 type=i32]
  %empty_34 = call i32 @_ssdm_op_PartSelect.i32.i39.i32.i32(i39 %empty_32, i32 7, i32 38) ; [#uses=1 type=i32]
  %empty_35 = or i32 %empty_33, %empty_34         ; [#uses=1 type=i32]
  %empty_36 = call i39 @_ssdm_op_PartSet.i39.i39.i32.i32.i32(i39 %empty_32, i32 %empty_35, i32 7, i32 38) ; [#uses=1 type=i39]
  ret i39 %empty_36
}

; [#uses=2]
define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_37 = trunc i32 %empty to i31             ; [#uses=1 type=i31]
  ret i31 %empty_37
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone {
entry:
  %empty = zext i31 %0 to i32                     ; [#uses=1 type=i32]
  %empty_38 = zext i1 %1 to i32                   ; [#uses=2 type=i32]
  %empty_39 = trunc i32 %empty to i31             ; [#uses=1 type=i31]
  %empty_40 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %empty_38, i32 1, i32 31) ; [#uses=1 type=i31]
  %empty_41 = or i31 %empty_39, %empty_40         ; [#uses=1 type=i31]
  %empty_42 = call i32 @_ssdm_op_PartSet.i32.i32.i31.i32.i32(i32 %empty_38, i31 %empty_41, i32 1, i32 31) ; [#uses=1 type=i32]
  ret i32 %empty_42
}

; [#uses=3]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_43 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_43
}

; [#uses=0]
define weak i32 @_ssdm_op_BitConcatenate.i32.i30.i1.i1(i30, i1, i1) nounwind readnone {
entry:
  %empty = zext i1 %1 to i2                       ; [#uses=1 type=i2]
  %empty_44 = zext i1 %2 to i2                    ; [#uses=2 type=i2]
  %empty_45 = trunc i2 %empty to i1               ; [#uses=1 type=i1]
  %empty_46 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %empty_44, i32 1) ; [#uses=1 type=i1]
  %empty_47 = or i1 %empty_45, %empty_46          ; [#uses=1 type=i1]
  %empty_48 = call i2 @_ssdm_op_PartSet.i2.i2.i1.i32.i32(i2 %empty_44, i1 %empty_47, i32 1, i32 1) ; [#uses=1 type=i2]
  %empty_49 = zext i30 %0 to i32                  ; [#uses=1 type=i32]
  %empty_50 = zext i2 %empty_48 to i32            ; [#uses=2 type=i32]
  %empty_51 = trunc i32 %empty_49 to i30          ; [#uses=1 type=i30]
  %empty_52 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %empty_50, i32 2, i32 31) ; [#uses=1 type=i30]
  %empty_53 = or i30 %empty_51, %empty_52         ; [#uses=1 type=i30]
  %empty_54 = call i32 @_ssdm_op_PartSet.i32.i32.i30.i32.i32(i32 %empty_50, i30 %empty_53, i32 2, i32 31) ; [#uses=1 type=i32]
  ret i32 %empty_54
}

; [#uses=1]
define weak i39 @_ssdm_op_BitConcatenate.i39.i31.i8(i31, i8) nounwind readnone {
entry:
  %empty = zext i31 %0 to i39                     ; [#uses=1 type=i39]
  %empty_55 = zext i8 %1 to i39                   ; [#uses=2 type=i39]
  %empty_56 = trunc i39 %empty to i31             ; [#uses=1 type=i31]
  %empty_57 = call i31 @_ssdm_op_PartSelect.i31.i39.i32.i32(i39 %empty_55, i32 8, i32 38) ; [#uses=1 type=i31]
  %empty_58 = or i31 %empty_56, %empty_57         ; [#uses=1 type=i31]
  %empty_59 = call i39 @_ssdm_op_PartSet.i39.i39.i31.i32.i32(i39 %empty_55, i31 %empty_58, i32 8, i32 38) ; [#uses=1 type=i39]
  ret i39 %empty_59
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone {
entry:
  %empty = zext i30 %0 to i32                     ; [#uses=1 type=i32]
  %empty_60 = zext i2 %1 to i32                   ; [#uses=2 type=i32]
  %empty_61 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  %empty_62 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %empty_60, i32 2, i32 31) ; [#uses=1 type=i30]
  %empty_63 = or i30 %empty_61, %empty_62         ; [#uses=1 type=i30]
  %empty_64 = call i32 @_ssdm_op_PartSet.i32.i32.i30.i32.i32(i32 %empty_60, i30 %empty_63, i32 2, i32 31) ; [#uses=1 type=i32]
  ret i32 %empty_64
}

; [#uses=0]
define weak i39 @_ssdm_op_BitConcatenate.i39.i30.i1.i1.i7(i30, i1, i1, i7) nounwind readnone {
entry:
  %empty = zext i1 %2 to i8                       ; [#uses=1 type=i8]
  %empty_65 = zext i7 %3 to i8                    ; [#uses=2 type=i8]
  %empty_66 = trunc i8 %empty to i1               ; [#uses=1 type=i1]
  %empty_67 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %empty_65, i32 7) ; [#uses=1 type=i1]
  %empty_68 = or i1 %empty_66, %empty_67          ; [#uses=1 type=i1]
  %empty_69 = call i8 @_ssdm_op_PartSet.i8.i8.i1.i32.i32(i8 %empty_65, i1 %empty_68, i32 7, i32 7) ; [#uses=1 type=i8]
  %empty_70 = zext i1 %1 to i9                    ; [#uses=1 type=i9]
  %empty_71 = zext i8 %empty_69 to i9             ; [#uses=2 type=i9]
  %empty_72 = trunc i9 %empty_70 to i1            ; [#uses=1 type=i1]
  %empty_73 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %empty_71, i32 8) ; [#uses=1 type=i1]
  %empty_74 = or i1 %empty_72, %empty_73          ; [#uses=1 type=i1]
  %empty_75 = call i9 @_ssdm_op_PartSet.i9.i9.i1.i32.i32(i9 %empty_71, i1 %empty_74, i32 8, i32 8) ; [#uses=1 type=i9]
  %empty_76 = zext i30 %0 to i39                  ; [#uses=1 type=i39]
  %empty_77 = zext i9 %empty_75 to i39            ; [#uses=2 type=i39]
  %empty_78 = trunc i39 %empty_76 to i30          ; [#uses=1 type=i30]
  %empty_79 = call i30 @_ssdm_op_PartSelect.i30.i39.i32.i32(i39 %empty_77, i32 9, i32 38) ; [#uses=1 type=i30]
  %empty_80 = or i30 %empty_78, %empty_79         ; [#uses=1 type=i30]
  %empty_81 = call i39 @_ssdm_op_PartSet.i39.i39.i30.i32.i32(i39 %empty_77, i30 %empty_80, i32 9, i32 38) ; [#uses=1 type=i39]
  ret i39 %empty_81
}

; [#uses=2]
define weak i39 @_ssdm_op_BitConcatenate.i39.i30.i9(i30, i9) nounwind readnone {
entry:
  %empty = zext i30 %0 to i39                     ; [#uses=1 type=i39]
  %empty_82 = zext i9 %1 to i39                   ; [#uses=2 type=i39]
  %empty_83 = trunc i39 %empty to i30             ; [#uses=1 type=i30]
  %empty_84 = call i30 @_ssdm_op_PartSelect.i30.i39.i32.i32(i39 %empty_82, i32 9, i32 38) ; [#uses=1 type=i30]
  %empty_85 = or i30 %empty_83, %empty_84         ; [#uses=1 type=i30]
  %empty_86 = call i39 @_ssdm_op_PartSet.i39.i39.i30.i32.i32(i39 %empty_82, i30 %empty_85, i32 9, i32 38) ; [#uses=1 type=i39]
  ret i39 %empty_86
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_hs.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=9]
define weak i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=9]
define weak i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32*, i32) {
entry:
  ret i1 true
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

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i32 @_ssdm_op_PartSelect.i32.i39.i32.i32(i39, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.select.i39(i39 %0, i32 %1, i32 %2) ; [#uses=1 type=i39]
  %empty_87 = trunc i39 %empty to i32             ; [#uses=1 type=i32]
  ret i32 %empty_87
}

; [#uses=1]
define weak i39 @_ssdm_op_PartSet.i39.i39.i32.i32.i32(i39, i32, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.set.i39.i32(i39 %0, i32 %1, i32 %2, i32 %3) ; [#uses=1 type=i39]
  ret i39 %empty
}

; [#uses=1]
define weak i32 @_ssdm_op_PartSet.i32.i32.i31.i32.i32(i32, i31, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i31(i32 %0, i31 %1, i32 %2, i32 %3) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

; [#uses=1]
define weak i2 @_ssdm_op_PartSet.i2.i2.i1.i32.i32(i2, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i2 @llvm.part.set.i2.i1(i2 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i2]
  ret i2 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2                     ; [#uses=1 type=i2]
  %empty_88 = shl i2 1, %empty                    ; [#uses=1 type=i2]
  %empty_89 = and i2 %0, %empty_88                ; [#uses=1 type=i2]
  %empty_90 = icmp ne i2 %empty_89, 0             ; [#uses=1 type=i1]
  ret i1 %empty_90
}

; [#uses=2]
define weak i32 @_ssdm_op_PartSet.i32.i32.i30.i32.i32(i32, i30, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i30(i32 %0, i30 %1, i32 %2, i32 %3) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
define weak i31 @_ssdm_op_PartSelect.i31.i39.i32.i32(i39, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.select.i39(i39 %0, i32 %1, i32 %2) ; [#uses=1 type=i39]
  %empty_91 = trunc i39 %empty to i31             ; [#uses=1 type=i31]
  ret i31 %empty_91
}

; [#uses=1]
define weak i39 @_ssdm_op_PartSet.i39.i39.i31.i32.i32(i39, i31, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.set.i39.i31(i39 %0, i31 %1, i32 %2, i32 %3) ; [#uses=1 type=i39]
  ret i39 %empty
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=1]
define weak i8 @_ssdm_op_PartSet.i8.i8.i1.i32.i32(i8, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.set.i8.i1(i8 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8                     ; [#uses=1 type=i8]
  %empty_92 = shl i8 1, %empty                    ; [#uses=1 type=i8]
  %empty_93 = and i8 %0, %empty_92                ; [#uses=1 type=i8]
  %empty_94 = icmp ne i8 %empty_93, 0             ; [#uses=1 type=i1]
  ret i1 %empty_94
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i9.i32.i32(i9, i32, i32) nounwind readnone

; [#uses=1]
define weak i9 @_ssdm_op_PartSet.i9.i9.i1.i32.i32(i9, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.set.i9.i1(i9 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i9]
  ret i9 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9                     ; [#uses=1 type=i9]
  %empty_95 = shl i9 1, %empty                    ; [#uses=1 type=i9]
  %empty_96 = and i9 %0, %empty_95                ; [#uses=1 type=i9]
  %empty_97 = icmp ne i9 %empty_96, 0             ; [#uses=1 type=i1]
  ret i1 %empty_97
}

; [#uses=2]
define weak i30 @_ssdm_op_PartSelect.i30.i39.i32.i32(i39, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.select.i39(i39 %0, i32 %1, i32 %2) ; [#uses=1 type=i39]
  %empty_98 = trunc i39 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_98
}

; [#uses=2]
define weak i39 @_ssdm_op_PartSet.i39.i39.i30.i32.i32(i39, i30, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.set.i39.i30(i39 %0, i30 %1, i32 %2, i32 %3) ; [#uses=1 type=i39]
  ret i39 %empty
}

; [#uses=3]
declare i39 @llvm.part.select.i39(i39, i32, i32) nounwind readnone

; [#uses=1]
declare i39 @llvm.part.set.i39.i32(i39, i32, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @llvm.part.set.i32.i31(i32, i31, i32, i32) nounwind readnone

; [#uses=1]
declare i2 @llvm.part.set.i2.i1(i2, i1, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @llvm.part.set.i32.i30(i32, i30, i32, i32) nounwind readnone

; [#uses=1]
declare i39 @llvm.part.set.i39.i31(i39, i31, i32, i32) nounwind readnone

; [#uses=1]
declare i8 @llvm.part.set.i8.i1(i8, i1, i32, i32) nounwind readnone

; [#uses=1]
declare i9 @llvm.part.set.i9.i1(i9, i1, i32, i32) nounwind readnone

; [#uses=1]
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
!27 = metadata !{i32 786689, metadata !28, metadata !"blockSize", metadata !29, i32 67108868, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 786478, i32 0, metadata !29, metadata !"bmm_top", metadata !"bmm_top", metadata !"_Z7bmm_topPA128_ViS1_S1_i", metadata !29, i32 4, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !38, i32 5} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786473, metadata !"bmm_top/bmm_top.cpp", metadata !"/home/raghu/work/projects/dma3", null} ; [ DW_TAG_file_type ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !32, metadata !32, metadata !32, metadata !35}
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4096, i64 32, i32 0, i32 0, metadata !34, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_volatile_type ]
!35 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 127}      ; [ DW_TAG_subrange_type ]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!40 = metadata !{i32 4, i32 99, metadata !28, null}
!41 = metadata !{i32 786689, metadata !28, metadata !"b1", null, i32 4, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 524288, i64 32, i32 0, i32 0, metadata !34, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ]
!43 = metadata !{metadata !37, metadata !37}
!44 = metadata !{i32 4, i32 27, metadata !28, null}
!45 = metadata !{i32 786689, metadata !28, metadata !"b2", null, i32 4, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 4, i32 54, metadata !28, null}
!47 = metadata !{i32 786689, metadata !28, metadata !"b3", null, i32 4, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 4, i32 81, metadata !28, null}
!49 = metadata !{i32 6, i32 1, metadata !50, null}
!50 = metadata !{i32 786443, metadata !28, i32 5, i32 1, metadata !29, i32 0} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 7, i32 1, metadata !50, null}
!52 = metadata !{i32 8, i32 1, metadata !50, null}
!53 = metadata !{i32 9, i32 1, metadata !50, null}
!54 = metadata !{i32 10, i32 1, metadata !50, null}
!55 = metadata !{i32 11, i32 1, metadata !50, null}
!56 = metadata !{i32 12, i32 1, metadata !50, null}
!57 = metadata !{i32 13, i32 1, metadata !50, null}
!58 = metadata !{i32 14, i32 1, metadata !50, null}
!59 = metadata !{i32 786688, metadata !50, metadata !"bsize", metadata !29, i32 17, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 17, i32 23, metadata !50, null}
!61 = metadata !{i32 18, i32 7, metadata !62, null}
!62 = metadata !{i32 786443, metadata !50, i32 18, i32 2, metadata !29, i32 1} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 21, i32 9, metadata !64, null}
!64 = metadata !{i32 786443, metadata !65, i32 21, i32 4, metadata !29, i32 5} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 786443, metadata !66, i32 19, i32 27, metadata !29, i32 4} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786443, metadata !67, i32 19, i32 3, metadata !29, i32 3} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 786443, metadata !62, i32 18, i32 26, metadata !29, i32 2} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 21, i32 29, metadata !69, null}
!69 = metadata !{i32 786443, metadata !64, i32 21, i32 28, metadata !29, i32 6} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 23, i32 1, metadata !69, null}
!71 = metadata !{i32 24, i32 2, metadata !69, null}
!72 = metadata !{i32 25, i32 4, metadata !69, null}
!73 = metadata !{i32 21, i32 23, metadata !64, null}
!74 = metadata !{i32 26, i32 4, metadata !65, null}
!75 = metadata !{i32 19, i32 22, metadata !66, null}
!76 = metadata !{i32 786688, metadata !50, metadata !"j", metadata !29, i32 16, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 19, i32 8, metadata !66, null}
!78 = metadata !{i32 18, i32 21, metadata !62, null}
!79 = metadata !{i32 29, i32 1, metadata !50, null}
