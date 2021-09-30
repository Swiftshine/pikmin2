.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__15J3DShapeFactoryFRC13J3DShapeBlock
__ct__15J3DShapeFactoryFRC13J3DShapeBlock:
/* 80071D10 0006EC50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80071D14 0006EC54  7C 08 02 A6 */	mflr r0
/* 80071D18 0006EC58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80071D1C 0006EC5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80071D20 0006EC60  7C 9F 23 78 */	mr r31, r4
/* 80071D24 0006EC64  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80071D28 0006EC68  93 C1 00 08 */	stw r30, 8(r1)
/* 80071D2C 0006EC6C  7C 7E 1B 78 */	mr r30, r3
/* 80071D30 0006EC70  7F E3 FB 78 */	mr r3, r31
/* 80071D34 0006EC74  4B FF FD BD */	bl JSUConvertOffsetToPtr$$016J3DShapeInitData$$1__FPCvUl
/* 80071D38 0006EC78  90 7E 00 00 */	stw r3, 0(r30)
/* 80071D3C 0006EC7C  7F E3 FB 78 */	mr r3, r31
/* 80071D40 0006EC80  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80071D44 0006EC84  4B FF FD C5 */	bl JSUConvertOffsetToPtr$$0Us$$1__FPCvUl
/* 80071D48 0006EC88  90 7E 00 04 */	stw r3, 4(r30)
/* 80071D4C 0006EC8C  7F E3 FB 78 */	mr r3, r31
/* 80071D50 0006EC90  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80071D54 0006EC94  48 00 08 35 */	bl JSUConvertOffsetToPtr$$014_GXVtxDescList$$1__FPCvUl
/* 80071D58 0006EC98  90 7E 00 08 */	stw r3, 8(r30)
/* 80071D5C 0006EC9C  7F E3 FB 78 */	mr r3, r31
/* 80071D60 0006ECA0  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80071D64 0006ECA4  4B FF FD A5 */	bl JSUConvertOffsetToPtr$$0Us$$1__FPCvUl
/* 80071D68 0006ECA8  90 7E 00 0C */	stw r3, 0xc(r30)
/* 80071D6C 0006ECAC  7F E3 FB 78 */	mr r3, r31
/* 80071D70 0006ECB0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80071D74 0006ECB4  48 00 07 FD */	bl JSUConvertOffsetToPtr$$0Uc$$1__FPCvUl
/* 80071D78 0006ECB8  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80071D7C 0006ECBC  7F E3 FB 78 */	mr r3, r31
/* 80071D80 0006ECC0  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80071D84 0006ECC4  48 00 07 D5 */	bl JSUConvertOffsetToPtr$$019J3DShapeMtxInitData$$1__FPCvUl
/* 80071D88 0006ECC8  90 7E 00 14 */	stw r3, 0x14(r30)
/* 80071D8C 0006ECCC  7F E3 FB 78 */	mr r3, r31
/* 80071D90 0006ECD0  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80071D94 0006ECD4  48 00 07 AD */	bl JSUConvertOffsetToPtr$$020J3DShapeDrawInitData$$1__FPCvUl
/* 80071D98 0006ECD8  90 7E 00 18 */	stw r3, 0x18(r30)
/* 80071D9C 0006ECDC  38 00 00 00 */	li r0, 0
/* 80071DA0 0006ECE0  7F C3 F3 78 */	mr r3, r30
/* 80071DA4 0006ECE4  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80071DA8 0006ECE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80071DAC 0006ECEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80071DB0 0006ECF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80071DB4 0006ECF4  7C 08 03 A6 */	mtlr r0
/* 80071DB8 0006ECF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80071DBC 0006ECFC  4E 80 00 20 */	blr 

