; ModuleID = '/home/raghu/work/projects/dma3/hls/bmm_top/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1 ; [#uses=3 type=[7 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=27 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [6 x i8] c"AXI4M\00", align 1 ; [#uses=3 type=[6 x i8]*]
@p_str3 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=2 type=[10 x i8]*]
@p_str4 = private unnamed_addr constant [20 x i8] c"-bus_bundle CONTROL\00", align 1 ; [#uses=2 type=[20 x i8]*]
@p_str5 = private unnamed_addr constant [6 x i8] c"ap_hs\00", align 1 ; [#uses=1 type=[6 x i8]*]
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

; [#uses=53]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

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
define void @bmm_top(i256* %b1, i256* %b2, i256* %b3, i32 %blockSize) {
  call void (...)* @_ssdm_op_SpecBitsMap(i256* %b1), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i256* %b2), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i256* %b3), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %blockSize) nounwind, !map !21
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  %blockSize_read = call i32 @_ssdm_op_Read.ap_hs.i32(i32 %blockSize) ; [#uses=7 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize_read}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i256* %b1}, i64 0, metadata !40), !dbg !44 ; [debug line = 17:30] [debug variable = b1]
  call void @llvm.dbg.value(metadata !{i256* %b2}, i64 0, metadata !45), !dbg !46 ; [debug line = 17:77] [debug variable = b2]
  call void @llvm.dbg.value(metadata !{i256* %b3}, i64 0, metadata !47), !dbg !48 ; [debug line = 17:124] [debug variable = b3]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !27), !dbg !39 ; [debug line = 17:159] [debug variable = blockSize]
  call void (...)* @_ssdm_op_SpecBus(i256* %b1, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1), !dbg !49 ; [debug line = 19:1]
  call void (...)* @_ssdm_op_SpecIFCore(i256* %b1, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1), !dbg !51 ; [debug line = 20:1]
  call void (...)* @_ssdm_op_SpecBus(i256* %b2, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1), !dbg !52 ; [debug line = 21:1]
  call void (...)* @_ssdm_op_SpecIFCore(i256* %b2, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1), !dbg !53 ; [debug line = 22:1]
  call void (...)* @_ssdm_op_SpecBus(i256* %b3, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1), !dbg !54 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecIFCore(i256* %b3, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1), !dbg !55 ; [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [20 x i8]* @p_str4) nounwind, !dbg !56 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecWire(i32 %blockSize, [6 x i8]* @p_str5, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !57 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 %blockSize, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [20 x i8]* @p_str4) nounwind, !dbg !58 ; [debug line = 27:1]
  %tmp_7 = shl i32 %blockSize_read, 3, !dbg !59   ; [#uses=1 type=i32] [debug line = 36:2]
  %tmp_10 = shl i32 %blockSize_read, 1, !dbg !59  ; [#uses=2 type=i32] [debug line = 36:2]
  %tmp = add i32 %tmp_7, %tmp_10, !dbg !59        ; [#uses=1 type=i32] [debug line = 36:2]
  %tmp_1 = sext i32 %tmp to i256, !dbg !59        ; [#uses=1 type=i256] [debug line = 36:2]
  %b1_req = call i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256* %b1, i32 1), !dbg !59 ; [#uses=0 type=i1] [debug line = 36:2]
  call void @_ssdm_op_Write.ap_bus.volatile.i256P(i256* %b1, i256 %tmp_1), !dbg !59 ; [debug line = 36:2]
  %tmp_11 = shl i32 %blockSize_read, 4, !dbg !60  ; [#uses=1 type=i32] [debug line = 37:2]
  %tmp_12 = shl i32 %blockSize_read, 2, !dbg !60  ; [#uses=1 type=i32] [debug line = 37:2]
  %tmp_2 = add i32 %tmp_11, %tmp_12, !dbg !60     ; [#uses=1 type=i32] [debug line = 37:2]
  %tmp_3 = sext i32 %tmp_2 to i256, !dbg !60      ; [#uses=1 type=i256] [debug line = 37:2]
  %b2_req = call i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256* %b2, i32 1), !dbg !60 ; [#uses=0 type=i1] [debug line = 37:2]
  call void @_ssdm_op_Write.ap_bus.volatile.i256P(i256* %b2, i256 %tmp_3), !dbg !60 ; [debug line = 37:2]
  %tmp_13 = shl i32 %blockSize_read, 5, !dbg !61  ; [#uses=1 type=i32] [debug line = 38:2]
  %tmp_4 = sub i32 %tmp_13, %tmp_10, !dbg !61     ; [#uses=1 type=i32] [debug line = 38:2]
  %tmp_5 = sext i32 %tmp_4 to i256, !dbg !61      ; [#uses=1 type=i256] [debug line = 38:2]
  %b3_req = call i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256* %b3, i32 1), !dbg !61 ; [#uses=0 type=i1] [debug line = 38:2]
  call void @_ssdm_op_Write.ap_bus.volatile.i256P(i256* %b3, i256 %tmp_5), !dbg !61 ; [debug line = 38:2]
  call void @llvm.dbg.value(metadata !{i32 %blockSize}, i64 0, metadata !62), !dbg !63 ; [debug line = 40:23] [debug variable = bsize]
  %tmp_6 = mul nsw i32 %blockSize_read, %blockSize_read, !dbg !64 ; [#uses=1 type=i32] [debug line = 43:37]
  %tmp_s = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %tmp_6, i32 3, i32 31), !dbg !64 ; [#uses=2 type=i29] [debug line = 43:37]
  br label %1, !dbg !65                           ; [debug line = 44:7]

; <label>:1                                       ; preds = %branch896, %0
  %i = phi i29 [ 0, %0 ], [ %i_1, %branch896 ]    ; [#uses=3 type=i29]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 536870911, i64 0) ; [#uses=0 type=i32]
  %exitcond1 = icmp eq i29 %i, %tmp_s, !dbg !65   ; [#uses=1 type=i1] [debug line = 44:7]
  %i_1 = add i29 %i, 1, !dbg !67                  ; [#uses=1 type=i29] [debug line = 44:23]
  br i1 %exitcond1, label %.preheader1, label %branch896, !dbg !65 ; [debug line = 44:7]

branch896:                                        ; preds = %1
  %tmp_8 = zext i29 %i to i64, !dbg !68           ; [#uses=3 type=i64] [debug line = 45:26]
  %b1_addr = getelementptr i256* %b1, i64 %tmp_8  ; [#uses=2 type=i256*]
  %curElemA_req = call i1 @_ssdm_op_ReadReq.ap_bus.i256P(i256* %b1_addr, i32 1), !dbg !68 ; [#uses=0 type=i1] [debug line = 45:26]
  %curElemA = call i256 @_ssdm_op_Read.ap_bus.volatile.i256P(i256* %b1_addr), !dbg !68 ; [#uses=0 type=i256] [debug line = 45:26]
  call void @llvm.dbg.value(metadata !{i256 %curElemA}, i64 0, metadata !70), !dbg !68 ; [debug line = 45:26] [debug variable = curElemA]
  %b2_addr = getelementptr i256* %b2, i64 %tmp_8  ; [#uses=2 type=i256*]
  %curElemB_req = call i1 @_ssdm_op_ReadReq.ap_bus.i256P(i256* %b2_addr, i32 1), !dbg !71 ; [#uses=0 type=i1] [debug line = 46:26]
  %curElemB = call i256 @_ssdm_op_Read.ap_bus.volatile.i256P(i256* %b2_addr), !dbg !71 ; [#uses=0 type=i256] [debug line = 46:26]
  call void @llvm.dbg.value(metadata !{i256 %curElemB}, i64 0, metadata !72), !dbg !71 ; [debug line = 46:26] [debug variable = curElemB]
  %b3_addr = getelementptr i256* %b3, i64 %tmp_8  ; [#uses=2 type=i256*]
  %curElemC_req = call i1 @_ssdm_op_ReadReq.ap_bus.i256P(i256* %b3_addr, i32 1), !dbg !73 ; [#uses=0 type=i1] [debug line = 47:26]
  %curElemC = call i256 @_ssdm_op_Read.ap_bus.volatile.i256P(i256* %b3_addr), !dbg !73 ; [#uses=0 type=i256] [debug line = 47:26]
  call void @llvm.dbg.value(metadata !{i256 %curElemC}, i64 0, metadata !74), !dbg !73 ; [debug line = 47:26] [debug variable = curElemC]
  call void @llvm.dbg.value(metadata !{i256 %curElemA}, i64 0, metadata !75), !dbg !80 ; [debug line = 50:197] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemB}, i64 0, metadata !81), !dbg !83 ; [debug line = 51:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemC}, i64 0, metadata !84), !dbg !86 ; [debug line = 52:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemA}, i64 0, metadata !75), !dbg !80 ; [debug line = 50:197] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemB}, i64 0, metadata !81), !dbg !83 ; [debug line = 51:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemC}, i64 0, metadata !84), !dbg !86 ; [debug line = 52:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemA}, i64 0, metadata !75), !dbg !80 ; [debug line = 50:197] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemB}, i64 0, metadata !81), !dbg !83 ; [debug line = 51:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemC}, i64 0, metadata !84), !dbg !86 ; [debug line = 52:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemA}, i64 0, metadata !75), !dbg !80 ; [debug line = 50:197] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemB}, i64 0, metadata !81), !dbg !83 ; [debug line = 51:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemC}, i64 0, metadata !84), !dbg !86 ; [debug line = 52:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemA}, i64 0, metadata !75), !dbg !80 ; [debug line = 50:197] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemB}, i64 0, metadata !81), !dbg !83 ; [debug line = 51:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemC}, i64 0, metadata !84), !dbg !86 ; [debug line = 52:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemA}, i64 0, metadata !75), !dbg !80 ; [debug line = 50:197] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemB}, i64 0, metadata !81), !dbg !83 ; [debug line = 51:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemC}, i64 0, metadata !84), !dbg !86 ; [debug line = 52:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemA}, i64 0, metadata !75), !dbg !80 ; [debug line = 50:197] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemB}, i64 0, metadata !81), !dbg !83 ; [debug line = 51:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemC}, i64 0, metadata !84), !dbg !86 ; [debug line = 52:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemA}, i64 0, metadata !75), !dbg !80 ; [debug line = 50:197] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemB}, i64 0, metadata !81), !dbg !83 ; [debug line = 51:200] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i256 %curElemC}, i64 0, metadata !84), !dbg !86 ; [debug line = 52:200] [debug variable = __Val2__]
  br label %1, !dbg !67                           ; [debug line = 44:23]

