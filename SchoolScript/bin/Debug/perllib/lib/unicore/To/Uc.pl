# !!!!!!!   DO NOT EDIT THIS FILE   !!!!!!!
# This file is machine-generated by mktables from the Unicode
# database, Version 6.1.0.  Any changes made here will be lost!

# !!!!!!!   INTERNAL PERL USE ONLY   !!!!!!!
# This file is for internal use by core Perl only.  The format and even the
# name or existence of this file are subject to change without notice.  Don't
# use it directly.

# This file returns the synonymous mappings:
#         Uppercase_Mapping(cp)
#         Uc(cp)
# 
# where 'cp' is one of the 1153 code points in Unicode Version 6.1.0 for
# which the mapping is not to itself.  Note that these mappings are
# accessible via the function prop_invmap('Uppercase_Mapping') in Unicode::UCD
# 
# This file includes both the simple and full case changing maps.  The simple
# ones are in the main body of the table below, and the full ones adding to
# or overriding them are in the hash.
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

# The mappings in the non-hash portion of this file must be modified to get the
# correct values by adding the code point ordinal number to each one that is
# numeric.

# The name this swash is to be known by, with the format of the mappings in
# the main body of the table, and what all code points missing from this file
# map to.
$utf8::SwashInfo{'ToUc'}{'format'} = 'a'; # some entries need adjustment
$utf8::SwashInfo{'ToUc'}{'specials_name'} = 'utf8::ToSpecUc'; # Name of hash of special mappings
$utf8::SwashInfo{'ToUc'}{'missing'} = '0'; # code point maps to itself

# Some code points require special handling because their mappings are each to
# multiple code points.  These do not appear in the main body, but are defined
# in the hash below.

