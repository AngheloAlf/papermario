.include "macro.inc"

.section .data

glabel D_80241220_996410
.word 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, StartBossBattle, 0x0000000A, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241290_996480
.word 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetEncounterStatusFlags, 0x00000001, 0x00000001, 0x00000043, 0x00000003, InterpPlayerYaw, 0x0000005A, 0x00000000, 0x00000046, 0x00000001, 0x8024246C, 0x00000044, 0x00000001, D_80240B60_995D50, 0x00000016, 0x00000001, 0x00000001, 0x00000016, 0x00000001, 0x00000002, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241328_996518
.word 0x00000043, 0x00000004, InterpNpcYaw, 0x00000000, 0x00000096, 0x00000001, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000018, 0x00000001, 0xFFFFFFC8, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, D_80241220_996410, 0x00000043, 0x00000003, BindNpcDefeat, 0xFFFFFFFF, D_80241290_996480, 0x0000001B, 0x00000001, 0xFFFFFFC8, 0x00000043, 0x00000005, SetNpcPos, 0x00000000, 0x00000000, 0xFFFFFA24, 0x00000000, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802413C0_9965B0
.word 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802413D0_9965C0
.word 0x00680001, 0x00280024, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_802413FC_9965EC
.word 0x00690003, 0x00200020, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80241428_996618
.word 0x00680000, 0x00280024, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80241454_996644
.word 0x00000000, D_802413D0_9965C0, 0x43E48000, 0xC4A28000, 0x439E0000, 0x00440A05, D_80241328_996518, 0x00000001, 0x00000000, 0x000000E6, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00680006, 0x00680006, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, D_80241428_996618, 0x43FA0000, 0xC4A28000, 0x439E0000, 0x00440A05, 0x00000000, 0x00000000, 0x00000000, 0x000000E6, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00680006, 0x00680006, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00680001, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80241834_996A24
.word 0x00000002, D_802413FC_9965EC, 0x43E48000, 0xC4A28000, 0x439E0000, 0x00440A05, D_802413C0_9965B0, 0x00000000, 0x00000000, 0x000000E6, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00690000, 0x00690000, 0x00690000, 0x00690000, 0x00690000, 0x00690000, 0x00690000, 0x00690000, 0x00690000, 0x00690000, 0x00690000, 0x00690000, 0x00690000, 0x00690000, 0x00690000, 0x00690000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, D_80241454_996644, 0x0C000002, 0x00000001, D_80241834_996A24, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000