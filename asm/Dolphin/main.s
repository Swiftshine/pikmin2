.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global ddh_cc_initinterrupts
ddh_cc_initinterrupts:
/* 800C0C50 000BDB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C0C54 000BDB94  7C 08 02 A6 */	mflr r0
/* 800C0C58 000BDB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C0C5C 000BDB9C  48 01 19 ED */	bl EXI2_EnableInterrupts
/* 800C0C60 000BDBA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C0C64 000BDBA4  38 60 00 00 */	li r3, 0
/* 800C0C68 000BDBA8  7C 08 03 A6 */	mtlr r0
/* 800C0C6C 000BDBAC  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0C70 000BDBB0  4E 80 00 20 */	blr 

.global ddh_cc_peek
ddh_cc_peek:
/* 800C0C74 000BDBB4  94 21 F7 F0 */	stwu r1, -0x810(r1)
/* 800C0C78 000BDBB8  7C 08 02 A6 */	mflr r0
/* 800C0C7C 000BDBBC  90 01 08 14 */	stw r0, 0x814(r1)
/* 800C0C80 000BDBC0  93 E1 08 0C */	stw r31, 0x80c(r1)
/* 800C0C84 000BDBC4  48 01 19 C9 */	bl EXI2_Poll
/* 800C0C88 000BDBC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 800C0C8C 000BDBCC  41 81 00 0C */	bgt lbl_800C0C98
/* 800C0C90 000BDBD0  38 60 00 00 */	li r3, 0
/* 800C0C94 000BDBD4  48 00 00 3C */	b lbl_800C0CD0
lbl_800C0C98:
/* 800C0C98 000BDBD8  7F E4 FB 78 */	mr r4, r31
/* 800C0C9C 000BDBDC  38 61 00 08 */	addi r3, r1, 8
/* 800C0CA0 000BDBE0  48 01 19 B5 */	bl EXI2_ReadN
/* 800C0CA4 000BDBE4  2C 03 00 00 */	cmpwi r3, 0
/* 800C0CA8 000BDBE8  40 82 00 1C */	bne lbl_800C0CC4
/* 800C0CAC 000BDBEC  3C 60 80 4F */	lis r3, gRecvCB@ha
/* 800C0CB0 000BDBF0  7F E5 FB 78 */	mr r5, r31
/* 800C0CB4 000BDBF4  38 63 50 20 */	addi r3, r3, gRecvCB@l
/* 800C0CB8 000BDBF8  38 81 00 08 */	addi r4, r1, 8
/* 800C0CBC 000BDBFC  48 00 03 E1 */	bl CircleBufferWriteBytes
/* 800C0CC0 000BDC00  48 00 00 0C */	b lbl_800C0CCC
lbl_800C0CC4:
/* 800C0CC4 000BDC04  38 60 D8 E7 */	li r3, -10009
/* 800C0CC8 000BDC08  48 00 00 08 */	b lbl_800C0CD0
lbl_800C0CCC:
/* 800C0CCC 000BDC0C  7F E3 FB 78 */	mr r3, r31
lbl_800C0CD0:
/* 800C0CD0 000BDC10  80 01 08 14 */	lwz r0, 0x814(r1)
/* 800C0CD4 000BDC14  83 E1 08 0C */	lwz r31, 0x80c(r1)
/* 800C0CD8 000BDC18  7C 08 03 A6 */	mtlr r0
/* 800C0CDC 000BDC1C  38 21 08 10 */	addi r1, r1, 0x810
/* 800C0CE0 000BDC20  4E 80 00 20 */	blr 

.global ddh_cc_post_stop
ddh_cc_post_stop:
/* 800C0CE4 000BDC24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C0CE8 000BDC28  7C 08 02 A6 */	mflr r0
/* 800C0CEC 000BDC2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C0CF0 000BDC30  48 01 19 75 */	bl EXI2_Reserve
/* 800C0CF4 000BDC34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C0CF8 000BDC38  38 60 00 00 */	li r3, 0
/* 800C0CFC 000BDC3C  7C 08 03 A6 */	mtlr r0
/* 800C0D00 000BDC40  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0D04 000BDC44  4E 80 00 20 */	blr 

.global ddh_cc_pre_continue
ddh_cc_pre_continue:
/* 800C0D08 000BDC48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C0D0C 000BDC4C  7C 08 02 A6 */	mflr r0
/* 800C0D10 000BDC50  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C0D14 000BDC54  48 01 19 55 */	bl EXI2_Unreserve
/* 800C0D18 000BDC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C0D1C 000BDC5C  38 60 00 00 */	li r3, 0
/* 800C0D20 000BDC60  7C 08 03 A6 */	mtlr r0
/* 800C0D24 000BDC64  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0D28 000BDC68  4E 80 00 20 */	blr 

