#include "common.h"

void func_802E246C(Entity* entity, void* arg1, void* arg2);

void func_802E1400(Entity* entity) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    struct802E1400* temp = entity->dataBuf;

    if (entity->unk_06 & 1) {
        if ((playerStatus->actionState == ActionState_GROUND_POUND) || (playerStatus->actionState == ActionState_ULTRA_POUND)) {
            func_8010FD68(entity);
            temp->unk_22 = 8;
        }
    }
}

void func_802E1460(Entity* entity) {
    struct802E1400* temp = entity->dataBuf;
    u16 temp2 = temp->unk_22--;

    if (temp2) {
        entity->position.y -= D_802EB000; // 1.8625;
        return;
    }
    func_80110678(entity);
    func_8010FD68(entity);
    temp->unk_22 = 8;
}

void func_802E14D8(Entity* entity) {
    struct802E1400* temp = entity->dataBuf;
    u16 temp2 = temp->unk_22--;

    if (temp2) {
        entity->position.y += D_802EB008; // 1.8625;
        return;
    }
    func_8010FD68(entity);
    temp->unk_22 = 8;
}

void func_801125E8(f32*, f32*, f32*, f32*, f32*, f32*);

#ifdef NON_MATCHING
// regalloc issues
void func_802E153C(Entity* entity) {
    struct802E1400* temp_s1 = entity->dataBuf;
    f32 hitDepth = 10.0f;
    f32 x = entity->position.x;
    f32 y = entity->position.y;
    f32 z = entity->position.z;
    f32 hitYaw;
    f32 hitPitch;

    func_801125E8(&x, &y, &z, &hitYaw, &hitPitch, &hitDepth);

    if ((entity->position.y != y) && (entity->position.y > y)) {
        temp_s1->unk_00.x += 0.5;
        entity->position.y -= temp_s1->unk_00.x;
        if (entity->position.y < y) {
            entity->position.y = y;
        }
    }
}
#else
INCLUDE_ASM(s32, "code_102c80", func_802E153C);
#endif

void func_802E1614(Entity* entity) {
    PlayerStatus* playerStatus = &gPlayerStatus;

    if (entity->unk_06 & 1) {
        if ((playerStatus->actionState == ActionState_GROUND_POUND)
            || (playerStatus->actionState == ActionState_ULTRA_POUND)) {
            func_8010FD68(entity);
        }
    }
}

void func_802E1660(Entity* entity) {
    struct802E1400* temp = entity->dataBuf;
    PlayerStatus* playerStatus = &gPlayerStatus;
    s8* temp2 = D_8010EBB0;

    func_802E153C(entity);

    if (entity->unk_06 & 0x40) {
        if (playerStatus->actionState == ActionState_HAMMER) {
            if (gPlayerData.hammerLevel < 0) {
                return;
            }
            func_8010FD68(entity);

            if (temp->attachedEntity == NULL) {
                return;
            }

            func_8010FD68(temp->attachedEntity);
            return;
        }
    }

    if (playerStatus->actionState == ActionState_SPIN_JUMP) {
        return;
    }

    if (temp2[3] == 4) {
        if (temp2[0] != 0) {
            return;
        }
    }

    if (!(entity->unk_06 & 1)) {
        if (!(entity->unk_06 & 0x80)) {
            return;
        }
    }

    func_8010FD68(entity);

    if (temp->attachedEntity == NULL) {
        return;
    }

    func_8010FD68(temp->attachedEntity);
}

void func_802E1740(Entity* entity) {
    if (!(entity->unk_06 & 1)) {
        func_8010FD68(entity);
    }
}

void func_802E176C(Entity* entity) {
    struct802E1400* temp = entity->dataBuf;

    temp->unk_00.x = 1.0f;
    temp->unk_00.y = 0.1f;
    temp->unk_00.z = -0.1f;
    temp->unk_10 = 0;
    temp->unk_11 = 0;
}