# Each key is the string of N bytes that together make up the UTF-8 encoding
# for the code point.  (i.e. the same as looking at the code point's UTF-8
# under "use bytes").  Each value is the UTF-8 of the translation, for speed.
%utf8::ToSpecUc = (
"\xC3\x9F" => "\x{0053}\x{0053}",             # U+00DF => 0053 0053
"\xC5\x89" => "\x{02BC}\x{004E}",             # U+0149 => 02BC 004E
"\xC7\xB0" => "\x{004A}\x{030C}",             # U+01F0 => 004A 030C
"\xCE\x90" => "\x{0399}\x{0308}\x{0301}",     # U+0390 => 0399 0308 0301
"\xCE\xB0" => "\x{03A5}\x{0308}\x{0301}",     # U+03B0 => 03A5 0308 0301
"\xD6\x87" => "\x{0535}\x{0552}",             # U+0587 => 0535 0552
"\xE1\xBA\x96" => "\x{0048}\x{0331}",         # U+1E96 => 0048 0331
"\xE1\xBA\x97" => "\x{0054}\x{0308}",         # U+1E97 => 0054 0308
"\xE1\xBA\x98" => "\x{0057}\x{030A}",         # U+1E98 => 0057 030A
"\xE1\xBA\x99" => "\x{0059}\x{030A}",         # U+1E99 => 0059 030A
"\xE1\xBA\x9A" => "\x{0041}\x{02BE}",         # U+1E9A => 0041 02BE
"\xE1\xBD\x90" => "\x{03A5}\x{0313}",         # U+1F50 => 03A5 0313
"\xE1\xBD\x92" => "\x{03A5}\x{0313}\x{0300}", # U+1F52 => 03A5 0313 0300
"\xE1\xBD\x94" => "\x{03A5}\x{0313}\x{0301}", # U+1F54 => 03A5 0313 0301
"\xE1\xBD\x96" => "\x{03A5}\x{0313}\x{0342}", # U+1F56 => 03A5 0313 0342
"\xE1\xBE\x80" => "\x{1F08}\x{0399}",         # U+1F80 => 1F08 0399
"\xE1\xBE\x81" => "\x{1F09}\x{0399}",         # U+1F81 => 1F09 0399
"\xE1\xBE\x82" => "\x{1F0A}\x{0399}",         # U+1F82 => 1F0A 0399
"\xE1\xBE\x83" => "\x{1F0B}\x{0399}",         # U+1F83 => 1F0B 0399
"\xE1\xBE\x84" => "\x{1F0C}\x{0399}",         # U+1F84 => 1F0C 0399
"\xE1\xBE\x85" => "\x{1F0D}\x{0399}",         # U+1F85 => 1F0D 0399
"\xE1\xBE\x86" => "\x{1F0E}\x{0399}",         # U+1F86 => 1F0E 0399
"\xE1\xBE\x87" => "\x{1F0F}\x{0399}",         # U+1F87 => 1F0F 0399
"\xE1\xBE\x88" => "\x{1F08}\x{0399}",         # U+1F88 => 1F08 0399
"\xE1\xBE\x89" => "\x{1F09}\x{0399}",         # U+1F89 => 1F09 0399
"\xE1\xBE\x8A" => "\x{1F0A}\x{0399}",         # U+1F8A => 1F0A 0399
"\xE1\xBE\x8B" => "\x{1F0B}\x{0399}",         # U+1F8B => 1F0B 0399
"\xE1\xBE\x8C" => "\x{1F0C}\x{0399}",         # U+1F8C => 1F0C 0399
"\xE1\xBE\x8D" => "\x{1F0D}\x{0399}",         # U+1F8D => 1F0D 0399
"\xE1\xBE\x8E" => "\x{1F0E}\x{0399}",         # U+1F8E => 1F0E 0399
"\xE1\xBE\x8F" => "\x{1F0F}\x{0399}",         # U+1F8F => 1F0F 0399
"\xE1\xBE\x90" => "\x{1F28}\x{0399}",         # U+1F90 => 1F28 0399
"\xE1\xBE\x91" => "\x{1F29}\x{0399}",         # U+1F91 => 1F29 0399
"\xE1\xBE\x92" => "\x{1F2A}\x{0399}",         # U+1F92 => 1F2A 0399
"\xE1\xBE\x93" => "\x{1F2B}\x{0399}",         # U+1F93 => 1F2B 0399
"\xE1\xBE\x94" => "\x{1F2C}\x{0399}",         # U+1F94 => 1F2C 0399
"\xE1\xBE\x95" => "\x{1F2D}\x{0399}",         # U+1F95 => 1F2D 0399
"\xE1\xBE\x96" => "\x{1F2E}\x{0399}",         # U+1F96 => 1F2E 0399
"\xE1\xBE\x97" => "\x{1F2F}\x{0399}",         # U+1F97 => 1F2F 0399
"\xE1\xBE\x98" => "\x{1F28}\x{0399}",         # U+1F98 => 1F28 0399
"\xE1\xBE\x99" => "\x{1F29}\x{0399}",         # U+1F99 => 1F29 0399
"\xE1\xBE\x9A" => "\x{1F2A}\x{0399}",         # U+1F9A => 1F2A 0399
"\xE1\xBE\x9B" => "\x{1F2B}\x{0399}",         # U+1F9B => 1F2B 0399
"\xE1\xBE\x9C" => "\x{1F2C}\x{0399}",         # U+1F9C => 1F2C 0399
"\xE1\xBE\x9D" => "\x{1F2D}\x{0399}",         # U+1F9D => 1F2D 0399
"\xE1\xBE\x9E" => "\x{1F2E}\x{0399}",         # U+1F9E => 1F2E 0399
"\xE1\xBE\x9F" => "\x{1F2F}\x{0399}",         # U+1F9F => 1F2F 0399
"\xE1\xBE\xA0" => "\x{1F68}\x{0399}",         # U+1FA0 => 1F68 0399
"\xE1\xBE\xA1" => "\x{1F69}\x{0399}",         # U+1FA1 => 1F69 0399
"\xE1\xBE\xA2" => "\x{1F6A}\x{0399}",         # U+1FA2 => 1F6A 0399
"\xE1\xBE\xA3" => "\x{1F6B}\x{0399}",         # U+1FA3 => 1F6B 0399
"\xE1\xBE\xA4" => "\x{1F6C}\x{0399}",         # U+1FA4 => 1F6C 0399
"\xE1\xBE\xA5" => "\x{1F6D}\x{0399}",         # U+1FA5 => 1F6D 0399
"\xE1\xBE\xA6" => "\x{1F6E}\x{0399}",         # U+1FA6 => 1F6E 0399
"\xE1\xBE\xA7" => "\x{1F6F}\x{0399}",         # U+1FA7 => 1F6F 0399
"\xE1\xBE\xA8" => "\x{1F68}\x{0399}",         # U+1FA8 => 1F68 0399
"\xE1\xBE\xA9" => "\x{1F69}\x{0399}",         # U+1FA9 => 1F69 0399
"\xE1\xBE\xAA" => "\x{1F6A}\x{0399}",         # U+1FAA => 1F6A 0399
"\xE1\xBE\xAB" => "\x{1F6B}\x{0399}",         # U+1FAB => 1F6B 0399
"\xE1\xBE\xAC" => "\x{1F6C}\x{0399}",         # U+1FAC => 1F6C 0399
"\xE1\xBE\xAD" => "\x{1F6D}\x{0399}",         # U+1FAD => 1F6D 0399
"\xE1\xBE\xAE" => "\x{1F6E}\x{0399}",         # U+1FAE => 1F6E 0399
"\xE1\xBE\xAF" => "\x{1F6F}\x{0399}",         # U+1FAF => 1F6F 0399
"\xE1\xBE\xB2" => "\x{1FBA}\x{0399}",         # U+1FB2 => 1FBA 0399
"\xE1\xBE\xB3" => "\x{0391}\x{0399}",         # U+1FB3 => 0391 0399
"\xE1\xBE\xB4" => "\x{0386}\x{0399}",         # U+1FB4 => 0386 0399
"\xE1\xBE\xB6" => "\x{0391}\x{0342}",         # U+1FB6 => 0391 0342
"\xE1\xBE\xB7" => "\x{0391}\x{0342}\x{0399}", # U+1FB7 => 0391 0342 0399
"\xE1\xBE\xBC" => "\x{0391}\x{0399}",         # U+1FBC => 0391 0399
"\xE1\xBF\x82" => "\x{1FCA}\x{0399}",         # U+1FC2 => 1FCA 0399
"\xE1\xBF\x83" => "\x{0397}\x{0399}",         # U+1FC3 => 0397 0399
"\xE1\xBF\x84" => "\x{0389}\x{0399}",         # U+1FC4 => 0389 0399
"\xE1\xBF\x86" => "\x{0397}\x{0342}",         # U+1FC6 => 0397 0342
"\xE1\xBF\x87" => "\x{0397}\x{0342}\x{0399}", # U+1FC7 => 0397 0342 0399
"\xE1\xBF\x8C" => "\x{0397}\x{0399}",         # U+1FCC => 0397 0399
"\xE1\xBF\x92" => "\x{0399}\x{0308}\x{0300}", # U+1FD2 => 0399 0308 0300
"\xE1\xBF\x93" => "\x{0399}\x{0308}\x{0301}", # U+1FD3 => 0399 0308 0301
"\xE1\xBF\x96" => "\x{0399}\x{0342}",         # U+1FD6 => 0399 0342
"\xE1\xBF\x97" => "\x{0399}\x{0308}\x{0342}", # U+1FD7 => 0399 0308 0342
"\xE1\xBF\xA2" => "\x{03A5}\x{0308}\x{0300}", # U+1FE2 => 03A5 0308 0300
"\xE1\xBF\xA3" => "\x{03A5}\x{0308}\x{0301}", # U+1FE3 => 03A5 0308 0301
"\xE1\xBF\xA4" => "\x{03A1}\x{0313}",         # U+1FE4 => 03A1 0313
"\xE1\xBF\xA6" => "\x{03A5}\x{0342}",         # U+1FE6 => 03A5 0342
"\xE1\xBF\xA7" => "\x{03A5}\x{0308}\x{0342}", # U+1FE7 => 03A5 0308 0342
"\xE1\xBF\xB2" => "\x{1FFA}\x{0399}",         # U+1FF2 => 1FFA 0399
"\xE1\xBF\xB3" => "\x{03A9}\x{0399}",         # U+1FF3 => 03A9 0399
"\xE1\xBF\xB4" => "\x{038F}\x{0399}",         # U+1FF4 => 038F 0399
"\xE1\xBF\xB6" => "\x{03A9}\x{0342}",         # U+1FF6 => 03A9 0342
"\xE1\xBF\xB7" => "\x{03A9}\x{0342}\x{0399}", # U+1FF7 => 03A9 0342 0399
"\xE1\xBF\xBC" => "\x{03A9}\x{0399}",         # U+1FFC => 03A9 0399
"\xEF\xAC\x80" => "\x{0046}\x{0046}",         # U+FB00 => 0046 0046
"\xEF\xAC\x81" => "\x{0046}\x{0049}",         # U+FB01 => 0046 0049
"\xEF\xAC\x82" => "\x{0046}\x{004C}",         # U+FB02 => 0046 004C
"\xEF\xAC\x83" => "\x{0046}\x{0046}\x{0049}", # U+FB03 => 0046 0046 0049
"\xEF\xAC\x84" => "\x{0046}\x{0046}\x{004C}", # U+FB04 => 0046 0046 004C
"\xEF\xAC\x85" => "\x{0053}\x{0054}",         # U+FB05 => 0053 0054
"\xEF\xAC\x86" => "\x{0053}\x{0054}",         # U+FB06 => 0053 0054
"\xEF\xAC\x93" => "\x{0544}\x{0546}",         # U+FB13 => 0544 0546
"\xEF\xAC\x94" => "\x{0544}\x{0535}",         # U+FB14 => 0544 0535
"\xEF\xAC\x95" => "\x{0544}\x{053B}",         # U+FB15 => 0544 053B
"\xEF\xAC\x96" => "\x{054E}\x{0546}",         # U+FB16 => 054E 0546
"\xEF\xAC\x97" => "\x{0544}\x{053D}",         # U+FB17 => 0544 053D
);

