.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel func_PAL_802416F8
/* E80888 802416F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E8088C 802416FC AFB10014 */  sw         $s1, 0x14($sp)
/* E80890 80241700 0080882D */  daddu      $s1, $a0, $zero
/* E80894 80241704 0000202D */  daddu      $a0, $zero, $zero
/* E80898 80241708 AFBF0018 */  sw         $ra, 0x18($sp)
/* E8089C 8024170C 0C00FC76 */  jal        get_enemy
/* E808A0 80241710 AFB00010 */   sw        $s0, 0x10($sp)
/* E808A4 80241714 8C50007C */  lw         $s0, 0x7C($v0)
/* E808A8 80241718 8C420074 */  lw         $v0, 0x74($v0)
/* E808AC 8024171C 0000282D */  daddu      $a1, $zero, $zero
/* E808B0 80241720 02028023 */  subu       $s0, $s0, $v0
/* E808B4 80241724 26100001 */  addiu      $s0, $s0, 0x1
/* E808B8 80241728 0C0491C2 */  jal        set_message_value
/* E808BC 8024172C 0200202D */   daddu     $a0, $s0, $zero
/* E808C0 80241730 0220202D */  daddu      $a0, $s1, $zero
/* E808C4 80241734 3C05FE36 */  lui        $a1, (0xFE363C8D >> 16)
/* E808C8 80241738 34A53C8D */  ori        $a1, $a1, (0xFE363C8D & 0xFFFF)
/* E808CC 8024173C 0C0B2C26 */  jal        evt_set_variable
/* E808D0 80241740 0200302D */   daddu     $a2, $s0, $zero
/* E808D4 80241744 8FBF0018 */  lw         $ra, 0x18($sp)
/* E808D8 80241748 8FB10014 */  lw         $s1, 0x14($sp)
/* E808DC 8024174C 8FB00010 */  lw         $s0, 0x10($sp)
/* E808E0 80241750 24020002 */  addiu      $v0, $zero, 0x2
/* E808E4 80241754 03E00008 */  jr         $ra
/* E808E8 80241758 27BD0020 */   addiu     $sp, $sp, 0x20