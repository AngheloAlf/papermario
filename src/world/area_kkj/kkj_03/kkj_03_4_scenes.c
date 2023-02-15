#include "kkj_03.h"

EvtScript N(EVS_Scene_MeetingPeach) = {
    EVT_LOOP(0)
        EVT_WAIT(1)
        EVT_CALL(GetPlayerPos, LVar0, LVar1, LVar2)
        EVT_IF_GE(LVar0, 525)
            EVT_BREAK_LOOP
        EVT_END_IF
    EVT_END_LOOP
    EVT_CALL(DisablePlayerInput, TRUE)
    EVT_CALL(FadeOutMusic, 0, 666)
    EVT_WAIT(20)
    EVT_CALL(SetMusicTrack, 0, SONG_PRISONER_PEACH_THEME, 0, 8)
    EVT_CALL(PlayerFaceNpc, NPC_Peach, FALSE)
    EVT_CALL(SetNpcAnimation, NPC_Peach, ANIM_Peach_A0002)
    EVT_CALL(SetNpcSpeed, NPC_Peach, EVT_FLOAT(2.0))
    EVT_CALL(NpcMoveTo, NPC_Peach, 625, 0, 0)
    EVT_CALL(SetNpcAnimation, NPC_Peach, ANIM_Peach_A0001)
    EVT_WAIT(10)
    EVT_CALL(SetNpcAnimation, NPC_Peach, ANIM_Peach_C0000)
    EVT_WAIT(10)
    EVT_CALL(SetNpcAnimation, NPC_Peach, ANIM_Peach_C0026)
    EVT_CALL(SpeakToPlayer, NPC_Peach, ANIM_Peach_C0001, ANIM_Peach_C0026, 0, MSG_Intro_004B)
    EVT_CALL(SetNpcAnimation, NPC_Peach, ANIM_Peach_C0002)
    EVT_WAIT(10)
    EVT_CALL(SetNpcAnimation, NPC_Peach, ANIM_Peach_A0001)
    EVT_THREAD
        EVT_CALL(SetCamProperties, CAM_DEFAULT, EVT_FLOAT(5.0), 600, 0, -12, EVT_FLOAT(325.0), EVT_FLOAT(17.0), EVT_FLOAT(-9.0))
    EVT_END_THREAD
    EVT_CALL(PlayerMoveTo, 575, 0, 20)
    EVT_WAIT(10)
    EVT_CALL(SetNpcAnimation, NPC_Peach, ANIM_Peach_C0000)
    EVT_WAIT(10)
    EVT_CALL(SetNpcAnimation, NPC_Peach, ANIM_Peach_C0026)
    EVT_CALL(SpeakToPlayer, NPC_Peach, ANIM_Peach_C0001, ANIM_Peach_C0026, 0, MSG_Intro_004C)
    EVT_CALL(SetPlayerAnimation, ANIM_Mario_NodYes)
    EVT_WAIT(20)
    EVT_CALL(SetPlayerAnimation, ANIM_Mario_10002)
    EVT_WAIT(10)
    EVT_CALL(SpeakToPlayer, NPC_Peach, ANIM_Peach_C0001, ANIM_Peach_C0026, 0, MSG_Intro_004D)
    EVT_CALL(SetNpcAnimation, NPC_Peach, ANIM_Peach_C0002)
    EVT_WAIT(10)
    EVT_CALL(SetNpcAnimation, NPC_Peach, ANIM_Peach_A0001)
    EVT_WAIT(10)
    EVT_CALL(FadeOutMusic, 0, 1000)
    EVT_THREAD
        EVT_WAIT(10)
        EVT_CALL(PlayerMoveTo, 590, 0, 10)
        EVT_WAIT(5)
        EVT_CALL(PlaySoundAtPlayer, SOUND_262, 0)
        EVT_CALL(ShowEmote, 0, EMOTE_EXCLAMATION, -45, 20, EMOTER_PLAYER, 0, 0, 0, 0)
    EVT_END_THREAD
    EVT_THREAD
        EVT_CALL(InterpNpcYaw, NPC_Peach, 90, 7)
        EVT_CALL(SetNpcAnimation, NPC_Peach, ANIM_Peach_A0002)
        EVT_CALL(NpcMoveTo, NPC_Peach, 640, 0, 10)
        EVT_CALL(SetNpcAnimation, NPC_Peach, ANIM_Peach_A0001)
        EVT_CALL(PlaySoundAtNpc, NPC_Peach, SOUND_262, 0)
        EVT_CALL(ShowEmote, NPC_Peach, EMOTE_EXCLAMATION, -45, 20, EMOTER_NPC, 0, 0, 0, 0)
        EVT_WAIT(20)
        EVT_CALL(SetNpcAnimation, NPC_Peach, ANIM_Peach_C0011)
        EVT_WAIT(60)
        EVT_CALL(InterpNpcYaw, NPC_Peach, 270, 7)
    EVT_END_THREAD
    EVT_WAIT(17)
    EVT_THREAD
        EVT_CALL(PlaySound, SOUND_80000056)
        EVT_CALL(ShakeCam, CAM_DEFAULT, 0, 200, EVT_FLOAT(1.0))
    EVT_END_THREAD
    EVT_WAIT(60)
    EVT_CALL(GotoMap, EVT_PTR("osr_04"), osr_04_ENTRY_0)
    EVT_WAIT(100)
    EVT_CALL(DisablePlayerInput, FALSE)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_TexPan_Clouds) = {
    EVT_CALL(EnableTexPanning, MODEL_o718, TRUE)
    EVT_SET(LVar0, 0)
    EVT_LOOP(0)
        EVT_ADD(LVar0, -200)
        EVT_CALL(SetTexPanOffset, TEX_PANNER_2, TEX_PANNER_MAIN, LVar0, 0)
        EVT_WAIT(1)
    EVT_END_LOOP
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_MoveClouds) = {
    EVT_SET(LVar0, 0)
    EVT_LOOP(0)
        EVT_CALL(TranslateGroup, MODEL_g159, 0, LVar0, 0)
        EVT_ADD(LVar0, -2)
        EVT_WAIT(1)
    EVT_END_LOOP
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_Scene_Ascending) = {
    EVT_CALL(DisablePlayerInput, TRUE)
    EVT_CALL(SetNpcPos, NPC_Peach, 680, 0, -15)
    EVT_CALL(EnableGroup, MODEL_g156, TRUE)
    EVT_EXEC(N(EVS_TexPan_Clouds))
    EVT_EXEC(N(EVS_MoveClouds))
    EVT_CALL(UseSettingsFrom, CAM_DEFAULT, 600, 0, -15)
    EVT_CALL(SetPanTarget, CAM_DEFAULT, 600, 0, -15)
    EVT_CALL(SetCamSpeed, CAM_DEFAULT, EVT_FLOAT(90.0))
    EVT_CALL(PanToTarget, CAM_DEFAULT, 0, 1)
    EVT_THREAD
        EVT_CALL(SetPlayerJumpscale, 0)
        EVT_LOOP(0)
            EVT_CALL(InterpPlayerYaw, 270, 0)
            EVT_CALL(PlayerJump1, 550, 0, 0, 20)
            EVT_CALL(InterpPlayerYaw, 90, 0)
            EVT_CALL(PlayerJump1, 630, 0, 0, 20)
        EVT_END_LOOP
    EVT_END_THREAD
    EVT_THREAD
        EVT_LOOP(0)
            EVT_CALL(SetPlayerAnimation, ANIM_Mario_Running)
            EVT_WAIT(15)
            EVT_CALL(SetPlayerAnimation, ANIM_Mario_60003)
            EVT_WAIT(15)
        EVT_END_LOOP
    EVT_END_THREAD
    EVT_THREAD
        EVT_CALL(SetNpcAnimation, NPC_Peach, ANIM_Peach_A0004)
        EVT_LOOP(0)
            EVT_CALL(NpcMoveTo, NPC_Peach, 600, 0, 20)
            EVT_CALL(NpcMoveTo, NPC_Peach, 680, 0, 20)
        EVT_END_LOOP
    EVT_END_THREAD
    EVT_THREAD
        EVT_CALL(PlaySound, SOUND_80000056)
        EVT_CALL(ShakeCam, CAM_DEFAULT, 0, 200, EVT_FLOAT(1.0))
    EVT_END_THREAD
    EVT_WAIT(100)
    EVT_CALL(GotoMap, EVT_PTR("osr_03"), osr_03_ENTRY_1)
    EVT_WAIT(100)
    EVT_CALL(DisablePlayerInput, FALSE)
    EVT_RETURN
    EVT_END
};