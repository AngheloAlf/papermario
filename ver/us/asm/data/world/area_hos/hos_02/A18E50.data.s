.include "macro.inc"

.section .data

glabel D_80242C30_A18E50
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, GetCurrentPartner, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000001, func_802D2B6C, 0x00000008, 0x00000001, 0x00000014, 0x00000005, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, IsPlayerOnValidFloor, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000046, 0x00000001, 0x80244B80, 0x00000043, 0x00000003, GotoMap, 0x80244DD0, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242D38_A18F58
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80244DD8, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242D94_A18FB4
.word 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000047, 0x00000005, D_80242C30_A18E50, 0x00000080, 0x00000000, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000047, 0x00000005, D_80242D38_A18F58, 0x00080000, 0x00000002, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80242E04_A19024
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFC, 0x00000200, 0x00000000, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFFFFFBAF, 0xFFFFFF55, 0x000000E1, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFFFFFBAF, 0xFFFFFF55, 0x000000E1, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF24F2A80, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000024, 0x00000002, 0xFE363C82, 0x00000168, 0x00000043, 0x00000005, MakeLerp, 0xFFFFFE70, 0xFFFFFF55, 0x0000003C, 0x00000004, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000004, SetPlayerPos, 0xFFFFFBAF, 0xFE363C80, 0x000000E1, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0xFFFFFBAF, 0xFE363C80, 0x000000D7, 0x00000027, 0x00000002, 0xFE363C82, 0x00000028, 0x00000043, 0x00000003, InterpPlayerYaw, 0xFE363C82, 0x00000000, 0x00000043, 0x00000005, SetNpcRotation, 0xFFFFFFFC, 0x00000000, 0xFE363C82, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C80, 0x00000168, 0x00000028, 0x00000002, 0xFE363C82, 0xFE363C80, 0x00000024, 0x00000002, 0xFE363C80, 0x00000028, 0x00000003, 0x00000001, 0x0000000A, 0x0000000C, 0x00000002, 0xFE363C82, 0x000001C2, 0x00000043, 0x00000003, InterpPlayerYaw, 0xFE363C82, 0x00000000, 0x00000043, 0x00000005, SetNpcRotation, 0xFFFFFFFC, 0x00000000, 0xFE363C82, 0x00000000, 0x00000027, 0x00000002, 0xFE363C82, 0xFE363C80, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x0000005A, 0x00000028, 0x00000002, 0xFE363C80, 0x00000005, 0x0000000D, 0x00000002, 0xFE363C80, 0x00000014, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000043, 0x00000005, SetNpcRotation, 0xFFFFFFFC, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000002, func_80240EF4_A17114, 0xFD050F8A, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFC, 0x00000200, 0x00000001, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x0000002B, 0x00000003, 0x00000008, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000004, AwaitPlayerLeave, 0xFFFFFBAF, 0x000000E1, 0x00000028, 0x00000047, 0x00000005, D_80242C30_A18E50, 0x00000080, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x0000001C, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000024, 0x00000002, 0xF8406347, 0x00000001, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80244B44, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000056, 0x00000000, 0x00000046, 0x00000001, D_80242E04_A19024, 0x00000044, 0x00000001, D_80242D94_A18FB4, 0x00000057, 0x00000000, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000003, 0x7FFFFE00, 0x00000024, 0x00000002, 0xFE363C80, D_80242D94_A18FB4, 0x00000044, 0x00000001, EnterWalk, 0x00000023, 0x00000000, 0x00000044, 0x00000001, 0x802433B8, 0x00000044, 0x00000001, 0x80244480, 0x00000044, 0x00000001, 0x80242BD0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000