.global create__15J3DShapeFactoryFiUlP14_GXVtxDescList
create__15J3DShapeFactoryFiUlP14_GXVtxDescList:
/* 80071DC0 0006ED00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80071DC4 0006ED04  7C 08 02 A6 */	mflr r0
/* 80071DC8 0006ED08  90 01 00 34 */	stw r0, 0x34(r1)
/* 80071DCC 0006ED0C  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80071DD0 0006ED10  7C 79 1B 78 */	mr r25, r3
/* 80071DD4 0006ED14  7C 9A 23 78 */	mr r26, r4
/* 80071DD8 0006ED18  7C BB 2B 78 */	mr r27, r5
/* 80071DDC 0006ED1C  38 60 00 68 */	li r3, 0x68
/* 80071DE0 0006ED20  4B FB 20 C5 */	bl __nw__FUl
/* 80071DE4 0006ED24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80071DE8 0006ED28  41 82 00 2C */	beq lbl_80071E14
/* 80071DEC 0006ED2C  3C 80 80 4A */	lis r4, __vt__8J3DShape@ha
/* 80071DF0 0006ED30  3C A0 3C F4 */	lis r5, 0x3CF3CF00@ha
/* 80071DF4 0006ED34  38 04 15 60 */	addi r0, r4, __vt__8J3DShape@l
/* 80071DF8 0006ED38  3C 80 00 F4 */	lis r4, 0x00F3CF3C@ha
/* 80071DFC 0006ED3C  90 1F 00 00 */	stw r0, 0(r31)
/* 80071E00 0006ED40  38 A5 CF 00 */	addi r5, r5, 0x3CF3CF00@l
/* 80071E04 0006ED44  38 04 CF 3C */	addi r0, r4, 0x00F3CF3C@l
/* 80071E08 0006ED48  90 BF 00 40 */	stw r5, 0x40(r31)
/* 80071E0C 0006ED4C  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80071E10 0006ED50  4B FE EA 41 */	bl initialize__8J3DShapeFv
lbl_80071E14:
/* 80071E14 0006ED54  80 79 00 04 */	lwz r3, 4(r25)
/* 80071E18 0006ED58  57 5D 08 3C */	slwi r29, r26, 1
/* 80071E1C 0006ED5C  80 99 00 00 */	lwz r4, 0(r25)
/* 80071E20 0006ED60  7C 03 EA 2E */	lhzx r0, r3, r29
/* 80071E24 0006ED64  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80071E28 0006ED68  7C 64 02 14 */	add r3, r4, r0
/* 80071E2C 0006ED6C  A0 03 00 02 */	lhz r0, 2(r3)
/* 80071E30 0006ED70  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 80071E34 0006ED74  80 79 00 04 */	lwz r3, 4(r25)
/* 80071E38 0006ED78  80 99 00 00 */	lwz r4, 0(r25)
/* 80071E3C 0006ED7C  7C 03 EA 2E */	lhzx r0, r3, r29
/* 80071E40 0006ED80  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80071E44 0006ED84  7C 64 02 14 */	add r3, r4, r0
/* 80071E48 0006ED88  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80071E4C 0006ED8C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80071E50 0006ED90  80 79 00 04 */	lwz r3, 4(r25)
/* 80071E54 0006ED94  80 99 00 00 */	lwz r4, 0(r25)
/* 80071E58 0006ED98  7C 03 EA 2E */	lhzx r0, r3, r29
/* 80071E5C 0006ED9C  80 B9 00 08 */	lwz r5, 8(r25)
/* 80071E60 0006EDA0  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80071E64 0006EDA4  7C 64 02 14 */	add r3, r4, r0
/* 80071E68 0006EDA8  A0 03 00 04 */	lhz r0, 4(r3)
/* 80071E6C 0006EDAC  7C 05 02 14 */	add r0, r5, r0
/* 80071E70 0006EDB0  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80071E74 0006EDB4  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 80071E78 0006EDB8  54 03 10 3A */	slwi r3, r0, 2
/* 80071E7C 0006EDBC  4B FB 21 31 */	bl __nwa__FUl
/* 80071E80 0006EDC0  90 7F 00 38 */	stw r3, 0x38(r31)
/* 80071E84 0006EDC4  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 80071E88 0006EDC8  54 03 10 3A */	slwi r3, r0, 2
/* 80071E8C 0006EDCC  4B FB 21 21 */	bl __nwa__FUl
/* 80071E90 0006EDD0  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80071E94 0006EDD4  1C 1A 00 C0 */	mulli r0, r26, 0xc0
/* 80071E98 0006EDD8  3B 80 00 00 */	li r28, 0
/* 80071E9C 0006EDDC  80 79 00 04 */	lwz r3, 4(r25)
/* 80071EA0 0006EDE0  3B C0 00 00 */	li r30, 0
/* 80071EA4 0006EDE4  80 99 00 00 */	lwz r4, 0(r25)
/* 80071EA8 0006EDE8  7C 63 EA 2E */	lhzx r3, r3, r29
/* 80071EAC 0006EDEC  1C 63 00 28 */	mulli r3, r3, 0x28
/* 80071EB0 0006EDF0  38 63 00 10 */	addi r3, r3, 0x10
/* 80071EB4 0006EDF4  7C 64 1A 14 */	add r3, r4, r3
/* 80071EB8 0006EDF8  C0 03 00 00 */	lfs f0, 0(r3)
/* 80071EBC 0006EDFC  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80071EC0 0006EE00  C0 03 00 04 */	lfs f0, 4(r3)
/* 80071EC4 0006EE04  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80071EC8 0006EE08  C0 03 00 08 */	lfs f0, 8(r3)
/* 80071ECC 0006EE0C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80071ED0 0006EE10  80 79 00 04 */	lwz r3, 4(r25)
/* 80071ED4 0006EE14  80 99 00 00 */	lwz r4, 0(r25)
/* 80071ED8 0006EE18  7C 63 EA 2E */	lhzx r3, r3, r29
/* 80071EDC 0006EE1C  1C 63 00 28 */	mulli r3, r3, 0x28
/* 80071EE0 0006EE20  38 63 00 1C */	addi r3, r3, 0x1c
/* 80071EE4 0006EE24  7C 64 1A 14 */	add r3, r4, r3
/* 80071EE8 0006EE28  C0 03 00 00 */	lfs f0, 0(r3)
/* 80071EEC 0006EE2C  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 80071EF0 0006EE30  C0 03 00 04 */	lfs f0, 4(r3)
/* 80071EF4 0006EE34  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80071EF8 0006EE38  C0 03 00 08 */	lfs f0, 8(r3)
/* 80071EFC 0006EE3C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80071F00 0006EE40  80 79 00 1C */	lwz r3, 0x1c(r25)
/* 80071F04 0006EE44  7C 03 02 14 */	add r0, r3, r0
/* 80071F08 0006EE48  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80071F0C 0006EE4C  48 00 00 40 */	b lbl_80071F4C
lbl_80071F10:
/* 80071F10 0006EE50  7F 23 CB 78 */	mr r3, r25
/* 80071F14 0006EE54  7F 64 DB 78 */	mr r4, r27
/* 80071F18 0006EE58  7F 45 D3 78 */	mr r5, r26
/* 80071F1C 0006EE5C  7F 86 E3 78 */	mr r6, r28
/* 80071F20 0006EE60  48 00 00 55 */	bl newShapeMtx__15J3DShapeFactoryCFUlii
/* 80071F24 0006EE64  80 DF 00 38 */	lwz r6, 0x38(r31)
/* 80071F28 0006EE68  7F 44 D3 78 */	mr r4, r26
/* 80071F2C 0006EE6C  7F 85 E3 78 */	mr r5, r28
/* 80071F30 0006EE70  7C 66 F1 2E */	stwx r3, r6, r30
/* 80071F34 0006EE74  7F 23 CB 78 */	mr r3, r25
/* 80071F38 0006EE78  48 00 03 2D */	bl newShapeDraw__15J3DShapeFactoryCFii
/* 80071F3C 0006EE7C  80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 80071F40 0006EE80  3B 9C 00 01 */	addi r28, r28, 1
/* 80071F44 0006EE84  7C 64 F1 2E */	stwx r3, r4, r30
/* 80071F48 0006EE88  3B DE 00 04 */	addi r30, r30, 4
lbl_80071F4C:
/* 80071F4C 0006EE8C  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 80071F50 0006EE90  7C 1C 00 00 */	cmpw r28, r0
/* 80071F54 0006EE94  41 80 FF BC */	blt lbl_80071F10
/* 80071F58 0006EE98  B3 5F 00 08 */	sth r26, 8(r31)
/* 80071F5C 0006EE9C  7F E3 FB 78 */	mr r3, r31
/* 80071F60 0006EEA0  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80071F64 0006EEA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80071F68 0006EEA8  7C 08 03 A6 */	mtlr r0
/* 80071F6C 0006EEAC  38 21 00 30 */	addi r1, r1, 0x30
/* 80071F70 0006EEB0  4E 80 00 20 */	blr 