return <<'END';
0061	007A	65	# [26]
00B5		924
00E0	00F6	192	# [23]
00F8	00FE	216	# [7]
00FF		376
0101		256
0103		258
0105		260
0107		262
0109		264
010B		266
010D		268
010F		270
0111		272
0113		274
0115		276
0117		278
0119		280
011B		282
011D		284
011F		286
0121		288
0123		290
0125		292
0127		294
0129		296
012B		298
012D		300
012F		302
0131		73
0133		306
0135		308
0137		310
013A		313
013C		315
013E		317
0140		319
0142		321
0144		323
0146		325
0148		327
014B		330
014D		332
014F		334
0151		336
0153		338
0155		340
0157		342
0159		344
015B		346
015D		348
015F		350
0161		352
0163		354
0165		356
0167		358
0169		360
016B		362
016D		364
016F		366
0171		368
0173		370
0175		372
0177		374
017A		377
017C		379
017E		381
017F		83
0180		579
0183		386
0185		388
0188		391
018C		395
0192		401
0195		502
0199		408
019A		573
019E		544
01A1		416
01A3		418
01A5		420
01A8		423
01AD		428
01B0		431
01B4		435
01B6		437
01B9		440
01BD		444
01BF		503
01C5		452
01C6		452
01C8		455
01C9		455
01CB		458
01CC		458
01CE		461
01D0		463
01D2		465
01D4		467
01D6		469
01D8		471
01DA		473
01DC		475
01DD		398
01DF		478
01E1		480
01E3		482
01E5		484
01E7		486
01E9		488
01EB		490
01ED		492
01EF		494
01F2		497
01F3		497
01F5		500
01F9		504
01FB		506
01FD		508
01FF		510
0201		512
0203		514
0205		516
0207		518
0209		520
020B		522
020D		524
020F		526
0211		528
0213		530
0215		532
0217		534
0219		536
021B		538
021D		540
021F		542
0223		546
0225		548
0227		550
0229		552
022B		554
022D		556
022F		558
0231		560
0233		562
023C		571
023F	0240	11390	# [2]
0242		577
0247		582
0249		584
024B		586
024D		588
024F		590
0250		11375
0251		11373
0252		11376
0253		385
0254		390
0256	0257	393	# [2]
0259		399
025B		400
0260		403
0263		404
0265		42893
0266		42922
0268		407
0269		406
026B		11362
026F		412
0271		11374
0272		413
0275		415
027D		11364
0280		422
0283		425
0288		430
0289		580
028A	028B	433	# [2]
028C		581
0292		439
0345		921
0371		880
0373		882
0377		886
037B	037D	1021	# [3]
03AC		902
03AD	03AF	904	# [3]
03B1	03C1	913	# [17]
03C2		931
03C3	03CB	931	# [9]
03CC		908
03CD	03CE	910	# [2]
03D0		914
03D1		920
03D5		934
03D6		928
03D7		975
03D9		984
03DB		986
03DD		988
03DF		990
03E1		992
03E3		994
03E5		996
03E7		998
03E9		1000
03EB		1002
03ED		1004
03EF		1006
03F0		922
03F1		929
03F2		1017
03F5		917
03F8		1015
03FB		1018
0430	044F	1040	# [32]
0450	045F	1024	# [16]
0461		1120
0463		1122
0465		1124
0467		1126
0469		1128
046B		1130
046D		1132
046F		1134
0471		1136
0473		1138
0475		1140
0477		1142
0479		1144
047B		1146
047D		1148
047F		1150
0481		1152
048B		1162
048D		1164
048F		1166
0491		1168
0493		1170
0495		1172
0497		1174
0499		1176
049B		1178
049D		1180
049F		1182
04A1		1184
04A3		1186
04A5		1188
04A7		1190
04A9		1192
04AB		1194
04AD		1196
04AF		1198
04B1		1200
04B3		1202
04B5		1204
04B7		1206
04B9		1208
04BB		1210
04BD		1212
04BF		1214
04C2		1217
04C4		1219
04C6		1221
04C8		1223
04CA		1225
04CC		1227
04CE		1229
04CF		1216
04D1		1232
04D3		1234
04D5		1236
04D7		1238
04D9		1240
04DB		1242
04DD		1244
04DF		1246
04E1		1248
04E3		1250
04E5		1252
04E7		1254
04E9		1256
04EB		1258
04ED		1260
04EF		1262
04F1		1264
04F3		1266
04F5		1268
04F7		1270
04F9		1272
04FB		1274
04FD		1276
04FF		1278
0501		1280
0503		1282
0505		1284
0507		1286
0509		1288
050B		1290
050D		1292
050F		1294
0511		1296
0513		1298
0515		1300
0517		1302
0519		1304
051B		1306
051D		1308
051F		1310
0521		1312
0523		1314
0525		1316
0527		1318
0561	0586	1329	# [38]
1D79		42877
1D7D		11363
1E01		7680
1E03		7682
1E05		7684
1E07		7686
1E09		7688
1E0B		7690
1E0D		7692
1E0F		7694
1E11		7696
1E13		7698
1E15		7700
1E17		7702
1E19		7704
1E1B		7706
1E1D		7708
1E1F		7710
1E21		7712
1E23		7714
1E25		7716
1E27		7718
1E29		7720
1E2B		7722
1E2D		7724
1E2F		7726
1E31		7728
1E33		7730
1E35		7732
1E37		7734
1E39		7736
1E3B		7738
1E3D		7740
1E3F		7742
1E41		7744
1E43		7746
1E45		7748
1E47		7750
1E49		7752
1E4B		7754
1E4D		7756
1E4F		7758
1E51		7760
1E53		7762
1E55		7764
1E57		7766
1E59		7768
1E5B		7770
1E5D		7772
1E5F		7774
1E61		7776
1E63		7778
1E65		7780
1E67		7782
1E69		7784
1E6B		7786
1E6D		7788
1E6F		7790
1E71		7792
1E73		7794
1E75		7796
1E77		7798
1E79		7800
1E7B		7802
1E7D		7804
1E7F		7806
1E81		7808
1E83		7810
1E85		7812
1E87		7814
1E89		7816
1E8B		7818
1E8D		7820
1E8F		7822
1E91		7824
1E93		7826
1E95		7828
1E9B		7776
1EA1		7840
1EA3		7842
1EA5		7844
1EA7		7846
1EA9		7848
1EAB		7850
1EAD		7852
1EAF		7854
1EB1		7856
1EB3		7858
1EB5		7860
1EB7		7862
1EB9		7864
1EBB		7866
1EBD		7868
1EBF		7870
1EC1		7872
1EC3		7874
1EC5		7876
1EC7		7878
1EC9		7880
1ECB		7882
1ECD		7884
1ECF		7886
1ED1		7888
1ED3		7890
1ED5		7892
1ED7		7894
1ED9		7896
1EDB		7898
1EDD		7900
1EDF		7902
1EE1		7904
1EE3		7906
1EE5		7908
1EE7		7910
1EE9		7912
1EEB		7914
1EED		7916
1EEF		7918
1EF1		7920
1EF3		7922
1EF5		7924
1EF7		7926
1EF9		7928
1EFB		7930
1EFD		7932
1EFF		7934
1F00	1F07	7944	# [8]
1F10	1F15	7960	# [6]
1F20	1F27	7976	# [8]
1F30	1F37	7992	# [8]
1F40	1F45	8008	# [6]
1F51		8025
1F53		8027
1F55		8029
1F57		8031
1F60	1F67	8040	# [8]
1F70	1F71	8122	# [2]
1F72	1F75	8136	# [4]
1F76	1F77	8154	# [2]
1F78	1F79	8184	# [2]
1F7A	1F7B	8170	# [2]
1F7C	1F7D	8186	# [2]
1F80	1F87	8072	# [8]
1F90	1F97	8088	# [8]
1FA0	1FA7	8104	# [8]
1FB0	1FB1	8120	# [2]
1FB3		8124
1FBE		921
1FC3		8140
1FD0	1FD1	8152	# [2]
1FE0	1FE1	8168	# [2]
1FE5		8172
1FF3		8188
214E		8498
2170	217F	8544	# [16]
2184		8579
24D0	24E9	9398	# [26]
2C30	2C5E	11264	# [47]
2C61		11360
2C65		570
2C66		574
2C68		11367
2C6A		11369
2C6C		11371
2C73		11378
2C76		11381
2C81		11392
2C83		11394
2C85		11396
2C87		11398
2C89		11400
2C8B		11402
2C8D		11404
2C8F		11406
2C91		11408
2C93		11410
2C95		11412
2C97		11414
2C99		11416
2C9B		11418
2C9D		11420
2C9F		11422
2CA1		11424
2CA3		11426
2CA5		11428
2CA7		11430
2CA9		11432
2CAB		11434
2CAD		11436
2CAF		11438
2CB1		11440
2CB3		11442
2CB5		11444
2CB7		11446
2CB9		11448
2CBB		11450
2CBD		11452
2CBF		11454
2CC1		11456
2CC3		11458
2CC5		11460
2CC7		11462
2CC9		11464
2CCB		11466
2CCD		11468
2CCF		11470
2CD1		11472
2CD3		11474
2CD5		11476
2CD7		11478
2CD9		11480
2CDB		11482
2CDD		11484
2CDF		11486
2CE1		11488
2CE3		11490
2CEC		11499
2CEE		11501
2CF3		11506
2D00	2D25	4256	# [38]
2D27		4295
2D2D		4301
A641		42560
A643		42562
A645		42564
A647		42566
A649		42568
A64B		42570
A64D		42572
A64F		42574
A651		42576
A653		42578
A655		42580
A657		42582
A659		42584
A65B		42586
A65D		42588
A65F		42590
A661		42592
A663		42594
A665		42596
A667		42598
A669		42600
A66B		42602
A66D		42604
A681		42624
A683		42626
A685		42628
A687		42630
A689		42632
A68B		42634
A68D		42636
A68F		42638
A691		42640
A693		42642
A695		42644
A697		42646
A723		42786
A725		42788
A727		42790
A729		42792
A72B		42794
A72D		42796
A72F		42798
A733		42802
A735		42804
A737		42806
A739		42808
A73B		42810
A73D		42812
A73F		42814
A741		42816
A743		42818
A745		42820
A747		42822
A749		42824
A74B		42826
A74D		42828
A74F		42830
A751		42832
A753		42834
A755		42836
A757		42838
A759		42840
A75B		42842
A75D		42844
A75F		42846
A761		42848
A763		42850
A765		42852
A767		42854
A769		42856
A76B		42858
A76D		42860
A76F		42862
A77A		42873
A77C		42875
A77F		42878
A781		42880
A783		42882
A785		42884
A787		42886
A78C		42891
A791		42896
A793		42898
A7A1		42912
A7A3		42914
A7A5		42916
A7A7		42918
A7A9		42920
FF41	FF5A	65313	# [26]
10428	1044F	66560	# [40]
END
