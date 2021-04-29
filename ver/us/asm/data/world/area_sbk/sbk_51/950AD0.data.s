.include "macro.inc"

.section .data

glabel D_80240160_950AD0
.word 0xC3ED8000, 0x00000000, 0x00000000, 0x42B40000, 0x43ED8000, 0x00000000, 0x00000000, 0x43870000, 0x00000000, 0x00000000, 0xC3ED8000, 0x43340000, 0x00000000, 0x00000000, 0x43ED8000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_802403D0_950D40, D_80240160_950AD0, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, func_80200000, 0x00190086

glabel D_802401E0_950B50
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80240CE0, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_8024023C_950BAC
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80240CE8, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240298_950C08
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000002, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80240CF0, 0x00000003, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802402F4_950C64
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000003, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80240CF8, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80240350_950CC0
.word 0x00000047, 0x00000005, D_802401E0_950B50, 0x00080000, 0x00000009, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_8024023C_950BAC, 0x00080000, 0x00000005, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80240298_950C08, 0x00080000, 0x00000003, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_802402F4_950C64, 0x00080000, 0x00000007, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802403D0_950D40
.word 0x00000024, 0x00000002, 0xF5DE0329, 0x0000000A, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x0000000A, 0x00000002, 0xF5DE0180, 0xFFFFFFC1, 0x00000043, 0x00000002, DisablePulseStone, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80240CB8, 0x00000043, 0x00000001, sbk_51_SpawnSunEffect, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000017, 0x00000000, 0x00000008, 0x00000024, 0x00000002, 0xFE363C80, D_80240350_950CC0, 0x00000044, 0x00000001, EnterWalk, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000