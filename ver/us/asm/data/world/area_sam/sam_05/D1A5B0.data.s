.include "macro.inc"

.section .data

glabel D_80241DD0_D1A5B0
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802474D0, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241E2C_D1A60C
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802474D8, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241E88_D1A668
.word 0x00000047, 0x00000005, D_80241DD0_D1A5B0, 0x00080000, 0x00000014, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80241E2C_D1A60C, 0x00080000, 0x00000019, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000029, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x0000000C, 0x00000002, 0xF5DE0180, 0x00000045, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80245D94, 0x00000012, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80245DD0, 0x00000013, 0x00000000, 0x00000046, 0x00000001, 0x802420B0, 0x00000046, 0x00000001, 0x80241DA0, 0x00000043, 0x0000000F, PlayEffect, 0x00000045, 0x00000000, 0x00000078, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000000, 0x00000008, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000009, 0x00000008, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000001, 0x00000008, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000002, 0x00000008, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000019, 0x00000008, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000014, 0x00000008, 0x00000024, 0x00000002, 0xFE363C80, D_80241E88_D1A668, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000