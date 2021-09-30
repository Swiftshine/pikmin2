.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global GXCallDisplayList
GXCallDisplayList:
/* 800E93D8 000E6318  7C 08 02 A6 */	mflr r0
/* 800E93DC 000E631C  90 01 00 04 */	stw r0, 4(r1)
/* 800E93E0 000E6320  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800E93E4 000E6324  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800E93E8 000E6328  3B E4 00 00 */	addi r31, r4, 0
/* 800E93EC 000E632C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800E93F0 000E6330  3B C3 00 00 */	addi r30, r3, 0
/* 800E93F4 000E6334  80 A2 92 90 */	lwz r5, __GXData@sda21(r2)
/* 800E93F8 000E6338  80 05 05 AC */	lwz r0, 0x5ac(r5)
/* 800E93FC 000E633C  28 00 00 00 */	cmplwi r0, 0
/* 800E9400 000E6340  41 82 00 08 */	beq lbl_800E9408
/* 800E9404 000E6344  4B FF C5 05 */	bl __GXSetDirtyState
lbl_800E9408:
/* 800E9408 000E6348  80 62 92 90 */	lwz r3, __GXData@sda21(r2)
/* 800E940C 000E634C  80 03 00 00 */	lwz r0, 0(r3)
/* 800E9410 000E6350  28 00 00 00 */	cmplwi r0, 0
/* 800E9414 000E6354  40 82 00 08 */	bne lbl_800E941C
/* 800E9418 000E6358  4B FF C6 41 */	bl __GXSendFlushPrim
lbl_800E941C:
/* 800E941C 000E635C  38 00 00 40 */	li r0, 0x40
/* 800E9420 000E6360  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800E9424 000E6364  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800E9428 000E6368  93 C3 80 00 */	stw r30, -0x8000(r3)
/* 800E942C 000E636C  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800E9430 000E6370  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800E9434 000E6374  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800E9438 000E6378  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800E943C 000E637C  38 21 00 18 */	addi r1, r1, 0x18
/* 800E9440 000E6380  7C 08 03 A6 */	mtlr r0
/* 800E9444 000E6384  4E 80 00 20 */	blr 
