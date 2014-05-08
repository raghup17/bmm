
H
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113
ö
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347
ä
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349
g
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22
G
Running DRC with %s threads
24*drc2
22default:defaultZ23-27
M
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
L

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103
t
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611
m

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101
ç
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:00.242default:default2
00:00:00.252default:default2
2024.3402default:default2
0.0002default:defaultZ17-268
v

Phase %s%s
101*constraints2
1.1 2default:default20
Mandatory Logic Optimization2default:defaultZ18-101
^
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140
^
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
ç
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:00.192default:default2
00:00:00.192default:default2
2024.3402default:default2
0.0002default:defaultZ17-268
I
=Phase 1.1 Mandatory Logic Optimization | Checksum: 160892184
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2024.340 ; gain = 0.0002default:default
Å

Phase %s%s
101*constraints2
1.2 2default:default2;
'Build Super Logic Region (SLR) Database2default:defaultZ18-101
T
HPhase 1.2 Build Super Logic Region (SLR) Database | Checksum: 160892184
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2024.340 ; gain = 0.0002default:default
i

Phase %s%s
101*constraints2
1.3 2default:default2#
Add Constraints2default:defaultZ18-101
<
0Phase 1.3 Add Constraints | Checksum: 160892184
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2024.340 ; gain = 0.0002default:default
f

Phase %s%s
101*constraints2
1.4 2default:default2 
Build Macros2default:defaultZ18-101
9
-Phase 1.4 Build Macros | Checksum: 1574e9f56
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2024.340 ; gain = 0.0002default:default
v

Phase %s%s
101*constraints2
1.5 2default:default20
Routing Based Site Exclusion2default:defaultZ18-101
I
=Phase 1.5 Routing Based Site Exclusion | Checksum: 1574e9f56
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 2024.340 ; gain = 0.0002default:default
z

Phase %s%s
101*constraints2
1.6 2default:default24
 Implementation Feasibility check2default:defaultZ18-101
Ñ7
bAn IO Bus %s with more than one IO standard is found. Components associated with this bus are: %s
12*place2 
FIXED_IO_mio2default:default2Â5
ˆ 
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[0]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[1]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[2]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[3]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[4]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[5]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[6]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[7]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[8]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[9]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[10]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[11]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[12]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[13]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[14]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[15]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[16]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[17]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[18]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[19]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[20]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[21]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[22]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[23]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[24]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[25]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[26]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[27]<MSGMETA::END> of IOStandard HSTL_I_18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[28]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[29]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[30]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[31]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[32]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[33]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[34]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[35]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[36]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[37]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[38]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[39]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[40]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[41]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[42]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[43]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[44]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[45]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[46]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[47]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[48]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[49]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[50]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[51]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[52]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[53]<MSGMETA::END> of IOStandard LVCMOS18"2
FIXED_IO_mio[0]2
	: of IOStandard LVCMOS18
	".
FIXED_IO_mio[1]: of IOStandard LVCMOS18
	".
FIXED_IO_mio[2]: of IOStandard LVCMOS18
	".
FIXED_IO_mio[3]: of IOStandard LVCMOS18
	".
FIXED_IO_mio[4]: of IOStandard LVCMOS18
	".
FIXED_IO_mio[5]: of IOStandard LVCMOS18
	".
FIXED_IO_mio[6]: of IOStandard LVCMOS18
	".
FIXED_IO_mio[7]: of IOStandard LVCMOS18
	".
FIXED_IO_mio[8]: of IOStandard LVCMOS18
	".
FIXED_IO_mio[9]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[10]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[11]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[12]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[13]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[14]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[15]: of IOStandard LVCMOS18
	"0
FIXED_IO_mio[16]: of IOStandard HSTL_I_18
	"0
FIXED_IO_mio[17]: of IOStandard HSTL_I_18
	"0
FIXED_IO_mio[18]: of IOStandard HSTL_I_18
	"0
FIXED_IO_mio[19]: of IOStandard HSTL_I_18
	"0
FIXED_IO_mio[20]: of IOStandard HSTL_I_18
	"0
FIXED_IO_mio[21]: of IOStandard HSTL_I_18
	"0
FIXED_IO_mio[22]: of IOStandard HSTL_I_18
	"0
FIXED_IO_mio[23]: of IOStandard HSTL_I_18
	"0
FIXED_IO_mio[24]: of IOStandard HSTL_I_18
	"0
FIXED_IO_mio[25]: of IOStandard HSTL_I_18
	"0
FIXED_IO_mio[26]: of IOStandard HSTL_I_18
	"0
FIXED_IO_mio[27]: of IOStandard HSTL_I_18
	"/
FIXED_IO_mio[28]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[29]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[30]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[31]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[32]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[33]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[34]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[35]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[36]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[37]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[38]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[39]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[40]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[41]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[42]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[43]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[44]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[45]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[46]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[47]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[48]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[49]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[50]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[51]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[52]: of IOStandard LVCMOS18
	"-