#ifdef NON_MATCHING
// needs rodata support
s32 func_802E17A8(Entity* entity) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f6;
    struct802E1400* temp_s0 = entity->dataBuf;
    f32 phi_f4;
    s32 phi_s2 = 0;

    switch (temp_s0->unk_10) {
        case 0: // switch 1
            temp_f6 = temp_s0->unk_14.z * 0.3;
            temp_f4 = ((temp_s0->unk_14.x + temp_f6) - entity->scale.x) / 4.0;
            phi_f4 = temp_f4;
            if (temp_f4 < 0.01) {
                phi_f4 = 0.01f;
            }
            temp_s0->unk_00.y += phi_f4;
            entity->scale.x += temp_s0->unk_00.y;
            if ((temp_s0->unk_14.x + temp_f6) <= entity->scale.x) {
                temp_s0->unk_00.y = 0.0f;
                temp_s0->unk_10++;
            }
            break;
        case 1: // switch 1
            temp_f6 = temp_s0->unk_14.z * -0.2;
            temp_f4 = ((temp_s0->unk_14.x + temp_f6) - entity->scale.x) / 6.0;
            phi_f4 = temp_f4;
            if (temp_f4 > -0.01) {
                phi_f4 = -0.01f;
            }
            temp_s0->unk_00.y += phi_f4;
            entity->scale.x += temp_s0->unk_00.y;
            if (entity->scale.x <= (temp_s0->unk_14.x + temp_f6)) {
                temp_s0->unk_00.y = 0.0f;
                temp_s0->unk_10++;
            }
            break;
        case 2: // switch 1
            temp_f6 = temp_s0->unk_14.z * 0.15;
            temp_f4 = ((temp_s0->unk_14.x + temp_f6) - entity->scale.x) / 4.0;
            phi_f4 = temp_f4;
            if (temp_f4 < 0.01) {
                phi_f4 = 0.01f;
            }
            temp_s0->unk_00.y += phi_f4;
            entity->scale.x += temp_s0->unk_00.y;
            if ((temp_s0->unk_14.x + temp_f6) <= entity->scale.x) {
                temp_s0->unk_00.y = 0.0f;
                temp_s0->unk_10++;
            }
            break;
        case 3: // switch 1
            temp_f6 = temp_s0->unk_14.z * -0.1;
            temp_f4 = ((temp_s0->unk_14.x + temp_f6) - entity->scale.x) / 6.0;
            phi_f4 = temp_f4;
            if (temp_f4 > -0.01) {
                phi_f4 = -0.01f;
            }
            temp_s0->unk_00.y += phi_f4;
            entity->scale.x += temp_s0->unk_00.y;
            if (entity->scale.x <= (temp_s0->unk_14.x + temp_f6)) {
                temp_s0->unk_00.y = 0.0f;
                temp_s0->unk_10++;
            }
            break;
        case 4: // switch 1
            temp_f4 = (temp_s0->unk_14.x - entity->scale.x) / 4.0;
            phi_f4 = temp_f4;
            if (temp_f4 < 0.01) {
                phi_f4 = 0.01f;
            }
            temp_s0->unk_00.y += phi_f4;
            entity->scale.x += temp_s0->unk_00.y;
            if (temp_s0->unk_14.x <= entity->scale.x) {
                entity->scale.x = temp_s0->unk_14.x;
                temp_s0->unk_00.y = 0.0f;
                temp_s0->unk_10++;
            }
            break;
        case 5: // switch 1
            phi_s2++;
            break;
    }

    entity->scale.z = entity->scale.x;

    switch (temp_s0->unk_11) {

        case 0: // switch 2
            temp_f6 = temp_s0->unk_14.z * -0.5;
            temp_f4 = ((temp_s0->unk_14.y + temp_f6) - entity->scale.y) / 5.0;
            phi_f4 = temp_f4;
            if (temp_f4 > -0.01) {
                phi_f4 = -0.01f;
            }
            temp_s0->unk_00.z += phi_f4;
            entity->scale.y += temp_s0->unk_00.z;
            if (entity->scale.y <= (temp_s0->unk_14.y + temp_f6)) {
                temp_s0->unk_00.z = 0.0f;
                temp_s0->unk_11++;
            }
            break;
        case 1: // switch 2
            temp_f6 = temp_s0->unk_14.z * 0.1;
            temp_f4 = ((temp_s0->unk_14.y + temp_f6) - entity->scale.y) / 10.0;
            phi_f4 = temp_f4;
            if (temp_f4 < 0.01) {
                phi_f4 = 0.01f;
            }
            temp_s0->unk_00.z += phi_f4;
            entity->scale.y += temp_s0->unk_00.z;
            if ((temp_s0->unk_14.y + temp_f6) <= entity->scale.y) {
                temp_s0->unk_00.z = 0.0f;
                temp_s0->unk_11++;
            }
            break;
        case 2: // switch 2
            temp_f6 = temp_s0->unk_14.z * -0.3;
            temp_f4 = ((temp_s0->unk_14.y + temp_f6) - entity->scale.y) / 5.0;
            phi_f4 = temp_f4;
            if (temp_f4 > -0.01) {
                phi_f4 = -0.01f;
            }
            temp_s0->unk_00.z += phi_f4;
            entity->scale.y += temp_s0->unk_00.z;
            if (entity->scale.y <= (temp_s0->unk_14.y + temp_f6)) {
                temp_s0->unk_00.z = 0.0f;
                temp_s0->unk_11++;
            }
            break;
        case 3: // switch 2
            temp_f6 = temp_s0->unk_14.z * 0.0;
            temp_f4 = ((temp_s0->unk_14.y + temp_f6) - entity->scale.y) / 10.0;
            phi_f4 = temp_f4;
            if (temp_f4 < 0.01) {
                phi_f4 = 0.01f;
            }
            temp_s0->unk_00.z += phi_f4;
            entity->scale.y += temp_s0->unk_00.z;
            if ((temp_s0->unk_14.y + temp_f6) <= entity->scale.y) {
                temp_s0->unk_00.z = 0.0f;
                temp_s0->unk_11++;
            }
            break;
        case 4: // switch 2
            temp_f4 = (temp_s0->unk_14.y - entity->scale.y) / 5.0;
            phi_f4 = temp_f4;
            if (temp_f4 > -0.01) {
                phi_f4 = -0.01f;
            }
            temp_s0->unk_00.z += phi_f4;
            entity->scale.y += temp_s0->unk_00.z;
            if (entity->scale.y <= temp_s0->unk_14.y) {
                entity->scale.y = temp_s0->unk_14.y;
                temp_s0->unk_00.z = 0.0f;
                temp_s0->unk_11++;
            }
            break;
        case 5: // switch 2
            phi_s2++;
            break;
    }

    func_802E153C(entity);
    if (phi_s2 == 2) {
        temp_s0->unk_10 = 0;
        temp_s0->unk_11 = 0;
        func_8010FD68(entity);
    }
}
#else
INCLUDE_ASM(s32, "code_102c80", func_802E17A8);
#endif