.global newShapeMtx__15J3DShapeFactoryCFUlii
newShapeMtx__15J3DShapeFactoryCFUlii:
/* 80071F74 0006EEB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80071F78 0006EEB8  7C 08 02 A6 */	mflr r0
/* 80071F7C 0006EEBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80071F80 0006EEC0  54 80 06 F6 */	rlwinm r0, r4, 0, 0x1b, 0x1b
/* 80071F84 0006EEC4  80 83 00 04 */	lwz r4, 4(r3)
/* 80071F88 0006EEC8  2C 00 00 10 */	cmpwi r0, 0x10
/* 80071F8C 0006EECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80071F90 0006EED0  93 C1 00 08 */	stw r30, 8(r1)
/* 80071F94 0006EED4  7C 7E 1B 78 */	mr r30, r3
/* 80071F98 0006EED8  54 A3 08 3C */	slwi r3, r5, 1
/* 80071F9C 0006EEDC  80 FE 00 00 */	lwz r7, 0(r30)
/* 80071FA0 0006EEE0  7C A4 1A 2E */	lhzx r5, r4, r3
/* 80071FA4 0006EEE4  54 C4 18 38 */	slwi r4, r6, 3
/* 80071FA8 0006EEE8  80 DE 00 14 */	lwz r6, 0x14(r30)
/* 80071FAC 0006EEEC  38 60 00 00 */	li r3, 0
/* 80071FB0 0006EEF0  1C A5 00 28 */	mulli r5, r5, 0x28
/* 80071FB4 0006EEF4  7C E7 2A 14 */	add r7, r7, r5
/* 80071FB8 0006EEF8  A0 A7 00 06 */	lhz r5, 6(r7)
/* 80071FBC 0006EEFC  54 A5 18 38 */	slwi r5, r5, 3
/* 80071FC0 0006EF00  7F E5 22 14 */	add r31, r5, r4
/* 80071FC4 0006EF04  7F E6 FA 14 */	add r31, r6, r31
/* 80071FC8 0006EF08  41 82 00 14 */	beq lbl_80071FDC
/* 80071FCC 0006EF0C  40 80 01 4C */	bge lbl_80072118
/* 80071FD0 0006EF10  2C 00 00 00 */	cmpwi r0, 0
/* 80071FD4 0006EF14  41 82 01 44 */	beq lbl_80072118
/* 80071FD8 0006EF18  48 00 01 40 */	b lbl_80072118
lbl_80071FDC:
/* 80071FDC 0006EF1C  88 07 00 00 */	lbz r0, 0(r7)
/* 80071FE0 0006EF20  2C 00 00 02 */	cmpwi r0, 2
/* 80071FE4 0006EF24  41 82 00 98 */	beq lbl_8007207C
/* 80071FE8 0006EF28  40 80 00 14 */	bge lbl_80071FFC
/* 80071FEC 0006EF2C  2C 00 00 00 */	cmpwi r0, 0
/* 80071FF0 0006EF30  41 82 00 18 */	beq lbl_80072008
/* 80071FF4 0006EF34  40 80 00 48 */	bge lbl_8007203C
/* 80071FF8 0006EF38  48 00 01 B0 */	b lbl_800721A8
lbl_80071FFC:
/* 80071FFC 0006EF3C  2C 00 00 04 */	cmpwi r0, 4
/* 80072000 0006EF40  40 80 01 A8 */	bge lbl_800721A8
/* 80072004 0006EF44  48 00 00 B8 */	b lbl_800720BC
lbl_80072008:
/* 80072008 0006EF48  38 60 00 08 */	li r3, 8
/* 8007200C 0006EF4C  4B FB 1E 99 */	bl __nw__FUl
/* 80072010 0006EF50  28 03 00 00 */	cmplwi r3, 0
/* 80072014 0006EF54  41 82 01 94 */	beq lbl_800721A8
/* 80072018 0006EF58  3C 80 80 4A */	lis r4, __vt__11J3DShapeMtx@ha
/* 8007201C 0006EF5C  A0 BF 00 00 */	lhz r5, 0(r31)
/* 80072020 0006EF60  38 04 2F 4C */	addi r0, r4, __vt__11J3DShapeMtx@l
/* 80072024 0006EF64  3C 80 80 4A */	lis r4, __vt__21J3DShapeMtxConcatView@ha
/* 80072028 0006EF68  90 03 00 00 */	stw r0, 0(r3)
/* 8007202C 0006EF6C  38 04 2F 24 */	addi r0, r4, __vt__21J3DShapeMtxConcatView@l
/* 80072030 0006EF70  B0 A3 00 04 */	sth r5, 4(r3)
/* 80072034 0006EF74  90 03 00 00 */	stw r0, 0(r3)
/* 80072038 0006EF78  48 00 01 70 */	b lbl_800721A8
lbl_8007203C:
/* 8007203C 0006EF7C  38 60 00 08 */	li r3, 8
/* 80072040 0006EF80  4B FB 1E 65 */	bl __nw__FUl
/* 80072044 0006EF84  28 03 00 00 */	cmplwi r3, 0
/* 80072048 0006EF88  41 82 01 60 */	beq lbl_800721A8
/* 8007204C 0006EF8C  3C 80 80 4A */	lis r4, __vt__11J3DShapeMtx@ha
/* 80072050 0006EF90  A0 DF 00 00 */	lhz r6, 0(r31)
/* 80072054 0006EF94  38 04 2F 4C */	addi r0, r4, __vt__11J3DShapeMtx@l
/* 80072058 0006EF98  3C A0 80 4A */	lis r5, __vt__21J3DShapeMtxConcatView@ha
/* 8007205C 0006EF9C  90 03 00 00 */	stw r0, 0(r3)
/* 80072060 0006EFA0  3C 80 80 4A */	lis r4, __vt__27J3DShapeMtxBBoardConcatView@ha
/* 80072064 0006EFA4  38 A5 2F 24 */	addi r5, r5, __vt__21J3DShapeMtxConcatView@l
/* 80072068 0006EFA8  B0 C3 00 04 */	sth r6, 4(r3)
/* 8007206C 0006EFAC  38 04 2E B4 */	addi r0, r4, __vt__27J3DShapeMtxBBoardConcatView@l
/* 80072070 0006EFB0  90 A3 00 00 */	stw r5, 0(r3)
/* 80072074 0006EFB4  90 03 00 00 */	stw r0, 0(r3)
/* 80072078 0006EFB8  48 00 01 30 */	b lbl_800721A8
lbl_8007207C:
/* 8007207C 0006EFBC  38 60 00 08 */	li r3, 8
/* 80072080 0006EFC0  4B FB 1E 25 */	bl __nw__FUl
/* 80072084 0006EFC4  28 03 00 00 */	cmplwi r3, 0
/* 80072088 0006EFC8  41 82 01 20 */	beq lbl_800721A8
/* 8007208C 0006EFCC  3C 80 80 4A */	lis r4, __vt__11J3DShapeMtx@ha
/* 80072090 0006EFD0  A0 DF 00 00 */	lhz r6, 0(r31)
/* 80072094 0006EFD4  38 04 2F 4C */	addi r0, r4, __vt__11J3DShapeMtx@l
/* 80072098 0006EFD8  3C A0 80 4A */	lis r5, __vt__21J3DShapeMtxConcatView@ha
/* 8007209C 0006EFDC  90 03 00 00 */	stw r0, 0(r3)
/* 800720A0 0006EFE0  3C 80 80 4A */	lis r4, __vt__28J3DShapeMtxYBBoardConcatView@ha
/* 800720A4 0006EFE4  38 A5 2F 24 */	addi r5, r5, __vt__21J3DShapeMtxConcatView@l
/* 800720A8 0006EFE8  B0 C3 00 04 */	sth r6, 4(r3)
/* 800720AC 0006EFEC  38 04 2E 8C */	addi r0, r4, __vt__28J3DShapeMtxYBBoardConcatView@l
/* 800720B0 0006EFF0  90 A3 00 00 */	stw r5, 0(r3)
/* 800720B4 0006EFF4  90 03 00 00 */	stw r0, 0(r3)
/* 800720B8 0006EFF8  48 00 00 F0 */	b lbl_800721A8
lbl_800720BC:
/* 800720BC 0006EFFC  38 60 00 10 */	li r3, 0x10
/* 800720C0 0006F000  4B FB 1D E5 */	bl __nw__FUl
/* 800720C4 0006F004  28 03 00 00 */	cmplwi r3, 0
/* 800720C8 0006F008  41 82 00 E0 */	beq lbl_800721A8
/* 800720CC 0006F00C  80 DF 00 04 */	lwz r6, 4(r31)
/* 800720D0 0006F010  3C 80 80 4A */	lis r4, __vt__11J3DShapeMtx@ha
/* 800720D4 0006F014  A1 3F 00 02 */	lhz r9, 2(r31)
/* 800720D8 0006F018  38 04 2F 4C */	addi r0, r4, __vt__11J3DShapeMtx@l
/* 800720DC 0006F01C  A1 1F 00 00 */	lhz r8, 0(r31)
/* 800720E0 0006F020  3C A0 80 4A */	lis r5, __vt__21J3DShapeMtxConcatView@ha
/* 800720E4 0006F024  3C 80 80 4A */	lis r4, __vt__26J3DShapeMtxMultiConcatView@ha
/* 800720E8 0006F028  80 FE 00 0C */	lwz r7, 0xc(r30)
/* 800720EC 0006F02C  90 03 00 00 */	stw r0, 0(r3)
/* 800720F0 0006F030  54 C6 08 3C */	slwi r6, r6, 1
/* 800720F4 0006F034  38 A5 2F 24 */	addi r5, r5, __vt__21J3DShapeMtxConcatView@l
/* 800720F8 0006F038  38 04 2E DC */	addi r0, r4, __vt__26J3DShapeMtxMultiConcatView@l
/* 800720FC 0006F03C  B1 03 00 04 */	sth r8, 4(r3)
/* 80072100 0006F040  7C 87 32 14 */	add r4, r7, r6
/* 80072104 0006F044  90 A3 00 00 */	stw r5, 0(r3)
/* 80072108 0006F048  90 03 00 00 */	stw r0, 0(r3)
/* 8007210C 0006F04C  B1 23 00 08 */	sth r9, 8(r3)
/* 80072110 0006F050  90 83 00 0C */	stw r4, 0xc(r3)
/* 80072114 0006F054  48 00 00 94 */	b lbl_800721A8
lbl_80072118:
/* 80072118 0006F058  88 07 00 00 */	lbz r0, 0(r7)
/* 8007211C 0006F05C  2C 00 00 03 */	cmpwi r0, 3
/* 80072120 0006F060  41 82 00 3C */	beq lbl_8007215C
/* 80072124 0006F064  40 80 00 84 */	bge lbl_800721A8
/* 80072128 0006F068  2C 00 00 00 */	cmpwi r0, 0
/* 8007212C 0006F06C  40 80 00 08 */	bge lbl_80072134
/* 80072130 0006F070  48 00 00 78 */	b lbl_800721A8
lbl_80072134:
/* 80072134 0006F074  38 60 00 08 */	li r3, 8
/* 80072138 0006F078  4B FB 1D 6D */	bl __nw__FUl
/* 8007213C 0006F07C  28 03 00 00 */	cmplwi r3, 0
/* 80072140 0006F080  41 82 00 68 */	beq lbl_800721A8
/* 80072144 0006F084  3C 80 80 4A */	lis r4, __vt__11J3DShapeMtx@ha
/* 80072148 0006F088  A0 BF 00 00 */	lhz r5, 0(r31)
/* 8007214C 0006F08C  38 04 2F 4C */	addi r0, r4, __vt__11J3DShapeMtx@l
/* 80072150 0006F090  90 03 00 00 */	stw r0, 0(r3)
/* 80072154 0006F094  B0 A3 00 04 */	sth r5, 4(r3)
/* 80072158 0006F098  48 00 00 50 */	b lbl_800721A8
lbl_8007215C:
/* 8007215C 0006F09C  38 60 00 10 */	li r3, 0x10
/* 80072160 0006F0A0  4B FB 1D 45 */	bl __nw__FUl
/* 80072164 0006F0A4  28 03 00 00 */	cmplwi r3, 0
/* 80072168 0006F0A8  41 82 00 40 */	beq lbl_800721A8
/* 8007216C 0006F0AC  80 DF 00 04 */	lwz r6, 4(r31)
/* 80072170 0006F0B0  3C 80 80 4A */	lis r4, __vt__11J3DShapeMtx@ha
/* 80072174 0006F0B4  A1 3F 00 02 */	lhz r9, 2(r31)
/* 80072178 0006F0B8  38 A4 2F 4C */	addi r5, r4, __vt__11J3DShapeMtx@l
/* 8007217C 0006F0BC  A1 1F 00 00 */	lhz r8, 0(r31)
/* 80072180 0006F0C0  3C 80 80 4A */	lis r4, __vt__16J3DShapeMtxMulti@ha
/* 80072184 0006F0C4  38 04 2F 04 */	addi r0, r4, __vt__16J3DShapeMtxMulti@l
/* 80072188 0006F0C8  80 FE 00 0C */	lwz r7, 0xc(r30)
/* 8007218C 0006F0CC  90 A3 00 00 */	stw r5, 0(r3)
/* 80072190 0006F0D0  54 C4 08 3C */	slwi r4, r6, 1
/* 80072194 0006F0D4  7C 87 22 14 */	add r4, r7, r4
/* 80072198 0006F0D8  B1 03 00 04 */	sth r8, 4(r3)
/* 8007219C 0006F0DC  90 03 00 00 */	stw r0, 0(r3)
/* 800721A0 0006F0E0  B1 23 00 08 */	sth r9, 8(r3)
/* 800721A4 0006F0E4  90 83 00 0C */	stw r4, 0xc(r3)
lbl_800721A8:
/* 800721A8 0006F0E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800721AC 0006F0EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800721B0 0006F0F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800721B4 0006F0F4  7C 08 03 A6 */	mtlr r0
/* 800721B8 0006F0F8  38 21 00 10 */	addi r1, r1, 0x10
/* 800721BC 0006F0FC  4E 80 00 20 */	blr 

