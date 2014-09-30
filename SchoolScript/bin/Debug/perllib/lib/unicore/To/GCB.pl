# !!!!!!!   DO NOT EDIT THIS FILE   !!!!!!!
# This file is machine-generated by mktables from the Unicode
# database, Version 6.1.0.  Any changes made here will be lost!

# !!!!!!!   INTERNAL PERL USE ONLY   !!!!!!!
# This file is for internal use by core Perl only.  The format and even the
# name or existence of this file are subject to change without notice.  Don't
# use it directly.

# This file returns the synonymous mappings:
#         Grapheme_Cluster_Break(cp)
#         GCB(cp)
# 
# where 'cp' is one of the 19_162 code points in Unicode Version 6.1.0 for
# which the mapping is not to 'Other'.  Note that these mappings are
# accessible via the function prop_invmap('Grapheme_Cluster_Break') in
# Unicode::UCD
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
$utf8::SwashInfo{'ToGCB'}{'format'} = 's'; # string
$utf8::SwashInfo{'ToGCB'}{'missing'} = 'Other';

return <<'END';
0000	0009	Control # [10]
000A		LF
000B	000C	Control # [2]
000D		CR
000E	001F	Control # [18]
007F	009F	Control # [33]
00AD		Control
0300	036F	Extend	# [112]
0483	0489	Extend	# [7]
0591	05BD	Extend	# [45]
05BF		Extend
05C1	05C2	Extend	# [2]
05C4	05C5	Extend	# [2]
05C7		Extend
0600	0604	Control # [5]
0610	061A	Extend	# [11]
064B	065F	Extend	# [21]
0670		Extend
06D6	06DC	Extend	# [7]
06DD		Control
06DF	06E4	Extend	# [6]
06E7	06E8	Extend	# [2]
06EA	06ED	Extend	# [4]
070F		Control
0711		Extend
0730	074A	Extend	# [27]
07A6	07B0	Extend	# [11]
07EB	07F3	Extend	# [9]
0816	0819	Extend	# [4]
081B	0823	Extend	# [9]
0825	0827	Extend	# [3]
0829	082D	Extend	# [5]
0859	085B	Extend	# [3]
08E4	08FE	Extend	# [27]
0900	0902	Extend	# [3]
0903		SpacingMark
093A		Extend
093B		SpacingMark
093C		Extend
093E	0940	SpacingMark # [3]
0941	0948	Extend	# [8]
0949	094C	SpacingMark # [4]
094D		Extend
094E	094F	SpacingMark # [2]
0951	0957	Extend	# [7]
0962	0963	Extend	# [2]
0981		Extend
0982	0983	SpacingMark # [2]
09BC		Extend
09BE		Extend
09BF	09C0	SpacingMark # [2]
09C1	09C4	Extend	# [4]
09C7	09C8	SpacingMark # [2]
09CB	09CC	SpacingMark # [2]
09CD		Extend
09D7		Extend
09E2	09E3	Extend	# [2]
0A01	0A02	Extend	# [2]
0A03		SpacingMark
0A3C		Extend
0A3E	0A40	SpacingMark # [3]
0A41	0A42	Extend	# [2]
0A47	0A48	Extend	# [2]
0A4B	0A4D	Extend	# [3]
0A51		Extend
0A70	0A71	Extend	# [2]
0A75		Extend
0A81	0A82	Extend	# [2]
0A83		SpacingMark
0ABC		Extend
0ABE	0AC0	SpacingMark # [3]
0AC1	0AC5	Extend	# [5]
0AC7	0AC8	Extend	# [2]
0AC9		SpacingMark
0ACB	0ACC	SpacingMark # [2]
0ACD		Extend
0AE2	0AE3	Extend	# [2]
0B01		Extend
0B02	0B03	SpacingMark # [2]
0B3C		Extend
0B3E	0B3F	Extend	# [2]
0B40		SpacingMark
0B41	0B44	Extend	# [4]
0B47	0B48	SpacingMark # [2]
0B4B	0B4C	SpacingMark # [2]
0B4D		Extend
0B56	0B57	Extend	# [2]
0B62	0B63	Extend	# [2]
0B82		Extend
0BBE		Extend
0BBF		SpacingMark
0BC0		Extend
0BC1	0BC2	SpacingMark # [2]
0BC6	0BC8	SpacingMark # [3]
0BCA	0BCC	SpacingMark # [3]
0BCD		Extend
0BD7		Extend
0C01	0C03	SpacingMark # [3]
0C3E	0C40	Extend	# [3]
0C41	0C44	SpacingMark # [4]
0C46	0C48	Extend	# [3]
0C4A	0C4D	Extend	# [4]
0C55	0C56	Extend	# [2]
0C62	0C63	Extend	# [2]
0C82	0C83	SpacingMark # [2]
0CBC		Extend
0CBE		SpacingMark
0CBF		Extend
0CC0	0CC1	SpacingMark # [2]
0CC2		Extend
0CC3	0CC4	SpacingMark # [2]
0CC6		Extend
0CC7	0CC8	SpacingMark # [2]
0CCA	0CCB	SpacingMark # [2]
0CCC	0CCD	Extend	# [2]
0CD5	0CD6	Extend	# [2]
0CE2	0CE3	Extend	# [2]
0D02	0D03	SpacingMark # [2]
0D3E		Extend
0D3F	0D40	SpacingMark # [2]
0D41	0D44	Extend	# [4]
0D46	0D48	SpacingMark # [3]
0D4A	0D4C	SpacingMark # [3]
0D4D		Extend
0D57		Extend
0D62	0D63	Extend	# [2]
0D82	0D83	SpacingMark # [2]
0DCA		Extend
0DCF		Extend
0DD0	0DD1	SpacingMark # [2]
0DD2	0DD4	Extend	# [3]
0DD6		Extend
0DD8	0DDE	SpacingMark # [7]
0DDF		Extend
0DF2	0DF3	SpacingMark # [2]
0E31		Extend
0E33		SpacingMark
0E34	0E3A	Extend	# [7]
0E47	0E4E	Extend	# [8]
0EB1		Extend
0EB3		SpacingMark
0EB4	0EB9	Extend	# [6]
0EBB	0EBC	Extend	# [2]
0EC8	0ECD	Extend	# [6]
0F18	0F19	Extend	# [2]
0F35		Extend
0F37		Extend
0F39		Extend
0F3E	0F3F	SpacingMark # [2]
0F71	0F7E	Extend	# [14]
0F7F		SpacingMark
0F80	0F84	Extend	# [5]
0F86	0F87	Extend	# [2]
0F8D	0F97	Extend	# [11]
0F99	0FBC	Extend	# [36]
0FC6		Extend
102D	1030	Extend	# [4]
1031		SpacingMark
1032	1037	Extend	# [6]
1039	103A	Extend	# [2]
103B	103C	SpacingMark # [2]
103D	103E	Extend	# [2]
1056	1057	SpacingMark # [2]
1058	1059	Extend	# [2]
105E	1060	Extend	# [3]
1071	1074	Extend	# [4]
1082		Extend
1084		SpacingMark
1085	1086	Extend	# [2]
108D		Extend
109D		Extend
1100	115F	L	# [96]
1160	11A7	V	# [72]
11A8	11FF	T	# [88]
135D	135F	Extend	# [3]
1712	1714	Extend	# [3]
1732	1734	Extend	# [3]
1752	1753	Extend	# [2]
1772	1773	Extend	# [2]
17B4	17B5	Extend	# [2]
17B6		SpacingMark
17B7	17BD	Extend	# [7]
17BE	17C5	SpacingMark # [8]
17C6		Extend
17C7	17C8	SpacingMark # [2]
17C9	17D3	Extend	# [11]
17DD		Extend
180B	180D	Extend	# [3]
18A9		Extend
1920	1922	Extend	# [3]
1923	1926	SpacingMark # [4]
1927	1928	Extend	# [2]
1929	192B	SpacingMark # [3]
1930	1931	SpacingMark # [2]
1932		Extend
1933	1938	SpacingMark # [6]
1939	193B	Extend	# [3]
19B5	19B7	SpacingMark # [3]
19BA		SpacingMark
1A17	1A18	Extend	# [2]
1A19	1A1B	SpacingMark # [3]
1A55		SpacingMark
1A56		Extend
1A57		SpacingMark
1A58	1A5E	Extend	# [7]
1A60		Extend
1A62		Extend
1A65	1A6C	Extend	# [8]
1A6D	1A72	SpacingMark # [6]
1A73	1A7C	Extend	# [10]
1A7F		Extend
1B00	1B03	Extend	# [4]
1B04		SpacingMark
1B34		Extend
1B35		SpacingMark
1B36	1B3A	Extend	# [5]
1B3B		SpacingMark
1B3C		Extend
1B3D	1B41	SpacingMark # [5]
1B42		Extend
1B43	1B44	SpacingMark # [2]
1B6B	1B73	Extend	# [9]
1B80	1B81	Extend	# [2]
1B82		SpacingMark
1BA1		SpacingMark
1BA2	1BA5	Extend	# [4]
1BA6	1BA7	SpacingMark # [2]
1BA8	1BA9	Extend	# [2]
1BAA		SpacingMark
1BAB		Extend
1BAC	1BAD	SpacingMark # [2]
1BE6		Extend
1BE7		SpacingMark
1BE8	1BE9	Extend	# [2]
1BEA	1BEC	SpacingMark # [3]
1BED		Extend
1BEE		SpacingMark
1BEF	1BF1	Extend	# [3]
1BF2	1BF3	SpacingMark # [2]
1C24	1C2B	SpacingMark # [8]
1C2C	1C33	Extend	# [8]
1C34	1C35	SpacingMark # [2]
1C36	1C37	Extend	# [2]
1CD0	1CD2	Extend	# [3]
1CD4	1CE0	Extend	# [13]
1CE1		SpacingMark
1CE2	1CE8	Extend	# [7]
1CED		Extend
1CF2	1CF3	SpacingMark # [2]
1CF4		Extend
1DC0	1DE6	Extend	# [39]
1DFC	1DFF	Extend	# [4]
200B		Control
200C	200D	Extend	# [2]
200E	200F	Control # [2]
2028	202E	Control # [7]
2060	206F	Control # [16]
20D0	20F0	Extend	# [33]
2CEF	2CF1	Extend	# [3]
2D7F		Extend
2DE0	2DFF	Extend	# [32]
302A	302F	Extend	# [6]
3099	309A	Extend	# [2]
A66F	A672	Extend	# [4]
A674	A67D	Extend	# [10]
A69F		Extend
A6F0	A6F1	Extend	# [2]
A802		Extend
A806		Extend
A80B		Extend
A823	A824	SpacingMark # [2]
A825	A826	Extend	# [2]
A827		SpacingMark
A880	A881	SpacingMark # [2]
A8B4	A8C3	SpacingMark # [16]
A8C4		Extend
A8E0	A8F1	Extend	# [18]
A926	A92D	Extend	# [8]
A947	A951	Extend	# [11]
A952	A953	SpacingMark # [2]
A960	A97C	L	# [29]
A980	A982	Extend	# [3]
A983		SpacingMark
A9B3		Extend
A9B4	A9B5	SpacingMark # [2]
A9B6	A9B9	Extend	# [4]
A9BA	A9BB	SpacingMark # [2]
A9BC		Extend
A9BD	A9C0	SpacingMark # [4]
AA29	AA2E	Extend	# [6]
AA2F	AA30	SpacingMark # [2]
AA31	AA32	Extend	# [2]
AA33	AA34	SpacingMark # [2]
AA35	AA36	Extend	# [2]
AA43		Extend
AA4C		Extend
AA4D		SpacingMark
AAB0		Extend
AAB2	AAB4	Extend	# [3]
AAB7	AAB8	Extend	# [2]
AABE	AABF	Extend	# [2]
AAC1		Extend
AAEB		SpacingMark
AAEC	AAED	Extend	# [2]
AAEE	AAEF	SpacingMark # [2]
AAF5		SpacingMark
AAF6		Extend
ABE3	ABE4	SpacingMark # [2]
ABE5		Extend
ABE6	ABE7	SpacingMark # [2]
ABE8		Extend
ABE9	ABEA	SpacingMark # [2]
ABEC		SpacingMark
ABED		Extend
AC00		LV
AC01	AC1B	LVT	# [27]
AC1C		LV
AC1D	AC37	LVT	# [27]
AC38		LV
AC39	AC53	LVT	# [27]
AC54		LV
AC55	AC6F	LVT	# [27]
AC70		LV
AC71	AC8B	LVT	# [27]
AC8C		LV
AC8D	ACA7	LVT	# [27]
ACA8		LV
ACA9	ACC3	LVT	# [27]
ACC4		LV
ACC5	ACDF	LVT	# [27]
ACE0		LV
ACE1	ACFB	LVT	# [27]
ACFC		LV
ACFD	AD17	LVT	# [27]
AD18		LV
AD19	AD33	LVT	# [27]
AD34		LV
AD35	AD4F	LVT	# [27]
AD50		LV
AD51	AD6B	LVT	# [27]
AD6C		LV
AD6D	AD87	LVT	# [27]
AD88		LV
AD89	ADA3	LVT	# [27]
ADA4		LV
ADA5	ADBF	LVT	# [27]
ADC0		LV
ADC1	ADDB	LVT	# [27]
ADDC		LV
ADDD	ADF7	LVT	# [27]
ADF8		LV
ADF9	AE13	LVT	# [27]
AE14		LV
AE15	AE2F	LVT	# [27]
AE30		LV
AE31	AE4B	LVT	# [27]
AE4C		LV
AE4D	AE67	LVT	# [27]
AE68		LV
AE69	AE83	LVT	# [27]
AE84		LV
AE85	AE9F	LVT	# [27]
AEA0		LV
AEA1	AEBB	LVT	# [27]
AEBC		LV
AEBD	AED7	LVT	# [27]
AED8		LV
AED9	AEF3	LVT	# [27]
AEF4		LV
AEF5	AF0F	LVT	# [27]
AF10		LV
AF11	AF2B	LVT	# [27]
AF2C		LV
AF2D	AF47	LVT	# [27]
AF48		LV
AF49	AF63	LVT	# [27]
AF64		LV
AF65	AF7F	LVT	# [27]
AF80		LV
AF81	AF9B	LVT	# [27]
AF9C		LV
AF9D	AFB7	LVT	# [27]
AFB8		LV
AFB9	AFD3	LVT	# [27]
AFD4		LV
AFD5	AFEF	LVT	# [27]
AFF0		LV
AFF1	B00B	LVT	# [27]
B00C		LV
B00D	B027	LVT	# [27]
B028		LV
B029	B043	LVT	# [27]
B044		LV
B045	B05F	LVT	# [27]
B060		LV
B061	B07B	LVT	# [27]
B07C		LV
B07D	B097	LVT	# [27]
B098		LV
B099	B0B3	LVT	# [27]
B0B4		LV
B0B5	B0CF	LVT	# [27]
B0D0		LV
B0D1	B0EB	LVT	# [27]
B0EC		LV
B0ED	B107	LVT	# [27]
B108		LV
B109	B123	LVT	# [27]
B124		LV
B125	B13F	LVT	# [27]
B140		LV
B141	B15B	LVT	# [27]
B15C		LV
B15D	B177	LVT	# [27]
B178		LV
B179	B193	LVT	# [27]
B194		LV
B195	B1AF	LVT	# [27]
B1B0		LV
B1B1	B1CB	LVT	# [27]
B1CC		LV
B1CD	B1E7	LVT	# [27]
B1E8		LV
B1E9	B203	LVT	# [27]
B204		LV
B205	B21F	LVT	# [27]
B220		LV
B221	B23B	LVT	# [27]
B23C		LV
B23D	B257	LVT	# [27]
B258		LV
B259	B273	LVT	# [27]
B274		LV
B275	B28F	LVT	# [27]
B290		LV
B291	B2AB	LVT	# [27]
B2AC		LV
B2AD	B2C7	LVT	# [27]
B2C8		LV
B2C9	B2E3	LVT	# [27]
B2E4		LV
B2E5	B2FF	LVT	# [27]
B300		LV
B301	B31B	LVT	# [27]
B31C		LV
B31D	B337	LVT	# [27]
B338		LV
B339	B353	LVT	# [27]
B354		LV
B355	B36F	LVT	# [27]
B370		LV
B371	B38B	LVT	# [27]
B38C		LV
B38D	B3A7	LVT	# [27]
B3A8		LV
B3A9	B3C3	LVT	# [27]
B3C4		LV
B3C5	B3DF	LVT	# [27]
B3E0		LV
B3E1	B3FB	LVT	# [27]
B3FC		LV
B3FD	B417	LVT	# [27]
B418		LV
B419	B433	LVT	# [27]
B434		LV
B435	B44F	LVT	# [27]
B450		LV
B451	B46B	LVT	# [27]
B46C		LV
B46D	B487	LVT	# [27]
B488		LV
B489	B4A3	LVT	# [27]
B4A4		LV
B4A5	B4BF	LVT	# [27]
B4C0		LV
B4C1	B4DB	LVT	# [27]
B4DC		LV
B4DD	B4F7	LVT	# [27]
B4F8		LV
B4F9	B513	LVT	# [27]
B514		LV
B515	B52F	LVT	# [27]
B530		LV
B531	B54B	LVT	# [27]
B54C		LV
B54D	B567	LVT	# [27]
B568		LV
B569	B583	LVT	# [27]
B584		LV
B585	B59F	LVT	# [27]
B5A0		LV
B5A1	B5BB	LVT	# [27]
B5BC		LV
B5BD	B5D7	LVT	# [27]
B5D8		LV
B5D9	B5F3	LVT	# [27]
B5F4		LV
B5F5	B60F	LVT	# [27]
B610		LV
B611	B62B	LVT	# [27]
B62C		LV
B62D	B647	LVT	# [27]
B648		LV
B649	B663	LVT	# [27]
B664		LV
B665	B67F	LVT	# [27]
B680		LV
B681	B69B	LVT	# [27]
B69C		LV
B69D	B6B7	LVT	# [27]
B6B8		LV
B6B9	B6D3	LVT	# [27]
B6D4		LV
B6D5	B6EF	LVT	# [27]
B6F0		LV
B6F1	B70B	LVT	# [27]
B70C		LV
B70D	B727	LVT	# [27]
B728		LV
B729	B743	LVT	# [27]
B744		LV
B745	B75F	LVT	# [27]
B760		LV
B761	B77B	LVT	# [27]
B77C		LV
B77D	B797	LVT	# [27]
B798		LV
B799	B7B3	LVT	# [27]
B7B4		LV
B7B5	B7CF	LVT	# [27]
B7D0		LV
B7D1	B7EB	LVT	# [27]
B7EC		LV
B7ED	B807	LVT	# [27]
B808		LV
B809	B823	LVT	# [27]
B824		LV
B825	B83F	LVT	# [27]
B840		LV
B841	B85B	LVT	# [27]
B85C		LV
B85D	B877	LVT	# [27]
B878		LV
B879	B893	LVT	# [27]
B894		LV
B895	B8AF	LVT	# [27]
B8B0		LV
B8B1	B8CB	LVT	# [27]
B8CC		LV
B8CD	B8E7	LVT	# [27]
B8E8		LV
B8E9	B903	LVT	# [27]
B904		LV
B905	B91F	LVT	# [27]
B920		LV
B921	B93B	LVT	# [27]
B93C		LV
B93D	B957	LVT	# [27]
B958		LV
B959	B973	LVT	# [27]
B974		LV
B975	B98F	LVT	# [27]
B990		LV
B991	B9AB	LVT	# [27]
B9AC		LV
B9AD	B9C7	LVT	# [27]
B9C8		LV
B9C9	B9E3	LVT	# [27]
B9E4		LV
B9E5	B9FF	LVT	# [27]
BA00		LV
BA01	BA1B	LVT	# [27]
BA1C		LV
BA1D	BA37	LVT	# [27]
BA38		LV
BA39	BA53	LVT	# [27]
BA54		LV
BA55	BA6F	LVT	# [27]
BA70		LV
BA71	BA8B	LVT	# [27]
BA8C		LV
BA8D	BAA7	LVT	# [27]
BAA8		LV
BAA9	BAC3	LVT	# [27]
BAC4		LV
BAC5	BADF	LVT	# [27]
BAE0		LV
BAE1	BAFB	LVT	# [27]
BAFC		LV
BAFD	BB17	LVT	# [27]
BB18		LV
BB19	BB33	LVT	# [27]
BB34		LV
BB35	BB4F	LVT	# [27]
BB50		LV
BB51	BB6B	LVT	# [27]
BB6C		LV
BB6D	BB87	LVT	# [27]
BB88		LV
BB89	BBA3	LVT	# [27]
BBA4		LV
BBA5	BBBF	LVT	# [27]
BBC0		LV
BBC1	BBDB	LVT	# [27]
BBDC		LV
BBDD	BBF7	LVT	# [27]
BBF8		LV
BBF9	BC13	LVT	# [27]
BC14		LV
BC15	BC2F	LVT	# [27]
BC30		LV
BC31	BC4B	LVT	# [27]
BC4C		LV
BC4D	BC67	LVT	# [27]
BC68		LV
BC69	BC83	LVT	# [27]
BC84		LV
BC85	BC9F	LVT	# [27]
BCA0		LV
BCA1	BCBB	LVT	# [27]
BCBC		LV
BCBD	BCD7	LVT	# [27]
BCD8		LV
BCD9	BCF3	LVT	# [27]
BCF4		LV
BCF5	BD0F	LVT	# [27]
BD10		LV
BD11	BD2B	LVT	# [27]
BD2C		LV
BD2D	BD47	LVT	# [27]
BD48		LV
BD49	BD63	LVT	# [27]
BD64		LV
BD65	BD7F	LVT	# [27]
BD80		LV
BD81	BD9B	LVT	# [27]
BD9C		LV
BD9D	BDB7	LVT	# [27]
BDB8		LV
BDB9	BDD3	LVT	# [27]
BDD4		LV
BDD5	BDEF	LVT	# [27]
BDF0		LV
BDF1	BE0B	LVT	# [27]
BE0C		LV
BE0D	BE27	LVT	# [27]
BE28		LV
BE29	BE43	LVT	# [27]
BE44		LV
BE45	BE5F	LVT	# [27]
BE60		LV
BE61	BE7B	LVT	# [27]
BE7C		LV
BE7D	BE97	LVT	# [27]
BE98		LV
BE99	BEB3	LVT	# [27]
BEB4		LV
BEB5	BECF	LVT	# [27]
BED0		LV
BED1	BEEB	LVT	# [27]
BEEC		LV
BEED	BF07	LVT	# [27]
BF08		LV
BF09	BF23	LVT	# [27]
BF24		LV
BF25	BF3F	LVT	# [27]
BF40		LV
BF41	BF5B	LVT	# [27]
BF5C		LV
BF5D	BF77	LVT	# [27]
BF78		LV
BF79	BF93	LVT	# [27]
BF94		LV
BF95	BFAF	LVT	# [27]
BFB0		LV
BFB1	BFCB	LVT	# [27]
BFCC		LV
BFCD	BFE7	LVT	# [27]
BFE8		LV
BFE9	C003	LVT	# [27]
C004		LV
C005	C01F	LVT	# [27]
C020		LV
C021	C03B	LVT	# [27]
C03C		LV
C03D	C057	LVT	# [27]
C058		LV
C059	C073	LVT	# [27]
C074		LV
C075	C08F	LVT	# [27]
C090		LV
C091	C0AB	LVT	# [27]
C0AC		LV
C0AD	C0C7	LVT	# [27]
C0C8		LV
C0C9	C0E3	LVT	# [27]
C0E4		LV
C0E5	C0FF	LVT	# [27]
C100		LV
C101	C11B	LVT	# [27]
C11C		LV
C11D	C137	LVT	# [27]
C138		LV
C139	C153	LVT	# [27]
C154		LV
C155	C16F	LVT	# [27]
C170		LV
C171	C18B	LVT	# [27]
C18C		LV
C18D	C1A7	LVT	# [27]
C1A8		LV
C1A9	C1C3	LVT	# [27]
C1C4		LV
C1C5	C1DF	LVT	# [27]
C1E0		LV
C1E1	C1FB	LVT	# [27]
C1FC		LV
C1FD	C217	LVT	# [27]
C218		LV
C219	C233	LVT	# [27]
C234		LV
C235	C24F	LVT	# [27]
C250		LV
C251	C26B	LVT	# [27]
C26C		LV
C26D	C287	LVT	# [27]
C288		LV
C289	C2A3	LVT	# [27]
C2A4		LV
C2A5	C2BF	LVT	# [27]
C2C0		LV
C2C1	C2DB	LVT	# [27]
C2DC		LV
C2DD	C2F7	LVT	# [27]
C2F8		LV
C2F9	C313	LVT	# [27]
C314		LV
C315	C32F	LVT	# [27]
C330		LV
C331	C34B	LVT	# [27]
C34C		LV
C34D	C367	LVT	# [27]
C368		LV
C369	C383	LVT	# [27]
C384		LV
C385	C39F	LVT	# [27]
C3A0		LV
C3A1	C3BB	LVT	# [27]
C3BC		LV
C3BD	C3D7	LVT	# [27]
C3D8		LV
C3D9	C3F3	LVT	# [27]
C3F4		LV
C3F5	C40F	LVT	# [27]
C410		LV
C411	C42B	LVT	# [27]
C42C		LV
C42D	C447	LVT	# [27]
C448		LV
C449	C463	LVT	# [27]
C464		LV
C465	C47F	LVT	# [27]
C480		LV
C481	C49B	LVT	# [27]
C49C		LV
C49D	C4B7	LVT	# [27]
C4B8		LV
C4B9	C4D3	LVT	# [27]
C4D4		LV
C4D5	C4EF	LVT	# [27]
C4F0		LV
C4F1	C50B	LVT	# [27]
C50C		LV
C50D	C527	LVT	# [27]
C528		LV
C529	C543	LVT	# [27]
C544		LV
C545	C55F	LVT	# [27]
C560		LV
C561	C57B	LVT	# [27]
C57C		LV
C57D	C597	LVT	# [27]
C598		LV
C599	C5B3	LVT	# [27]
C5B4		LV
C5B5	C5CF	LVT	# [27]
C5D0		LV
C5D1	C5EB	LVT	# [27]
C5EC		LV
C5ED	C607	LVT	# [27]
C608		LV
C609	C623	LVT	# [27]
C624		LV
C625	C63F	LVT	# [27]
C640		LV
C641	C65B	LVT	# [27]
C65C		LV
C65D	C677	LVT	# [27]
C678		LV
C679	C693	LVT	# [27]
C694		LV
C695	C6AF	LVT	# [27]
C6B0		LV
C6B1	C6CB	LVT	# [27]
C6CC		LV
C6CD	C6E7	LVT	# [27]
C6E8		LV
C6E9	C703	LVT	# [27]
C704		LV
C705	C71F	LVT	# [27]
C720		LV
C721	C73B	LVT	# [27]
C73C		LV
C73D	C757	LVT	# [27]
C758		LV
C759	C773	LVT	# [27]
C774		LV
C775	C78F	LVT	# [27]
C790		LV
C791	C7AB	LVT	# [27]
C7AC		LV
C7AD	C7C7	LVT	# [27]
C7C8		LV
C7C9	C7E3	LVT	# [27]
C7E4		LV
C7E5	C7FF	LVT	# [27]
C800		LV
C801	C81B	LVT	# [27]
C81C		LV
C81D	C837	LVT	# [27]
C838		LV
C839	C853	LVT	# [27]
C854		LV
C855	C86F	LVT	# [27]
C870		LV
C871	C88B	LVT	# [27]
C88C		LV
C88D	C8A7	LVT	# [27]
C8A8		LV
C8A9	C8C3	LVT	# [27]
C8C4		LV
C8C5	C8DF	LVT	# [27]
C8E0		LV
C8E1	C8FB	LVT	# [27]
C8FC		LV
C8FD	C917	LVT	# [27]
C918		LV
C919	C933	LVT	# [27]
C934		LV
C935	C94F	LVT	# [27]
C950		LV
C951	C96B	LVT	# [27]
C96C		LV
C96D	C987	LVT	# [27]
C988		LV
C989	C9A3	LVT	# [27]
C9A4		LV
C9A5	C9BF	LVT	# [27]
C9C0		LV
C9C1	C9DB	LVT	# [27]
C9DC		LV
C9DD	C9F7	LVT	# [27]
C9F8		LV
C9F9	CA13	LVT	# [27]
CA14		LV
CA15	CA2F	LVT	# [27]
CA30		LV
CA31	CA4B	LVT	# [27]
CA4C		LV
CA4D	CA67	LVT	# [27]
CA68		LV
CA69	CA83	LVT	# [27]
CA84		LV
CA85	CA9F	LVT	# [27]
CAA0		LV
CAA1	CABB	LVT	# [27]
CABC		LV
CABD	CAD7	LVT	# [27]
CAD8		LV
CAD9	CAF3	LVT	# [27]
CAF4		LV
CAF5	CB0F	LVT	# [27]
CB10		LV
CB11	CB2B	LVT	# [27]
CB2C		LV
CB2D	CB47	LVT	# [27]
CB48		LV
CB49	CB63	LVT	# [27]
CB64		LV
CB65	CB7F	LVT	# [27]
CB80		LV
CB81	CB9B	LVT	# [27]
CB9C		LV
CB9D	CBB7	LVT	# [27]
CBB8		LV
CBB9	CBD3	LVT	# [27]
CBD4		LV
CBD5	CBEF	LVT	# [27]
CBF0		LV
CBF1	CC0B	LVT	# [27]
CC0C		LV
CC0D	CC27	LVT	# [27]
CC28		LV
CC29	CC43	LVT	# [27]
CC44		LV
CC45	CC5F	LVT	# [27]
CC60		LV
CC61	CC7B	LVT	# [27]
CC7C		LV
CC7D	CC97	LVT	# [27]
CC98		LV
CC99	CCB3	LVT	# [27]
CCB4		LV
CCB5	CCCF	LVT	# [27]
CCD0		LV
CCD1	CCEB	LVT	# [27]
CCEC		LV
CCED	CD07	LVT	# [27]
CD08		LV
CD09	CD23	LVT	# [27]
CD24		LV
CD25	CD3F	LVT	# [27]
CD40		LV
CD41	CD5B	LVT	# [27]
CD5C		LV
CD5D	CD77	LVT	# [27]
CD78		LV
CD79	CD93	LVT	# [27]
CD94		LV
CD95	CDAF	LVT	# [27]
CDB0		LV
CDB1	CDCB	LVT	# [27]
CDCC		LV
CDCD	CDE7	LVT	# [27]
CDE8		LV
CDE9	CE03	LVT	# [27]
CE04		LV
CE05	CE1F	LVT	# [27]
CE20		LV
CE21	CE3B	LVT	# [27]
CE3C		LV
CE3D	CE57	LVT	# [27]
CE58		LV
CE59	CE73	LVT	# [27]
CE74		LV
CE75	CE8F	LVT	# [27]
CE90		LV
CE91	CEAB	LVT	# [27]
CEAC		LV
CEAD	CEC7	LVT	# [27]
CEC8		LV
CEC9	CEE3	LVT	# [27]
CEE4		LV
CEE5	CEFF	LVT	# [27]
CF00		LV
CF01	CF1B	LVT	# [27]
CF1C		LV
CF1D	CF37	LVT	# [27]
CF38		LV
CF39	CF53	LVT	# [27]
CF54		LV
CF55	CF6F	LVT	# [27]
CF70		LV
CF71	CF8B	LVT	# [27]
CF8C		LV
CF8D	CFA7	LVT	# [27]
CFA8		LV
CFA9	CFC3	LVT	# [27]
CFC4		LV
CFC5	CFDF	LVT	# [27]
CFE0		LV
CFE1	CFFB	LVT	# [27]
CFFC		LV
CFFD	D017	LVT	# [27]
D018		LV
D019	D033	LVT	# [27]
D034		LV
D035	D04F	LVT	# [27]
D050		LV
D051	D06B	LVT	# [27]
D06C		LV
D06D	D087	LVT	# [27]
D088		LV
D089	D0A3	LVT	# [27]
D0A4		LV
D0A5	D0BF	LVT	# [27]
D0C0		LV
D0C1	D0DB	LVT	# [27]
D0DC		LV
D0DD	D0F7	LVT	# [27]
D0F8		LV
D0F9	D113	LVT	# [27]
D114		LV
D115	D12F	LVT	# [27]
D130		LV
D131	D14B	LVT	# [27]
D14C		LV
D14D	D167	LVT	# [27]
D168		LV
D169	D183	LVT	# [27]
D184		LV
D185	D19F	LVT	# [27]
D1A0		LV
D1A1	D1BB	LVT	# [27]
D1BC		LV
D1BD	D1D7	LVT	# [27]
D1D8		LV
D1D9	D1F3	LVT	# [27]
D1F4		LV
D1F5	D20F	LVT	# [27]
D210		LV
D211	D22B	LVT	# [27]
D22C		LV
D22D	D247	LVT	# [27]
D248		LV
D249	D263	LVT	# [27]
D264		LV
D265	D27F	LVT	# [27]
D280		LV
D281	D29B	LVT	# [27]
D29C		LV
D29D	D2B7	LVT	# [27]
D2B8		LV
D2B9	D2D3	LVT	# [27]
D2D4		LV
D2D5	D2EF	LVT	# [27]
D2F0		LV
D2F1	D30B	LVT	# [27]
D30C		LV
D30D	D327	LVT	# [27]
D328		LV
D329	D343	LVT	# [27]
D344		LV
D345	D35F	LVT	# [27]
D360		LV
D361	D37B	LVT	# [27]
D37C		LV
D37D	D397	LVT	# [27]
D398		LV
D399	D3B3	LVT	# [27]
D3B4		LV
D3B5	D3CF	LVT	# [27]
D3D0		LV
D3D1	D3EB	LVT	# [27]
D3EC		LV
D3ED	D407	LVT	# [27]
D408		LV
D409	D423	LVT	# [27]
D424		LV
D425	D43F	LVT	# [27]
D440		LV
D441	D45B	LVT	# [27]
D45C		LV
D45D	D477	LVT	# [27]
D478		LV
D479	D493	LVT	# [27]
D494		LV
D495	D4AF	LVT	# [27]
D4B0		LV
D4B1	D4CB	LVT	# [27]
D4CC		LV
D4CD	D4E7	LVT	# [27]
D4E8		LV
D4E9	D503	LVT	# [27]
D504		LV
D505	D51F	LVT	# [27]
D520		LV
D521	D53B	LVT	# [27]
D53C		LV
D53D	D557	LVT	# [27]
D558		LV
D559	D573	LVT	# [27]
D574		LV
D575	D58F	LVT	# [27]
D590		LV
D591	D5AB	LVT	# [27]
D5AC		LV
D5AD	D5C7	LVT	# [27]
D5C8		LV
D5C9	D5E3	LVT	# [27]
D5E4		LV
D5E5	D5FF	LVT	# [27]
D600		LV
D601	D61B	LVT	# [27]
D61C		LV
D61D	D637	LVT	# [27]
D638		LV
D639	D653	LVT	# [27]
D654		LV
D655	D66F	LVT	# [27]
D670		LV
D671	D68B	LVT	# [27]
D68C		LV
D68D	D6A7	LVT	# [27]
D6A8		LV
D6A9	D6C3	LVT	# [27]
D6C4		LV
D6C5	D6DF	LVT	# [27]
D6E0		LV
D6E1	D6FB	LVT	# [27]
D6FC		LV
D6FD	D717	LVT	# [27]
D718		LV
D719	D733	LVT	# [27]
D734		LV
D735	D74F	LVT	# [27]
D750		LV
D751	D76B	LVT	# [27]
D76C		LV
D76D	D787	LVT	# [27]
D788		LV
D789	D7A3	LVT	# [27]
D7B0	D7C6	V	# [23]
D7CB	D7FB	T	# [49]
D800	DFFF	Control # [2048]
FB1E		Extend
FE00	FE0F	Extend	# [16]
FE20	FE26	Extend	# [7]
FEFF		Control
FF9E	FF9F	Extend	# [2]
FFF0	FFFB	Control # [12]
101FD		Extend
10A01	10A03	Extend	# [3]
10A05	10A06	Extend	# [2]
10A0C	10A0F	Extend	# [4]
10A38	10A3A	Extend	# [3]
10A3F		Extend
11000		SpacingMark
11001		Extend
11002		SpacingMark
11038	11046	Extend	# [15]
11080	11081	Extend	# [2]
11082		SpacingMark
110B0	110B2	SpacingMark # [3]
110B3	110B6	Extend	# [4]
110B7	110B8	SpacingMark # [2]
110B9	110BA	Extend	# [2]
110BD		Control
11100	11102	Extend	# [3]
11127	1112B	Extend	# [5]
1112C		SpacingMark
1112D	11134	Extend	# [8]
11180	11181	Extend	# [2]
11182		SpacingMark
111B3	111B5	SpacingMark # [3]
111B6	111BE	Extend	# [9]
111BF	111C0	SpacingMark # [2]
116AB		Extend
116AC		SpacingMark
116AD		Extend
116AE	116AF	SpacingMark # [2]
116B0	116B5	Extend	# [6]
116B6		SpacingMark
116B7		Extend
16F51	16F7E	SpacingMark # [46]
16F8F	16F92	Extend	# [4]
1D165		Extend
1D166		SpacingMark
1D167	1D169	Extend	# [3]
1D16D		SpacingMark
1D16E	1D172	Extend	# [5]
1D173	1D17A	Control # [8]
1D17B	1D182	Extend	# [8]
1D185	1D18B	Extend	# [7]
1D1AA	1D1AD	Extend	# [4]
1D242	1D244	Extend	# [3]
E0000	E00FF	Control # [256]
E0100	E01EF	Extend	# [240]
E01F0	E0FFF	Control # [3600]
END