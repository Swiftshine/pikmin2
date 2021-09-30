.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ieee754_log10
__ieee754_log10:
/* 800CD054 000C9F94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800CD058 000C9F98  7C 08 02 A6 */	mflr r0
/* 800CD05C 000C9F9C  38 80 00 00 */	li r4, 0
/* 800CD060 000C9FA0  D8 21 00 08 */	stfd f1, 8(r1)
/* 800CD064 000C9FA4  80 A1 00 08 */	lwz r5, 8(r1)
/* 800CD068 000C9FA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CD06C 000C9FAC  3C 00 00 10 */	lis r0, 0x10
/* 800CD070 000C9FB0  7C 05 00 00 */	cmpw r5, r0
/* 800CD074 000C9FB4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800CD078 000C9FB8  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 800CD07C 000C9FBC  40 80 00 5C */	bge lbl_800CD0D8
/* 800CD080 000C9FC0  54 A0 00 7E */	clrlwi r0, r5, 1
/* 800CD084 000C9FC4  7C 00 1B 79 */	or. r0, r0, r3
/* 800CD088 000C9FC8  40 82 00 1C */	bne lbl_800CD0A4
/* 800CD08C 000C9FCC  C8 22 8F 68 */	lfd f1, lbl_805172C8@sda21(r2)
/* 800CD090 000C9FD0  38 00 00 21 */	li r0, 0x21
/* 800CD094 000C9FD4  C8 0D 8C D8 */	lfd f0, zero_1@sda21(r13)
/* 800CD098 000C9FD8  90 0D 8C C0 */	stw r0, errno@sda21(r13)
/* 800CD09C 000C9FDC  FC 21 00 24 */	fdiv f1, f1, f0
/* 800CD0A0 000C9FE0  48 00 00 B0 */	b lbl_800CD150
lbl_800CD0A4:
/* 800CD0A4 000C9FE4  2C 05 00 00 */	cmpwi r5, 0
/* 800CD0A8 000C9FE8  40 80 00 1C */	bge lbl_800CD0C4
/* 800CD0AC 000C9FEC  FC 21 08 28 */	fsub f1, f1, f1
/* 800CD0B0 000C9FF0  C8 0D 8C D8 */	lfd f0, zero_1@sda21(r13)
/* 800CD0B4 000C9FF4  38 00 00 21 */	li r0, 0x21
/* 800CD0B8 000C9FF8  90 0D 8C C0 */	stw r0, errno@sda21(r13)
/* 800CD0BC 000C9FFC  FC 21 00 24 */	fdiv f1, f1, f0
/* 800CD0C0 000CA000  48 00 00 90 */	b lbl_800CD150
lbl_800CD0C4:
/* 800CD0C4 000CA004  C8 02 8F 70 */	lfd f0, lbl_805172D0@sda21(r2)
/* 800CD0C8 000CA008  38 80 FF CA */	li r4, -54
/* 800CD0CC 000CA00C  FC 01 00 32 */	fmul f0, f1, f0
/* 800CD0D0 000CA010  D8 01 00 08 */	stfd f0, 8(r1)
/* 800CD0D4 000CA014  80 A1 00 08 */	lwz r5, 8(r1)
lbl_800CD0D8:
/* 800CD0D8 000CA018  3C 00 7F F0 */	lis r0, 0x7ff0
/* 800CD0DC 000CA01C  7C 05 00 00 */	cmpw r5, r0
/* 800CD0E0 000CA020  41 80 00 10 */	blt lbl_800CD0F0
/* 800CD0E4 000CA024  C8 01 00 08 */	lfd f0, 8(r1)
/* 800CD0E8 000CA028  FC 20 00 2A */	fadd f1, f0, f0
/* 800CD0EC 000CA02C  48 00 00 64 */	b lbl_800CD150
lbl_800CD0F0:
/* 800CD0F0 000CA030  7C A3 A6 70 */	srawi r3, r5, 0x14
/* 800CD0F4 000CA034  3C 00 43 30 */	lis r0, 0x4330
/* 800CD0F8 000CA038  7C 83 22 14 */	add r4, r3, r4
/* 800CD0FC 000CA03C  90 01 00 10 */	stw r0, 0x10(r1)
/* 800CD100 000CA040  38 84 FC 01 */	addi r4, r4, -1023
/* 800CD104 000CA044  C8 22 8F 90 */	lfd f1, lbl_805172F0@sda21(r2)
/* 800CD108 000CA048  54 83 0F FE */	srwi r3, r4, 0x1f
/* 800CD10C 000CA04C  7C 04 1A 14 */	add r0, r4, r3
/* 800CD110 000CA050  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CD114 000CA054  20 63 03 FF */	subfic r3, r3, 0x3ff
/* 800CD118 000CA058  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CD11C 000CA05C  54 60 A0 16 */	slwi r0, r3, 0x14
/* 800CD120 000CA060  50 A0 03 3E */	rlwimi r0, r5, 0, 0xc, 0x1f
/* 800CD124 000CA064  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800CD128 000CA068  90 01 00 08 */	stw r0, 8(r1)
/* 800CD12C 000CA06C  FF E0 08 28 */	fsub f31, f0, f1
/* 800CD130 000CA070  C8 21 00 08 */	lfd f1, 8(r1)
/* 800CD134 000CA074  4B FF FC A5 */	bl __ieee754_log
/* 800CD138 000CA078  C8 02 8F 80 */	lfd f0, lbl_805172E0@sda21(r2)
/* 800CD13C 000CA07C  C8 42 8F 78 */	lfd f2, lbl_805172D8@sda21(r2)
/* 800CD140 000CA080  FC 20 00 72 */	fmul f1, f0, f1
/* 800CD144 000CA084  C8 02 8F 88 */	lfd f0, lbl_805172E8@sda21(r2)
/* 800CD148 000CA088  FC 22 0F FA */	fmadd f1, f2, f31, f1
/* 800CD14C 000CA08C  FC 20 0F FA */	fmadd f1, f0, f31, f1
lbl_800CD150:
/* 800CD150 000CA090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CD154 000CA094  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 800CD158 000CA098  7C 08 03 A6 */	mtlr r0
/* 800CD15C 000CA09C  38 21 00 20 */	addi r1, r1, 0x20
/* 800CD160 000CA0A0  4E 80 00 20 */	blr 
