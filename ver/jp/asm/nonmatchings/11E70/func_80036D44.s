.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80036D44
/* 12144 80036D44 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 12148 80036D48 AFB00018 */  sw        $s0, 0x18($sp)
/* 1214C 80036D4C 3C108007 */  lui       $s0, %hi(D_8007417C)
/* 12150 80036D50 2610417C */  addiu     $s0, $s0, %lo(D_8007417C)
/* 12154 80036D54 AFBF0020 */  sw        $ra, 0x20($sp)
/* 12158 80036D58 AFB1001C */  sw        $s1, 0x1c($sp)
/* 1215C 80036D5C 8E020000 */  lw        $v0, ($s0)
/* 12160 80036D60 3C013F80 */  lui       $at, 0x3f80
/* 12164 80036D64 44816000 */  mtc1      $at, $f12
/* 12168 80036D68 0C00AFAB */  jal       func_8002BEAC
/* 1216C 80036D6C 8C510010 */   lw       $s1, 0x10($v0)
/* 12170 80036D70 44806000 */  mtc1      $zero, $f12
/* 12174 80036D74 0C00AFB9 */  jal       func_8002BEE4
/* 12178 80036D78 00000000 */   nop
/* 1217C 80036D7C 3C04800A */  lui       $a0, %hi(D_8009E798)
/* 12180 80036D80 2484E798 */  addiu     $a0, $a0, %lo(D_8009E798)
/* 12184 80036D84 84820000 */  lh        $v0, ($a0)
/* 12188 80036D88 94830000 */  lhu       $v1, ($a0)
/* 1218C 80036D8C 18400002 */  blez      $v0, .L80036D98
/* 12190 80036D90 2462FFFF */   addiu    $v0, $v1, -1
/* 12194 80036D94 A4820000 */  sh        $v0, ($a0)
.L80036D98:
/* 12198 80036D98 8E020000 */  lw        $v0, ($s0)
/* 1219C 80036D9C 804300AC */  lb        $v1, 0xac($v0)
/* 121A0 80036DA0 2C620007 */  sltiu     $v0, $v1, 7
/* 121A4 80036DA4 10400115 */  beqz      $v0, .L800371FC
/* 121A8 80036DA8 00031080 */   sll      $v0, $v1, 2
/* 121AC 80036DAC 3C01800A */  lui       $at, %hi(D_80098388)
/* 121B0 80036DB0 00220821 */  addu      $at, $at, $v0
/* 121B4 80036DB4 8C228388 */  lw        $v0, %lo(D_80098388)($at)
/* 121B8 80036DB8 00400008 */  jr        $v0
/* 121BC 80036DBC 00000000 */   nop
/* 121C0 80036DC0 3C04800A */  lui       $a0, %hi(D_8009A630)
/* 121C4 80036DC4 2484A630 */  addiu     $a0, $a0, %lo(D_8009A630)
/* 121C8 80036DC8 8C820000 */  lw        $v0, ($a0)
/* 121CC 80036DCC 24030003 */  addiu     $v1, $zero, 3
/* 121D0 80036DD0 3C01800A */  lui       $at, %hi(D_8009E780)
/* 121D4 80036DD4 A423E780 */  sh        $v1, %lo(D_8009E780)($at)
/* 121D8 80036DD8 34420008 */  ori       $v0, $v0, 8
/* 121DC 80036DDC AC820000 */  sw        $v0, ($a0)
/* 121E0 80036DE0 3C048007 */  lui       $a0, %hi(D_8007417C)
/* 121E4 80036DE4 2484417C */  addiu     $a0, $a0, %lo(D_8007417C)
/* 121E8 80036DE8 8C830000 */  lw        $v1, ($a0)
/* 121EC 80036DEC 24020014 */  addiu     $v0, $zero, 0x14
/* 121F0 80036DF0 A06200B0 */  sb        $v0, 0xb0($v1)
/* 121F4 80036DF4 8C830000 */  lw        $v1, ($a0)
/* 121F8 80036DF8 906200B0 */  lbu       $v0, 0xb0($v1)
/* 121FC 80036DFC A06200AF */  sb        $v0, 0xaf($v1)
/* 12200 80036E00 8C830000 */  lw        $v1, ($a0)
/* 12204 80036E04 906200AC */  lbu       $v0, 0xac($v1)
/* 12208 80036E08 24420001 */  addiu     $v0, $v0, 1
/* 1220C 80036E0C 0800DC7F */  j         .L800371FC
/* 12210 80036E10 A06200AC */   sb       $v0, 0xac($v1)
/* 12214 80036E14 3C04800A */  lui       $a0, %hi(D_8009E780)
/* 12218 80036E18 2484E780 */  addiu     $a0, $a0, %lo(D_8009E780)
/* 1221C 80036E1C 84820000 */  lh        $v0, ($a0)
/* 12220 80036E20 94830000 */  lhu       $v1, ($a0)
/* 12224 80036E24 10400003 */  beqz      $v0, .L80036E34
/* 12228 80036E28 2462FFFF */   addiu    $v0, $v1, -1
/* 1222C 80036E2C 0800DC7F */  j         .L800371FC
/* 12230 80036E30 A4820000 */   sh       $v0, ($a0)
.L80036E34:
/* 12234 80036E34 3C108007 */  lui       $s0, %hi(D_8007417C)
/* 12238 80036E38 2610417C */  addiu     $s0, $s0, %lo(D_8007417C)
/* 1223C 80036E3C 8E040000 */  lw        $a0, ($s0)
/* 12240 80036E40 808200AF */  lb        $v0, 0xaf($a0)
/* 12244 80036E44 908300AF */  lbu       $v1, 0xaf($a0)
/* 12248 80036E48 10400002 */  beqz      $v0, .L80036E54
/* 1224C 80036E4C 2462FFFF */   addiu    $v0, $v1, -1
/* 12250 80036E50 A08200AF */  sb        $v0, 0xaf($a0)
.L80036E54:
/* 12254 80036E54 24040006 */  addiu     $a0, $zero, 6
/* 12258 80036E58 3C02800A */  lui       $v0, %hi(D_8009A630)
/* 1225C 80036E5C 2442A630 */  addiu     $v0, $v0, %lo(D_8009A630)
/* 12260 80036E60 8C430000 */  lw        $v1, ($v0)
/* 12264 80036E64 2405FFF7 */  addiu     $a1, $zero, -9
/* 12268 80036E68 00651824 */  and       $v1, $v1, $a1
/* 1226C 80036E6C 0C00CD22 */  jal       func_80033488
/* 12270 80036E70 AC430000 */   sw       $v1, ($v0)
/* 12274 80036E74 10400074 */  beqz      $v0, .L80037048
/* 12278 80036E78 00000000 */   nop
/* 1227C 80036E7C 8E030000 */  lw        $v1, ($s0)
/* 12280 80036E80 806200AF */  lb        $v0, 0xaf($v1)
/* 12284 80036E84 14400070 */  bnez      $v0, .L80037048
/* 12288 80036E88 24020002 */   addiu    $v0, $zero, 2
/* 1228C 80036E8C 0800DC12 */  j         .L80037048
/* 12290 80036E90 A06200AC */   sb       $v0, 0xac($v1)
/* 12294 80036E94 3C028007 */  lui       $v0, %hi(D_80077A04)
/* 12298 80036E98 8C427A04 */  lw        $v0, %lo(D_80077A04)($v0)
/* 1229C 80036E9C 1040000B */  beqz      $v0, .L80036ECC
/* 122A0 80036EA0 24020078 */   addiu    $v0, $zero, 0x78
/* 122A4 80036EA4 3C03800A */  lui       $v1, %hi(D_8009E798)
/* 122A8 80036EA8 8463E798 */  lh        $v1, %lo(D_8009E798)($v1)
/* 122AC 80036EAC 14620007 */  bne       $v1, $v0, .L80036ECC
/* 122B0 80036EB0 24020008 */   addiu    $v0, $zero, 8
/* 122B4 80036EB4 AFA20010 */  sw        $v0, 0x10($sp)
/* 122B8 80036EB8 0000202D */  daddu     $a0, $zero, $zero
/* 122BC 80036EBC 2405FFFF */  addiu     $a1, $zero, -1
/* 122C0 80036EC0 0080302D */  daddu     $a2, $a0, $zero
/* 122C4 80036EC4 0C053E72 */  jal       func_8014F9C8
/* 122C8 80036EC8 24070F3C */   addiu    $a3, $zero, 0xf3c
.L80036ECC:
/* 122CC 80036ECC 3C02800A */  lui       $v0, %hi(D_8009E798)
/* 122D0 80036ED0 8442E798 */  lh        $v0, %lo(D_8009E798)($v0)
/* 122D4 80036ED4 14400012 */  bnez      $v0, .L80036F20
/* 122D8 80036ED8 32229000 */   andi     $v0, $s1, 0x9000
/* 122DC 80036EDC 3C028007 */  lui       $v0, %hi(D_8007417C)
/* 122E0 80036EE0 8C42417C */  lw        $v0, %lo(D_8007417C)($v0)
/* 122E4 80036EE4 24030004 */  addiu     $v1, $zero, 4
/* 122E8 80036EE8 A04300AC */  sb        $v1, 0xac($v0)
/* 122EC 80036EEC 3C028007 */  lui       $v0, %hi(D_80077A04)
/* 122F0 80036EF0 8C427A04 */  lw        $v0, %lo(D_80077A04)($v0)
/* 122F4 80036EF4 14400002 */  bnez      $v0, .L80036F00
/* 122F8 80036EF8 24020009 */   addiu    $v0, $zero, 9
/* 122FC 80036EFC 2402000A */  addiu     $v0, $zero, 0xa
.L80036F00:
/* 12300 80036F00 3C018007 */  lui       $at, %hi(D_80077990)
/* 12304 80036F04 A4227990 */  sh        $v0, %lo(D_80077990)($at)
/* 12308 80036F08 3C038007 */  lui       $v1, %hi(D_80077A04)
/* 1230C 80036F0C 24637A04 */  addiu     $v1, $v1, %lo(D_80077A04)
/* 12310 80036F10 8C620000 */  lw        $v0, ($v1)
/* 12314 80036F14 38420001 */  xori      $v0, $v0, 1
/* 12318 80036F18 0800DC88 */  j         .L80037220
/* 1231C 80036F1C AC620000 */   sw       $v0, ($v1)
.L80036F20:
/* 12320 80036F20 104000B6 */  beqz      $v0, .L800371FC
/* 12324 80036F24 24020004 */   addiu    $v0, $zero, 4
/* 12328 80036F28 3C038007 */  lui       $v1, %hi(D_8007417C)
/* 1232C 80036F2C 8C63417C */  lw        $v1, %lo(D_8007417C)($v1)
/* 12330 80036F30 A06200AC */  sb        $v0, 0xac($v1)
/* 12334 80036F34 24020005 */  addiu     $v0, $zero, 5
/* 12338 80036F38 3C018007 */  lui       $at, %hi(D_80077990)
/* 1233C 80036F3C A4227990 */  sh        $v0, %lo(D_80077990)($at)
/* 12340 80036F40 0C053B59 */  jal       func_8014ED64
/* 12344 80036F44 240400D5 */   addiu    $a0, $zero, 0xd5
/* 12348 80036F48 0000202D */  daddu     $a0, $zero, $zero
/* 1234C 80036F4C 24050069 */  addiu     $a1, $zero, 0x69
/* 12350 80036F50 0080302D */  daddu     $a2, $a0, $zero
/* 12354 80036F54 240701F4 */  addiu     $a3, $zero, 0x1f4
/* 12358 80036F58 24020008 */  addiu     $v0, $zero, 8
/* 1235C 80036F5C 0C053E72 */  jal       func_8014F9C8
/* 12360 80036F60 AFA20010 */   sw       $v0, 0x10($sp)
/* 12364 80036F64 0800DC88 */  j         .L80037220
/* 12368 80036F68 00000000 */   nop
/* 1236C 80036F6C 240400D0 */  addiu     $a0, $zero, 0xd0
/* 12370 80036F70 3C108007 */  lui       $s0, %hi(D_8007417C)
/* 12374 80036F74 2610417C */  addiu     $s0, $s0, %lo(D_8007417C)
/* 12378 80036F78 8E030000 */  lw        $v1, ($s0)
/* 1237C 80036F7C 24020005 */  addiu     $v0, $zero, 5
/* 12380 80036F80 0C00CD1C */  jal       func_80033470
/* 12384 80036F84 A06200AC */   sb       $v0, 0xac($v1)
/* 12388 80036F88 3C028007 */  lui       $v0, %hi(D_80077990)
/* 1238C 80036F8C 94427990 */  lhu       $v0, %lo(D_80077990)($v0)
/* 12390 80036F90 2442FFF7 */  addiu     $v0, $v0, -9
/* 12394 80036F94 2C420002 */  sltiu     $v0, $v0, 2
/* 12398 80036F98 10400004 */  beqz      $v0, .L80036FAC
/* 1239C 80036F9C 24020014 */   addiu    $v0, $zero, 0x14
/* 123A0 80036FA0 8E030000 */  lw        $v1, ($s0)
/* 123A4 80036FA4 0800DBEE */  j         .L80036FB8
/* 123A8 80036FA8 A06200B0 */   sb       $v0, 0xb0($v1)
.L80036FAC:
/* 123AC 80036FAC 8E030000 */  lw        $v1, ($s0)
/* 123B0 80036FB0 2402000A */  addiu     $v0, $zero, 0xa
/* 123B4 80036FB4 A06200B0 */  sb        $v0, 0xb0($v1)
.L80036FB8:
/* 123B8 80036FB8 3C038007 */  lui       $v1, %hi(D_8007417C)
/* 123BC 80036FBC 8C63417C */  lw        $v1, %lo(D_8007417C)($v1)
/* 123C0 80036FC0 906200B0 */  lbu       $v0, 0xb0($v1)
/* 123C4 80036FC4 0800DC7F */  j         .L800371FC
/* 123C8 80036FC8 A06200AF */   sb       $v0, 0xaf($v1)
/* 123CC 80036FCC 3C038007 */  lui       $v1, %hi(D_80077990)
/* 123D0 80036FD0 94637990 */  lhu       $v1, %lo(D_80077990)($v1)
/* 123D4 80036FD4 2462FFF7 */  addiu     $v0, $v1, -9
/* 123D8 80036FD8 2C420002 */  sltiu     $v0, $v0, 2
/* 123DC 80036FDC 1040001E */  beqz      $v0, .L80037058
/* 123E0 80036FE0 00031400 */   sll      $v0, $v1, 0x10
/* 123E4 80036FE4 3C108007 */  lui       $s0, %hi(D_8007417C)
/* 123E8 80036FE8 2610417C */  addiu     $s0, $s0, %lo(D_8007417C)
/* 123EC 80036FEC 8E040000 */  lw        $a0, ($s0)
/* 123F0 80036FF0 808200AF */  lb        $v0, 0xaf($a0)
/* 123F4 80036FF4 908300AF */  lbu       $v1, 0xaf($a0)
/* 123F8 80036FF8 10400002 */  beqz      $v0, .L80037004
/* 123FC 80036FFC 2462FFFF */   addiu    $v0, $v1, -1
/* 12400 80037000 A08200AF */  sb        $v0, 0xaf($a0)
.L80037004:
/* 12404 80037004 0C00CD30 */  jal       func_800334C0
/* 12408 80037008 2404000A */   addiu    $a0, $zero, 0xa
/* 1240C 8003700C 1040000E */  beqz      $v0, .L80037048
/* 12410 80037010 00000000 */   nop
/* 12414 80037014 8E030000 */  lw        $v1, ($s0)
/* 12418 80037018 806200AF */  lb        $v0, 0xaf($v1)
/* 1241C 8003701C 1440000A */  bnez      $v0, .L80037048
/* 12420 80037020 24020003 */   addiu    $v0, $zero, 3
/* 12424 80037024 A06200AF */  sb        $v0, 0xaf($v1)
/* 12428 80037028 3C03800A */  lui       $v1, %hi(D_8009A630)
/* 1242C 8003702C 2463A630 */  addiu     $v1, $v1, %lo(D_8009A630)
/* 12430 80037030 8C620000 */  lw        $v0, ($v1)
/* 12434 80037034 34420008 */  ori       $v0, $v0, 8
/* 12438 80037038 AC620000 */  sw        $v0, ($v1)
/* 1243C 8003703C 8E030000 */  lw        $v1, ($s0)
/* 12440 80037040 24020006 */  addiu     $v0, $zero, 6
/* 12444 80037044 A06200AC */  sb        $v0, 0xac($v1)
.L80037048:
/* 12448 80037048 0C00CD41 */  jal       func_80033504
/* 1244C 8003704C 00000000 */   nop
/* 12450 80037050 0800DC7F */  j         .L800371FC
/* 12454 80037054 00000000 */   nop
.L80037058:
/* 12458 80037058 00021403 */  sra       $v0, $v0, 0x10
/* 1245C 8003705C 24030005 */  addiu     $v1, $zero, 5
/* 12460 80037060 14430012 */  bne       $v0, $v1, .L800370AC
/* 12464 80037064 24020003 */   addiu    $v0, $zero, 3
/* 12468 80037068 3C058007 */  lui       $a1, %hi(D_8007417C)
/* 1246C 8003706C 24A5417C */  addiu     $a1, $a1, %lo(D_8007417C)
/* 12470 80037070 8CA40000 */  lw        $a0, ($a1)
/* 12474 80037074 808200AF */  lb        $v0, 0xaf($a0)
/* 12478 80037078 908300AF */  lbu       $v1, 0xaf($a0)
/* 1247C 8003707C 1440001F */  bnez      $v0, .L800370FC
/* 12480 80037080 2462FFFF */   addiu    $v0, $v1, -1
/* 12484 80037084 24020003 */  addiu     $v0, $zero, 3
/* 12488 80037088 3C03800A */  lui       $v1, %hi(D_8009A630)
/* 1248C 8003708C 2463A630 */  addiu     $v1, $v1, %lo(D_8009A630)
/* 12490 80037090 A08200AF */  sb        $v0, 0xaf($a0)
/* 12494 80037094 8C620000 */  lw        $v0, ($v1)
/* 12498 80037098 34420008 */  ori       $v0, $v0, 8
/* 1249C 8003709C AC620000 */  sw        $v0, ($v1)
/* 124A0 800370A0 8CA30000 */  lw        $v1, ($a1)
/* 124A4 800370A4 0800DC36 */  j         .L800370D8
/* 124A8 800370A8 24020006 */   addiu    $v0, $zero, 6
.L800370AC:
/* 124AC 800370AC 3C048007 */  lui       $a0, %hi(D_8007417C)
/* 124B0 800370B0 2484417C */  addiu     $a0, $a0, %lo(D_8007417C)
/* 124B4 800370B4 8C830000 */  lw        $v1, ($a0)
/* 124B8 800370B8 A06200AF */  sb        $v0, 0xaf($v1)
/* 124BC 800370BC 3C03800A */  lui       $v1, %hi(D_8009A630)
/* 124C0 800370C0 2463A630 */  addiu     $v1, $v1, %lo(D_8009A630)
/* 124C4 800370C4 8C620000 */  lw        $v0, ($v1)
/* 124C8 800370C8 34420008 */  ori       $v0, $v0, 8
/* 124CC 800370CC AC620000 */  sw        $v0, ($v1)
/* 124D0 800370D0 8C830000 */  lw        $v1, ($a0)
/* 124D4 800370D4 24020006 */  addiu     $v0, $zero, 6
.L800370D8:
/* 124D8 800370D8 0800DC7F */  j         .L800371FC
/* 124DC 800370DC A06200AC */   sb       $v0, 0xac($v1)
/* 124E0 800370E0 3C108007 */  lui       $s0, %hi(D_8007417C)
/* 124E4 800370E4 2610417C */  addiu     $s0, $s0, %lo(D_8007417C)
/* 124E8 800370E8 8E040000 */  lw        $a0, ($s0)
/* 124EC 800370EC 808200AF */  lb        $v0, 0xaf($a0)
/* 124F0 800370F0 908300AF */  lbu       $v1, 0xaf($a0)
/* 124F4 800370F4 10400003 */  beqz      $v0, .L80037104
/* 124F8 800370F8 2462FFFF */   addiu    $v0, $v1, -1
.L800370FC:
/* 124FC 800370FC 0800DC7F */  j         .L800371FC
/* 12500 80037100 A08200AF */   sb       $v0, 0xaf($a0)
.L80037104:
/* 12504 80037104 0C00AAF0 */  jal       func_8002ABC0
/* 12508 80037108 00000000 */   nop
/* 1250C 8003710C 0C048AA8 */  jal       func_80122AA0
/* 12510 80037110 00000000 */   nop
/* 12514 80037114 0C00B6E1 */  jal       func_8002DB84
/* 12518 80037118 00000000 */   nop
/* 1251C 8003711C 0C049770 */  jal       func_80125DC0
/* 12520 80037120 00000000 */   nop
/* 12524 80037124 0C048D0D */  jal       func_80123434
/* 12528 80037128 00000000 */   nop
/* 1252C 8003712C 0C00E05F */  jal       func_8003817C
/* 12530 80037130 00000000 */   nop
/* 12534 80037134 0C05186C */  jal       func_801461B0
/* 12538 80037138 00000000 */   nop
/* 1253C 8003713C 0C044512 */  jal       func_80111448
/* 12540 80037140 0000202D */   daddu    $a0, $zero, $zero
/* 12544 80037144 0C0457B2 */  jal       func_80115EC8
/* 12548 80037148 24040001 */   addiu    $a0, $zero, 1
/* 1254C 8003714C 0C053128 */  jal       func_8014C4A0
/* 12550 80037150 00000000 */   nop
/* 12554 80037154 3C04800A */  lui       $a0, %hi(D_8009A630)
/* 12558 80037158 2484A630 */  addiu     $a0, $a0, %lo(D_8009A630)
/* 1255C 8003715C 2403FFF7 */  addiu     $v1, $zero, -9
/* 12560 80037160 8C820000 */  lw        $v0, ($a0)
/* 12564 80037164 8E050000 */  lw        $a1, ($s0)
/* 12568 80037168 00431024 */  and       $v0, $v0, $v1
/* 1256C 8003716C 2403FFFD */  addiu     $v1, $zero, -3
/* 12570 80037170 00431024 */  and       $v0, $v0, $v1
/* 12574 80037174 AC820000 */  sw        $v0, ($a0)
/* 12578 80037178 3C038007 */  lui       $v1, %hi(D_80077990)
/* 1257C 8003717C 84637990 */  lh        $v1, %lo(D_80077990)($v1)
/* 12580 80037180 24020009 */  addiu     $v0, $zero, 9
/* 12584 80037184 1062000D */  beq       $v1, $v0, .L800371BC
/* 12588 80037188 A4A0008E */   sh       $zero, 0x8e($a1)
/* 1258C 8003718C 2862000A */  slti      $v0, $v1, 0xa
/* 12590 80037190 10400005 */  beqz      $v0, .L800371A8
/* 12594 80037194 24020005 */   addiu    $v0, $zero, 5
/* 12598 80037198 10620011 */  beq       $v1, $v0, .L800371E0
/* 1259C 8003719C 2404000E */   addiu    $a0, $zero, 0xe
/* 125A0 800371A0 0800DC88 */  j         .L80037220
/* 125A4 800371A4 00000000 */   nop
.L800371A8:
/* 125A8 800371A8 2402000A */  addiu     $v0, $zero, 0xa
/* 125AC 800371AC 10620008 */  beq       $v1, $v0, .L800371D0
/* 125B0 800371B0 00000000 */   nop
/* 125B4 800371B4 0800DC88 */  j         .L80037220
/* 125B8 800371B8 00000000 */   nop
.L800371BC:
/* 125BC 800371BC A0A000A8 */  sb        $zero, 0xa8($a1)
/* 125C0 800371C0 0C00CC60 */  jal       func_80033180
/* 125C4 800371C4 24040010 */   addiu    $a0, $zero, 0x10
/* 125C8 800371C8 0800DC88 */  j         .L80037220
/* 125CC 800371CC 00000000 */   nop
.L800371D0:
/* 125D0 800371D0 0C00CC60 */  jal       func_80033180
/* 125D4 800371D4 24040011 */   addiu    $a0, $zero, 0x11
/* 125D8 800371D8 0800DC88 */  j         .L80037220
/* 125DC 800371DC 00000000 */   nop
.L800371E0:
/* 125E0 800371E0 2402000B */  addiu     $v0, $zero, 0xb
/* 125E4 800371E4 A4A00086 */  sh        $zero, 0x86($a1)
/* 125E8 800371E8 A4A2008C */  sh        $v0, 0x8c($a1)
/* 125EC 800371EC 0C00CC60 */  jal       func_80033180
/* 125F0 800371F0 A4A0008E */   sh       $zero, 0x8e($a1)
/* 125F4 800371F4 0800DC88 */  j         .L80037220
/* 125F8 800371F8 00000000 */   nop
.L800371FC:
/* 125FC 800371FC 3C02800A */  lui       $v0, %hi(D_8009A630)
/* 12600 80037200 8C42A630 */  lw        $v0, %lo(D_8009A630)($v0)
/* 12604 80037204 30420008 */  andi      $v0, $v0, 8
/* 12608 80037208 14400005 */  bnez      $v0, .L80037220
/* 1260C 8003720C 00000000 */   nop
/* 12610 80037210 0C00E57C */  jal       func_800395F0
/* 12614 80037214 00000000 */   nop
/* 12618 80037218 0C00B424 */  jal       func_8002D090
/* 1261C 8003721C 00000000 */   nop
.L80037220:
/* 12620 80037220 8FBF0020 */  lw        $ra, 0x20($sp)
/* 12624 80037224 8FB1001C */  lw        $s1, 0x1c($sp)
/* 12628 80037228 8FB00018 */  lw        $s0, 0x18($sp)
/* 1262C 8003722C 03E00008 */  jr        $ra
/* 12630 80037230 27BD0028 */   addiu    $sp, $sp, 0x28