.global ddh_cc_write
ddh_cc_write:
/* 800C0D2C 000BDC6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C0D30 000BDC70  7C 08 02 A6 */	mflr r0
/* 800C0D34 000BDC74  3C A0 80 48 */	lis r5, lbl_80479D50@ha
/* 800C0D38 000BDC78  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C0D3C 000BDC7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C0D40 000BDC80  3B E5 9D 50 */	addi r31, r5, lbl_80479D50@l
/* 800C0D44 000BDC84  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C0D48 000BDC88  7C 9E 23 78 */	mr r30, r4
/* 800C0D4C 000BDC8C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C0D50 000BDC90  7C 7D 1B 78 */	mr r29, r3
/* 800C0D54 000BDC94  80 0D 8C 90 */	lwz r0, gIsInitialized@sda21(r13)
/* 800C0D58 000BDC98  2C 00 00 00 */	cmpwi r0, 0
/* 800C0D5C 000BDC9C  40 82 00 1C */	bne lbl_800C0D78
/* 800C0D60 000BDCA0  38 9F 00 00 */	addi r4, r31, 0
/* 800C0D64 000BDCA4  38 60 00 08 */	li r3, 8
/* 800C0D68 000BDCA8  4C C6 31 82 */	crclr 6
/* 800C0D6C 000BDCAC  48 00 07 DD */	bl MWTRACE
/* 800C0D70 000BDCB0  38 60 D8 EF */	li r3, -10001
/* 800C0D74 000BDCB4  48 00 00 5C */	b lbl_800C0DD0
lbl_800C0D78:
/* 800C0D78 000BDCB8  7C 65 1B 78 */	mr r5, r3
/* 800C0D7C 000BDCBC  7C 86 23 78 */	mr r6, r4
/* 800C0D80 000BDCC0  38 9F 00 14 */	addi r4, r31, 0x14
/* 800C0D84 000BDCC4  38 60 00 08 */	li r3, 8
/* 800C0D88 000BDCC8  4C C6 31 82 */	crclr 6
/* 800C0D8C 000BDCCC  48 00 07 BD */	bl MWTRACE
/* 800C0D90 000BDCD0  48 00 00 34 */	b lbl_800C0DC4
lbl_800C0D94:
/* 800C0D94 000BDCD4  7F C5 F3 78 */	mr r5, r30
/* 800C0D98 000BDCD8  38 9F 00 40 */	addi r4, r31, 0x40
/* 800C0D9C 000BDCDC  38 60 00 01 */	li r3, 1
/* 800C0DA0 000BDCE0  4C C6 31 82 */	crclr 6
/* 800C0DA4 000BDCE4  48 00 07 A5 */	bl MWTRACE
/* 800C0DA8 000BDCE8  7F A3 EB 78 */	mr r3, r29
/* 800C0DAC 000BDCEC  7F C4 F3 78 */	mr r4, r30
/* 800C0DB0 000BDCF0  48 01 18 AD */	bl EXI2_WriteN
/* 800C0DB4 000BDCF4  2C 03 00 00 */	cmpwi r3, 0
/* 800C0DB8 000BDCF8  41 82 00 14 */	beq lbl_800C0DCC
/* 800C0DBC 000BDCFC  7F BD 1A 14 */	add r29, r29, r3
/* 800C0DC0 000BDD00  7F C3 F0 50 */	subf r30, r3, r30
lbl_800C0DC4:
/* 800C0DC4 000BDD04  2C 1E 00 00 */	cmpwi r30, 0
/* 800C0DC8 000BDD08  41 81 FF CC */	bgt lbl_800C0D94
lbl_800C0DCC:
/* 800C0DCC 000BDD0C  38 60 00 00 */	li r3, 0
lbl_800C0DD0:
/* 800C0DD0 000BDD10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C0DD4 000BDD14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C0DD8 000BDD18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C0DDC 000BDD1C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C0DE0 000BDD20  7C 08 03 A6 */	mtlr r0
/* 800C0DE4 000BDD24  38 21 00 20 */	addi r1, r1, 0x20
/* 800C0DE8 000BDD28  4E 80 00 20 */	blr 