.preheader1:                                      ; preds = %.preheader, %1
  %i5 = phi i29 [ %i_2, %.preheader ], [ 0, %1 ]  ; [#uses=3 type=i29]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 536870911, i64 0) ; [#uses=0 type=i32]
  %exitcond = icmp eq i29 %i5, %tmp_s, !dbg !87   ; [#uses=1 type=i1] [debug line = 62:14]
  %i_2 = add i29 %i5, 1, !dbg !89                 ; [#uses=1 type=i29] [debug line = 62:25]
  br i1 %exitcond, label %2, label %.preheader, !dbg !87 ; [debug line = 62:14]

.preheader:                                       ; preds = %.preheader1
  %tmp_9 = zext i29 %i5 to i64, !dbg !90          ; [#uses=3 type=i64] [debug line = 72:3]
  %b1_addr_1 = getelementptr i256* %b1, i64 %tmp_9 ; [#uses=2 type=i256*]
  %b1_addr_1_req = call i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256* %b1_addr_1, i32 1), !dbg !90 ; [#uses=0 type=i1] [debug line = 72:3]
  call void @_ssdm_op_Write.ap_bus.volatile.i256P(i256* %b1_addr_1, i256 0), !dbg !90 ; [debug line = 72:3]
  %b2_addr_1 = getelementptr i256* %b2, i64 %tmp_9 ; [#uses=2 type=i256*]
  %b2_addr_1_req = call i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256* %b2_addr_1, i32 1), !dbg !92 ; [#uses=0 type=i1] [debug line = 73:3]
  call void @_ssdm_op_Write.ap_bus.volatile.i256P(i256* %b2_addr_1, i256 0), !dbg !92 ; [debug line = 73:3]
  %b3_addr_1 = getelementptr i256* %b3, i64 %tmp_9 ; [#uses=2 type=i256*]
  %b3_addr_1_req = call i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256* %b3_addr_1, i32 1), !dbg !93 ; [#uses=0 type=i1] [debug line = 74:3]
  call void @_ssdm_op_Write.ap_bus.volatile.i256P(i256* %b3_addr_1, i256 0), !dbg !93 ; [debug line = 74:3]
  br label %.preheader1, !dbg !89                 ; [debug line = 62:25]

; <label>:2                                       ; preds = %.preheader1
  ret void, !dbg !94                              ; [debug line = 158:1]
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_5 = trunc i32 %empty to i29              ; [#uses=1 type=i29]
  ret i29 %empty_5
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_hs.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=6]
define weak void @_ssdm_op_Write.ap_bus.volatile.i256P(i256*, i256) {
entry:
  store i256 %1, i256* %0
  ret void
}

; [#uses=6]
define weak i1 @_ssdm_op_WriteReq.ap_bus.i256P(i256*, i32) {
entry:
  ret i1 true
}

; [#uses=3]
define weak i256 @_ssdm_op_Read.ap_bus.volatile.i256P(i256*) {
entry:
  %empty = load i256* %0                          ; [#uses=1 type=i256]
  ret i256 %empty
}

; [#uses=3]
define weak i1 @_ssdm_op_ReadReq.ap_bus.i256P(i256*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone

; [#uses=0]
declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

; [#uses=0]
declare i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i28.i4(i28, i4) nounwind readnone

; [#uses=0]
declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone

; [#uses=0]
declare i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
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
!27 = metadata !{i32 786689, metadata !28, metadata !"blockSize", metadata !29, i32 67108881, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 786478, i32 0, metadata !29, metadata !"bmm_top", metadata !"bmm_top", metadata !"_Z7bmm_topPVDq256_iS1_S1_i", metadata !29, i32 17, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !37, i32 18} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786473, metadata !"bmm_top/bmm_top.cpp", metadata !"/home/raghu/work/projects/dma3", null} ; [ DW_TAG_file_type ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !32, metadata !32, metadata !32, metadata !36}
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_volatile_type ]
!34 = metadata !{i32 786454, null, metadata !"int256", metadata !29, i32 270, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ]
!35 = metadata !{i32 786468, null, metadata !"int256", null, i32 0, i64 256, i64 256, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!36 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!39 = metadata !{i32 17, i32 159, metadata !28, null}
!40 = metadata !{i32 786689, metadata !28, metadata !"b1", null, i32 17, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !33, metadata !42, i32 0, i32 0} ; [ DW_TAG_array_type ]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786465, i64 0, i64 2047}     ; [ DW_TAG_subrange_type ]
!44 = metadata !{i32 17, i32 30, metadata !28, null}
!45 = metadata !{i32 786689, metadata !28, metadata !"b2", null, i32 17, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 17, i32 77, metadata !28, null}
!47 = metadata !{i32 786689, metadata !28, metadata !"b3", null, i32 17, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 17, i32 124, metadata !28, null}
!49 = metadata !{i32 19, i32 1, metadata !50, null}
!50 = metadata !{i32 786443, metadata !28, i32 18, i32 1, metadata !29, i32 0} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 20, i32 1, metadata !50, null}
!52 = metadata !{i32 21, i32 1, metadata !50, null}
!53 = metadata !{i32 22, i32 1, metadata !50, null}
!54 = metadata !{i32 23, i32 1, metadata !50, null}
!55 = metadata !{i32 24, i32 1, metadata !50, null}
!56 = metadata !{i32 25, i32 1, metadata !50, null}
!57 = metadata !{i32 26, i32 1, metadata !50, null}
!58 = metadata !{i32 27, i32 1, metadata !50, null}
!59 = metadata !{i32 36, i32 2, metadata !50, null}
!60 = metadata !{i32 37, i32 2, metadata !50, null}
!61 = metadata !{i32 38, i32 2, metadata !50, null}
!62 = metadata !{i32 786688, metadata !50, metadata !"bsize", metadata !29, i32 40, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 40, i32 23, metadata !50, null}
!64 = metadata !{i32 43, i32 37, metadata !50, null}
!65 = metadata !{i32 44, i32 7, metadata !66, null}
!66 = metadata !{i32 786443, metadata !50, i32 44, i32 2, metadata !29, i32 1} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 44, i32 23, metadata !66, null}
!68 = metadata !{i32 45, i32 26, metadata !69, null}
!69 = metadata !{i32 786443, metadata !66, i32 44, i32 28, metadata !29, i32 2} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786688, metadata !69, metadata !"curElemA", metadata !29, i32 45, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 46, i32 26, metadata !69, null}
!72 = metadata !{i32 786688, metadata !69, metadata !"curElemB", metadata !29, i32 46, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 47, i32 26, metadata !69, null}
!74 = metadata !{i32 786688, metadata !69, metadata !"curElemC", metadata !29, i32 47, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 786688, metadata !76, metadata !"__Val2__", metadata !29, i32 50, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 786443, metadata !77, i32 50, i32 28, metadata !29, i32 5} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 786443, metadata !78, i32 48, i32 40, metadata !29, i32 4} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 786443, metadata !69, i32 48, i32 3, metadata !29, i32 3} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786468, null, metadata !"uint256", null, i32 0, i64 256, i64 256, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!80 = metadata !{i32 50, i32 197, metadata !76, null}
!81 = metadata !{i32 786688, metadata !82, metadata !"__Val2__", metadata !29, i32 51, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 786443, metadata !77, i32 51, i32 31, metadata !29, i32 6} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 51, i32 200, metadata !82, null}
!84 = metadata !{i32 786688, metadata !85, metadata !"__Val2__", metadata !29, i32 52, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 786443, metadata !77, i32 52, i32 31, metadata !29, i32 7} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 52, i32 200, metadata !85, null}
!87 = metadata !{i32 62, i32 14, metadata !88, null}
!88 = metadata !{i32 786443, metadata !50, i32 62, i32 2, metadata !29, i32 10} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 62, i32 25, metadata !88, null}
!90 = metadata !{i32 72, i32 3, metadata !91, null}
!91 = metadata !{i32 786443, metadata !88, i32 62, i32 30, metadata !29, i32 11} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 73, i32 3, metadata !91, null}
!93 = metadata !{i32 74, i32 3, metadata !91, null}
!94 = metadata !{i32 158, i32 1, metadata !50, null}
