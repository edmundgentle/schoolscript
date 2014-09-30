# !!!!!!!   DO NOT EDIT THIS FILE   !!!!!!!
# This file is machine-generated by mktables from the Unicode
# database, Version 6.1.0.  Any changes made here will be lost!

# !!!!!!!   INTERNAL PERL USE ONLY   !!!!!!!
# This file is for internal use by core Perl only.  The format and even the
# name or existence of this file are subject to change without notice.  Don't
# use it directly.

# This file returns the synonymous mappings:
#         NFKD_Quick_Check(cp)
#         NFKD_QC(cp)
# 
# where 'cp' is one of the 16_880 code points in Unicode Version 6.1.0 for
# which the mapping is not to 'Yes'.  Note that these mappings are accessible
# via the function prop_invmap('NFKD_Quick_Check') in Unicode::UCD
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
$utf8::SwashInfo{'ToNFKDQC'}{'format'} = 's'; # string
$utf8::SwashInfo{'ToNFKDQC'}{'missing'} = 'Yes';

return <<'END';
00A0		N
00A8		N
00AA		N
00AF		N
00B2	00B5	N	# [4]
00B8	00BA	N	# [3]
00BC	00BE	N	# [3]
00C0	00C5	N	# [6]
00C7	00CF	N	# [9]
00D1	00D6	N	# [6]
00D9	00DD	N	# [5]
00E0	00E5	N	# [6]
00E7	00EF	N	# [9]
00F1	00F6	N	# [6]
00F9	00FD	N	# [5]
00FF	010F	N	# [17]
0112	0125	N	# [20]
0128	0130	N	# [9]
0132	0137	N	# [6]
0139	0140	N	# [8]
0143	0149	N	# [7]
014C	0151	N	# [6]
0154	0165	N	# [18]
0168	017F	N	# [24]
01A0	01A1	N	# [2]
01AF	01B0	N	# [2]
01C4	01DC	N	# [25]
01DE	01E3	N	# [6]
01E6	01F5	N	# [16]
01F8	021B	N	# [36]
021E	021F	N	# [2]
0226	0233	N	# [14]
02B0	02B8	N	# [9]
02D8	02DD	N	# [6]
02E0	02E4	N	# [5]
0340	0341	N	# [2]
0343	0344	N	# [2]
0374		N
037A		N
037E		N
0384	038A	N	# [7]
038C		N
038E	0390	N	# [3]
03AA	03B0	N	# [7]
03CA	03CE	N	# [5]
03D0	03D6	N	# [7]
03F0	03F2	N	# [3]
03F4	03F5	N	# [2]
03F9		N
0400	0401	N	# [2]
0403		N
0407		N
040C	040E	N	# [3]
0419		N
0439		N
0450	0451	N	# [2]
0453		N
0457		N
045C	045E	N	# [3]
0476	0477	N	# [2]
04C1	04C2	N	# [2]
04D0	04D3	N	# [4]
04D6	04D7	N	# [2]
04DA	04DF	N	# [6]
04E2	04E7	N	# [6]
04EA	04F5	N	# [12]
04F8	04F9	N	# [2]
0587		N
0622	0626	N	# [5]
0675	0678	N	# [4]
06C0		N
06C2		N
06D3		N
0929		N
0931		N
0934		N
0958	095F	N	# [8]
09CB	09CC	N	# [2]
09DC	09DD	N	# [2]
09DF		N
0A33		N
0A36		N
0A59	0A5B	N	# [3]
0A5E		N
0B48		N
0B4B	0B4C	N	# [2]
0B5C	0B5D	N	# [2]
0B94		N
0BCA	0BCC	N	# [3]
0C48		N
0CC0		N
0CC7	0CC8	N	# [2]
0CCA	0CCB	N	# [2]
0D4A	0D4C	N	# [3]
0DDA		N
0DDC	0DDE	N	# [3]
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
1026		N
10FC		N
1B06		N
1B08		N
1B0A		N
1B0C		N
1B0E		N
1B12		N
1B3B		N
1B3D		N
1B40	1B41	N	# [2]
1B43		N
1D2C	1D2E	N	# [3]
1D30	1D3A	N	# [11]
1D3C	1D4D	N	# [18]
1D4F	1D6A	N	# [28]
1D78		N
1D9B	1DBF	N	# [37]
1E00	1E9B	N	# [156]
1EA0	1EF9	N	# [90]
1F00	1F15	N	# [22]
1F18	1F1D	N	# [6]
1F20	1F45	N	# [38]
1F48	1F4D	N	# [6]
1F50	1F57	N	# [8]
1F59		N
1F5B		N
1F5D		N
1F5F	1F7D	N	# [31]
1F80	1FB4	N	# [53]
1FB6	1FC4	N	# [15]
1FC6	1FD3	N	# [14]
1FD6	1FDB	N	# [6]
1FDD	1FEF	N	# [19]
1FF2	1FF4	N	# [3]
1FF6	1FFE	N	# [9]
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
219A	219B	N	# [2]
21AE		N
21CD	21CF	N	# [3]
2204		N
2209		N
220C		N
2224		N
2226		N
222C	222D	N	# [2]
222F	2230	N	# [2]
2241		N
2244		N
2247		N
2249		N
2260		N
2262		N
226D	2271	N	# [5]
2274	2275	N	# [2]
2278	2279	N	# [2]
2280	2281	N	# [2]
2284	2285	N	# [2]
2288	2289	N	# [2]
22AC	22AF	N	# [4]
22E0	22E3	N	# [4]
22EA	22ED	N	# [4]
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
304C		N
304E		N
3050		N
3052		N
3054		N
3056		N
3058		N
305A		N
305C		N
305E		N
3060		N
3062		N
3065		N
3067		N
3069		N
3070	3071	N	# [2]
3073	3074	N	# [2]
3076	3077	N	# [2]
3079	307A	N	# [2]
307C	307D	N	# [2]
3094		N
309B	309C	N	# [2]
309E	309F	N	# [2]
30AC		N
30AE		N
30B0		N
30B2		N
30B4		N
30B6		N
30B8		N
30BA		N
30BC		N
30BE		N
30C0		N
30C2		N
30C5		N
30C7		N
30C9		N
30D0	30D1	N	# [2]
30D3	30D4	N	# [2]
30D6	30D7	N	# [2]
30D9	30DA	N	# [2]
30DC	30DD	N	# [2]
30F4		N
30F7	30FA	N	# [4]
30FE	30FF	N	# [2]
3131	318E	N	# [94]
3192	319F	N	# [14]
3200	321E	N	# [31]
3220	3247	N	# [40]
3250	327E	N	# [47]
3280	32FE	N	# [127]
3300	33FF	N	# [256]
A770		N
A7F8	A7F9	N	# [2]
AC00	D7A3	N	# [11_172]
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
1109A		N
1109C		N
110AB		N
1112E	1112F	N	# [2]
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