.global ddh_cc_read
ddh_cc_read:
/* 800C0DEC 000BDD2C  94 21 F7 E0 */	stwu r1, -0x820(r1)
/* 800C0DF0 000BDD30  7C 08 02 A6 */	mflr r0
/* 800C0DF4 000BDD34  90 01 08 24 */	stw r0, 0x824(r1)
/* 800C0DF8 000BDD38  BF 61 08 0C */	stmw r27, 0x80c(r1)
/* 800C0DFC 000BDD3C  7C 7B 1B 78 */	mr r27, r3
/* 800C0E00 000BDD40  7C 9E 23 78 */	mr r30, r4
/* 800C0E04 000BDD44  3B A0 00 00 */	li r29, 0
/* 800C0E08 000BDD48  80 0D 8C 90 */	lwz r0, gIsInitialized@sda21(r13)
/* 800C0E0C 000BDD4C  2C 00 00 00 */	cmpwi r0, 0
/* 800C0E10 000BDD50  40 82 00 0C */	bne lbl_800C0E1C
/* 800C0E14 000BDD54  38 60 D8 EF */	li r3, -10001
/* 800C0E18 000BDD58  48 00 00 AC */	b lbl_800C0EC4
lbl_800C0E1C:
/* 800C0E1C 000BDD5C  3C 60 80 48 */	lis r3, lbl_80479DAC@ha
/* 800C0E20 000BDD60  7F C5 F3 78 */	mr r5, r30
/* 800C0E24 000BDD64  38 83 9D AC */	addi r4, r3, lbl_80479DAC@l
/* 800C0E28 000BDD68  7F C6 F3 78 */	mr r6, r30
/* 800C0E2C 000BDD6C  38 60 00 01 */	li r3, 1
/* 800C0E30 000BDD70  4C C6 31 82 */	crclr 6
/* 800C0E34 000BDD74  48 00 07 15 */	bl MWTRACE
/* 800C0E38 000BDD78  3C 60 80 4F */	lis r3, gRecvCB@ha
/* 800C0E3C 000BDD7C  3B E3 50 20 */	addi r31, r3, gRecvCB@l
/* 800C0E40 000BDD80  48 00 00 38 */	b lbl_800C0E78
lbl_800C0E44:
/* 800C0E44 000BDD84  3B A0 00 00 */	li r29, 0
/* 800C0E48 000BDD88  48 01 18 05 */	bl EXI2_Poll
/* 800C0E4C 000BDD8C  7C 7C 1B 79 */	or. r28, r3, r3
/* 800C0E50 000BDD90  41 82 00 28 */	beq lbl_800C0E78
/* 800C0E54 000BDD94  7F 84 E3 78 */	mr r4, r28
/* 800C0E58 000BDD98  38 61 00 08 */	addi r3, r1, 8
/* 800C0E5C 000BDD9C  48 01 17 F9 */	bl EXI2_ReadN
/* 800C0E60 000BDDA0  7C 7D 1B 79 */	or. r29, r3, r3
/* 800C0E64 000BDDA4  40 82 00 14 */	bne lbl_800C0E78
/* 800C0E68 000BDDA8  7F E3 FB 78 */	mr r3, r31
/* 800C0E6C 000BDDAC  7F 85 E3 78 */	mr r5, r28
/* 800C0E70 000BDDB0  38 81 00 08 */	addi r4, r1, 8
/* 800C0E74 000BDDB4  48 00 02 29 */	bl CircleBufferWriteBytes
lbl_800C0E78:
/* 800C0E78 000BDDB8  7F E3 FB 78 */	mr r3, r31
/* 800C0E7C 000BDDBC  48 00 03 79 */	bl CBGetBytesAvailableForRead
/* 800C0E80 000BDDC0  7C 03 F0 40 */	cmplw r3, r30
/* 800C0E84 000BDDC4  41 80 FF C0 */	blt lbl_800C0E44
/* 800C0E88 000BDDC8  28 1D 00 00 */	cmplwi r29, 0
/* 800C0E8C 000BDDCC  40 82 00 1C */	bne lbl_800C0EA8
/* 800C0E90 000BDDD0  3C 60 80 4F */	lis r3, gRecvCB@ha
/* 800C0E94 000BDDD4  7F 64 DB 78 */	mr r4, r27
/* 800C0E98 000BDDD8  38 63 50 20 */	addi r3, r3, gRecvCB@l
/* 800C0E9C 000BDDDC  7F C5 F3 78 */	mr r5, r30
/* 800C0EA0 000BDDE0  48 00 00 F5 */	bl CircleBufferReadBytes
/* 800C0EA4 000BDDE4  48 00 00 1C */	b lbl_800C0EC0
lbl_800C0EA8:
/* 800C0EA8 000BDDE8  3C 60 80 48 */	lis r3, lbl_80479DD4@ha
/* 800C0EAC 000BDDEC  7F A5 EB 78 */	mr r5, r29
/* 800C0EB0 000BDDF0  38 83 9D D4 */	addi r4, r3, lbl_80479DD4@l
/* 800C0EB4 000BDDF4  38 60 00 08 */	li r3, 8
/* 800C0EB8 000BDDF8  4C C6 31 82 */	crclr 6
/* 800C0EBC 000BDDFC  48 00 06 8D */	bl MWTRACE
lbl_800C0EC0:
/* 800C0EC0 000BDE00  7F A3 EB 78 */	mr r3, r29
lbl_800C0EC4:
/* 800C0EC4 000BDE04  BB 61 08 0C */	lmw r27, 0x80c(r1)
/* 800C0EC8 000BDE08  80 01 08 24 */	lwz r0, 0x824(r1)
/* 800C0ECC 000BDE0C  7C 08 03 A6 */	mtlr r0
/* 800C0ED0 000BDE10  38 21 08 20 */	addi r1, r1, 0x820
/* 800C0ED4 000BDE14  4E 80 00 20 */	blr 