.global __dt__21J3DShapeMtxConcatViewFv
__dt__21J3DShapeMtxConcatViewFv:
/* 800721C0 0006F100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800721C4 0006F104  7C 08 02 A6 */	mflr r0
/* 800721C8 0006F108  90 01 00 14 */	stw r0, 0x14(r1)
/* 800721CC 0006F10C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800721D0 0006F110  7C 7F 1B 79 */	or. r31, r3, r3
/* 800721D4 0006F114  41 82 00 30 */	beq lbl_80072204
/* 800721D8 0006F118  3C 60 80 4A */	lis r3, __vt__21J3DShapeMtxConcatView@ha
/* 800721DC 0006F11C  38 03 2F 24 */	addi r0, r3, __vt__21J3DShapeMtxConcatView@l
/* 800721E0 0006F120  90 1F 00 00 */	stw r0, 0(r31)
/* 800721E4 0006F124  41 82 00 10 */	beq lbl_800721F4
/* 800721E8 0006F128  3C 60 80 4A */	lis r3, __vt__11J3DShapeMtx@ha
/* 800721EC 0006F12C  38 03 2F 4C */	addi r0, r3, __vt__11J3DShapeMtx@l
/* 800721F0 0006F130  90 1F 00 00 */	stw r0, 0(r31)
lbl_800721F4:
/* 800721F4 0006F134  7C 80 07 35 */	extsh. r0, r4
/* 800721F8 0006F138  40 81 00 0C */	ble lbl_80072204
/* 800721FC 0006F13C  7F E3 FB 78 */	mr r3, r31
/* 80072200 0006F140  4B FB 1E B5 */	bl __dl__FPv
lbl_80072204:
/* 80072204 0006F144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80072208 0006F148  7F E3 FB 78 */	mr r3, r31
/* 8007220C 0006F14C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80072210 0006F150  7C 08 03 A6 */	mtlr r0
/* 80072214 0006F154  38 21 00 10 */	addi r1, r1, 0x10
/* 80072218 0006F158  4E 80 00 20 */	blr 