void func_802E1EA8(Entity* entity) {
    struct802E1400* temp = entity->dataBuf;
    set_area_flag(temp->unk_20);
    func_80110678(entity);
}

#ifdef NON_MATCHING
// needs rodata support
void func_802E1EDC(Entity* entity) {
    f32 temp_f0;
    f32 temp_f4;
    f32 temp_f6;
    struct802E1400* temp_s0 = entity->dataBuf;
    f32 phi_f4;
    s32 phi_s2 = 0;

    switch (temp_s0->unk_10) {
        case 0:
            temp_f6 = temp_s0->unk_14.z * 0.3;
            temp_f4 = ((temp_s0->unk_14.x + temp_f6) - entity->scale.x) / 4.0;
            phi_f4 = temp_f4;
            if (temp_f4 < 0.01) {
                phi_f4 = 0.01f;
            }
            temp_s0->unk_00.y += phi_f4;
            entity->scale.x += temp_s0->unk_00.y;
            if ((temp_s0->unk_14.x + temp_f6) <= entity->scale.x) {
                temp_s0->unk_00.y = 0.0f;
                temp_s0->unk_10++;
            }
            break;

        case 1:
            temp_f6 = (temp_s0->unk_14.z * -0.2);
            temp_f4 = ((temp_s0->unk_14.x + temp_f6) - entity->scale.x) / 6.0;
            phi_f4 = temp_f4;
            if (temp_f4 > -0.01) {
                phi_f4 = -0.01f;
            }
            temp_s0->unk_00.y += phi_f4;
            entity->scale.x += temp_s0->unk_00.y;
            if (entity->scale.x <= (temp_s0->unk_14.x + temp_f6)) {
                temp_s0->unk_00.y = 0.0f;
                temp_s0->unk_10++;
            }
            break;

        case 2:
            temp_f6 = temp_s0->unk_14.z * 0.15;
            temp_f4 = ((temp_s0->unk_14.x + temp_f6) - entity->scale.x) / 4.0;
            phi_f4 = temp_f4;
            if (temp_f4 < 0.01) {
                phi_f4 = 0.01f;
            }
            temp_s0->unk_00.y += phi_f4;
            entity->scale.x += temp_s0->unk_00.y;
            if ((temp_s0->unk_14.x + temp_f6) <= entity->scale.x) {
                temp_s0->unk_00.y = 0.0f;
                temp_s0->unk_10++;
            }
            break;

        case 3:
            temp_f6 = temp_s0->unk_14.z * -0.1;
            temp_f4 = ((temp_s0->unk_14.x + temp_f6) - entity->scale.x) / 6.0;
            phi_f4 = temp_f4;
            if (temp_f4 > -0.01) {
                phi_f4 = -0.01f;
            }
            temp_s0->unk_00.y += phi_f4;
            entity->scale.x += temp_s0->unk_00.y;
            if (entity->scale.x <= (temp_s0->unk_14.x + temp_f6)) {
                temp_s0->unk_00.y = 0.0f;
                temp_s0->unk_10++;
            }
            break;

        case 4:
            phi_s2++;
            break;
    }

    entity->scale.z = entity->scale.x;

    switch (temp_s0->unk_11) {
        case 0:
            temp_f6 = temp_s0->unk_14.z * -0.5;
            temp_f4 = ((temp_s0->unk_14.y + temp_f6) - entity->scale.y) / 5.0;
            phi_f4 = temp_f4;
            if (temp_f4 > -0.01) {
                phi_f4 = -0.01f;
            }
            temp_s0->unk_00.z += phi_f4;
            entity->scale.y += temp_s0->unk_00.z;
            if (entity->scale.y <= (temp_s0->unk_14.y + temp_f6)) {
                temp_s0->unk_00.z = 0.0f;
                temp_s0->unk_11++;
            }
            break;

        case 1:
            temp_f6 = temp_s0->unk_14.z * 0.1;
            temp_f4 = ((temp_s0->unk_14.y + temp_f6) - entity->scale.y) / 10.0;
            phi_f4 = temp_f4;
            if (temp_f4 < 0.01) {
                phi_f4 = 0.01f;
            }
            temp_s0->unk_00.z += phi_f4;
            entity->scale.y += temp_s0->unk_00.z;
            if ((temp_s0->unk_14.y + temp_f6) <= entity->scale.y) {
                temp_s0->unk_00.z = 0.0f;
                temp_s0->unk_11++;
            }
            break;

        case 2:
            temp_f6 = temp_s0->unk_14.z * -0.3;
            temp_f4 = ((temp_s0->unk_14.y + temp_f6) - entity->scale.y) / 5.0;
            phi_f4 = temp_f4;
            if (temp_f4 > -0.01) {
                phi_f4 = -0.01f;
            }
            temp_s0->unk_00.z += phi_f4;
            entity->scale.y += temp_s0->unk_00.z;
            if (entity->scale.y <= (temp_s0->unk_14.y + temp_f6)) {
                temp_s0->unk_00.z = 0.0f;
                temp_s0->unk_11++;
            }
            break;

        case 3:
            phi_s2++;
            break;
    }

    func_802E153C(entity);
    if (phi_s2 == 2) {
        temp_s0->unk_10 = 0;
        temp_s0->unk_11 = 0;
        func_8010FD68(entity);
    }

    temp_s0->unk_24++;
    if ((temp_s0->unk_24 == 10) && (temp_s0->attachedEntity == NULL)) {
        func_80072230(0, entity->position.x, entity->position.y, entity->position.z, 1.0f, 0x3C);
    }
}
#else
INCLUDE_ASM(s32, "code_102c80", func_802E1EDC);
#endif