.global ddh_cc_close
ddh_cc_close:
/* 800C0ED8 000BDE18  38 60 00 00 */	li r3, 0
/* 800C0EDC 000BDE1C  4E 80 00 20 */	blr 

.global ddh_cc_open
ddh_cc_open:
/* 800C0EE0 000BDE20  80 0D 8C 90 */	lwz r0, gIsInitialized@sda21(r13)
/* 800C0EE4 000BDE24  2C 00 00 00 */	cmpwi r0, 0
/* 800C0EE8 000BDE28  41 82 00 0C */	beq lbl_800C0EF4
/* 800C0EEC 000BDE2C  38 60 D8 EB */	li r3, -10005
/* 800C0EF0 000BDE30  4E 80 00 20 */	blr 
lbl_800C0EF4:
/* 800C0EF4 000BDE34  38 00 00 01 */	li r0, 1
/* 800C0EF8 000BDE38  38 60 00 00 */	li r3, 0
/* 800C0EFC 000BDE3C  90 0D 8C 90 */	stw r0, gIsInitialized@sda21(r13)
/* 800C0F00 000BDE40  4E 80 00 20 */	blr 

.global ddh_cc_shutdown
ddh_cc_shutdown:
/* 800C0F04 000BDE44  38 60 00 00 */	li r3, 0
/* 800C0F08 000BDE48  4E 80 00 20 */	blr 

.global ddh_cc_initialize
ddh_cc_initialize:
/* 800C0F0C 000BDE4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C0F10 000BDE50  7C 08 02 A6 */	mflr r0
/* 800C0F14 000BDE54  3C A0 80 48 */	lis r5, lbl_80479E04@ha
/* 800C0F18 000BDE58  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C0F1C 000BDE5C  38 05 9E 04 */	addi r0, r5, lbl_80479E04@l
/* 800C0F20 000BDE60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C0F24 000BDE64  7C 9F 23 78 */	mr r31, r4
/* 800C0F28 000BDE68  7C 04 03 78 */	mr r4, r0
/* 800C0F2C 000BDE6C  93 C1 00 08 */	stw r30, 8(r1)
/* 800C0F30 000BDE70  7C 7E 1B 78 */	mr r30, r3
/* 800C0F34 000BDE74  38 60 00 01 */	li r3, 1
/* 800C0F38 000BDE78  4C C6 31 82 */	crclr 6
/* 800C0F3C 000BDE7C  48 00 06 0D */	bl MWTRACE
/* 800C0F40 000BDE80  7F C3 F3 78 */	mr r3, r30
/* 800C0F44 000BDE84  7F E4 FB 78 */	mr r4, r31
/* 800C0F48 000BDE88  48 01 16 FD */	bl EXI2_Init
/* 800C0F4C 000BDE8C  3C 80 80 48 */	lis r4, lbl_80479E18@ha
/* 800C0F50 000BDE90  38 60 00 01 */	li r3, 1
/* 800C0F54 000BDE94  38 84 9E 18 */	addi r4, r4, lbl_80479E18@l
/* 800C0F58 000BDE98  4C C6 31 82 */	crclr 6
/* 800C0F5C 000BDE9C  48 00 05 ED */	bl MWTRACE
/* 800C0F60 000BDEA0  3C 60 80 4F */	lis r3, gRecvCB@ha
/* 800C0F64 000BDEA4  3C 80 80 4F */	lis r4, gRecvBuf@ha
/* 800C0F68 000BDEA8  38 63 50 20 */	addi r3, r3, gRecvCB@l
/* 800C0F6C 000BDEAC  38 A0 08 00 */	li r5, 0x800
/* 800C0F70 000BDEB0  38 84 48 20 */	addi r4, r4, gRecvBuf@l
/* 800C0F74 000BDEB4  48 00 02 31 */	bl CircleBufferInitialize
/* 800C0F78 000BDEB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C0F7C 000BDEBC  38 60 00 00 */	li r3, 0
/* 800C0F80 000BDEC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C0F84 000BDEC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C0F88 000BDEC8  7C 08 03 A6 */	mtlr r0
/* 800C0F8C 000BDECC  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0F90 000BDED0  4E 80 00 20 */	blr 

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global gdev_cc_initinterrupts
gdev_cc_initinterrupts:
/* 800C11FC 000BE13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C1200 000BE140  7C 08 02 A6 */	mflr r0
/* 800C1204 000BE144  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C1208 000BE148  48 00 EE F1 */	bl DBInitInterrupts
/* 800C120C 000BE14C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C1210 000BE150  38 60 00 00 */	li r3, 0
/* 800C1214 000BE154  7C 08 03 A6 */	mtlr r0
/* 800C1218 000BE158  38 21 00 10 */	addi r1, r1, 0x10
/* 800C121C 000BE15C  4E 80 00 20 */	blr 