.global __dt__11J3DShapeMtxFv
__dt__11J3DShapeMtxFv:
/* 8007221C 0006F15C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80072220 0006F160  7C 08 02 A6 */	mflr r0
/* 80072224 0006F164  90 01 00 14 */	stw r0, 0x14(r1)
/* 80072228 0006F168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007222C 0006F16C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80072230 0006F170  41 82 00 1C */	beq lbl_8007224C
/* 80072234 0006F174  3C A0 80 4A */	lis r5, __vt__11J3DShapeMtx@ha
/* 80072238 0006F178  7C 80 07 35 */	extsh. r0, r4
/* 8007223C 0006F17C  38 05 2F 4C */	addi r0, r5, __vt__11J3DShapeMtx@l
/* 80072240 0006F180  90 1F 00 00 */	stw r0, 0(r31)
/* 80072244 0006F184  40 81 00 08 */	ble lbl_8007224C
/* 80072248 0006F188  4B FB 1E 6D */	bl __dl__FPv
lbl_8007224C:
/* 8007224C 0006F18C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80072250 0006F190  7F E3 FB 78 */	mr r3, r31
/* 80072254 0006F194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80072258 0006F198  7C 08 03 A6 */	mtlr r0
/* 8007225C 0006F19C  38 21 00 10 */	addi r1, r1, 0x10
/* 80072260 0006F1A0  4E 80 00 20 */	blr 

