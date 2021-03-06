# !!!!!!!   DO NOT EDIT THIS FILE   !!!!!!!
# This file is machine-generated by mktables from the Unicode
# database, Version 6.1.0.  Any changes made here will be lost!

# !!!!!!!   INTERNAL PERL USE ONLY   !!!!!!!
# This file is for internal use by core Perl only.  The format and even the
# name or existence of this file are subject to change without notice.  Don't
# use it directly.

# This file returns the synonymous mappings:
#         NFKC_Quick_Check(cp)
#         NFKC_QC(cp)
# 
# where 'cp' is one of the 4891 code points in Unicode Version 6.1.0 for
# which the mapping is not to 'Yes'.  Note that these mappings are accessible
# via the function prop_invmap('NFKC_Quick_Check') in Unicode::UCD
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
$utf8::SwashInfo{'ToNFKCQC'}{'format'} = 's'; # string
$utf8::SwashInfo{'ToNFKCQC'}{'missing'} = 'Yes';

return <<'END';
00A0		N
00A8		N
00AA		N
00AF		N
00B2	00B5	N	# [4]
00B8	00BA	N	# [3]
00BC	00BE	N	# [3]
0132	0133	N	# [2]
013F	0140	N	# [2]
0149		N
017F		N
01C4	01CC	N	# [9]
01F1	01F3	N	# [3]
02B0	02B8	N	# [9]
02D8	02DD	N	# [6]
02E0	02E4	N	# [5]
0300	0304	M	# [5]
0306	030C	M	# [7]
030F		M
0311		M
0313	0314	M	# [2]
031B		M
0323	0328	M	# [6]
032D	032E	M	# [2]
0330	0331	M	# [2]
0338		M
0340	0341	N	# [2]
0342		M
0343	0344	N	# [2]
0345		M
0374		N
037A		N
037E		N
0384	0385	N	# [2]
0387		N
03D0	03D6	N	# [7]
03F0	03F2	N	# [3]
03F4	03F5	N	# [2]
03F9		N
0587		N
0653	0655	M	# [3]
0675	0678	N	# [4]
093C		M
0958	095F	N	# [8]
09BE		M
09D7		M
09DC	09DD	N	# [2]
09DF		N
0A33		N
0A36		N
0A59	0A5B	N	# [3]
0A5E		N
0B3E		M
0B56	0B57	M	# [2]
0B5C	0B5D	N	# [2]
0BBE		M
0BD7		M
0C56		M
0CC2		M
0CD5	0CD6	M	# [2]
0D3E		M
0D57		M
0DCA		M
0DCF		M
0DDF		M
0E33		N
0EB3		N
0EDC	0EDD	N	# [2]
0F0C		N
0F43		N
0F4D		N
0F52		N
0F57		N
0F5C		N
0F69		N
0F73		N
0F75	0F79	N	# [5]
0F81		N
0F93		N
0F9D		N
0FA2		N
0FA7		N
0FAC		N
0FB9		N
102E		M
10FC		N
1161	1175	M	# [21]
11A8	11C2	M	# [27]
1B35		M
1D2C	1D2E	N	# [3]
1D30	1D3A	N	# [11]
1D3C	1D4D	N	# [18]
1D4F	1D6A	N	# [28]
1D78		N
1D9B	1DBF	N	# [37]
1E9A	1E9B	N	# [2]
1F71		N
1F73		N
1F75		N
1F77		N
1F79		N
1F7B		N
1F7D		N
1FBB		N
1FBD	1FC1	N	# [5]
1FC9		N
1FCB		N
1FCD	1FCF	N	# [3]
1FD3		N
1FDB		N
1FDD	1FDF	N	# [3]
1FE3		N
1FEB		N
1FED	1FEF	N	# [3]
1FF9		N
1FFB		N
1FFD	1FFE	N	# [2]
2000	200A	N	# [11]
2011		N
2017		N
2024	2026	N	# [3]
202F		N
2033	2034	N	# [2]
2036	2037	N	# [2]
203C		N
203E		N
2047	2049	N	# [3]
2057		N
205F		N
2070	2071	N	# [2]
2074	208E	N	# [27]
2090	209C	N	# [13]
20A8		N
2100	2103	N	# [4]
2105	2107	N	# [3]
2109	2113	N	# [11]
2115	2116	N	# [2]
2119	211D	N	# [5]
2120	2122	N	# [3]
2124		N
2126		N
2128		N
212A	212D	N	# [4]
212F	2131	N	# [3]
2133	2139	N	# [7]
213B	2140	N	# [6]
2145	2149	N	# [5]
2150	217F	N	# [48]
2189		N
222C	222D	N	# [2]
222F	2230	N	# [2]
2329	232A	N	# [2]
2460	24EA	N	# [139]
2A0C		N
2A74	2A76	N	# [3]
2ADC		N
2C7C	2C7D	N	# [2]
2D6F		N
2E9F		N
2EF3		N
2F00	2FD5	N	# [214]
3000		N
3036		N
3038	303A	N	# [3]
3099	309A	M	# [2]
309B	309C	N	# [2]
309F		N
30FF		N
3131	318E	N	# [94]
3192	319F	N	# [14]
3200	321E	N	# [31]
3220	3247	N	# [40]
3250	327E	N	# [47]
3280	32FE	N	# [127]
3300	33FF	N	# [256]
A770		N
A7F8	A7F9	N	# [2]
F900	FA0D	N	# [270]
FA10		N
FA12		N
FA15	FA1E	N	# [10]
FA20		N
FA22		N
FA25	FA26	N	# [2]
FA2A	FA6D	N	# [68]
FA70	FAD9	N	# [106]
FB00	FB06	N	# [7]
FB13	FB17	N	# [5]
FB1D		N
FB1F	FB36	N	# [24]
FB38	FB3C	N	# [5]
FB3E		N
FB40	FB41	N	# [2]
FB43	FB44	N	# [2]
FB46	FBB1	N	# [108]
FBD3	FD3D	N	# [363]
FD50	FD8F	N	# [64]
FD92	FDC7	N	# [54]
FDF0	FDFC	N	# [13]
FE10	FE19	N	# [10]
FE30	FE44	N	# [21]
FE47	FE52	N	# [12]
FE54	FE66	N	# [19]
FE68	FE6B	N	# [4]
FE70	FE72	N	# [3]
FE74		N
FE76	FEFC	N	# [135]
FF01	FFBE	N	# [190]
FFC2	FFC7	N	# [6]
FFCA	FFCF	N	# [6]
FFD2	FFD7	N	# [6]
FFDA	FFDC	N	# [3]
FFE0	FFE6	N	# [7]
FFE8	FFEE	N	# [7]
110BA		M
11127		M
1D15E	1D164	N	# [7]
1D1BB	1D1C0	N	# [6]
1D400	1D454	N	# [85]
1D456	1D49C	N	# [71]
1D49E	1D49F	N	# [2]
1D4A2		N
1D4A5	1D4A6	N	# [2]
1D4A9	1D4AC	N	# [4]
1D4AE	1D4B9	N	# [12]
1D4BB		N
1D4BD	1D4C3	N	# [7]
1D4C5	1D505	N	# [65]
1D507	1D50A	N	# [4]
1D50D	1D514	N	# [8]
1D516	1D51C	N	# [7]
1D51E	1D539	N	# [28]
1D53B	1D53E	N	# [4]
1D540	1D544	N	# [5]
1D546		N
1D54A	1D550	N	# [7]
1D552	1D6A5	N	# [340]
1D6A8	1D7CB	N	# [292]
1D7CE	1D7FF	N	# [50]
1EE00	1EE03	N	# [4]
1EE05	1EE1F	N	# [27]
1EE21	1EE22	N	# [2]
1EE24		N
1EE27		N
1EE29	1EE32	N	# [10]
1EE34	1EE37	N	# [4]
1EE39		N
1EE3B		N
1EE42		N
1EE47		N
1EE49		N
1EE4B		N
1EE4D	1EE4F	N	# [3]
1EE51	1EE52	N	# [2]
1EE54		N
1EE57		N
1EE59		N
1EE5B		N
1EE5D		N
1EE5F		N
1EE61	1EE62	N	# [2]
1EE64		N
1EE67	1EE6A	N	# [4]
1EE6C	1EE72	N	# [7]
1EE74	1EE77	N	# [4]
1EE79	1EE7C	N	# [4]
1EE7E		N
1EE80	1EE89	N	# [10]
1EE8B	1EE9B	N	# [17]
1EEA1	1EEA3	N	# [3]
1EEA5	1EEA9	N	# [5]
1EEAB	1EEBB	N	# [17]
1F100	1F10A	N	# [11]
1F110	1F12E	N	# [31]
1F130	1F14F	N	# [32]
1F16A	1F16B	N	# [2]
1F190		N
1F200	1F202	N	# [3]
1F210	1F23A	N	# [43]
1F240	1F248	N	# [9]
1F250	1F251	N	# [2]
2F800	2FA1D	N	# [542]
END