.global gdev_cc_peek
gdev_cc_peek:
/* 800C1220 000BE160  94 21 FA F0 */	stwu r1, -0x510(r1)
/* 800C1224 000BE164  7C 08 02 A6 */	mflr r0
/* 800C1228 000BE168  90 01 05 14 */	stw r0, 0x514(r1)
/* 800C122C 000BE16C  93 E1 05 0C */	stw r31, 0x50c(r1)
/* 800C1230 000BE170  48 00 EE 2D */	bl DBQueryData
/* 800C1234 000BE174  7C 7F 1B 79 */	or. r31, r3, r3
/* 800C1238 000BE178  41 81 00 0C */	bgt lbl_800C1244
/* 800C123C 000BE17C  38 60 00 00 */	li r3, 0
/* 800C1240 000BE180  48 00 00 3C */	b lbl_800C127C
lbl_800C1244:
/* 800C1244 000BE184  7F E4 FB 78 */	mr r4, r31
/* 800C1248 000BE188  38 61 00 08 */	addi r3, r1, 8
/* 800C124C 000BE18C  48 00 ED 85 */	bl DBRead
/* 800C1250 000BE190  2C 03 00 00 */	cmpwi r3, 0
/* 800C1254 000BE194  40 82 00 1C */	bne lbl_800C1270
/* 800C1258 000BE198  3C 60 80 4F */	lis r3, gRecvCB_1@ha
/* 800C125C 000BE19C  7F E5 FB 78 */	mr r5, r31
/* 800C1260 000BE1A0  38 63 55 40 */	addi r3, r3, gRecvCB_1@l
/* 800C1264 000BE1A4  38 81 00 08 */	addi r4, r1, 8
/* 800C1268 000BE1A8  4B FF FE 35 */	bl CircleBufferWriteBytes
/* 800C126C 000BE1AC  48 00 00 0C */	b lbl_800C1278
lbl_800C1270:
/* 800C1270 000BE1B0  38 60 D8 E7 */	li r3, -10009
/* 800C1274 000BE1B4  48 00 00 08 */	b lbl_800C127C
lbl_800C1278:
/* 800C1278 000BE1B8  7F E3 FB 78 */	mr r3, r31
lbl_800C127C:
/* 800C127C 000BE1BC  80 01 05 14 */	lwz r0, 0x514(r1)
/* 800C1280 000BE1C0  83 E1 05 0C */	lwz r31, 0x50c(r1)
/* 800C1284 000BE1C4  7C 08 03 A6 */	mtlr r0
/* 800C1288 000BE1C8  38 21 05 10 */	addi r1, r1, 0x510
/* 800C128C 000BE1CC  4E 80 00 20 */	blr 

.global gdev_cc_post_stop
gdev_cc_post_stop:
/* 800C1290 000BE1D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C1294 000BE1D4  7C 08 02 A6 */	mflr r0
/* 800C1298 000BE1D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C129C 000BE1DC  48 00 EA D1 */	bl DBOpen
/* 800C12A0 000BE1E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C12A4 000BE1E4  38 60 00 00 */	li r3, 0
/* 800C12A8 000BE1E8  7C 08 03 A6 */	mtlr r0
/* 800C12AC 000BE1EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800C12B0 000BE1F0  4E 80 00 20 */	blr 

.global gdev_cc_pre_continue
gdev_cc_pre_continue:
/* 800C12B4 000BE1F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C12B8 000BE1F8  7C 08 02 A6 */	mflr r0
/* 800C12BC 000BE1FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C12C0 000BE200  48 00 EA A9 */	bl DBClose
/* 800C12C4 000BE204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C12C8 000BE208  38 60 00 00 */	li r3, 0
/* 800C12CC 000BE20C  7C 08 03 A6 */	mtlr r0
/* 800C12D0 000BE210  38 21 00 10 */	addi r1, r1, 0x10
/* 800C12D4 000BE214  4E 80 00 20 */	blr 