void func_802E234C(Entity* entity) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    struct802E1400* temp = entity->dataBuf;

    playerStatus->animFlags |= 0x1000000;
    temp->unk_14.x = 1.0f;
    temp->unk_14.y = 1.0f;
    temp->unk_14.z = 1.0f;
}

void entity_init_BlueSwitch(Entity* entity) {
    Entity* temp_v0_2;
    struct802E1400* temp = entity->dataBuf;

    func_802E234C(entity);
    if (D_8015C7D0 == 2) {
        D_802EB3A0 = entity;
        return;
    }

    if (D_8015C7D0 == 1) {
        if (D_802EB3A0 != NULL) {
            temp->attachedEntity = D_802EB3A0;
            entity->flags |= 1;
            return;
        }
    } else {
        D_802EB3A0 = NULL;
    }
}

void entity_init_HugeBlueSwitch(Entity* entity) {
    struct802E1400* temp;

    func_802E234C(entity);
    temp = entity->dataBuf;
    entity->scale.x = 3.0f;
    entity->scale.y = 3.0f;
    entity->scale.z = 3.0f;
    temp->unk_14.x = 3.0f;
    temp->unk_14.y = 3.0f;
    temp->unk_14.z = 3.0f;
}

void func_802E2450(Entity* entity) {
    func_802E3650(entity);
}


