.include "macro.inc"

.section .data

glabel D_80240620_D78540
.word 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000000F, 0x00000002, 0xFE363C81, 0xFE363C83, 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C83, 0x00000013, 0x00000000, 0x00000043, 0x00000005, SetCamTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802406B0_D785D0
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000006, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C87, 0xFE363C88, 0xFE363C89, 0x0000000A, 0x00000002, 0xFD050F80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0xFFFFFF51, 0x00000045, 0x00000002, D_80240620_D78540, 0xFE363C8A, 0x00000043, 0x00000001, func_80240020_D77F40, 0x00000024, 0x00000002, 0xFE363C81, 0xFFFFFF38, 0x00000024, 0x00000002, 0xFE363C82, 0x0000000F, 0x00000043, 0x00000002, SetPlayerJumpscale, 0xF24A8280, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0x00000000, 0x00000045, 0x00000002, D_80240620_D78540, 0xFE363C8A, 0x0000000A, 0x00000002, 0xF5DE029E, 0x00000002, 0x00000024, 0x00000002, 0xFE363C80, 0x00000154, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x0000019A, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000023, 0x00000043, 0x00000002, SetPlayerJumpscale, 0xF24A7D4D, 0x00000013, 0x00000000, 0x00000043, 0x00000005, PlayerJump, 0xFE363C80, 0xFE363C81, 0xFE363C89, 0xFE363C82, 0x00000049, 0x00000001, 0xFE363C8A, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000000, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000001, func_802400AC_D77FCC, 0x00000057, 0x00000000, 0x00000043, 0x00000007, MakeEntity, 0x802EAA30, 0x0000016E, 0xFFFFFF38, 0xFFFFFFB0, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignScript, D_802406B0_D785D0, 0x00000043, 0x00000008, MakeEntity, 0x802EA564, 0x00000037, 0x00000050, 0xFFFFFFB5, 0x00000000, 0x000000A3, D_80000000, 0x00000043, 0x00000002, AssignBlockFlag, 0xF8406165, 0x00000043, 0x00000008, MakeEntity, 0x802EAB04, 0x00000032, 0x00000000, 0xFFFFFFB5, 0x00000000, 0x00000011, D_80000000, 0x00000043, 0x00000002, AssignPanelFlag, 0xF8406166, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000