.global gdev_cc_write
gdev_cc_write:
/* 800C12D8 000BE218  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C12DC 000BE21C  7C 08 02 A6 */	mflr r0
/* 800C12E0 000BE220  3C A0 80 48 */	lis r5, lbl_80479E30@ha
/* 800C12E4 000BE224  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C12E8 000BE228  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C12EC 000BE22C  3B E5 9E 30 */	addi r31, r5, lbl_80479E30@l
/* 800C12F0 000BE230  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C12F4 000BE234  7C 9E 23 78 */	mr r30, r4
/* 800C12F8 000BE238  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C12FC 000BE23C  7C 7D 1B 78 */	mr r29, r3
/* 800C1300 000BE240  80 0D 8C 98 */	lwz r0, gIsInitialized_1@sda21(r13)
/* 800C1304 000BE244  2C 00 00 00 */	cmpwi r0, 0
/* 800C1308 000BE248  40 82 00 1C */	bne lbl_800C1324
/* 800C130C 000BE24C  38 9F 00 00 */	addi r4, r31, 0
/* 800C1310 000BE250  38 60 00 08 */	li r3, 8
/* 800C1314 000BE254  4C C6 31 82 */	crclr 6
/* 800C1318 000BE258  48 00 02 31 */	bl MWTRACE
/* 800C131C 000BE25C  38 60 D8 EF */	li r3, -10001
/* 800C1320 000BE260  48 00 00 5C */	b lbl_800C137C
lbl_800C1324:
/* 800C1324 000BE264  7C 65 1B 78 */	mr r5, r3
/* 800C1328 000BE268  7C 86 23 78 */	mr r6, r4
/* 800C132C 000BE26C  38 9F 00 14 */	addi r4, r31, 0x14
/* 800C1330 000BE270  38 60 00 08 */	li r3, 8
/* 800C1334 000BE274  4C C6 31 82 */	crclr 6
/* 800C1338 000BE278  48 00 02 11 */	bl MWTRACE
/* 800C133C 000BE27C  48 00 00 34 */	b lbl_800C1370
lbl_800C1340:
/* 800C1340 000BE280  7F C5 F3 78 */	mr r5, r30
/* 800C1344 000BE284  38 9F 00 40 */	addi r4, r31, 0x40
/* 800C1348 000BE288  38 60 00 01 */	li r3, 1
/* 800C134C 000BE28C  4C C6 31 82 */	crclr 6
/* 800C1350 000BE290  48 00 01 F9 */	bl MWTRACE
/* 800C1354 000BE294  7F A3 EB 78 */	mr r3, r29
/* 800C1358 000BE298  7F C4 F3 78 */	mr r4, r30
/* 800C135C 000BE29C  48 00 EA 15 */	bl DBWrite
/* 800C1360 000BE2A0  2C 03 00 00 */	cmpwi r3, 0
/* 800C1364 000BE2A4  41 82 00 14 */	beq lbl_800C1378
/* 800C1368 000BE2A8  7F BD 1A 14 */	add r29, r29, r3
/* 800C136C 000BE2AC  7F C3 F0 50 */	subf r30, r3, r30
lbl_800C1370:
/* 800C1370 000BE2B0  2C 1E 00 00 */	cmpwi r30, 0
/* 800C1374 000BE2B4  41 81 FF CC */	bgt lbl_800C1340
lbl_800C1378:
/* 800C1378 000BE2B8  38 60 00 00 */	li r3, 0
lbl_800C137C:
/* 800C137C 000BE2BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C1380 000BE2C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C1384 000BE2C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C1388 000BE2C8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C138C 000BE2CC  7C 08 03 A6 */	mtlr r0
/* 800C1390 000BE2D0  38 21 00 20 */	addi r1, r1, 0x20
/* 800C1394 000BE2D4  4E 80 00 20 */	blr 