INCLUDE_ASM(void, "code_102c80", func_802E246C, Entity* entity, void* arg1, void* arg2);

INCLUDE_ASM(s32, "code_102c80", func_802E263C);

#ifdef NON_MATCHING
// display list issues
void func_802E2BA4(s32 entityIndex) {
    Gfx* temp_s2;
    struct802E1400* temp_s4;
    struct802E2BA4* phi_fp;
    Matrix4f subroutine_arg6;
    Matrix4f subroutine_arg16;
    Matrix4f subroutine_arg36;
    Matrix4f subroutine_arg48;
    s32 i;
    f32 x_inv;
    f32 y_inv;
    f32 z_inv;
    Entity* entity;
    f32 threeSixty;
    f32 someFloat;
    f32 one;
    s16 temp;

    temp_s2 = gMasterGfxPos;
    threeSixty = 360.0f;
    someFloat = 0.00390625f;
    entity = get_entity_by_index(entityIndex);
    temp_s4 = entity->dataBuf;
    x_inv = -entity->position.x;
    y_inv = -entity->position.y;
    z_inv = -entity->position.z;
    phi_fp = temp_s4->unk_34;
    for (i = 0; i < 24; i++) {
        if (temp_s4->unk_3C.s == 0xFF) {
            gDPSetRenderMode(temp_s2++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
            gDPSetCombineMode(temp_s2++, G_CC_MODULATEIA, G_CC_MODULATEIA);
        } else {
            gDPSetCombineLERP(temp_s2++, 0, 0, 0, TEXEL0, SHADE, 0, TEXEL0, 0, 0, 0, 0, TEXEL0, TEXEL0, 0, SHADE, 0);
            gDPSetPrimColor(temp_s2++, 0, 0, 0x00, 0x00, 0x00, temp_s4->unk_3C.b[1])
        }
        guTranslateF(&subroutine_arg6, x_inv, y_inv, z_inv);
        guRotateF(&subroutine_arg36, temp_s4->unk_8B[i] * threeSixty * someFloat, 1.0f, 0.0f, 0.0f);
        guRotateF(&subroutine_arg48, temp_s4->unk_A4[i] * threeSixty * someFloat, 0.0f, 1.0f, 0.0f);
        guMtxCatF(&subroutine_arg36, &subroutine_arg48, &subroutine_arg48);
        guMtxCatF(&subroutine_arg48, &subroutine_arg6, &subroutine_arg6);
        guTranslateF(&subroutine_arg16, temp_s4->unk_C0[i], temp_s4->unk_124[i], temp_s4->unk_188[i]);
        guMtxCatF(&subroutine_arg6, &subroutine_arg16, &subroutine_arg16);
        guMtxF2L(&subroutine_arg16, &gDisplayContext->matrixStack[gMatrixListPos]);
        gSPMatrix(temp_s2++, &gDisplayContext->matrixStack[++gMatrixListPos], G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
        gSPDisplayList(temp_s2++, entity->vertexData + phi_fp->unk_02[i][0]);
        gSPPopMatrix(temp_s2++, G_MTX_MODELVIEW);
    }
    gMasterGfxPos = temp_s2;
}
#else
INCLUDE_ASM(s32, "code_102c80", func_802E2BA4);
#endif

// file split
#ifdef NON_MATCHING
// Needs rodata support
void func_802E2EB0(Entity* entity) {
    u32 type;
    void* a2 = NULL;
    void* a1 = NULL;

    ((struct802E1400*)entity->dataBuf)->unk_38 = entity->position.y;
    type = get_entity_type((u8)entity->listIndex);

    if ((type - 24) < 3) {
        entity->scale.x = 0.5f;
        entity->scale.y = 0.5f;
        entity->scale.z = 0.5f;
    }

    switch (type) {
        case 21:
        case 24:
            a1 = &D_0A0031E0;
            a2 = &D_0A001508;
            break;
        case 22:
        case 25:
            a1 = &D_0A0031B0;
            a2 = &D_0A0014D8;
            break;
        case 23:
        case 26:
            a1 = &D_0A002F78;
            a2 = &D_0A001218;
            break;
        case 13:
            play_sound_at_position(0x158, 0, entity->position.x, entity->position.y, entity->position.z);
            a1 = &D_0A003F70;
            a2 = &D_0A002318;
            break;
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
            break;
    }

    if (a2 == NULL) {
        return;
    }

    func_802E246C(entity, a1, a2);
}
#else
INCLUDE_ASM(void, "code_102c80", func_802E2EB0, Entity* entity);
#endif

#ifdef NON_MATCHING
//Needs rodata support
void func_802E2FD0(Entity* entity) {
    u32 type;
    void* addr = NULL;

    type = get_entity_type(entity->listIndex);

    switch (type) {
        case 21:
            addr = &D_802E9C8C;
            break;
        case 24:
            addr = &D_802E9CF8;
            break;
        case 22:
            addr = &D_802E9CB0;
            break;
        case 25:
            addr = &D_802E9D1C;
            break;
        case 23:
            addr = &D_802E9CD4;
            break;
        case 26:
            addr = &D_802E9D40;
            break;
        case 13:
            addr = &D_802E9D64;
            break;
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
            break;
    }

    if (addr == NULL) {
        return;
    }

    create_entity(addr, entity->position.x, entity->position.y, entity->position.z, 0, 0x80000000);
}
#else
INCLUDE_ASM(s32, "code_102c80", func_802E2FD0);
#endif