.global newShapeDraw__15J3DShapeFactoryCFii
newShapeDraw__15J3DShapeFactoryCFii:
/* 80072264 0006F1A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80072268 0006F1A8  7C 08 02 A6 */	mflr r0
/* 8007226C 0006F1AC  80 C3 00 04 */	lwz r6, 4(r3)
/* 80072270 0006F1B0  54 84 08 3C */	slwi r4, r4, 1
/* 80072274 0006F1B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80072278 0006F1B8  54 A0 18 38 */	slwi r0, r5, 3
/* 8007227C 0006F1BC  80 A3 00 00 */	lwz r5, 0(r3)
/* 80072280 0006F1C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80072284 0006F1C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80072288 0006F1C8  7C 7E 1B 78 */	mr r30, r3
/* 8007228C 0006F1CC  38 60 00 0C */	li r3, 0xc
/* 80072290 0006F1D0  7C 86 22 2E */	lhzx r4, r6, r4
/* 80072294 0006F1D4  80 DE 00 18 */	lwz r6, 0x18(r30)
/* 80072298 0006F1D8  1C 84 00 28 */	mulli r4, r4, 0x28
/* 8007229C 0006F1DC  38 84 00 08 */	addi r4, r4, 8
/* 800722A0 0006F1E0  7C 85 22 2E */	lhzx r4, r5, r4
/* 800722A4 0006F1E4  54 84 18 38 */	slwi r4, r4, 3
/* 800722A8 0006F1E8  7F E4 02 14 */	add r31, r4, r0
/* 800722AC 0006F1EC  7F E6 FA 14 */	add r31, r6, r31
/* 800722B0 0006F1F0  4B FB 1B F5 */	bl __nw__FUl
/* 800722B4 0006F1F4  7C 60 1B 79 */	or. r0, r3, r3
/* 800722B8 0006F1F8  41 82 00 1C */	beq lbl_800722D4
/* 800722BC 0006F1FC  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 800722C0 0006F200  80 1F 00 04 */	lwz r0, 4(r31)
/* 800722C4 0006F204  80 BF 00 00 */	lwz r5, 0(r31)
/* 800722C8 0006F208  7C 84 02 14 */	add r4, r4, r0
/* 800722CC 0006F20C  48 01 65 81 */	bl __ct__12J3DShapeDrawFPCUcUl
/* 800722D0 0006F210  7C 60 1B 78 */	mr r0, r3
lbl_800722D4:
/* 800722D4 0006F214  7C 03 03 78 */	mr r3, r0
/* 800722D8 0006F218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800722DC 0006F21C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800722E0 0006F220  83 C1 00 08 */	lwz r30, 8(r1)
/* 800722E4 0006F224  7C 08 03 A6 */	mtlr r0
/* 800722E8 0006F228  38 21 00 10 */	addi r1, r1, 0x10
/* 800722EC 0006F22C  4E 80 00 20 */	blr 

.global allocVcdVatCmdBuffer__15J3DShapeFactoryFUl
allocVcdVatCmdBuffer__15J3DShapeFactoryFUl:
/* 800722F0 0006F230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800722F4 0006F234  7C 08 02 A6 */	mflr r0
/* 800722F8 0006F238  90 01 00 14 */	stw r0, 0x14(r1)
/* 800722FC 0006F23C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80072300 0006F240  7C 7F 1B 78 */	mr r31, r3
/* 80072304 0006F244  93 C1 00 08 */	stw r30, 8(r1)
/* 80072308 0006F248  1F C4 00 C0 */	mulli r30, r4, 0xc0
/* 8007230C 0006F24C  38 80 00 20 */	li r4, 0x20
/* 80072310 0006F250  7F C3 F3 78 */	mr r3, r30
/* 80072314 0006F254  4B FB 1C E5 */	bl __nwa__FUli
/* 80072318 0006F258  57 CC F0 BE */	srwi r12, r30, 2
/* 8007231C 0006F25C  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 80072320 0006F260  28 0C 00 00 */	cmplwi r12, 0
/* 80072324 0006F264  3B C0 00 00 */	li r30, 0
/* 80072328 0006F268  40 81 00 BC */	ble lbl_800723E4
/* 8007232C 0006F26C  28 0C 00 08 */	cmplwi r12, 8
/* 80072330 0006F270  38 6C FF F8 */	addi r3, r12, -8
/* 80072334 0006F274  40 81 00 88 */	ble lbl_800723BC
/* 80072338 0006F278  38 03 00 07 */	addi r0, r3, 7
/* 8007233C 0006F27C  39 60 00 00 */	li r11, 0
/* 80072340 0006F280  54 00 E8 FE */	srwi r0, r0, 3
/* 80072344 0006F284  7C 09 03 A6 */	mtctr r0
/* 80072348 0006F288  28 03 00 00 */	cmplwi r3, 0
/* 8007234C 0006F28C  40 81 00 70 */	ble lbl_800723BC
lbl_80072350:
/* 80072350 0006F290  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80072354 0006F294  39 40 00 00 */	li r10, 0
/* 80072358 0006F298  39 0B 00 04 */	addi r8, r11, 4
/* 8007235C 0006F29C  38 EB 00 08 */	addi r7, r11, 8
/* 80072360 0006F2A0  7D 43 59 2E */	stwx r10, r3, r11
/* 80072364 0006F2A4  38 CB 00 0C */	addi r6, r11, 0xc
/* 80072368 0006F2A8  38 AB 00 10 */	addi r5, r11, 0x10
/* 8007236C 0006F2AC  38 8B 00 14 */	addi r4, r11, 0x14
/* 80072370 0006F2B0  81 3F 00 1C */	lwz r9, 0x1c(r31)
/* 80072374 0006F2B4  38 6B 00 18 */	addi r3, r11, 0x18
/* 80072378 0006F2B8  38 0B 00 1C */	addi r0, r11, 0x1c
/* 8007237C 0006F2BC  39 6B 00 20 */	addi r11, r11, 0x20
/* 80072380 0006F2C0  7D 49 41 2E */	stwx r10, r9, r8
/* 80072384 0006F2C4  3B DE 00 08 */	addi r30, r30, 8
/* 80072388 0006F2C8  81 1F 00 1C */	lwz r8, 0x1c(r31)
/* 8007238C 0006F2CC  7D 48 39 2E */	stwx r10, r8, r7
/* 80072390 0006F2D0  80 FF 00 1C */	lwz r7, 0x1c(r31)
/* 80072394 0006F2D4  7D 47 31 2E */	stwx r10, r7, r6
/* 80072398 0006F2D8  80 DF 00 1C */	lwz r6, 0x1c(r31)
/* 8007239C 0006F2DC  7D 46 29 2E */	stwx r10, r6, r5
/* 800723A0 0006F2E0  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 800723A4 0006F2E4  7D 45 21 2E */	stwx r10, r5, r4
/* 800723A8 0006F2E8  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 800723AC 0006F2EC  7D 44 19 2E */	stwx r10, r4, r3
/* 800723B0 0006F2F0  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 800723B4 0006F2F4  7D 43 01 2E */	stwx r10, r3, r0
/* 800723B8 0006F2F8  42 00 FF 98 */	bdnz lbl_80072350
lbl_800723BC:
/* 800723BC 0006F2FC  7C 1E 60 50 */	subf r0, r30, r12
/* 800723C0 0006F300  57 C5 10 3A */	slwi r5, r30, 2
/* 800723C4 0006F304  38 80 00 00 */	li r4, 0
/* 800723C8 0006F308  7C 09 03 A6 */	mtctr r0
/* 800723CC 0006F30C  7C 1E 60 40 */	cmplw r30, r12
/* 800723D0 0006F310  40 80 00 14 */	bge lbl_800723E4
lbl_800723D4:
/* 800723D4 0006F314  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 800723D8 0006F318  7C 83 29 2E */	stwx r4, r3, r5
/* 800723DC 0006F31C  38 A5 00 04 */	addi r5, r5, 4
/* 800723E0 0006F320  42 00 FF F4 */	bdnz lbl_800723D4
lbl_800723E4:
/* 800723E4 0006F324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800723E8 0006F328  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800723EC 0006F32C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800723F0 0006F330  7C 08 03 A6 */	mtlr r0
/* 800723F4 0006F334  38 21 00 10 */	addi r1, r1, 0x10
/* 800723F8 0006F338  4E 80 00 20 */	blr 

