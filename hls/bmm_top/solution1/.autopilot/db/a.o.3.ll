; ModuleID = '/home/raghu/work/projects/dma3/hls/bmm_top/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1 ; [#uses=3 type=[7 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=22 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [6 x i8] c"AXI4M\00", align 1 ; [#uses=3 type=[6 x i8]*]
@p_str3 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str4 = private unnamed_addr constant [20 x i8] c"-bus_bundle CONTROL\00", align 1 ; [#uses=1 type=[20 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [8 x i8] c"bmm_top\00"   ; [#uses=1 type=[8 x i8]*]

; [#uses=3]
define weak void @_ssdm_op_SpecBus(...) nounwind {
entry:
  ret void
}

; [#uses=7]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=4]
define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
define void @bmm_top(i32* %b1, i32* %b2, i32* %b3) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %b1), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %b2), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %b3), !map !17
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %b1}, i64 0, metadata !21), !dbg !36 ; [debug line = 4:27] [debug variable = b1]
  call void @llvm.dbg.value(metadata !{i32* %b2}, i64 0, metadata !37), !dbg !38 ; [debug line = 4:52] [debug variable = b2]
  call void @llvm.dbg.value(metadata !{i32* %b3}, i64 0, metadata !39), !dbg !40 ; [debug line = 4:77] [debug variable = b3]
  call void (...)* @_ssdm_op_SpecBus(i32* %b1, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1), !dbg !41 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %b1, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1), !dbg !43 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecBus(i32* %b2, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1), !dbg !44 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %b2, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1), !dbg !45 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecBus(i32* %b3, [7 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1), !dbg !46 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %b3, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1), !dbg !47 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [20 x i8]* @p_str4) nounwind, !dbg !48 ; [debug line = 12:1]
  br label %.loopexit, !dbg !49                   ; [debug line = 15:7]

