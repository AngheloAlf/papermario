.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8002D090
/* 8490 8002D090 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 8494 8002D094 F7B60068 */  sdc1      $f22, 0x68($sp)
/* 8498 8002D098 3C013F80 */  lui       $at, 0x3f80
/* 849C 8002D09C 4481B000 */  mtc1      $at, $f22
/* 84A0 8002D0A0 F7B40060 */  sdc1      $f20, 0x60($sp)
/* 84A4 8002D0A4 3C013FE0 */  lui       $at, 0x3fe0
/* 84A8 8002D0A8 4481A800 */  mtc1      $at, $f21
/* 84AC 8002D0AC 4480A000 */  mtc1      $zero, $f20
/* 84B0 8002D0B0 AFB3004C */  sw        $s3, 0x4c($sp)
/* 84B4 8002D0B4 0000982D */  daddu     $s3, $zero, $zero
/* 84B8 8002D0B8 AFB60058 */  sw        $s6, 0x58($sp)
/* 84BC 8002D0BC 27B60030 */  addiu     $s6, $sp, 0x30
/* 84C0 8002D0C0 AFB50054 */  sw        $s5, 0x54($sp)
/* 84C4 8002D0C4 27B50034 */  addiu     $s5, $sp, 0x34
/* 84C8 8002D0C8 AFB40050 */  sw        $s4, 0x50($sp)
/* 84CC 8002D0CC 27B40038 */  addiu     $s4, $sp, 0x38
/* 84D0 8002D0D0 AFB00040 */  sw        $s0, 0x40($sp)
/* 84D4 8002D0D4 3C10800B */  lui       $s0, %hi(D_800B1D60)
/* 84D8 8002D0D8 26101D60 */  addiu     $s0, $s0, %lo(D_800B1D60)
/* 84DC 8002D0DC AFBF005C */  sw        $ra, 0x5c($sp)
/* 84E0 8002D0E0 AFB20048 */  sw        $s2, 0x48($sp)
/* 84E4 8002D0E4 AFB10044 */  sw        $s1, 0x44($sp)
.L8002D0E8:
/* 84E8 8002D0E8 96020000 */  lhu       $v0, ($s0)
/* 84EC 8002D0EC 104000A5 */  beqz      $v0, .L8002D384
/* 84F0 8002D0F0 30420002 */   andi     $v0, $v0, 2
/* 84F4 8002D0F4 544000A4 */  bnel      $v0, $zero, .L8002D388
/* 84F8 8002D0F8 26730001 */   addiu    $s3, $s3, 1
/* 84FC 8002D0FC 86030004 */  lh        $v1, 4($s0)
/* 8500 8002D100 3C01800A */  lui       $at, %hi(D_8009A614)
/* 8504 8002D104 A433A614 */  sh        $s3, %lo(D_8009A614)($at)
/* 8508 8002D108 2C620007 */  sltiu     $v0, $v1, 7
/* 850C 8002D10C 1040001E */  beqz      $v0, .L8002D188
/* 8510 8002D110 00031080 */   sll      $v0, $v1, 2
/* 8514 8002D114 3C01800A */  lui       $at, %hi(D_800981C0)
/* 8518 8002D118 00220821 */  addu      $at, $at, $v0
/* 851C 8002D11C 8C2281C0 */  lw        $v0, %lo(D_800981C0)($at)
/* 8520 8002D120 00400008 */  jr        $v0
/* 8524 8002D124 00000000 */   nop
/* 8528 8002D128 0C00C449 */  jal       func_80031124
/* 852C 8002D12C 0200202D */   daddu    $a0, $s0, $zero
/* 8530 8002D130 0800B464 */  j         .L8002D190
/* 8534 8002D134 00000000 */   nop
/* 8538 8002D138 0C00BD38 */  jal       func_8002F4E0
/* 853C 8002D13C 0200202D */   daddu    $a0, $s0, $zero
/* 8540 8002D140 0800B464 */  j         .L8002D190
/* 8544 8002D144 00000000 */   nop
/* 8548 8002D148 0C00BBC8 */  jal       func_8002EF20
/* 854C 8002D14C 0200202D */   daddu    $a0, $s0, $zero
/* 8550 8002D150 0800B464 */  j         .L8002D190
/* 8554 8002D154 00000000 */   nop
/* 8558 8002D158 0C00BA62 */  jal       func_8002E988
/* 855C 8002D15C 0200202D */   daddu    $a0, $s0, $zero
/* 8560 8002D160 0800B464 */  j         .L8002D190
/* 8564 8002D164 00000000 */   nop
/* 8568 8002D168 0C00B968 */  jal       func_8002E5A0
/* 856C 8002D16C 0200202D */   daddu    $a0, $s0, $zero
/* 8570 8002D170 0800B464 */  j         .L8002D190
/* 8574 8002D174 00000000 */   nop
/* 8578 8002D178 0C00BF24 */  jal       func_8002FC90
/* 857C 8002D17C 0200202D */   daddu    $a0, $s0, $zero
/* 8580 8002D180 0800B464 */  j         .L8002D190
/* 8584 8002D184 00000000 */   nop
.L8002D188:
/* 8588 8002D188 0C00BD88 */  jal       func_8002F620
/* 858C 8002D18C 0200202D */   daddu    $a0, $s0, $zero
.L8002D190:
/* 8590 8002D190 C6000044 */  lwc1      $f0, 0x44($s0)
/* 8594 8002D194 3C05800A */  lui       $a1, %hi(D_8009A654)
/* 8598 8002D198 8CA5A654 */  lw        $a1, %lo(D_8009A654)($a1)
/* 859C 8002D19C E7A00010 */  swc1      $f0, 0x10($sp)
/* 85A0 8002D1A0 C6000048 */  lwc1      $f0, 0x48($s0)
/* 85A4 8002D1A4 E7A00014 */  swc1      $f0, 0x14($sp)
/* 85A8 8002D1A8 C600004C */  lwc1      $f0, 0x4c($s0)
/* 85AC 8002D1AC E7A00018 */  swc1      $f0, 0x18($sp)
/* 85B0 8002D1B0 C6000050 */  lwc1      $f0, 0x50($s0)
/* 85B4 8002D1B4 26120114 */  addiu     $s2, $s0, 0x114
/* 85B8 8002D1B8 AFA00020 */  sw        $zero, 0x20($sp)
/* 85BC 8002D1BC E7B60024 */  swc1      $f22, 0x24($sp)
/* 85C0 8002D1C0 AFA00028 */  sw        $zero, 0x28($sp)
/* 85C4 8002D1C4 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 85C8 8002D1C8 8E06003C */  lw        $a2, 0x3c($s0)
/* 85CC 8002D1CC 8E070040 */  lw        $a3, 0x40($s0)
/* 85D0 8002D1D0 0C018CBC */  jal       func_800632F0
/* 85D4 8002D1D4 0240202D */   daddu    $a0, $s2, $zero
/* 85D8 8002D1D8 96030000 */  lhu       $v1, ($s0)
/* 85DC 8002D1DC 30620010 */  andi      $v0, $v1, 0x10
/* 85E0 8002D1E0 14400034 */  bnez      $v0, .L8002D2B4
/* 85E4 8002D1E4 260400D4 */   addiu    $a0, $s0, 0xd4
/* 85E8 8002D1E8 30620004 */  andi      $v0, $v1, 4
/* 85EC 8002D1EC 10400004 */  beqz      $v0, .L8002D200
/* 85F0 8002D1F0 261100D4 */   addiu    $s1, $s0, 0xd4
/* 85F4 8002D1F4 0C00CC09 */  jal       func_80033024
/* 85F8 8002D1F8 0200202D */   daddu    $a0, $s0, $zero
/* 85FC 8002D1FC 261100D4 */  addiu     $s1, $s0, 0xd4
.L8002D200:
/* 8600 8002D200 0220202D */  daddu     $a0, $s1, $zero
/* 8604 8002D204 8607000A */  lh        $a3, 0xa($s0)
/* 8608 8002D208 86020012 */  lh        $v0, 0x12($s0)
/* 860C 8002D20C 8603000C */  lh        $v1, 0xc($s0)
/* 8610 8002D210 44820000 */  mtc1      $v0, $f0
/* 8614 8002D214 00000000 */  nop
/* 8618 8002D218 46800020 */  cvt.s.w   $f0, $f0
/* 861C 8002D21C E7A00010 */  swc1      $f0, 0x10($sp)
/* 8620 8002D220 86020014 */  lh        $v0, 0x14($s0)
/* 8624 8002D224 44871000 */  mtc1      $a3, $f2
/* 8628 8002D228 00000000 */  nop
/* 862C 8002D22C 468010A0 */  cvt.s.w   $f2, $f2
/* 8630 8002D230 E7B60018 */  swc1      $f22, 0x18($sp)
/* 8634 8002D234 44820000 */  mtc1      $v0, $f0
/* 8638 8002D238 00000000 */  nop
/* 863C 8002D23C 46800020 */  cvt.s.w   $f0, $f0
/* 8640 8002D240 E7A00014 */  swc1      $f0, 0x14($sp)
/* 8644 8002D244 44830000 */  mtc1      $v1, $f0
/* 8648 8002D248 00000000 */  nop
/* 864C 8002D24C 46800020 */  cvt.s.w   $f0, $f0
/* 8650 8002D250 46001083 */  div.s     $f2, $f2, $f0
/* 8654 8002D254 8E060018 */  lw        $a2, 0x18($s0)
/* 8658 8002D258 44071000 */  mfc1      $a3, $f2
/* 865C 8002D25C 0C018ED8 */  jal       func_80063B60
/* 8660 8002D260 26050038 */   addiu    $a1, $s0, 0x38
/* 8664 8002D264 96020000 */  lhu       $v0, ($s0)
/* 8668 8002D268 30420008 */  andi      $v0, $v0, 8
/* 866C 8002D26C 10400004 */  beqz      $v0, .L8002D280
/* 8670 8002D270 26040194 */   addiu    $a0, $s0, 0x194
/* 8674 8002D274 0220282D */  daddu     $a1, $s1, $zero
/* 8678 8002D278 0C019D78 */  jal       func_800675E0
/* 867C 8002D27C 0220302D */   daddu    $a2, $s1, $zero
.L8002D280:
/* 8680 8002D280 96020000 */  lhu       $v0, ($s0)
/* 8684 8002D284 30420004 */  andi      $v0, $v0, 4
/* 8688 8002D288 10400004 */  beqz      $v0, .L8002D29C
/* 868C 8002D28C 26040154 */   addiu    $a0, $s0, 0x154
/* 8690 8002D290 0220282D */  daddu     $a1, $s1, $zero
/* 8694 8002D294 0C019D78 */  jal       func_800675E0
/* 8698 8002D298 0220302D */   daddu    $a2, $s1, $zero
.L8002D29C:
/* 869C 8002D29C 0240202D */  daddu     $a0, $s2, $zero
/* 86A0 8002D2A0 0220282D */  daddu     $a1, $s1, $zero
/* 86A4 8002D2A4 0C019D78 */  jal       func_800675E0
/* 86A8 8002D2A8 00A0302D */   daddu    $a2, $a1, $zero
/* 86AC 8002D2AC 0800B4D4 */  j         .L8002D350
/* 86B0 8002D2B0 AFB60010 */   sw       $s6, 0x10($sp)
.L8002D2B4:
/* 86B4 8002D2B4 8602000A */  lh        $v0, 0xa($s0)
/* 86B8 8002D2B8 44822000 */  mtc1      $v0, $f4
/* 86BC 8002D2BC 00000000 */  nop
/* 86C0 8002D2C0 46802120 */  cvt.s.w   $f4, $f4
/* 86C4 8002D2C4 46002187 */  neg.s     $f6, $f4
/* 86C8 8002D2C8 460031A1 */  cvt.d.s   $f6, $f6
/* 86CC 8002D2CC 46343182 */  mul.d     $f6, $f6, $f20
/* 86D0 8002D2D0 00000000 */  nop
/* 86D4 8002D2D4 46002121 */  cvt.d.s   $f4, $f4
/* 86D8 8002D2D8 46342102 */  mul.d     $f4, $f4, $f20
/* 86DC 8002D2DC 00000000 */  nop
/* 86E0 8002D2E0 8602000C */  lh        $v0, 0xc($s0)
/* 86E4 8002D2E4 44820000 */  mtc1      $v0, $f0
/* 86E8 8002D2E8 00000000 */  nop
/* 86EC 8002D2EC 46800020 */  cvt.s.w   $f0, $f0
/* 86F0 8002D2F0 46000087 */  neg.s     $f2, $f0
/* 86F4 8002D2F4 460010A1 */  cvt.d.s   $f2, $f2
/* 86F8 8002D2F8 46341082 */  mul.d     $f2, $f2, $f20
/* 86FC 8002D2FC 00000000 */  nop
/* 8700 8002D300 3C01C47A */  lui       $at, 0xc47a
/* 8704 8002D304 44814000 */  mtc1      $at, $f8
/* 8708 8002D308 3C01447A */  lui       $at, 0x447a
/* 870C 8002D30C 44815000 */  mtc1      $at, $f10
/* 8710 8002D310 E7B6001C */  swc1      $f22, 0x1c($sp)
/* 8714 8002D314 E7A80014 */  swc1      $f8, 0x14($sp)
/* 8718 8002D318 46000021 */  cvt.d.s   $f0, $f0
/* 871C 8002D31C 46340002 */  mul.d     $f0, $f0, $f20
/* 8720 8002D320 00000000 */  nop
/* 8724 8002D324 E7AA0018 */  swc1      $f10, 0x18($sp)
/* 8728 8002D328 462031A0 */  cvt.s.d   $f6, $f6
/* 872C 8002D32C 46202120 */  cvt.s.d   $f4, $f4
/* 8730 8002D330 44053000 */  mfc1      $a1, $f6
/* 8734 8002D334 44062000 */  mfc1      $a2, $f4
/* 8738 8002D338 462010A0 */  cvt.s.d   $f2, $f2
/* 873C 8002D33C 44071000 */  mfc1      $a3, $f2
/* 8740 8002D340 46200020 */  cvt.s.d   $f0, $f0
/* 8744 8002D344 0C018E38 */  jal       func_800638E0
/* 8748 8002D348 E7A00010 */   swc1     $f0, 0x10($sp)
/* 874C 8002D34C AFB60010 */  sw        $s6, 0x10($sp)
.L8002D350:
/* 8750 8002D350 AFB50014 */  sw        $s5, 0x14($sp)
/* 8754 8002D354 AFB40018 */  sw        $s4, 0x18($sp)
/* 8758 8002D358 8E050060 */  lw        $a1, 0x60($s0)
/* 875C 8002D35C 8E060064 */  lw        $a2, 0x64($s0)
/* 8760 8002D360 8E070068 */  lw        $a3, 0x68($s0)
/* 8764 8002D364 0C00B872 */  jal       func_8002E1C8
/* 8768 8002D368 0000202D */   daddu    $a0, $zero, $zero
/* 876C 8002D36C 96C20002 */  lhu       $v0, 2($s6)
/* 8770 8002D370 A6020032 */  sh        $v0, 0x32($s0)
/* 8774 8002D374 96A20002 */  lhu       $v0, 2($s5)
/* 8778 8002D378 A6020034 */  sh        $v0, 0x34($s0)
/* 877C 8002D37C 96820002 */  lhu       $v0, 2($s4)
/* 8780 8002D380 A6020036 */  sh        $v0, 0x36($s0)
.L8002D384:
/* 8784 8002D384 26730001 */  addiu     $s3, $s3, 1
.L8002D388:
/* 8788 8002D388 2A620004 */  slti      $v0, $s3, 4
/* 878C 8002D38C 1440FF56 */  bnez      $v0, .L8002D0E8
/* 8790 8002D390 26100558 */   addiu    $s0, $s0, 0x558
/* 8794 8002D394 8FBF005C */  lw        $ra, 0x5c($sp)
/* 8798 8002D398 8FB60058 */  lw        $s6, 0x58($sp)
/* 879C 8002D39C 8FB50054 */  lw        $s5, 0x54($sp)
/* 87A0 8002D3A0 8FB40050 */  lw        $s4, 0x50($sp)
/* 87A4 8002D3A4 8FB3004C */  lw        $s3, 0x4c($sp)
/* 87A8 8002D3A8 8FB20048 */  lw        $s2, 0x48($sp)
/* 87AC 8002D3AC 8FB10044 */  lw        $s1, 0x44($sp)
/* 87B0 8002D3B0 8FB00040 */  lw        $s0, 0x40($sp)
/* 87B4 8002D3B4 D7B60068 */  ldc1      $f22, 0x68($sp)
/* 87B8 8002D3B8 D7B40060 */  ldc1      $f20, 0x60($sp)
/* 87BC 8002D3BC 3C01800A */  lui       $at, %hi(D_8009A614)
/* 87C0 8002D3C0 A420A614 */  sh        $zero, %lo(D_8009A614)($at)
/* 87C4 8002D3C4 03E00008 */  jr        $ra
/* 87C8 8002D3C8 27BD0070 */   addiu    $sp, $sp, 0x70