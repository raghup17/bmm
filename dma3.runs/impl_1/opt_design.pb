
F
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349
e
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22
I

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103
G
Running DRC with %s threads
24*drc2
22default:defaultZ23-27
L
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461
[
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462
�

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 1501.039 ; gain = 2.0002default:default
X

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103
4
(Logic Optimization | Checksum: 3d872ffc
*common
<
%Done setting XDC timing constraints.
35*timingZ38-35
<
%Done setting XDC timing constraints.
35*timingZ38-35
`

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101
C
Pushed %s inverter(s).
98*opt2
22default:defaultZ31-138
B
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49
2
&Phase 1 Retarget | Checksum: 5d5e8a43
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:26 ; elapsed = 00:00:24 . Memory (MB): peak = 1669.809 ; gain = 168.7702default:default
l

Phase %s%s
101*constraints2
2 2default:default2(
Constant Propagation2default:defaultZ18-101
C
Pushed %s inverter(s).
98*opt2
42default:defaultZ31-138
C
Eliminated %s cells.
10*opt2
22592default:defaultZ31-10
>
2Phase 2 Constant Propagation | Checksum: 34199c13
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:50 ; elapsed = 00:00:48 . Memory (MB): peak = 1669.809 ; gain = 168.7702default:default
]

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101
O
 Eliminated %s unconnected nets.
12*opt2
160172default:defaultZ31-12
P
!Eliminated %s unconnected cells.
11*opt2
280332default:defaultZ31-11
/
#Phase 3 Sweep | Checksum: 8f040a1b
*common
�

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:01:02 . Memory (MB): peak = 1669.809 ; gain = 168.7702default:default
@
4Ending Logic Optimization Task | Checksum: 8f040a1b
*common
�

%s
*constraints2q
]Time (s): cpu = 00:01:04 ; elapsed = 00:01:02 . Memory (MB): peak = 1669.809 ; gain = 168.7702default:default
7
+Implement Debug Cores | Checksum: 3d872ffc
*common
X

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103
<
%Done setting XDC timing constraints.
35*timingZ38-35
4
Applying IDT optimizations ...
9*pwroptZ34-9
6
Applying ODC optimizations ...
10*pwroptZ34-10


*pwropt
�
�WRITE_MODE attribute of %s BRAM(s) out of a total of %s was updated to NO_CHANGE to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
152default:default2
1472default:defaultZ34-162
[
+Structural ODC has moved %s WE to EN ports
155*pwropt2
02default:defaultZ34-201
�
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
382default:default2
02default:default2
2942default:defaultZ34-65
@
4Ending Power Optimization Task | Checksum: fe1d43d4
*common
�

%s
*constraints2q
]Time (s): cpu = 00:01:27 ; elapsed = 00:01:13 . Memory (MB): peak = 2024.336 ; gain = 354.5272default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
292default:default2
12default:default2
02default:default2
02default:defaultZ4-41
S
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
opt_design: 2default:default2
00:02:362default:default2
00:02:212default:default2
2024.3362default:default2
525.2972default:defaultZ17-268
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2
00:00:012default:default2
2024.3402default:default2
0.0002default:defaultZ17-268
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:382default:default2
00:00:272default:default2
2024.3402default:default2
0.0042default:defaultZ17-268


End Record