.global gdev_cc_read
gdev_cc_read:
/* 800C1398 000BE2D8  94 21 FA E0 */	stwu r1, -0x520(r1)
/* 800C139C 000BE2DC  7C 08 02 A6 */	mflr r0
/* 800C13A0 000BE2E0  90 01 05 24 */	stw r0, 0x524(r1)
/* 800C13A4 000BE2E4  BF 41 05 08 */	stmw r26, 0x508(r1)
/* 800C13A8 000BE2E8  7C 7A 1B 78 */	mr r26, r3
/* 800C13AC 000BE2EC  7C 9B 23 78 */	mr r27, r4
/* 800C13B0 000BE2F0  3B 80 00 00 */	li r28, 0
/* 800C13B4 000BE2F4  80 0D 8C 98 */	lwz r0, gIsInitialized_1@sda21(r13)
/* 800C13B8 000BE2F8  2C 00 00 00 */	cmpwi r0, 0
/* 800C13BC 000BE2FC  40 82 00 0C */	bne lbl_800C13C8
/* 800C13C0 000BE300  38 60 D8 EF */	li r3, -10001
/* 800C13C4 000BE304  48 00 00 B4 */	b lbl_800C1478
lbl_800C13C8:
/* 800C13C8 000BE308  3C 60 80 48 */	lis r3, lbl_80479E8C@ha
/* 800C13CC 000BE30C  7F 65 DB 78 */	mr r5, r27
/* 800C13D0 000BE310  38 83 9E 8C */	addi r4, r3, lbl_80479E8C@l
/* 800C13D4 000BE314  7F 66 DB 78 */	mr r6, r27
/* 800C13D8 000BE318  38 60 00 01 */	li r3, 1
/* 800C13DC 000BE31C  4C C6 31 82 */	crclr 6
/* 800C13E0 000BE320  48 00 01 69 */	bl MWTRACE
/* 800C13E4 000BE324  3C 60 80 4F */	lis r3, gRecvCB_1@ha
/* 800C13E8 000BE328  7F 7D DB 78 */	mr r29, r27
/* 800C13EC 000BE32C  3B E3 55 40 */	addi r31, r3, gRecvCB_1@l
/* 800C13F0 000BE330  7F 7E DB 78 */	mr r30, r27
/* 800C13F4 000BE334  48 00 00 38 */	b lbl_800C142C
lbl_800C13F8:
/* 800C13F8 000BE338  3B 80 00 00 */	li r28, 0
/* 800C13FC 000BE33C  48 00 EC 61 */	bl DBQueryData
/* 800C1400 000BE340  7C 7B 1B 79 */	or. r27, r3, r3
/* 800C1404 000BE344  41 82 00 28 */	beq lbl_800C142C
/* 800C1408 000BE348  7F C4 F3 78 */	mr r4, r30
/* 800C140C 000BE34C  38 61 00 08 */	addi r3, r1, 8
/* 800C1410 000BE350  48 00 EB C1 */	bl DBRead
/* 800C1414 000BE354  7C 7C 1B 79 */	or. r28, r3, r3
/* 800C1418 000BE358  40 82 00 14 */	bne lbl_800C142C
/* 800C141C 000BE35C  7F E3 FB 78 */	mr r3, r31
/* 800C1420 000BE360  7F 65 DB 78 */	mr r5, r27
/* 800C1424 000BE364  38 81 00 08 */	addi r4, r1, 8
/* 800C1428 000BE368  4B FF FC 75 */	bl CircleBufferWriteBytes
lbl_800C142C:
/* 800C142C 000BE36C  7F E3 FB 78 */	mr r3, r31
/* 800C1430 000BE370  4B FF FD C5 */	bl CBGetBytesAvailableForRead
/* 800C1434 000BE374  7C 03 F0 40 */	cmplw r3, r30
/* 800C1438 000BE378  41 80 FF C0 */	blt lbl_800C13F8
/* 800C143C 000BE37C  28 1C 00 00 */	cmplwi r28, 0
/* 800C1440 000BE380  40 82 00 1C */	bne lbl_800C145C
/* 800C1444 000BE384  3C 60 80 4F */	lis r3, gRecvCB_1@ha
/* 800C1448 000BE388  7F 44 D3 78 */	mr r4, r26
/* 800C144C 000BE38C  38 63 55 40 */	addi r3, r3, gRecvCB_1@l
/* 800C1450 000BE390  7F A5 EB 78 */	mr r5, r29
/* 800C1454 000BE394  4B FF FB 41 */	bl CircleBufferReadBytes
/* 800C1458 000BE398  48 00 00 1C */	b lbl_800C1474
lbl_800C145C:
/* 800C145C 000BE39C  3C 60 80 48 */	lis r3, lbl_80479EB4@ha
/* 800C1460 000BE3A0  7F 85 E3 78 */	mr r5, r28
/* 800C1464 000BE3A4  38 83 9E B4 */	addi r4, r3, lbl_80479EB4@l
/* 800C1468 000BE3A8  38 60 00 08 */	li r3, 8
/* 800C146C 000BE3AC  4C C6 31 82 */	crclr 6
/* 800C1470 000BE3B0  48 00 00 D9 */	bl MWTRACE
lbl_800C1474:
/* 800C1474 000BE3B4  7F 83 E3 78 */	mr r3, r28
lbl_800C1478:
/* 800C1478 000BE3B8  BB 41 05 08 */	lmw r26, 0x508(r1)
/* 800C147C 000BE3BC  80 01 05 24 */	lwz r0, 0x524(r1)
/* 800C1480 000BE3C0  7C 08 03 A6 */	mtlr r0
/* 800C1484 000BE3C4  38 21 05 20 */	addi r1, r1, 0x520
/* 800C1488 000BE3C8  4E 80 00 20 */	blr 

