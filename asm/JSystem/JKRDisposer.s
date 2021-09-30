.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__11JKRDisposerFv
__ct__11JKRDisposerFv:
/* 8001CFCC 00019F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001CFD0 00019F10  7C 08 02 A6 */	mflr r0
/* 8001CFD4 00019F14  3C 80 80 4A */	lis r4, __vt__11JKRDisposer@ha
/* 8001CFD8 00019F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001CFDC 00019F1C  38 04 FD 58 */	addi r0, r4, __vt__11JKRDisposer@l
/* 8001CFE0 00019F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001CFE4 00019F24  7C 7F 1B 78 */	mr r31, r3
/* 8001CFE8 00019F28  7F E4 FB 78 */	mr r4, r31
/* 8001CFEC 00019F2C  90 03 00 00 */	stw r0, 0(r3)
/* 8001CFF0 00019F30  38 64 00 08 */	addi r3, r4, 8
/* 8001CFF4 00019F34  48 00 97 C5 */	bl __ct__10JSUPtrLinkFPv
/* 8001CFF8 00019F38  7F E3 FB 78 */	mr r3, r31
/* 8001CFFC 00019F3C  48 00 68 F9 */	bl findFromRoot__7JKRHeapFPv
/* 8001D000 00019F40  90 7F 00 04 */	stw r3, 4(r31)
/* 8001D004 00019F44  80 7F 00 04 */	lwz r3, 4(r31)
/* 8001D008 00019F48  28 03 00 00 */	cmplwi r3, 0
/* 8001D00C 00019F4C  41 82 00 10 */	beq lbl_8001D01C
/* 8001D010 00019F50  38 63 00 5C */	addi r3, r3, 0x5c
/* 8001D014 00019F54  38 9F 00 08 */	addi r4, r31, 8
/* 8001D018 00019F58  48 00 98 CD */	bl append__10JSUPtrListFP10JSUPtrLink
lbl_8001D01C:
/* 8001D01C 00019F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D020 00019F60  7F E3 FB 78 */	mr r3, r31
/* 8001D024 00019F64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001D028 00019F68  7C 08 03 A6 */	mtlr r0
/* 8001D02C 00019F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D030 00019F70  4E 80 00 20 */	blr 

.global __dt__11JKRDisposerFv
__dt__11JKRDisposerFv:
/* 8001D034 00019F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D038 00019F78  7C 08 02 A6 */	mflr r0
/* 8001D03C 00019F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D040 00019F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001D044 00019F84  7C 9F 23 78 */	mr r31, r4
/* 8001D048 00019F88  93 C1 00 08 */	stw r30, 8(r1)
/* 8001D04C 00019F8C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001D050 00019F90  41 82 00 4C */	beq lbl_8001D09C
/* 8001D054 00019F94  3C 60 80 4A */	lis r3, __vt__11JKRDisposer@ha
/* 8001D058 00019F98  38 03 FD 58 */	addi r0, r3, __vt__11JKRDisposer@l
/* 8001D05C 00019F9C  90 1E 00 00 */	stw r0, 0(r30)
/* 8001D060 00019FA0  80 7E 00 04 */	lwz r3, 4(r30)
/* 8001D064 00019FA4  28 03 00 00 */	cmplwi r3, 0
/* 8001D068 00019FA8  41 82 00 10 */	beq lbl_8001D078
/* 8001D06C 00019FAC  38 63 00 5C */	addi r3, r3, 0x5c
/* 8001D070 00019FB0  38 9E 00 08 */	addi r4, r30, 8
/* 8001D074 00019FB4  48 00 9B B1 */	bl remove__10JSUPtrListFP10JSUPtrLink
lbl_8001D078:
/* 8001D078 00019FB8  34 1E 00 08 */	addic. r0, r30, 8
/* 8001D07C 00019FBC  41 82 00 10 */	beq lbl_8001D08C
/* 8001D080 00019FC0  38 7E 00 08 */	addi r3, r30, 8
/* 8001D084 00019FC4  38 80 00 00 */	li r4, 0
/* 8001D088 00019FC8  48 00 97 49 */	bl __dt__10JSUPtrLinkFv
lbl_8001D08C:
/* 8001D08C 00019FCC  7F E0 07 35 */	extsh. r0, r31
/* 8001D090 00019FD0  40 81 00 0C */	ble lbl_8001D09C
/* 8001D094 00019FD4  7F C3 F3 78 */	mr r3, r30
/* 8001D098 00019FD8  48 00 70 1D */	bl __dl__FPv
lbl_8001D09C:
/* 8001D09C 00019FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D0A0 00019FE0  7F C3 F3 78 */	mr r3, r30
/* 8001D0A4 00019FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001D0A8 00019FE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001D0AC 00019FEC  7C 08 03 A6 */	mtlr r0
/* 8001D0B0 00019FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D0B4 00019FF4  4E 80 00 20 */	blr 
