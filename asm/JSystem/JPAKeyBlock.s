.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__11JPAKeyBlockFPCUc
__ct__11JPAKeyBlockFPCUc:
/* 80093A40 00090980  90 83 00 00 */	stw r4, 0(r3)
/* 80093A44 00090984  38 04 00 0C */	addi r0, r4, 0xc
/* 80093A48 00090988  90 03 00 04 */	stw r0, 4(r3)
/* 80093A4C 0009098C  4E 80 00 20 */	blr 

.global calc__11JPAKeyBlockFf
calc__11JPAKeyBlockFf:
/* 80093A50 00090990  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80093A54 00090994  7C 08 02 A6 */	mflr r0
/* 80093A58 00090998  7C 66 1B 78 */	mr r6, r3
/* 80093A5C 0009099C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80093A60 000909A0  80 A3 00 00 */	lwz r5, 0(r3)
/* 80093A64 000909A4  88 05 00 0B */	lbz r0, 0xb(r5)
/* 80093A68 000909A8  2C 00 00 00 */	cmpwi r0, 0
/* 80093A6C 000909AC  41 82 00 5C */	beq lbl_80093AC8
/* 80093A70 000909B0  88 65 00 09 */	lbz r3, 9(r5)
/* 80093A74 000909B4  FC 00 08 1E */	fctiwz f0, f1
/* 80093A78 000909B8  3C 00 43 30 */	lis r0, 0x4330
/* 80093A7C 000909BC  80 86 00 04 */	lwz r4, 4(r6)
/* 80093A80 000909C0  38 63 FF FF */	addi r3, r3, -1
/* 80093A84 000909C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80093A88 000909C8  54 60 20 36 */	slwi r0, r3, 4
/* 80093A8C 000909CC  7C 44 04 2E */	lfsx f2, r4, r0
/* 80093A90 000909D0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80093A94 000909D4  FC 00 10 1E */	fctiwz f0, f2
/* 80093A98 000909D8  C8 42 88 B0 */	lfd f2, lbl_80516C10@sda21(r2)
/* 80093A9C 000909DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80093AA0 000909E0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80093AA4 000909E4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80093AA8 000909E8  38 63 00 01 */	addi r3, r3, 1
/* 80093AAC 000909EC  7C 00 1B D6 */	divw r0, r0, r3
/* 80093AB0 000909F0  7C 00 19 D6 */	mullw r0, r0, r3
/* 80093AB4 000909F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80093AB8 000909F8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80093ABC 000909FC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80093AC0 00090A00  EC 00 10 28 */	fsubs f0, f0, f2
/* 80093AC4 00090A04  EC 21 00 28 */	fsubs f1, f1, f0
lbl_80093AC8:
/* 80093AC8 00090A08  88 65 00 09 */	lbz r3, 9(r5)
/* 80093ACC 00090A0C  80 86 00 04 */	lwz r4, 4(r6)
/* 80093AD0 00090A10  48 00 04 91 */	bl JPACalcKeyAnmValue__FfUsPCf
/* 80093AD4 00090A14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80093AD8 00090A18  7C 08 03 A6 */	mtlr r0
/* 80093ADC 00090A1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80093AE0 00090A20  4E 80 00 20 */	blr 