.global gdev_cc_close
gdev_cc_close:
/* 800C148C 000BE3CC  38 60 00 00 */	li r3, 0
/* 800C1490 000BE3D0  4E 80 00 20 */	blr 

.global gdev_cc_open
gdev_cc_open:
/* 800C1494 000BE3D4  80 0D 8C 98 */	lwz r0, gIsInitialized_1@sda21(r13)
/* 800C1498 000BE3D8  2C 00 00 00 */	cmpwi r0, 0
/* 800C149C 000BE3DC  41 82 00 0C */	beq lbl_800C14A8
/* 800C14A0 000BE3E0  38 60 D8 EB */	li r3, -10005
/* 800C14A4 000BE3E4  4E 80 00 20 */	blr 
lbl_800C14A8:
/* 800C14A8 000BE3E8  38 00 00 01 */	li r0, 1
/* 800C14AC 000BE3EC  38 60 00 00 */	li r3, 0
/* 800C14B0 000BE3F0  90 0D 8C 98 */	stw r0, gIsInitialized_1@sda21(r13)
/* 800C14B4 000BE3F4  4E 80 00 20 */	blr 

.global gdev_cc_shutdown
gdev_cc_shutdown:
/* 800C14B8 000BE3F8  38 60 00 00 */	li r3, 0
/* 800C14BC 000BE3FC  4E 80 00 20 */	blr 

.global gdev_cc_initialize
gdev_cc_initialize:
/* 800C14C0 000BE400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C14C4 000BE404  7C 08 02 A6 */	mflr r0
/* 800C14C8 000BE408  3C A0 80 48 */	lis r5, lbl_80479EE4@ha
/* 800C14CC 000BE40C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C14D0 000BE410  38 05 9E E4 */	addi r0, r5, lbl_80479EE4@l
/* 800C14D4 000BE414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C14D8 000BE418  7C 9F 23 78 */	mr r31, r4
/* 800C14DC 000BE41C  7C 04 03 78 */	mr r4, r0
/* 800C14E0 000BE420  93 C1 00 08 */	stw r30, 8(r1)
/* 800C14E4 000BE424  7C 7E 1B 78 */	mr r30, r3
/* 800C14E8 000BE428  38 60 00 01 */	li r3, 1
/* 800C14EC 000BE42C  4C C6 31 82 */	crclr 6
/* 800C14F0 000BE430  48 00 00 59 */	bl MWTRACE
/* 800C14F4 000BE434  7F C3 F3 78 */	mr r3, r30
/* 800C14F8 000BE438  7F E4 FB 78 */	mr r4, r31
/* 800C14FC 000BE43C  48 00 EC 51 */	bl DBInitComm
/* 800C1500 000BE440  3C 80 80 48 */	lis r4, lbl_80479EF8@ha
/* 800C1504 000BE444  38 60 00 01 */	li r3, 1
/* 800C1508 000BE448  38 84 9E F8 */	addi r4, r4, lbl_80479EF8@l
/* 800C150C 000BE44C  4C C6 31 82 */	crclr 6
/* 800C1510 000BE450  48 00 00 39 */	bl MWTRACE
/* 800C1514 000BE454  3C 60 80 4F */	lis r3, gRecvCB_1@ha
/* 800C1518 000BE458  3C 80 80 4F */	lis r4, gRecvBuf_1@ha
/* 800C151C 000BE45C  38 63 55 40 */	addi r3, r3, gRecvCB_1@l
/* 800C1520 000BE460  38 A0 05 00 */	li r5, 0x500
/* 800C1524 000BE464  38 84 50 40 */	addi r4, r4, gRecvBuf_1@l
/* 800C1528 000BE468  4B FF FC 7D */	bl CircleBufferInitialize
/* 800C152C 000BE46C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C1530 000BE470  38 60 00 00 */	li r3, 0
/* 800C1534 000BE474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C1538 000BE478  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C153C 000BE47C  7C 08 03 A6 */	mtlr r0
/* 800C1540 000BE480  38 21 00 10 */	addi r1, r1, 0x10
/* 800C1544 000BE484  4E 80 00 20 */	blr 
