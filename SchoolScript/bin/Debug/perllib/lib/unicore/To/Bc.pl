# !!!!!!!   DO NOT EDIT THIS FILE   !!!!!!!
# This file is machine-generated by mktables from the Unicode
# database, Version 6.1.0.  Any changes made here will be lost!

# !!!!!!!   INTERNAL PERL USE ONLY   !!!!!!!
# This file is for internal use by core Perl only.  The format and even the
# name or existence of this file are subject to change without notice.  Don't
# use it directly.

# This file returns the synonymous mappings:
#         Bidi_Class(cp)
#         Bc(cp)
# 
# where 'cp' is one of the 15_581 code points in Unicode Version 6.1.0 for
# which the mapping is not to 'L'.  Note that these mappings are accessible
# via the function prop_invmap('Bidi_Class') in Unicode::UCD
# 
# For information about what this property really means, see:
# http://www.unicode.org/reports/tr44/
# 
# The format of the non-comment portions of the main body of lines of this
# file is: START\tSTOP\tMAPPING where START is the starting code point of the
# range, in hex; STOP is the ending point, or if omitted, the range has just
# one code point; MAPPING is what each code point between START and STOP maps
# to.  Numbers in comments in [brackets] indicate how many code points are in
# the range (omitted when the range is a single code point or if the mapping
# is to the null string).


# The name this swash is to be known by, with the format of the mappings in
# the main body of the table, and what all code points missing from this file
# map to.
$utf8::SwashInfo{'ToBc'}{'format'} = 's'; # string
$utf8::SwashInfo{'ToBc'}{'missing'} = 'L';

