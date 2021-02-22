.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218B9C_447FDC
/* 447FDC 80218B9C 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 447FE0 80218BA0 F7B60020 */  sdc1      $f22, 0x20($sp)
/* 447FE4 80218BA4 46006586 */  mov.s     $f22, $f12
/* 447FE8 80218BA8 F7B40018 */  sdc1      $f20, 0x18($sp)
/* 447FEC 80218BAC AFBF0010 */  sw        $ra, 0x10($sp)
/* 447FF0 80218BB0 0C00A3FC */  jal       length2D
/* 447FF4 80218BB4 46007506 */   mov.s    $f20, $f14
/* 447FF8 80218BB8 4600A18D */  trunc.w.s $f6, $f20
/* 447FFC 80218BBC 44023000 */  mfc1      $v0, $f6
/* 448000 80218BC0 00000000 */  nop
/* 448004 80218BC4 04420001 */  bltzl     $v0, .L80218BCC
/* 448008 80218BC8 00021023 */   negu     $v0, $v0
.L80218BCC:
/* 44800C 80218BCC 44821000 */  mtc1      $v0, $f2
/* 448010 80218BD0 00000000 */  nop
/* 448014 80218BD4 468010A0 */  cvt.s.w   $f2, $f2
/* 448018 80218BD8 46001103 */  div.s     $f4, $f2, $f0
/* 44801C 80218BDC 0000202D */  daddu     $a0, $zero, $zero
/* 448020 80218BE0 2406005A */  addiu     $a2, $zero, 0x5a
/* 448024 80218BE4 0080282D */  daddu     $a1, $a0, $zero
/* 448028 80218BE8 3C078023 */  lui       $a3, %hi(D_8022FEC8_45F308)
/* 44802C 80218BEC 24E7FEC8 */  addiu     $a3, $a3, %lo(D_8022FEC8_45F308)
/* 448030 80218BF0 30C2FFFF */  andi      $v0, $a2, 0xffff
.L80218BF4:
/* 448034 80218BF4 3083FFFF */  andi      $v1, $a0, 0xffff
/* 448038 80218BF8 00431023 */  subu      $v0, $v0, $v1
/* 44803C 80218BFC 00021FC2 */  srl       $v1, $v0, 0x1f
/* 448040 80218C00 00431021 */  addu      $v0, $v0, $v1
/* 448044 80218C04 00021043 */  sra       $v0, $v0, 1
/* 448048 80218C08 00821821 */  addu      $v1, $a0, $v0
/* 44804C 80218C0C 3062FFFF */  andi      $v0, $v1, 0xffff
/* 448050 80218C10 00021080 */  sll       $v0, $v0, 2
/* 448054 80218C14 00471021 */  addu      $v0, $v0, $a3
/* 448058 80218C18 C4400000 */  lwc1      $f0, ($v0)
/* 44805C 80218C1C 4604003C */  c.lt.s    $f0, $f4
/* 448060 80218C20 00000000 */  nop
/* 448064 80218C24 45020002 */  bc1fl     .L80218C30
/* 448068 80218C28 0060302D */   daddu    $a2, $v1, $zero
/* 44806C 80218C2C 0060202D */  daddu     $a0, $v1, $zero
.L80218C30:
/* 448070 80218C30 24A50001 */  addiu     $a1, $a1, 1
/* 448074 80218C34 30A2FFFF */  andi      $v0, $a1, 0xffff
/* 448078 80218C38 2C420007 */  sltiu     $v0, $v0, 7
/* 44807C 80218C3C 1440FFED */  bnez      $v0, .L80218BF4
/* 448080 80218C40 30C2FFFF */   andi     $v0, $a2, 0xffff
/* 448084 80218C44 3082FFFF */  andi      $v0, $a0, 0xffff
/* 448088 80218C48 00021080 */  sll       $v0, $v0, 2
/* 44808C 80218C4C 30C3FFFF */  andi      $v1, $a2, 0xffff
/* 448090 80218C50 3C018023 */  lui       $at, %hi(D_8022FEC8_45F308)
/* 448094 80218C54 00220821 */  addu      $at, $at, $v0
/* 448098 80218C58 C422FEC8 */  lwc1      $f2, %lo(D_8022FEC8_45F308)($at)
/* 44809C 80218C5C 00031880 */  sll       $v1, $v1, 2
/* 4480A0 80218C60 46041081 */  sub.s     $f2, $f2, $f4
/* 4480A4 80218C64 3C018023 */  lui       $at, %hi(D_8022FEC8_45F308)
/* 4480A8 80218C68 00230821 */  addu      $at, $at, $v1
/* 4480AC 80218C6C C420FEC8 */  lwc1      $f0, %lo(D_8022FEC8_45F308)($at)
/* 4480B0 80218C70 46040001 */  sub.s     $f0, $f0, $f4
/* 4480B4 80218C74 46001085 */  abs.s     $f2, $f2
/* 4480B8 80218C78 46000005 */  abs.s     $f0, $f0
/* 4480BC 80218C7C 4600103C */  c.lt.s    $f2, $f0
/* 4480C0 80218C80 00000000 */  nop
/* 4480C4 80218C84 45000002 */  bc1f      .L80218C90
/* 4480C8 80218C88 00C0182D */   daddu    $v1, $a2, $zero
/* 4480CC 80218C8C 0080182D */  daddu     $v1, $a0, $zero
.L80218C90:
/* 4480D0 80218C90 44800000 */  mtc1      $zero, $f0
/* 4480D4 80218C94 00000000 */  nop
/* 4480D8 80218C98 4600B03C */  c.lt.s    $f22, $f0
/* 4480DC 80218C9C 00000000 */  nop
/* 4480E0 80218CA0 4500000A */  bc1f      .L80218CCC
/* 4480E4 80218CA4 00000000 */   nop
/* 4480E8 80218CA8 4614003E */  c.le.s    $f0, $f20
/* 4480EC 80218CAC 00000000 */  nop
/* 4480F0 80218CB0 45000004 */  bc1f      .L80218CC4
/* 4480F4 80218CB4 240200B4 */   addiu    $v0, $zero, 0xb4
/* 4480F8 80218CB8 00431823 */  subu      $v1, $v0, $v1
/* 4480FC 80218CBC 44800000 */  mtc1      $zero, $f0
/* 448100 80218CC0 00000000 */  nop
.L80218CC4:
/* 448104 80218CC4 4600B03C */  c.lt.s    $f22, $f0
/* 448108 80218CC8 00000000 */  nop
.L80218CCC:
/* 44810C 80218CCC 45000005 */  bc1f      .L80218CE4
/* 448110 80218CD0 00000000 */   nop
/* 448114 80218CD4 4600A03C */  c.lt.s    $f20, $f0
/* 448118 80218CD8 00000000 */  nop
/* 44811C 80218CDC 45030001 */  bc1tl     .L80218CE4
/* 448120 80218CE0 246300B4 */   addiu    $v1, $v1, 0xb4
.L80218CE4:
/* 448124 80218CE4 44800000 */  mtc1      $zero, $f0
/* 448128 80218CE8 00000000 */  nop
/* 44812C 80218CEC 4616003E */  c.le.s    $f0, $f22
/* 448130 80218CF0 00000000 */  nop
/* 448134 80218CF4 45000006 */  bc1f      .L80218D10
/* 448138 80218CF8 00000000 */   nop
/* 44813C 80218CFC 4600A03C */  c.lt.s    $f20, $f0
/* 448140 80218D00 00000000 */  nop
/* 448144 80218D04 45000002 */  bc1f      .L80218D10
/* 448148 80218D08 24020168 */   addiu    $v0, $zero, 0x168
/* 44814C 80218D0C 00431823 */  subu      $v1, $v0, $v1
.L80218D10:
/* 448150 80218D10 8FBF0010 */  lw        $ra, 0x10($sp)
/* 448154 80218D14 D7B60020 */  ldc1      $f22, 0x20($sp)
/* 448158 80218D18 D7B40018 */  ldc1      $f20, 0x18($sp)
/* 44815C 80218D1C 3062FFFF */  andi      $v0, $v1, 0xffff
/* 448160 80218D20 03E00008 */  jr        $ra
/* 448164 80218D24 27BD0028 */   addiu    $sp, $sp, 0x28