.loopexit:                                        ; preds = %1, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %1 ]             ; [#uses=3 type=i7]
  %exitcond3 = icmp eq i7 %i, -64, !dbg !49       ; [#uses=1 type=i1] [debug line = 15:7]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %i_1 = add i7 %i, 1, !dbg !51                   ; [#uses=1 type=i7] [debug line = 15:18]
  call void @llvm.dbg.value(metadata !{i7 %i_1}, i64 0, metadata !52), !dbg !51 ; [debug line = 15:18] [debug variable = i]
  br i1 %exitcond3, label %5, label %.preheader1, !dbg !49 ; [debug line = 15:7]

.preheader1:                                      ; preds = %.loopexit
  %tmp = trunc i7 %i to i6                        ; [#uses=1 type=i6]
  %tmp_7 = call i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6 %tmp, i6 0) ; [#uses=2 type=i12]
  br label %1, !dbg !53                           ; [debug line = 16:8]

; <label>:1                                       ; preds = %4, %.preheader1
  %j = phi i7 [ %j_1, %4 ], [ 0, %.preheader1 ]   ; [#uses=3 type=i7]
  %exitcond2 = icmp eq i7 %j, -64, !dbg !53       ; [#uses=1 type=i1] [debug line = 16:8]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %j_1 = add i7 %j, 1, !dbg !56                   ; [#uses=1 type=i7] [debug line = 16:19]
  br i1 %exitcond2, label %.loopexit, label %.preheader, !dbg !53 ; [debug line = 16:8]

.preheader:                                       ; preds = %1
  %tmp_2_cast = zext i7 %j to i12, !dbg !57       ; [#uses=2 type=i12] [debug line = 18:9]
  br label %2, !dbg !57                           ; [debug line = 18:9]

; <label>:2                                       ; preds = %3, %.preheader
  %k = phi i7 [ %k_1, %3 ], [ 0, %.preheader ]    ; [#uses=4 type=i7]
  %tmpVal = phi i32 [ %tmpVal_1, %3 ], [ 0, %.preheader ] ; [#uses=2 type=i32]
  %exitcond = icmp eq i7 %k, -64, !dbg !57        ; [#uses=1 type=i1] [debug line = 18:9]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %k_1 = add i7 %k, 1, !dbg !60                   ; [#uses=1 type=i7] [debug line = 18:20]
  br i1 %exitcond, label %4, label %3, !dbg !57   ; [debug line = 18:9]

; <label>:3                                       ; preds = %2
  %tmp_5_cast = zext i7 %k to i12                 ; [#uses=1 type=i12]
  %tmp_8 = add i12 %tmp_7, %tmp_5_cast            ; [#uses=1 type=i12]
  %tmp_8_cast = zext i12 %tmp_8 to i64            ; [#uses=1 type=i64]
  %b1_addr = getelementptr i32* %b1, i64 %tmp_8_cast ; [#uses=2 type=i32*]
  %b1_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b1_addr, i32 1), !dbg !61 ; [#uses=0 type=i1] [debug line = 20:5]
  %b1_addr_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b1_addr), !dbg !61 ; [#uses=1 type=i32] [debug line = 20:5]
  %tmp_1 = trunc i7 %k to i6                      ; [#uses=1 type=i6]
  %tmp_9 = call i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6 %tmp_1, i6 0) ; [#uses=1 type=i12]
  %tmp_s = add i12 %tmp_9, %tmp_2_cast            ; [#uses=1 type=i12]
  %tmp_cast = zext i12 %tmp_s to i64              ; [#uses=1 type=i64]
  %b2_addr = getelementptr i32* %b2, i64 %tmp_cast ; [#uses=2 type=i32*]
  %b2_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b2_addr, i32 1), !dbg !61 ; [#uses=0 type=i1] [debug line = 20:5]
  %b2_addr_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b2_addr), !dbg !61 ; [#uses=1 type=i32] [debug line = 20:5]
  %tmp_6 = mul nsw i32 %b2_addr_read, %b1_addr_read, !dbg !61 ; [#uses=1 type=i32] [debug line = 20:5]
  %tmpVal_1 = add nsw i32 %tmp_6, %tmpVal, !dbg !61 ; [#uses=1 type=i32] [debug line = 20:5]
  call void @llvm.dbg.value(metadata !{i32 %tmpVal_1}, i64 0, metadata !63), !dbg !61 ; [debug line = 20:5] [debug variable = tmpVal]
  call void @llvm.dbg.value(metadata !{i7 %k_1}, i64 0, metadata !64), !dbg !60 ; [debug line = 18:20] [debug variable = k]
  br label %2, !dbg !60                           ; [debug line = 18:20]

; <label>:4                                       ; preds = %2
  %tmp_4 = add i12 %tmp_7, %tmp_2_cast            ; [#uses=1 type=i12]
  %tmp_4_cast = zext i12 %tmp_4 to i64            ; [#uses=1 type=i64]
  %b3_addr = getelementptr i32* %b3, i64 %tmp_4_cast ; [#uses=4 type=i32*]
  %b3_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %b3_addr, i32 1), !dbg !65 ; [#uses=0 type=i1] [debug line = 22:4]
  %b3_addr_read = call i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32* %b3_addr), !dbg !65 ; [#uses=1 type=i32] [debug line = 22:4]
  %tmp_3 = add nsw i32 %b3_addr_read, %tmpVal, !dbg !65 ; [#uses=1 type=i32] [debug line = 22:4]
  %b3_addr_req = call i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32* %b3_addr, i32 1), !dbg !65 ; [#uses=0 type=i1] [debug line = 22:4]
  call void @_ssdm_op_Write.ap_bus.volatile.i32P(i32* %b3_addr, i32 %tmp_3), !dbg !65 ; [debug line = 22:4]
  call void @llvm.dbg.value(metadata !{i7 %j_1}, i64 0, metadata !66), !dbg !56 ; [debug line = 16:19] [debug variable = j]
  br label %1, !dbg !56                           ; [debug line = 16:19]

; <label>:5                                       ; preds = %.loopexit
  ret void, !dbg !67                              ; [debug line = 25:1]
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6, i6) nounwind readnone {
entry:
  %empty = zext i6 %0 to i12                      ; [#uses=1 type=i12]
  %empty_9 = zext i6 %1 to i12                    ; [#uses=2 type=i12]
  %empty_10 = trunc i12 %empty to i6              ; [#uses=1 type=i6]
  %empty_11 = call i6 @_ssdm_op_PartSelect.i6.i12.i32.i32(i12 %empty_9, i32 6, i32 11) ; [#uses=1 type=i6]
  %empty_12 = or i6 %empty_10, %empty_11          ; [#uses=1 type=i6]
  %empty_13 = call i12 @_ssdm_op_PartSet.i12.i12.i6.i32.i32(i12 %empty_9, i6 %empty_12, i32 6, i32 11) ; [#uses=1 type=i12]
  ret i12 %empty_13
}

; [#uses=3]
define weak i32 @_ssdm_op_Read.ap_bus.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=3]
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

; [#uses=0]
declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

; [#uses=1]
define weak i6 @_ssdm_op_PartSelect.i6.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2) ; [#uses=1 type=i12]
  %empty_14 = trunc i12 %empty to i6              ; [#uses=1 type=i6]
  ret i6 %empty_14
}

; [#uses=1]
define weak i12 @_ssdm_op_PartSet.i12.i12.i6.i32.i32(i12, i6, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.set.i12.i6(i12 %0, i6 %1, i32 %2, i32 %3) ; [#uses=1 type=i12]
  ret i12 %empty
}

; [#uses=1]
declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

; [#uses=1]
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
!21 = metadata !{i32 786689, metadata !22, metadata !"b1", null, i32 4, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!22 = metadata !{i32 786478, i32 0, metadata !23, metadata !"bmm_top", metadata !"bmm_top", metadata !"_Z7bmm_topPA64_ViS1_S1_", metadata !23, i32 4, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 5} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786473, metadata !"bmm_top/bmm_top.cpp", metadata !"/home/raghu/work/projects/dma3", null} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{null, metadata !26, metadata !26, metadata !26}
!26 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !28, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_volatile_type ]
!29 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 131072, i64 32, i32 0, i32 0, metadata !28, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{metadata !31, metadata !31}
!36 = metadata !{i32 4, i32 27, metadata !22, null}
!37 = metadata !{i32 786689, metadata !22, metadata !"b2", null, i32 4, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 4, i32 52, metadata !22, null}
!39 = metadata !{i32 786689, metadata !22, metadata !"b3", null, i32 4, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 4, i32 77, metadata !22, null}
!41 = metadata !{i32 6, i32 1, metadata !42, null}
!42 = metadata !{i32 786443, metadata !22, i32 5, i32 1, metadata !23, i32 0} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 7, i32 1, metadata !42, null}
!44 = metadata !{i32 8, i32 1, metadata !42, null}
!45 = metadata !{i32 9, i32 1, metadata !42, null}
!46 = metadata !{i32 10, i32 1, metadata !42, null}
!47 = metadata !{i32 11, i32 1, metadata !42, null}
!48 = metadata !{i32 12, i32 1, metadata !42, null}
!49 = metadata !{i32 15, i32 7, metadata !50, null}
!50 = metadata !{i32 786443, metadata !42, i32 15, i32 2, metadata !23, i32 1} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 15, i32 18, metadata !50, null}
!52 = metadata !{i32 786688, metadata !42, metadata !"i", metadata !23, i32 14, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 16, i32 8, metadata !54, null}
!54 = metadata !{i32 786443, metadata !55, i32 16, i32 3, metadata !23, i32 3} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 786443, metadata !50, i32 15, i32 23, metadata !23, i32 2} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 16, i32 19, metadata !54, null}
!57 = metadata !{i32 18, i32 9, metadata !58, null}
!58 = metadata !{i32 786443, metadata !59, i32 18, i32 4, metadata !23, i32 5} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 786443, metadata !54, i32 16, i32 24, metadata !23, i32 4} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 18, i32 20, metadata !58, null}
!61 = metadata !{i32 20, i32 5, metadata !62, null}
!62 = metadata !{i32 786443, metadata !58, i32 18, i32 25, metadata !23, i32 6} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786688, metadata !59, metadata !"tmpVal", metadata !23, i32 17, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 786688, metadata !42, metadata !"k", metadata !23, i32 14, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 22, i32 4, metadata !59, null}
!66 = metadata !{i32 786688, metadata !42, metadata !"j", metadata !23, i32 14, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 25, i32 1, metadata !42, null}