FIXED_IO_mio[53]: of IOStandard LVCMOS182default:default8Z30-12
M
APhase 1.6 Implementation Feasibility check | Checksum: 1574e9f56
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2024.340 ; gain = 0.0002default:default
i

Phase %s%s
101*constraints2
1.7 2default:default2#
Pre-Place Cells2default:defaultZ18-101
<
0Phase 1.7 Pre-Place Cells | Checksum: 1574e9f56
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2024.340 ; gain = 0.0002default:default
å

Phase %s%s
101*constraints2
1.8 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101
_
SPhase 1.8 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 1574e9f56
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:00:36 ; elapsed = 00:00:37 . Memory (MB): peak = 2032.340 ; gain = 8.0002default:default
t

Phase %s%s
101*constraints2
1.9 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101
m

Phase %s%s
101*constraints2
1.9.1 2default:default2%
Place Init Design2default:defaultZ18-101
n

Phase %s%s
101*constraints2
1.9.1.1 2default:default2$
Build Clock Data2default:defaultZ18-101
@
4Phase 1.9.1.1 Build Clock Data | Checksum: be03a577
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:01:21 ; elapsed = 00:01:08 . Memory (MB): peak = 2032.340 ; gain = 8.0002default:default
?
3Phase 1.9.1 Place Init Design | Checksum: 8ba51164
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:01:28 ; elapsed = 00:01:15 . Memory (MB): peak = 2032.340 ; gain = 8.0002default:default
F
:Phase 1.9 Build Placer Netlist Model | Checksum: 8ba51164
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:01:28 ; elapsed = 00:01:15 . Memory (MB): peak = 2032.340 ; gain = 8.0002default:default
r

Phase %s%s
101*constraints2
1.10 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101
}

Phase %s%s
101*constraints2
1.10.1 2default:default24
 Constrain Global/Regional Clocks2default:defaultZ18-101
O
CPhase 1.10.1 Constrain Global/Regional Clocks | Checksum: 8ba51164
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:01:28 ; elapsed = 00:01:15 . Memory (MB): peak = 2032.340 ; gain = 8.0002default:default
D
8Phase 1.10 Constrain Clocks/Macros | Checksum: 8ba51164
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:01:28 ; elapsed = 00:01:15 . Memory (MB): peak = 2032.340 ; gain = 8.0002default:default
?
3Phase 1 Placer Initialization | Checksum: 8ba51164
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:01:28 ; elapsed = 00:01:15 . Memory (MB): peak = 2032.340 ; gain = 8.0002default:default
h

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101
;
/Phase 2 Global Placement | Checksum: 1513c7226
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:10:00 ; elapsed = 00:06:51 . Memory (MB): peak = 2032.340 ; gain = 8.0002default:default
h

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101
t

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101
G
;Phase 3.1 Commit Multi Column Macros | Checksum: 1513c7226
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:10:01 ; elapsed = 00:06:52 . Memory (MB): peak = 2032.340 ; gain = 8.0002default:default
v

Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101
H
<Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 36342b4c
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:10:50 ; elapsed = 00:07:31 . Memory (MB): peak = 2032.340 ; gain = 8.0002default:default
p

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101
B
6Phase 3.3 Area Swap Optimization | Checksum: d3fdb62b
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:10:52 ; elapsed = 00:07:32 . Memory (MB): peak = 2032.340 ; gain = 8.0002default:default
o

Phase %s%s
101*constraints2
3.4 2default:default2)
Timing Path Optimizer2default:defaultZ18-101
A
5Phase 3.4 Timing Path Optimizer | Checksum: 03fd7c28
*common
Ü