.global calcSize__15J3DShapeFactoryFiUl
calcSize__15J3DShapeFactoryFiUl:
/* 800723FC 0006F33C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80072400 0006F340  7C 08 02 A6 */	mflr r0
/* 80072404 0006F344  90 01 00 24 */	stw r0, 0x24(r1)
/* 80072408 0006F348  54 80 08 3C */	slwi r0, r4, 1
/* 8007240C 0006F34C  BF 41 00 08 */	stmw r26, 8(r1)
/* 80072410 0006F350  7C 7A 1B 78 */	mr r26, r3
/* 80072414 0006F354  7C 9B 23 78 */	mr r27, r4
/* 80072418 0006F358  7C BC 2B 78 */	mr r28, r5
/* 8007241C 0006F35C  3B A0 00 00 */	li r29, 0
/* 80072420 0006F360  80 63 00 04 */	lwz r3, 4(r3)
/* 80072424 0006F364  80 9A 00 00 */	lwz r4, 0(r26)
/* 80072428 0006F368  7C 03 02 2E */	lhzx r0, r3, r0
/* 8007242C 0006F36C  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80072430 0006F370  7C 64 02 14 */	add r3, r4, r0
/* 80072434 0006F374  A3 C3 00 02 */	lhz r30, 2(r3)
/* 80072438 0006F378  57 C3 10 3A */	slwi r3, r30, 2
/* 8007243C 0006F37C  3B E3 00 68 */	addi r31, r3, 0x68
/* 80072440 0006F380  7F FF 1A 14 */	add r31, r31, r3
/* 80072444 0006F384  48 00 00 24 */	b lbl_80072468
lbl_80072448:
/* 80072448 0006F388  7F 43 D3 78 */	mr r3, r26
/* 8007244C 0006F38C  7F 84 E3 78 */	mr r4, r28
/* 80072450 0006F390  7F 65 DB 78 */	mr r5, r27
/* 80072454 0006F394  7F A6 EB 78 */	mr r6, r29
/* 80072458 0006F398  48 00 00 41 */	bl calcSizeShapeMtx__15J3DShapeFactoryCFUlii
/* 8007245C 0006F39C  7F FF 1A 14 */	add r31, r31, r3
/* 80072460 0006F3A0  3B BD 00 01 */	addi r29, r29, 1
/* 80072464 0006F3A4  3B FF 00 0C */	addi r31, r31, 0xc
lbl_80072468:
/* 80072468 0006F3A8  7C 1D F0 40 */	cmplw r29, r30
/* 8007246C 0006F3AC  41 80 FF DC */	blt lbl_80072448
/* 80072470 0006F3B0  7F E3 FB 78 */	mr r3, r31
/* 80072474 0006F3B4  BB 41 00 08 */	lmw r26, 8(r1)
/* 80072478 0006F3B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007247C 0006F3BC  7C 08 03 A6 */	mtlr r0
/* 80072480 0006F3C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80072484 0006F3C4  4E 80 00 20 */	blr 

.global calcSizeVcdVatCmdBuffer__15J3DShapeFactoryFUl
calcSizeVcdVatCmdBuffer__15J3DShapeFactoryFUl:
/* 80072488 0006F3C8  1C 64 00 C0 */	mulli r3, r4, 0xc0
/* 8007248C 0006F3CC  38 03 00 1F */	addi r0, r3, 0x1f
/* 80072490 0006F3D0  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80072494 0006F3D4  4E 80 00 20 */	blr 