return <<'END';
0000	0008	BN	# [9]
0009		S
000A		B
000B		S
000C		WS
000D		B
000E	001B	BN	# [14]
001C	001E	B	# [3]
001F		S
0020		WS
0021	0022	ON	# [2]
0023	0025	ET	# [3]
0026	002A	ON	# [5]
002B		ES
002C		CS
002D		ES
002E	002F	CS	# [2]
0030	0039	EN	# [10]
003A		CS
003B	0040	ON	# [6]
005B	0060	ON	# [6]
007B	007E	ON	# [4]
007F	0084	BN	# [6]
0085		B
0086	009F	BN	# [26]
00A0		CS
00A1		ON
00A2	00A5	ET	# [4]
00A6	00A9	ON	# [4]
00AB	00AC	ON	# [2]
00AD		BN
00AE	00AF	ON	# [2]
00B0	00B1	ET	# [2]
00B2	00B3	EN	# [2]
00B4		ON
00B6	00B8	ON	# [3]
00B9		EN
00BB	00BF	ON	# [5]
00D7		ON
00F7		ON
02B9	02BA	ON	# [2]
02C2	02CF	ON	# [14]
02D2	02DF	ON	# [14]
02E5	02ED	ON	# [9]
02EF	02FF	ON	# [17]
0300	036F	NSM	# [112]
0374	0375	ON	# [2]
037E		ON
0384	0385	ON	# [2]
0387		ON
03F6		ON
0483	0489	NSM	# [7]
058A		ON
058F		ET
0590		R
0591	05BD	NSM	# [45]
05BE		R
05BF		NSM
05C0		R
05C1	05C2	NSM	# [2]
05C3		R
05C4	05C5	NSM	# [2]
05C6		R
05C7		NSM
05C8	05FF	R	# [56]
0600	0604	AN	# [5]
0605		AL
0606	0607	ON	# [2]
0608		AL
0609	060A	ET	# [2]
060B		AL
060C		CS
060D		AL
060E	060F	ON	# [2]
0610	061A	NSM	# [11]
061B	064A	AL	# [48]
064B	065F	NSM	# [21]
0660	0669	AN	# [10]
066A		ET
066B	066C	AN	# [2]
066D	066F	AL	# [3]
0670		NSM
0671	06D5	AL	# [101]
06D6	06DC	NSM	# [7]
06DD		AN
06DE		ON
06DF	06E4	NSM	# [6]
06E5	06E6	AL	# [2]
06E7	06E8	NSM	# [2]
06E9		ON
06EA	06ED	NSM	# [4]
06EE	06EF	AL	# [2]
06F0	06F9	EN	# [10]
06FA	0710	AL	# [23]
0711		NSM
0712	072F	AL	# [30]
0730	074A	NSM	# [27]
074B	07A5	AL	# [91]
07A6	07B0	NSM	# [11]
07B1	07BF	AL	# [15]
07C0	07EA	R	# [43]
07EB	07F3	NSM	# [9]
07F4	07F5	R	# [2]
07F6	07F9	ON	# [4]
07FA	0815	R	# [28]
0816	0819	NSM	# [4]
081A		R
081B	0823	NSM	# [9]
0824		R
0825	0827	NSM	# [3]
0828		R
0829	082D	NSM	# [5]
082E	0858	R	# [43]
0859	085B	NSM	# [3]
085C	089F	R	# [68]
08A0	08E3	AL	# [68]
08E4	08FE	NSM	# [27]
08FF		AL
0900	0902	NSM	# [3]
093A		NSM
093C		NSM
0941	0948	NSM	# [8]
094D		NSM
0951	0957	NSM	# [7]
0962	0963	NSM	# [2]
0981		NSM
09BC		NSM
09C1	09C4	NSM	# [4]
09CD		NSM
09E2	09E3	NSM	# [2]
09F2	09F3	ET	# [2]
09FB		ET
0A01	0A02	NSM	# [2]
0A3C		NSM
0A41	0A42	NSM	# [2]
0A47	0A48	NSM	# [2]
0A4B	0A4D	NSM	# [3]
0A51		NSM
0A70	0A71	NSM	# [2]
0A75		NSM
0A81	0A82	NSM	# [2]
0ABC		NSM
0AC1	0AC5	NSM	# [5]
0AC7	0AC8	NSM	# [2]
0ACD		NSM
0AE2	0AE3	NSM	# [2]
0AF1		ET
0B01		NSM
0B3C		NSM
0B3F		NSM
0B41	0B44	NSM	# [4]
0B4D		NSM
0B56		NSM
0B62	0B63	NSM	# [2]
0B82		NSM
0BC0		NSM
0BCD		NSM
0BF3	0BF8	ON	# [6]
0BF9		ET
0BFA		ON
0C3E	0C40	NSM	# [3]
0C46	0C48	NSM	# [3]
0C4A	0C4D	NSM	# [4]
0C55	0C56	NSM	# [2]
0C62	0C63	NSM	# [2]
0C78	0C7E	ON	# [7]
0CBC		NSM
0CCC	0CCD	NSM	# [2]
0CE2	0CE3	NSM	# [2]
0D41	0D44	NSM	# [4]
0D4D		NSM
0D62	0D63	NSM	# [2]
0DCA		NSM
0DD2	0DD4	NSM	# [3]
0DD6		NSM
0E31		NSM
0E34	0E3A	NSM	# [7]
0E3F		ET
0E47	0E4E	NSM	# [8]
0EB1		NSM
0EB4	0EB9	NSM	# [6]
0EBB	0EBC	NSM	# [2]
0EC8	0ECD	NSM	# [6]
0F18	0F19	NSM	# [2]
0F35		NSM
0F37		NSM
0F39		NSM
0F3A	0F3D	ON	# [4]
0F71	0F7E	NSM	# [14]
0F80	0F84	NSM	# [5]
0F86	0F87	NSM	# [2]
0F8D	0F97	NSM	# [11]
0F99	0FBC	NSM	# [36]
0FC6		NSM
102D	1030	NSM	# [4]
1032	1037	NSM	# [6]
1039	103A	NSM	# [2]
103D	103E	NSM	# [2]
1058	1059	NSM	# [2]
105E	1060	NSM	# [3]
1071	1074	NSM	# [4]
1082		NSM
1085	1086	NSM	# [2]
108D		NSM
109D		NSM
135D	135F	NSM	# [3]
1390	1399	ON	# [10]
1400		ON
1680		WS
169B	169C	ON	# [2]
1712	1714	NSM	# [3]
1732	1734	NSM	# [3]
1752	1753	NSM	# [2]
1772	1773	NSM	# [2]
17B4	17B5	NSM	# [2]
17B7	17BD	NSM	# [7]
17C6		NSM
17C9	17D3	NSM	# [11]
17DB		ET
17DD		NSM
17F0	17F9	ON	# [10]
1800	180A	ON	# [11]
180B	180D	NSM	# [3]
180E		WS
18A9		NSM
1920	1922	NSM	# [3]
1927	1928	NSM	# [2]
1932		NSM
1939	193B	NSM	# [3]
1940		ON
1944	1945	ON	# [2]
19DE	19FF	ON	# [34]
1A17	1A18	NSM	# [2]
1A56		NSM
1A58	1A5E	NSM	# [7]
1A60		NSM
1A62		NSM
1A65	1A6C	NSM	# [8]
1A73	1A7C	NSM	# [10]
1A7F		NSM
1B00	1B03	NSM	# [4]
1B34		NSM
1B36	1B3A	NSM	# [5]
1B3C		NSM
1B42		NSM
1B6B	1B73	NSM	# [9]
1B80	1B81	NSM	# [2]
1BA2	1BA5	NSM	# [4]
1BA8	1BA9	NSM	# [2]
1BAB		NSM
1BE6		NSM
1BE8	1BE9	NSM	# [2]
1BED		NSM
1BEF	1BF1	NSM	# [3]
1C2C	1C33	NSM	# [8]
1C36	1C37	NSM	# [2]
1CD0	1CD2	NSM	# [3]
1CD4	1CE0	NSM	# [13]
1CE2	1CE8	NSM	# [7]
1CED		NSM
1CF4		NSM
1DC0	1DE6	NSM	# [39]
1DFC	1DFF	NSM	# [4]
1FBD		ON
1FBF	1FC1	ON	# [3]
1FCD	1FCF	ON	# [3]
1FDD	1FDF	ON	# [3]
1FED	1FEF	ON	# [3]
1FFD	1FFE	ON	# [2]
2000	200A	WS	# [11]
200B	200D	BN	# [3]
200F		R
2010	2027	ON	# [24]
2028		WS
2029		B
202A		LRE
202B		RLE
202C		PDF
202D		LRO
202E		RLO
202F		CS
2030	2034	ET	# [5]
2035	2043	ON	# [15]
2044		CS
2045	205E	ON	# [26]
205F		WS
2060	206F	BN	# [16]
2070		EN
2074	2079	EN	# [6]
207A	207B	ES	# [2]
207C	207E	ON	# [3]
2080	2089	EN	# [10]
208A	208B	ES	# [2]
208C	208E	ON	# [3]
20A0	20B9	ET	# [26]
20D0	20F0	NSM	# [33]
2100	2101	ON	# [2]
2103	2106	ON	# [4]
2108	2109	ON	# [2]
2114		ON
2116	2118	ON	# [3]
211E	2123	ON	# [6]
2125		ON
2127		ON
2129		ON
212E		ET
213A	213B	ON	# [2]
2140	2144	ON	# [5]
214A	214D	ON	# [4]
2150	215F	ON	# [16]
2189		ON
2190	2211	ON	# [130]
2212		ES
2213		ET
2214	2335	ON	# [290]
237B	2394	ON	# [26]
2396	23F3	ON	# [94]
2400	2426	ON	# [39]
2440	244A	ON	# [11]
2460	2487	ON	# [40]
2488	249B	EN	# [20]
24EA	26AB	ON	# [450]
26AD	26FF	ON	# [83]
2701	27FF	ON	# [255]
2900	2B4C	ON	# [589]
2B50	2B59	ON	# [10]
2CE5	2CEA	ON	# [6]
2CEF	2CF1	NSM	# [3]
2CF9	2CFF	ON	# [7]
2D7F		NSM
2DE0	2DFF	NSM	# [32]
2E00	2E3B	ON	# [60]
2E80	2E99	ON	# [26]
2E9B	2EF3	ON	# [89]
2F00	2FD5	ON	# [214]
2FF0	2FFB	ON	# [12]
3000		WS
3001	3004	ON	# [4]
3008	3020	ON	# [25]
302A	302D	NSM	# [4]
3030		ON
3036	3037	ON	# [2]
303D	303F	ON	# [3]
3099	309A	NSM	# [2]
309B	309C	ON	# [2]
30A0		ON
30FB		ON
31C0	31E3	ON	# [36]
321D	321E	ON	# [2]
3250	325F	ON	# [16]
327C	327E	ON	# [3]
32B1	32BF	ON	# [15]
32CC	32CF	ON	# [4]
3377	337A	ON	# [4]
33DE	33DF	ON	# [2]
33FF		ON
4DC0	4DFF	ON	# [64]
A490	A4C6	ON	# [55]
A60D	A60F	ON	# [3]
A66F	A672	NSM	# [4]
A673		ON
A674	A67D	NSM	# [10]
A67E	A67F	ON	# [2]
A69F		NSM
A6F0	A6F1	NSM	# [2]
A700	A721	ON	# [34]
A788		ON
A802		NSM
A806		NSM
A80B		NSM
A825	A826	NSM	# [2]
A828	A82B	ON	# [4]
A838	A839	ET	# [2]
A874	A877	ON	# [4]
A8C4		NSM
A8E0	A8F1	NSM	# [18]
A926	A92D	NSM	# [8]
A947	A951	NSM	# [11]
A980	A982	NSM	# [3]
A9B3		NSM
A9B6	A9B9	NSM	# [4]
A9BC		NSM
AA29	AA2E	NSM	# [6]
AA31	AA32	NSM	# [2]
AA35	AA36	NSM	# [2]
AA43		NSM
AA4C		NSM
AAB0		NSM
AAB2	AAB4	NSM	# [3]
AAB7	AAB8	NSM	# [2]
AABE	AABF	NSM	# [2]
AAC1		NSM
AAEC	AAED	NSM	# [2]
AAF6		NSM
ABE5		NSM
ABE8		NSM
ABED		NSM
FB1D		R
FB1E		NSM
FB1F	FB28	R	# [10]
FB29		ES
FB2A	FB4F	R	# [38]
FB50	FD3D	AL	# [494]
FD3E	FD3F	ON	# [2]
FD40	FDCF	AL	# [144]
FDD0	FDEF	BN	# [32]
FDF0	FDFC	AL	# [13]
FDFD		ON
FDFE	FDFF	AL	# [2]
FE00	FE0F	NSM	# [16]
FE10	FE19	ON	# [10]
FE20	FE26	NSM	# [7]
FE30	FE4F	ON	# [32]
FE50		CS
FE51		ON
FE52		CS
FE54		ON
FE55		CS
FE56	FE5E	ON	# [9]
FE5F		ET
FE60	FE61	ON	# [2]
FE62	FE63	ES	# [2]
FE64	FE66	ON	# [3]
FE68		ON
FE69	FE6A	ET	# [2]
FE6B		ON
FE70	FEFE	AL	# [143]
FEFF		BN
FF01	FF02	ON	# [2]
FF03	FF05	ET	# [3]
FF06	FF0A	ON	# [5]
FF0B		ES
FF0C		CS
FF0D		ES
FF0E	FF0F	CS	# [2]
FF10	FF19	EN	# [10]
FF1A		CS
FF1B	FF20	ON	# [6]
FF3B	FF40	ON	# [6]
FF5B	FF65	ON	# [11]
FFE0	FFE1	ET	# [2]
FFE2	FFE4	ON	# [3]
FFE5	FFE6	ET	# [2]
FFE8	FFEE	ON	# [7]
FFF0	FFF8	BN	# [9]
FFF9	FFFD	ON	# [5]
FFFE	FFFF	BN	# [2]
10101		ON
10140	1018A	ON	# [75]
10190	1019B	ON	# [12]
101FD		NSM
10800	1091E	R	# [287]
1091F		ON
10920	10A00	R	# [225]
10A01	10A03	NSM	# [3]
10A04		R
10A05	10A06	NSM	# [2]
10A07	10A0B	R	# [5]
10A0C	10A0F	NSM	# [4]
10A10	10A37	R	# [40]
10A38	10A3A	NSM	# [3]
10A3B	10A3E	R	# [4]
10A3F		NSM
10A40	10B38	R	# [249]
10B39	10B3F	ON	# [7]
10B40	10E5F	R	# [800]
10E60	10E7E	AN	# [31]
10E7F	10FFF	R	# [385]
11001		NSM
11038	11046	NSM	# [15]
11052	11065	ON	# [20]
11080	11081	NSM	# [2]
110B3	110B6	NSM	# [4]
110B9	110BA	NSM	# [2]
11100	11102	NSM	# [3]
11127	1112B	NSM	# [5]
1112D	11134	NSM	# [8]
11180	11181	NSM	# [2]
111B6	111BE	NSM	# [9]
116AB		NSM
116AD		NSM
116B0	116B5	NSM	# [6]
116B7		NSM
16F8F	16F92	NSM	# [4]
1D167	1D169	NSM	# [3]
1D173	1D17A	BN	# [8]
1D17B	1D182	NSM	# [8]
1D185	1D18B	NSM	# [7]
1D1AA	1D1AD	NSM	# [4]
1D200	1D241	ON	# [66]
1D242	1D244	NSM	# [3]
1D245		ON
1D300	1D356	ON	# [87]
1D6DB		ON
1D715		ON
1D74F		ON
1D789		ON
1D7C3		ON
1D7CE	1D7FF	EN	# [50]
1E800	1EDFF	R	# [1536]
1EE00	1EEEF	AL	# [240]
1EEF0	1EEF1	ON	# [2]
1EEF2	1EEFF	AL	# [14]
1EF00	1EFFF	R	# [256]
1F000	1F02B	ON	# [44]
1F030	1F093	ON	# [100]
1F0A0	1F0AE	ON	# [15]
1F0B1	1F0BE	ON	# [14]
1F0C1	1F0CF	ON	# [15]
1F0D1	1F0DF	ON	# [15]
1F100	1F10A	EN	# [11]
1F16A	1F16B	ON	# [2]
1F300	1F320	ON	# [33]
1F330	1F335	ON	# [6]
1F337	1F37C	ON	# [70]
1F380	1F393	ON	# [20]
1F3A0	1F3C4	ON	# [37]
1F3C6	1F3CA	ON	# [5]
1F3E0	1F3F0	ON	# [17]
1F400	1F43E	ON	# [63]
1F440		ON
1F442	1F4F7	ON	# [182]
1F4F9	1F4FC	ON	# [4]
1F500	1F53D	ON	# [62]
1F540	1F543	ON	# [4]
1F550	1F567	ON	# [24]
1F5FB	1F640	ON	# [70]
1F645	1F64F	ON	# [11]
1F680	1F6C5	ON	# [70]
1F700	1F773	ON	# [116]
1FFFE	1FFFF	BN	# [2]
2FFFE	2FFFF	BN	# [2]
3FFFE	3FFFF	BN	# [2]
4FFFE	4FFFF	BN	# [2]
5FFFE	5FFFF	BN	# [2]
6FFFE	6FFFF	BN	# [2]
7FFFE	7FFFF	BN	# [2]
8FFFE	8FFFF	BN	# [2]
9FFFE	9FFFF	BN	# [2]
AFFFE	AFFFF	BN	# [2]
BFFFE	BFFFF	BN	# [2]
CFFFE	CFFFF	BN	# [2]
DFFFE	E00FF	BN	# [258]
E0100	E01EF	NSM	# [240]
E01F0	E0FFF	BN	# [3600]
EFFFE	EFFFF	BN	# [2]
FFFFE	FFFFF	BN	# [2]
10FFFE	10FFFF	BN	# [2]
END