%s
*constraints2o
[Time (s): cpu = 00:11:05 ; elapsed = 00:07:41 . Memory (MB): peak = 2032.340 ; gain = 8.0002default:default
z

Phase %s%s
101*constraints2
3.5 2default:default24
 Commit Small Macros & Core Logic2default:defaultZ18-101
L
@Phase 3.5 Commit Small Macros & Core Logic | Checksum: 7f9b2cb6
*common
á

%s
*constraints2p
\Time (s): cpu = 00:11:50 ; elapsed = 00:08:22 . Memory (MB): peak = 2040.344 ; gain = 16.0042default:default
l

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101
>
2Phase 3.6 Re-assign LUT pins | Checksum: 7f9b2cb6
*common
á

%s
*constraints2p
\Time (s): cpu = 00:11:56 ; elapsed = 00:08:27 . Memory (MB): peak = 2040.344 ; gain = 16.0042default:default
:
.Phase 3 Detail Placement | Checksum: 7f9b2cb6
*common
á

%s
*constraints2p
\Time (s): cpu = 00:11:56 ; elapsed = 00:08:28 . Memory (MB): peak = 2040.344 ; gain = 16.0042default:default
Ä

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101
|

Phase %s%s
101*constraints2
4.1 2default:default26
"Post Placement Timing Optimization2default:defaultZ18-101
N
BPhase 4.1 Post Placement Timing Optimization | Checksum: 960e8f5e
*common
á

%s
*constraints2p
\Time (s): cpu = 00:12:32 ; elapsed = 00:08:50 . Memory (MB): peak = 2040.344 ; gain = 16.0042default:default
p

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101
B
6Phase 4.2 Post Placement Cleanup | Checksum: 960e8f5e
*common
á

%s
*constraints2p
\Time (s): cpu = 00:12:32 ; elapsed = 00:08:51 . Memory (MB): peak = 2040.344 ; gain = 16.0042default:default
j

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101
p

Phase %s%s
101*constraints2
4.3.1 2default:default2(
Congestion Reporting2default:defaultZ18-101
B
6Phase 4.3.1 Congestion Reporting | Checksum: 960e8f5e
*common
á

%s
*constraints2p
\Time (s): cpu = 00:12:33 ; elapsed = 00:08:52 . Memory (MB): peak = 2040.344 ; gain = 16.0042default:default
n

Phase %s%s
101*constraints2
4.3.2 2default:default2&
updateTiming final2default:defaultZ18-101
@
4Phase 4.3.2 updateTiming final | Checksum: bfadfa98
*common
á

%s
*constraints2p
\Time (s): cpu = 00:12:56 ; elapsed = 00:09:06 . Memory (MB): peak = 2040.344 ; gain = 16.0042default:default
p

Phase %s%s
101*constraints2
4.3.3 2default:default2(
Dump Critical Paths 2default:defaultZ18-101
B
6Phase 4.3.3 Dump Critical Paths  | Checksum: bfadfa98
*common
á

%s
*constraints2p
\Time (s): cpu = 00:12:58 ; elapsed = 00:09:07 . Memory (MB): peak = 2040.344 ; gain = 16.0042default:default
g

Phase %s%s
101*constraints2
4.3.4 2default:default2
Restore STA2default:defaultZ18-101
9
-Phase 4.3.4 Restore STA | Checksum: bfadfa98
*common
á

%s
*constraints2p
\Time (s): cpu = 00:12:59 ; elapsed = 00:09:08 . Memory (MB): peak = 2040.344 ; gain = 16.0042default:default
k

Phase %s%s
101*constraints2
4.3.5 2default:default2#
Print Final WNS2default:defaultZ18-101
m
!Post Placement Timing Summary %s
2*	placeflow20
| WNS=5.506  | TNS=0.000  |
2default:defaultZ30-100
=
1Phase 4.3.5 Print Final WNS | Checksum: bfadfa98
*common
á

%s
*constraints2p
\Time (s): cpu = 00:14:03 ; elapsed = 00:09:46 . Memory (MB): peak = 2040.344 ; gain = 16.0042default:default
<
0Phase 4.3 Placer Reporting | Checksum: bfadfa98
*common
á

%s
*constraints2p
\Time (s): cpu = 00:14:04 ; elapsed = 00:09:47 . Memory (MB): peak = 2040.344 ; gain = 16.0042default:default
q

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101
D
8Phase 4.4 Final Placement Cleanup | Checksum: 121748374
*common
á

%s
*constraints2p
\Time (s): cpu = 00:14:04 ; elapsed = 00:09:48 . Memory (MB): peak = 2040.344 ; gain = 16.0042default:default
S
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 121748374
*common
á

%s
*constraints2p
\Time (s): cpu = 00:14:05 ; elapsed = 00:09:48 . Memory (MB): peak = 2040.344 ; gain = 16.0042default:default
4
(Ending Placer Task | Checksum: dd762673
*common
á

%s
*constraints2p
\Time (s): cpu = 00:14:05 ; elapsed = 00:09:49 . Memory (MB): peak = 2040.344 ; gain = 16.0042default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
Ω
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
402default:default2
22default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42
¸
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:14:122default:default2
00:09:552default:default2
2040.3442default:default2
16.0042default:defaultZ17-268
a

DEBUG : %s144*timing2<
(Generate clock report | CPU: 5.49 secs 
2default:defaultZ38-163
á
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
report_clock_utilization: 2default:default2
00:00:052default:default2
00:00:062default:default2
2040.3442default:default2
0.0002default:defaultZ17-268
|
preport_utilization: Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 2040.344 ; gain = 0.000
*common
m

DEBUG : %s134*designutils2C
/Generate Control Sets report | CPU: 0.72 secs 
2default:defaultZ20-134
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
Ç
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:092default:default2
00:00:092default:default2
2040.3482default:default2
0.0002default:defaultZ17-268
ˇ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:442default:default2
00:00:342default:default2
2040.3482default:default2
0.0042default:defaultZ17-268


End Record