.global calcSizeShapeMtx__15J3DShapeFactoryCFUlii
calcSizeShapeMtx__15J3DShapeFactoryCFUlii:
/* 80072498 0006F3D8  80 C3 00 04 */	lwz r6, 4(r3)
/* 8007249C 0006F3DC  54 A5 08 3C */	slwi r5, r5, 1
/* 800724A0 0006F3E0  54 80 06 F6 */	rlwinm r0, r4, 0, 0x1b, 0x1b
/* 800724A4 0006F3E4  80 E3 00 00 */	lwz r7, 0(r3)
/* 800724A8 0006F3E8  7C 86 2A 2E */	lhzx r4, r6, r5
/* 800724AC 0006F3EC  2C 00 00 10 */	cmpwi r0, 0x10
/* 800724B0 0006F3F0  38 60 00 00 */	li r3, 0
/* 800724B4 0006F3F4  1C 84 00 28 */	mulli r4, r4, 0x28
/* 800724B8 0006F3F8  41 82 00 14 */	beq lbl_800724CC
/* 800724BC 0006F3FC  40 80 00 5C */	bge lbl_80072518
/* 800724C0 0006F400  2C 00 00 00 */	cmpwi r0, 0
/* 800724C4 0006F404  41 82 00 54 */	beq lbl_80072518
/* 800724C8 0006F408  48 00 00 50 */	b lbl_80072518
lbl_800724CC:
/* 800724CC 0006F40C  7C 07 20 AE */	lbzx r0, r7, r4
/* 800724D0 0006F410  2C 00 00 02 */	cmpwi r0, 2
/* 800724D4 0006F414  41 82 00 34 */	beq lbl_80072508
/* 800724D8 0006F418  40 80 00 14 */	bge lbl_800724EC
/* 800724DC 0006F41C  2C 00 00 00 */	cmpwi r0, 0
/* 800724E0 0006F420  41 82 00 18 */	beq lbl_800724F8
/* 800724E4 0006F424  40 80 00 1C */	bge lbl_80072500
/* 800724E8 0006F428  4E 80 00 20 */	blr 
lbl_800724EC:
/* 800724EC 0006F42C  2C 00 00 04 */	cmpwi r0, 4
/* 800724F0 0006F430  4C 80 00 20 */	bgelr 
/* 800724F4 0006F434  48 00 00 1C */	b lbl_80072510
lbl_800724F8:
/* 800724F8 0006F438  38 60 00 08 */	li r3, 8
/* 800724FC 0006F43C  4E 80 00 20 */	blr 
lbl_80072500:
/* 80072500 0006F440  38 60 00 08 */	li r3, 8
/* 80072504 0006F444  4E 80 00 20 */	blr 
lbl_80072508:
/* 80072508 0006F448  38 60 00 08 */	li r3, 8
/* 8007250C 0006F44C  4E 80 00 20 */	blr 
lbl_80072510:
/* 80072510 0006F450  38 60 00 10 */	li r3, 0x10
/* 80072514 0006F454  4E 80 00 20 */	blr 
lbl_80072518:
/* 80072518 0006F458  7C 07 20 AE */	lbzx r0, r7, r4
/* 8007251C 0006F45C  2C 00 00 03 */	cmpwi r0, 3
/* 80072520 0006F460  41 82 00 18 */	beq lbl_80072538
/* 80072524 0006F464  4C 80 00 20 */	bgelr 
/* 80072528 0006F468  2C 00 00 00 */	cmpwi r0, 0
/* 8007252C 0006F46C  4D 80 00 20 */	bltlr 
/* 80072530 0006F470  38 60 00 08 */	li r3, 8
/* 80072534 0006F474  4E 80 00 20 */	blr 
lbl_80072538:
/* 80072538 0006F478  38 60 00 10 */	li r3, 0x10
/* 8007253C 0006F47C  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$020J3DShapeDrawInitData$$1__FPCvUl
JSUConvertOffsetToPtr$$020J3DShapeDrawInitData$$1__FPCvUl:
/* 80072540 0006F480  28 04 00 00 */	cmplwi r4, 0
/* 80072544 0006F484  40 82 00 0C */	bne lbl_80072550
/* 80072548 0006F488  38 60 00 00 */	li r3, 0
/* 8007254C 0006F48C  4E 80 00 20 */	blr 
lbl_80072550:
/* 80072550 0006F490  7C 63 22 14 */	add r3, r3, r4
/* 80072554 0006F494  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$019J3DShapeMtxInitData$$1__FPCvUl
JSUConvertOffsetToPtr$$019J3DShapeMtxInitData$$1__FPCvUl:
/* 80072558 0006F498  28 04 00 00 */	cmplwi r4, 0
/* 8007255C 0006F49C  40 82 00 0C */	bne lbl_80072568
/* 80072560 0006F4A0  38 60 00 00 */	li r3, 0
/* 80072564 0006F4A4  4E 80 00 20 */	blr 
lbl_80072568:
/* 80072568 0006F4A8  7C 63 22 14 */	add r3, r3, r4
/* 8007256C 0006F4AC  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Uc$$1__FPCvUl
JSUConvertOffsetToPtr$$0Uc$$1__FPCvUl:
/* 80072570 0006F4B0  28 04 00 00 */	cmplwi r4, 0
/* 80072574 0006F4B4  40 82 00 0C */	bne lbl_80072580
/* 80072578 0006F4B8  38 60 00 00 */	li r3, 0
/* 8007257C 0006F4BC  4E 80 00 20 */	blr 
lbl_80072580:
/* 80072580 0006F4C0  7C 63 22 14 */	add r3, r3, r4
/* 80072584 0006F4C4  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$014_GXVtxDescList$$1__FPCvUl
JSUConvertOffsetToPtr$$014_GXVtxDescList$$1__FPCvUl:
/* 80072588 0006F4C8  28 04 00 00 */	cmplwi r4, 0
/* 8007258C 0006F4CC  40 82 00 0C */	bne lbl_80072598
/* 80072590 0006F4D0  38 60 00 00 */	li r3, 0
/* 80072594 0006F4D4  4E 80 00 20 */	blr 
lbl_80072598:
/* 80072598 0006F4D8  7C 63 22 14 */	add r3, r3, r4
/* 8007259C 0006F4DC  4E 80 00 20 */	blr 
