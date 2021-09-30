.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ieee754_pow
__ieee754_pow:
/* 800CD164 000CA0A4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 800CD168 000CA0A8  7C 08 02 A6 */	mflr r0
/* 800CD16C 000CA0AC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 800CD170 000CA0B0  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 800CD174 000CA0B4  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 800CD178 000CA0B8  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 800CD17C 000CA0BC  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 800CD180 000CA0C0  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 800CD184 000CA0C4  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 800CD188 000CA0C8  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 800CD18C 000CA0CC  F3 81 00 78 */	psq_st f28, 120(r1), 0, qr0
/* 800CD190 000CA0D0  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 800CD194 000CA0D4  F3 61 00 68 */	psq_st f27, 104(r1), 0, qr0
/* 800CD198 000CA0D8  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 800CD19C 000CA0DC  3C 60 80 48 */	lis r3, bp@ha
/* 800CD1A0 000CA0E0  38 63 A1 78 */	addi r3, r3, bp@l
/* 800CD1A4 000CA0E4  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 800CD1A8 000CA0E8  D8 21 00 08 */	stfd f1, 8(r1)
/* 800CD1AC 000CA0EC  81 61 00 14 */	lwz r11, 0x14(r1)
/* 800CD1B0 000CA0F0  54 A7 00 7E */	clrlwi r7, r5, 1
/* 800CD1B4 000CA0F4  80 01 00 08 */	lwz r0, 8(r1)
/* 800CD1B8 000CA0F8  7C E4 5B 79 */	or. r4, r7, r11
/* 800CD1BC 000CA0FC  81 41 00 0C */	lwz r10, 0xc(r1)
/* 800CD1C0 000CA100  54 06 00 7E */	clrlwi r6, r0, 1
/* 800CD1C4 000CA104  40 82 00 0C */	bne lbl_800CD1D0
/* 800CD1C8 000CA108  C8 22 8F 98 */	lfd f1, lbl_805172F8@sda21(r2)
/* 800CD1CC 000CA10C  48 00 07 90 */	b lbl_800CD95C
lbl_800CD1D0:
/* 800CD1D0 000CA110  3C 80 7F F0 */	lis r4, 0x7ff0
/* 800CD1D4 000CA114  7C 06 20 00 */	cmpw r6, r4
/* 800CD1D8 000CA118  41 81 00 38 */	bgt lbl_800CD210
/* 800CD1DC 000CA11C  3C 86 80 10 */	addis r4, r6, 0x8010
/* 800CD1E0 000CA120  28 04 00 00 */	cmplwi r4, 0
/* 800CD1E4 000CA124  40 82 00 0C */	bne lbl_800CD1F0
/* 800CD1E8 000CA128  28 0A 00 00 */	cmplwi r10, 0
/* 800CD1EC 000CA12C  40 82 00 24 */	bne lbl_800CD210
lbl_800CD1F0:
/* 800CD1F0 000CA130  3C 80 7F F0 */	lis r4, 0x7ff0
/* 800CD1F4 000CA134  7C 07 20 00 */	cmpw r7, r4
/* 800CD1F8 000CA138  41 81 00 18 */	bgt lbl_800CD210
/* 800CD1FC 000CA13C  3C 87 80 10 */	addis r4, r7, 0x8010
/* 800CD200 000CA140  28 04 00 00 */	cmplwi r4, 0
/* 800CD204 000CA144  40 82 00 1C */	bne lbl_800CD220
/* 800CD208 000CA148  28 0B 00 00 */	cmplwi r11, 0
/* 800CD20C 000CA14C  41 82 00 14 */	beq lbl_800CD220
lbl_800CD210:
/* 800CD210 000CA150  C8 21 00 08 */	lfd f1, 8(r1)
/* 800CD214 000CA154  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800CD218 000CA158  FC 21 00 2A */	fadd f1, f1, f0
/* 800CD21C 000CA15C  48 00 07 40 */	b lbl_800CD95C
lbl_800CD220:
/* 800CD220 000CA160  2C 00 00 00 */	cmpwi r0, 0
/* 800CD224 000CA164  38 80 00 00 */	li r4, 0
/* 800CD228 000CA168  40 80 00 78 */	bge lbl_800CD2A0
/* 800CD22C 000CA16C  3D 00 43 40 */	lis r8, 0x4340
/* 800CD230 000CA170  7C 07 40 00 */	cmpw r7, r8
/* 800CD234 000CA174  41 80 00 0C */	blt lbl_800CD240
/* 800CD238 000CA178  38 80 00 02 */	li r4, 2
/* 800CD23C 000CA17C  48 00 00 64 */	b lbl_800CD2A0
lbl_800CD240:
/* 800CD240 000CA180  3D 00 3F F0 */	lis r8, 0x3ff0
/* 800CD244 000CA184  7C 07 40 00 */	cmpw r7, r8
/* 800CD248 000CA188  41 80 00 58 */	blt lbl_800CD2A0
/* 800CD24C 000CA18C  7C E8 A6 70 */	srawi r8, r7, 0x14
/* 800CD250 000CA190  39 08 FC 01 */	addi r8, r8, -1023
/* 800CD254 000CA194  2C 08 00 14 */	cmpwi r8, 0x14
/* 800CD258 000CA198  40 81 00 24 */	ble lbl_800CD27C
/* 800CD25C 000CA19C  21 08 00 34 */	subfic r8, r8, 0x34
/* 800CD260 000CA1A0  7D 69 44 30 */	srw r9, r11, r8
/* 800CD264 000CA1A4  7D 28 40 30 */	slw r8, r9, r8
/* 800CD268 000CA1A8  7C 0B 40 40 */	cmplw r11, r8
/* 800CD26C 000CA1AC  40 82 00 34 */	bne lbl_800CD2A0
/* 800CD270 000CA1B0  55 24 07 FE */	clrlwi r4, r9, 0x1f
/* 800CD274 000CA1B4  20 84 00 02 */	subfic r4, r4, 2
/* 800CD278 000CA1B8  48 00 00 28 */	b lbl_800CD2A0
lbl_800CD27C:
/* 800CD27C 000CA1BC  28 0B 00 00 */	cmplwi r11, 0
/* 800CD280 000CA1C0  40 82 00 20 */	bne lbl_800CD2A0
/* 800CD284 000CA1C4  21 08 00 14 */	subfic r8, r8, 0x14
/* 800CD288 000CA1C8  7C E9 46 30 */	sraw r9, r7, r8
/* 800CD28C 000CA1CC  7D 28 40 30 */	slw r8, r9, r8
/* 800CD290 000CA1D0  7C 07 40 00 */	cmpw r7, r8
/* 800CD294 000CA1D4  40 82 00 0C */	bne lbl_800CD2A0
/* 800CD298 000CA1D8  55 24 07 FE */	clrlwi r4, r9, 0x1f
/* 800CD29C 000CA1DC  20 84 00 02 */	subfic r4, r4, 2
lbl_800CD2A0:
/* 800CD2A0 000CA1E0  28 0B 00 00 */	cmplwi r11, 0
/* 800CD2A4 000CA1E4  40 82 00 CC */	bne lbl_800CD370
/* 800CD2A8 000CA1E8  3D 07 80 10 */	addis r8, r7, 0x8010
/* 800CD2AC 000CA1EC  28 08 00 00 */	cmplwi r8, 0
/* 800CD2B0 000CA1F0  40 82 00 5C */	bne lbl_800CD30C
/* 800CD2B4 000CA1F4  3C 06 C0 10 */	addis r0, r6, 0xc010
/* 800CD2B8 000CA1F8  7C 00 53 79 */	or. r0, r0, r10
/* 800CD2BC 000CA1FC  40 82 00 10 */	bne lbl_800CD2CC
/* 800CD2C0 000CA200  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800CD2C4 000CA204  FC 20 00 28 */	fsub f1, f0, f0
/* 800CD2C8 000CA208  48 00 06 94 */	b lbl_800CD95C
lbl_800CD2CC:
/* 800CD2CC 000CA20C  3C 00 3F F0 */	lis r0, 0x3ff0
/* 800CD2D0 000CA210  7C 06 00 00 */	cmpw r6, r0
/* 800CD2D4 000CA214  41 80 00 1C */	blt lbl_800CD2F0
/* 800CD2D8 000CA218  2C 05 00 00 */	cmpwi r5, 0
/* 800CD2DC 000CA21C  41 80 00 0C */	blt lbl_800CD2E8
/* 800CD2E0 000CA220  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800CD2E4 000CA224  48 00 06 78 */	b lbl_800CD95C
lbl_800CD2E8:
/* 800CD2E8 000CA228  C8 22 8F A0 */	lfd f1, lbl_80517300@sda21(r2)
/* 800CD2EC 000CA22C  48 00 06 70 */	b lbl_800CD95C
lbl_800CD2F0:
/* 800CD2F0 000CA230  2C 05 00 00 */	cmpwi r5, 0
/* 800CD2F4 000CA234  40 80 00 10 */	bge lbl_800CD304
/* 800CD2F8 000CA238  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800CD2FC 000CA23C  FC 20 00 50 */	fneg f1, f0
/* 800CD300 000CA240  48 00 06 5C */	b lbl_800CD95C
lbl_800CD304:
/* 800CD304 000CA244  C8 22 8F A0 */	lfd f1, lbl_80517300@sda21(r2)
/* 800CD308 000CA248  48 00 06 54 */	b lbl_800CD95C
lbl_800CD30C:
/* 800CD30C 000CA24C  3D 07 C0 10 */	addis r8, r7, 0xc010
/* 800CD310 000CA250  28 08 00 00 */	cmplwi r8, 0
/* 800CD314 000CA254  40 82 00 24 */	bne lbl_800CD338
/* 800CD318 000CA258  2C 05 00 00 */	cmpwi r5, 0
/* 800CD31C 000CA25C  40 80 00 14 */	bge lbl_800CD330
/* 800CD320 000CA260  C8 22 8F 98 */	lfd f1, lbl_805172F8@sda21(r2)
/* 800CD324 000CA264  C8 01 00 08 */	lfd f0, 8(r1)
/* 800CD328 000CA268  FC 21 00 24 */	fdiv f1, f1, f0
/* 800CD32C 000CA26C  48 00 06 30 */	b lbl_800CD95C
lbl_800CD330:
/* 800CD330 000CA270  C8 21 00 08 */	lfd f1, 8(r1)
/* 800CD334 000CA274  48 00 06 28 */	b lbl_800CD95C
lbl_800CD338:
/* 800CD338 000CA278  3D 05 C0 00 */	addis r8, r5, 0xc000
/* 800CD33C 000CA27C  28 08 00 00 */	cmplwi r8, 0
/* 800CD340 000CA280  40 82 00 10 */	bne lbl_800CD350
/* 800CD344 000CA284  C8 01 00 08 */	lfd f0, 8(r1)
/* 800CD348 000CA288  FC 20 00 32 */	fmul f1, f0, f0
/* 800CD34C 000CA28C  48 00 06 10 */	b lbl_800CD95C
lbl_800CD350:
/* 800CD350 000CA290  3D 05 C0 20 */	addis r8, r5, 0xc020
/* 800CD354 000CA294  28 08 00 00 */	cmplwi r8, 0
/* 800CD358 000CA298  40 82 00 18 */	bne lbl_800CD370
/* 800CD35C 000CA29C  2C 00 00 00 */	cmpwi r0, 0
/* 800CD360 000CA2A0  41 80 00 10 */	blt lbl_800CD370
/* 800CD364 000CA2A4  C8 21 00 08 */	lfd f1, 8(r1)
/* 800CD368 000CA2A8  48 00 29 55 */	bl sqrt
/* 800CD36C 000CA2AC  48 00 05 F0 */	b lbl_800CD95C
lbl_800CD370:
/* 800CD370 000CA2B0  C8 01 00 08 */	lfd f0, 8(r1)
/* 800CD374 000CA2B4  28 0A 00 00 */	cmplwi r10, 0
/* 800CD378 000CA2B8  FC 20 02 10 */	fabs f1, f0
/* 800CD37C 000CA2BC  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 800CD380 000CA2C0  40 82 00 80 */	bne lbl_800CD400
/* 800CD384 000CA2C4  3D 06 80 10 */	addis r8, r6, 0x8010
/* 800CD388 000CA2C8  28 08 00 00 */	cmplwi r8, 0
/* 800CD38C 000CA2CC  41 82 00 18 */	beq lbl_800CD3A4
/* 800CD390 000CA2D0  2C 06 00 00 */	cmpwi r6, 0
/* 800CD394 000CA2D4  41 82 00 10 */	beq lbl_800CD3A4
/* 800CD398 000CA2D8  3D 06 C0 10 */	addis r8, r6, 0xc010
/* 800CD39C 000CA2DC  28 08 00 00 */	cmplwi r8, 0
/* 800CD3A0 000CA2E0  40 82 00 60 */	bne lbl_800CD400
lbl_800CD3A4:
/* 800CD3A4 000CA2E4  2C 05 00 00 */	cmpwi r5, 0
/* 800CD3A8 000CA2E8  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 800CD3AC 000CA2EC  40 80 00 10 */	bge lbl_800CD3BC
/* 800CD3B0 000CA2F0  C8 02 8F 98 */	lfd f0, lbl_805172F8@sda21(r2)
/* 800CD3B4 000CA2F4  FC 00 08 24 */	fdiv f0, f0, f1
/* 800CD3B8 000CA2F8  D8 01 00 50 */	stfd f0, 0x50(r1)
lbl_800CD3BC:
/* 800CD3BC 000CA2FC  2C 00 00 00 */	cmpwi r0, 0
/* 800CD3C0 000CA300  40 80 00 38 */	bge lbl_800CD3F8
/* 800CD3C4 000CA304  3C 06 C0 10 */	addis r0, r6, 0xc010
/* 800CD3C8 000CA308  7C 00 23 79 */	or. r0, r0, r4
/* 800CD3CC 000CA30C  40 82 00 18 */	bne lbl_800CD3E4
/* 800CD3D0 000CA310  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 800CD3D4 000CA314  FC 00 00 28 */	fsub f0, f0, f0
/* 800CD3D8 000CA318  FC 00 00 24 */	fdiv f0, f0, f0
/* 800CD3DC 000CA31C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 800CD3E0 000CA320  48 00 00 18 */	b lbl_800CD3F8
lbl_800CD3E4:
/* 800CD3E4 000CA324  2C 04 00 01 */	cmpwi r4, 1
/* 800CD3E8 000CA328  40 82 00 10 */	bne lbl_800CD3F8
/* 800CD3EC 000CA32C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 800CD3F0 000CA330  FC 00 00 50 */	fneg f0, f0
/* 800CD3F4 000CA334  D8 01 00 50 */	stfd f0, 0x50(r1)
lbl_800CD3F8:
/* 800CD3F8 000CA338  C8 21 00 50 */	lfd f1, 0x50(r1)
/* 800CD3FC 000CA33C  48 00 05 60 */	b lbl_800CD95C
lbl_800CD400:
/* 800CD400 000CA340  7C 08 FE 70 */	srawi r8, r0, 0x1f
/* 800CD404 000CA344  38 08 00 01 */	addi r0, r8, 1
/* 800CD408 000CA348  7C 08 23 79 */	or. r8, r0, r4
/* 800CD40C 000CA34C  40 82 00 18 */	bne lbl_800CD424
/* 800CD410 000CA350  3C 60 80 51 */	lis r3, __float_nan@ha
/* 800CD414 000CA354  38 00 00 21 */	li r0, 0x21
/* 800CD418 000CA358  90 0D 8C C0 */	stw r0, errno@sda21(r13)
/* 800CD41C 000CA35C  C0 23 48 B0 */	lfs f1, __float_nan@l(r3)
/* 800CD420 000CA360  48 00 05 3C */	b lbl_800CD95C
lbl_800CD424:
/* 800CD424 000CA364  3D 00 41 E0 */	lis r8, 0x41e0
/* 800CD428 000CA368  7C 07 40 00 */	cmpw r7, r8
/* 800CD42C 000CA36C  40 81 01 04 */	ble lbl_800CD530
/* 800CD430 000CA370  3C 60 43 F0 */	lis r3, 0x43f0
/* 800CD434 000CA374  7C 07 18 00 */	cmpw r7, r3
/* 800CD438 000CA378  40 81 00 4C */	ble lbl_800CD484
/* 800CD43C 000CA37C  3C 60 3F F0 */	lis r3, 0x3FEFFFFF@ha
/* 800CD440 000CA380  38 E3 FF FF */	addi r7, r3, 0x3FEFFFFF@l
/* 800CD444 000CA384  7C 06 38 00 */	cmpw r6, r7
/* 800CD448 000CA388  41 81 00 1C */	bgt lbl_800CD464
/* 800CD44C 000CA38C  2C 05 00 00 */	cmpwi r5, 0
/* 800CD450 000CA390  40 80 00 0C */	bge lbl_800CD45C
/* 800CD454 000CA394  C8 22 8F A8 */	lfd f1, lbl_80517308@sda21(r2)
/* 800CD458 000CA398  48 00 05 04 */	b lbl_800CD95C
lbl_800CD45C:
/* 800CD45C 000CA39C  C8 22 8F A0 */	lfd f1, lbl_80517300@sda21(r2)
/* 800CD460 000CA3A0  48 00 04 FC */	b lbl_800CD95C
lbl_800CD464:
/* 800CD464 000CA3A4  7C 06 18 00 */	cmpw r6, r3
/* 800CD468 000CA3A8  41 80 00 1C */	blt lbl_800CD484
/* 800CD46C 000CA3AC  2C 05 00 00 */	cmpwi r5, 0
/* 800CD470 000CA3B0  40 81 00 0C */	ble lbl_800CD47C
/* 800CD474 000CA3B4  C8 22 8F A8 */	lfd f1, lbl_80517308@sda21(r2)
/* 800CD478 000CA3B8  48 00 04 E4 */	b lbl_800CD95C
lbl_800CD47C:
/* 800CD47C 000CA3BC  C8 22 8F A0 */	lfd f1, lbl_80517300@sda21(r2)
/* 800CD480 000CA3C0  48 00 04 DC */	b lbl_800CD95C
lbl_800CD484:
/* 800CD484 000CA3C4  3C 60 3F F0 */	lis r3, 0x3FEFFFFF@ha
/* 800CD488 000CA3C8  38 E3 FF FF */	addi r7, r3, 0x3FEFFFFF@l
/* 800CD48C 000CA3CC  7C 06 38 00 */	cmpw r6, r7
/* 800CD490 000CA3D0  40 80 00 1C */	bge lbl_800CD4AC
/* 800CD494 000CA3D4  2C 05 00 00 */	cmpwi r5, 0
/* 800CD498 000CA3D8  40 80 00 0C */	bge lbl_800CD4A4
/* 800CD49C 000CA3DC  C8 22 8F A8 */	lfd f1, lbl_80517308@sda21(r2)
/* 800CD4A0 000CA3E0  48 00 04 BC */	b lbl_800CD95C
lbl_800CD4A4:
/* 800CD4A4 000CA3E4  C8 22 8F A0 */	lfd f1, lbl_80517300@sda21(r2)
/* 800CD4A8 000CA3E8  48 00 04 B4 */	b lbl_800CD95C
lbl_800CD4AC:
/* 800CD4AC 000CA3EC  7C 06 18 00 */	cmpw r6, r3
/* 800CD4B0 000CA3F0  40 81 00 1C */	ble lbl_800CD4CC
/* 800CD4B4 000CA3F4  2C 05 00 00 */	cmpwi r5, 0
/* 800CD4B8 000CA3F8  40 81 00 0C */	ble lbl_800CD4C4
/* 800CD4BC 000CA3FC  C8 22 8F A8 */	lfd f1, lbl_80517308@sda21(r2)
/* 800CD4C0 000CA400  48 00 04 9C */	b lbl_800CD95C
lbl_800CD4C4:
/* 800CD4C4 000CA404  C8 22 8F A0 */	lfd f1, lbl_80517300@sda21(r2)
/* 800CD4C8 000CA408  48 00 04 94 */	b lbl_800CD95C
lbl_800CD4CC:
/* 800CD4CC 000CA40C  C8 41 00 08 */	lfd f2, 8(r1)
/* 800CD4D0 000CA410  38 60 00 00 */	li r3, 0
/* 800CD4D4 000CA414  C8 02 8F 98 */	lfd f0, lbl_805172F8@sda21(r2)
/* 800CD4D8 000CA418  C8 22 8F C0 */	lfd f1, lbl_80517320@sda21(r2)
/* 800CD4DC 000CA41C  FC C2 00 28 */	fsub f6, f2, f0
/* 800CD4E0 000CA420  C8 02 8F B8 */	lfd f0, lbl_80517318@sda21(r2)
/* 800CD4E4 000CA424  C8 42 8F C8 */	lfd f2, lbl_80517328@sda21(r2)
/* 800CD4E8 000CA428  C8 62 8F B0 */	lfd f3, lbl_80517310@sda21(r2)
/* 800CD4EC 000CA42C  FC 81 01 BC */	fnmsub f4, f1, f6, f0
/* 800CD4F0 000CA430  C8 02 8F D8 */	lfd f0, lbl_80517338@sda21(r2)
/* 800CD4F4 000CA434  C8 22 8F D0 */	lfd f1, lbl_80517330@sda21(r2)
/* 800CD4F8 000CA438  FC A6 01 B2 */	fmul f5, f6, f6
/* 800CD4FC 000CA43C  D8 C1 00 28 */	stfd f6, 0x28(r1)
/* 800CD500 000CA440  FC 66 19 3C */	fnmsub f3, f6, f4, f3
/* 800CD504 000CA444  FC 42 01 B2 */	fmul f2, f2, f6
/* 800CD508 000CA448  FC 65 00 F2 */	fmul f3, f5, f3
/* 800CD50C 000CA44C  FC 00 00 F2 */	fmul f0, f0, f3
/* 800CD510 000CA450  FC 21 01 B8 */	fmsub f1, f1, f6, f0
/* 800CD514 000CA454  FC 02 08 2A */	fadd f0, f2, f1
/* 800CD518 000CA458  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 800CD51C 000CA45C  90 61 00 34 */	stw r3, 0x34(r1)
/* 800CD520 000CA460  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 800CD524 000CA464  FC 00 10 28 */	fsub f0, f0, f2
/* 800CD528 000CA468  FC 01 00 28 */	fsub f0, f1, f0
/* 800CD52C 000CA46C  48 00 01 EC */	b lbl_800CD718
lbl_800CD530:
/* 800CD530 000CA470  3C A0 00 10 */	lis r5, 0x10
/* 800CD534 000CA474  39 40 00 00 */	li r10, 0
/* 800CD538 000CA478  7C 06 28 00 */	cmpw r6, r5
/* 800CD53C 000CA47C  40 80 00 1C */	bge lbl_800CD558
/* 800CD540 000CA480  C8 21 00 48 */	lfd f1, 0x48(r1)
/* 800CD544 000CA484  39 40 FF CB */	li r10, -53
/* 800CD548 000CA488  C8 02 8F E0 */	lfd f0, lbl_80517340@sda21(r2)
/* 800CD54C 000CA48C  FC 01 00 32 */	fmul f0, f1, f0
/* 800CD550 000CA490  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 800CD554 000CA494  80 C1 00 48 */	lwz r6, 0x48(r1)
lbl_800CD558:
/* 800CD558 000CA498  3C A0 00 04 */	lis r5, 0x0003988E@ha
/* 800CD55C 000CA49C  54 C8 03 3E */	clrlwi r8, r6, 0xc
/* 800CD560 000CA4A0  38 A5 98 8E */	addi r5, r5, 0x0003988E@l
/* 800CD564 000CA4A4  7C C6 A6 70 */	srawi r6, r6, 0x14
/* 800CD568 000CA4A8  7C 08 28 00 */	cmpw r8, r5
/* 800CD56C 000CA4AC  65 07 3F F0 */	oris r7, r8, 0x3ff0
/* 800CD570 000CA4B0  7D 46 52 14 */	add r10, r6, r10
/* 800CD574 000CA4B4  39 4A FC 01 */	addi r10, r10, -1023
/* 800CD578 000CA4B8  41 81 00 0C */	bgt lbl_800CD584
/* 800CD57C 000CA4BC  39 60 00 00 */	li r11, 0
/* 800CD580 000CA4C0  48 00 00 28 */	b lbl_800CD5A8
lbl_800CD584:
/* 800CD584 000CA4C4  3C A0 00 0C */	lis r5, 0x000BB67A@ha
/* 800CD588 000CA4C8  38 A5 B6 7A */	addi r5, r5, 0x000BB67A@l
/* 800CD58C 000CA4CC  7C 08 28 00 */	cmpw r8, r5
/* 800CD590 000CA4D0  40 80 00 0C */	bge lbl_800CD59C
/* 800CD594 000CA4D4  39 60 00 01 */	li r11, 1
/* 800CD598 000CA4D8  48 00 00 10 */	b lbl_800CD5A8
lbl_800CD59C:
/* 800CD59C 000CA4DC  3C E7 FF F0 */	addis r7, r7, 0xfff0
/* 800CD5A0 000CA4E0  39 60 00 00 */	li r11, 0
/* 800CD5A4 000CA4E4  39 4A 00 01 */	addi r10, r10, 1
lbl_800CD5A8:
/* 800CD5A8 000CA4E8  90 E1 00 48 */	stw r7, 0x48(r1)
/* 800CD5AC 000CA4EC  7C E5 0E 70 */	srawi r5, r7, 1
/* 800CD5B0 000CA4F0  55 69 18 38 */	slwi r9, r11, 3
/* 800CD5B4 000CA4F4  38 C3 00 00 */	addi r6, r3, 0
/* 800CD5B8 000CA4F8  CB C1 00 48 */	lfd f30, 0x48(r1)
/* 800CD5BC 000CA4FC  64 A8 20 00 */	oris r8, r5, 0x2000
/* 800CD5C0 000CA500  7C A6 4C AE */	lfdx f5, r6, r9
/* 800CD5C4 000CA504  38 E3 00 20 */	addi r7, r3, 0x20
/* 800CD5C8 000CA508  C8 22 8F A0 */	lfd f1, lbl_80517300@sda21(r2)
/* 800CD5CC 000CA50C  6D 46 80 00 */	xoris r6, r10, 0x8000
/* 800CD5D0 000CA510  FC 1E 28 2A */	fadd f0, f30, f5
/* 800CD5D4 000CA514  C8 42 8F 98 */	lfd f2, lbl_805172F8@sda21(r2)
/* 800CD5D8 000CA518  3C A0 43 30 */	lis r5, 0x4330
/* 800CD5DC 000CA51C  39 43 00 10 */	addi r10, r3, 0x10
/* 800CD5E0 000CA520  FF FE 28 28 */	fsub f31, f30, f5
/* 800CD5E4 000CA524  C8 82 90 10 */	lfd f4, lbl_80517370@sda21(r2)
/* 800CD5E8 000CA528  FF 82 00 24 */	fdiv f28, f2, f0
/* 800CD5EC 000CA52C  C8 02 90 08 */	lfd f0, lbl_80517368@sda21(r2)
/* 800CD5F0 000CA530  C8 62 90 00 */	lfd f3, lbl_80517360@sda21(r2)
/* 800CD5F4 000CA534  3D 08 00 08 */	addis r8, r8, 8
/* 800CD5F8 000CA538  55 63 90 1A */	slwi r3, r11, 0x12
/* 800CD5FC 000CA53C  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 800CD600 000CA540  FC 3F 07 32 */	fmul f1, f31, f28
/* 800CD604 000CA544  7C 68 1A 14 */	add r3, r8, r3
/* 800CD608 000CA548  90 61 00 18 */	stw r3, 0x18(r1)
/* 800CD60C 000CA54C  38 60 00 00 */	li r3, 0
/* 800CD610 000CA550  C8 42 8F F8 */	lfd f2, lbl_80517358@sda21(r2)
/* 800CD614 000CA554  C9 81 00 18 */	lfd f12, 0x18(r1)
/* 800CD618 000CA558  FF 61 00 72 */	fmul f27, f1, f1
/* 800CD61C 000CA55C  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 800CD620 000CA560  C9 62 8F F0 */	lfd f11, lbl_80517350@sda21(r2)
/* 800CD624 000CA564  90 61 00 24 */	stw r3, 0x24(r1)
/* 800CD628 000CA568  FD AC 28 28 */	fsub f13, f12, f5
/* 800CD62C 000CA56C  C9 22 8F E8 */	lfd f9, lbl_80517348@sda21(r2)
/* 800CD630 000CA570  FC 84 06 FA */	fmadd f4, f4, f27, f0
/* 800CD634 000CA574  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 800CD638 000CA578  C9 42 90 18 */	lfd f10, lbl_80517378@sda21(r2)
/* 800CD63C 000CA57C  FC 1D 07 72 */	fmul f0, f29, f29
/* 800CD640 000CA580  C8 A2 90 30 */	lfd f5, lbl_80517390@sda21(r2)
/* 800CD644 000CA584  C8 C2 90 28 */	lfd f6, lbl_80517388@sda21(r2)
/* 800CD648 000CA588  FC 7B 19 3A */	fmadd f3, f27, f4, f3
/* 800CD64C 000CA58C  C9 02 90 20 */	lfd f8, lbl_80517380@sda21(r2)
/* 800CD650 000CA590  7C E7 4C AE */	lfdx f7, r7, r9
/* 800CD654 000CA594  FF FD FB 3C */	fnmsub f31, f29, f12, f31
/* 800CD658 000CA598  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 800CD65C 000CA59C  C8 82 90 A0 */	lfd f4, lbl_80517400@sda21(r2)
/* 800CD660 000CA5A0  FD 9B 10 FA */	fmadd f12, f27, f3, f2
/* 800CD664 000CA5A4  90 A1 00 58 */	stw r5, 0x58(r1)
/* 800CD668 000CA5A8  7C 4A 4C AE */	lfdx f2, r10, r9
/* 800CD66C 000CA5AC  FF DE 68 28 */	fsub f30, f30, f13
/* 800CD670 000CA5B0  C8 61 00 58 */	lfd f3, 0x58(r1)
/* 800CD674 000CA5B4  FD BB 06 F2 */	fmul f13, f27, f27
/* 800CD678 000CA5B8  FD 7B 5B 3A */	fmadd f11, f27, f12, f11
/* 800CD67C 000CA5BC  FD 9D FF BC */	fnmsub f12, f29, f30, f31
/* 800CD680 000CA5C0  FD 3B 4A FA */	fmadd f9, f27, f11, f9
/* 800CD684 000CA5C4  FF 7C 03 32 */	fmul f27, f28, f12
/* 800CD688 000CA5C8  FD 8D 02 72 */	fmul f12, f13, f9
/* 800CD68C 000CA5CC  FD 7D 08 2A */	fadd f11, f29, f1
/* 800CD690 000CA5D0  FD 2A 00 2A */	fadd f9, f10, f0
/* 800CD694 000CA5D4  FC 63 20 28 */	fsub f3, f3, f4
/* 800CD698 000CA5D8  FD 9B 62 FA */	fmadd f12, f27, f11, f12
/* 800CD69C 000CA5DC  D8 61 00 28 */	stfd f3, 0x28(r1)
/* 800CD6A0 000CA5E0  FC 89 60 2A */	fadd f4, f9, f12
/* 800CD6A4 000CA5E4  D8 81 00 18 */	stfd f4, 0x18(r1)
/* 800CD6A8 000CA5E8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 800CD6AC 000CA5EC  C9 21 00 18 */	lfd f9, 0x18(r1)
/* 800CD6B0 000CA5F0  FC 89 50 28 */	fsub f4, f9, f10
/* 800CD6B4 000CA5F4  FD 5D 02 72 */	fmul f10, f29, f9
/* 800CD6B8 000CA5F8  FC 04 00 28 */	fsub f0, f4, f0
/* 800CD6BC 000CA5FC  FC 0C 00 28 */	fsub f0, f12, f0
/* 800CD6C0 000CA600  FC 00 00 72 */	fmul f0, f0, f1
/* 800CD6C4 000CA604  FC 9B 02 7A */	fmadd f4, f27, f9, f0
/* 800CD6C8 000CA608  FC 0A 20 2A */	fadd f0, f10, f4
/* 800CD6CC 000CA60C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 800CD6D0 000CA610  90 61 00 44 */	stw r3, 0x44(r1)
/* 800CD6D4 000CA614  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 800CD6D8 000CA618  FC 01 50 28 */	fsub f0, f1, f10
/* 800CD6DC 000CA61C  FD 08 00 72 */	fmul f8, f8, f1
/* 800CD6E0 000CA620  FC 04 00 28 */	fsub f0, f4, f0
/* 800CD6E4 000CA624  FC 05 00 32 */	fmul f0, f5, f0
/* 800CD6E8 000CA628  FC 06 00 7A */	fmadd f0, f6, f1, f0
/* 800CD6EC 000CA62C  FC 27 00 2A */	fadd f1, f7, f0
/* 800CD6F0 000CA630  FC 08 08 2A */	fadd f0, f8, f1
/* 800CD6F4 000CA634  FC 00 10 2A */	fadd f0, f0, f2
/* 800CD6F8 000CA638  FC 03 00 2A */	fadd f0, f3, f0
/* 800CD6FC 000CA63C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 800CD700 000CA640  90 61 00 34 */	stw r3, 0x34(r1)
/* 800CD704 000CA644  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 800CD708 000CA648  FC 00 18 28 */	fsub f0, f0, f3
/* 800CD70C 000CA64C  FC 00 10 28 */	fsub f0, f0, f2
/* 800CD710 000CA650  FC 00 40 28 */	fsub f0, f0, f8
/* 800CD714 000CA654  FC 01 00 28 */	fsub f0, f1, f0
lbl_800CD718:
/* 800CD718 000CA658  38 64 FF FF */	addi r3, r4, -1
/* 800CD71C 000CA65C  CB E2 8F 98 */	lfd f31, lbl_805172F8@sda21(r2)
/* 800CD720 000CA660  7C 00 1B 79 */	or. r0, r0, r3
/* 800CD724 000CA664  40 82 00 08 */	bne lbl_800CD72C
/* 800CD728 000CA668  CB E2 90 38 */	lfd f31, lbl_80517398@sda21(r2)
lbl_800CD72C:
/* 800CD72C 000CA66C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800CD730 000CA670  38 60 00 00 */	li r3, 0
/* 800CD734 000CA674  C8 61 00 30 */	lfd f3, 0x30(r1)
/* 800CD738 000CA678  3C 00 40 90 */	lis r0, 0x4090
/* 800CD73C 000CA67C  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 800CD740 000CA680  FC 01 00 32 */	fmul f0, f1, f0
/* 800CD744 000CA684  90 61 00 3C */	stw r3, 0x3c(r1)
/* 800CD748 000CA688  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 800CD74C 000CA68C  FC 21 10 28 */	fsub f1, f1, f2
/* 800CD750 000CA690  FC 42 00 F2 */	fmul f2, f2, f3
/* 800CD754 000CA694  FD 83 00 7A */	fmadd f12, f3, f1, f0
/* 800CD758 000CA698  D8 41 00 40 */	stfd f2, 0x40(r1)
/* 800CD75C 000CA69C  FC 0C 10 2A */	fadd f0, f12, f2
/* 800CD760 000CA6A0  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 800CD764 000CA6A4  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 800CD768 000CA6A8  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 800CD76C 000CA6AC  7C 06 00 00 */	cmpw r6, r0
/* 800CD770 000CA6B0  41 80 00 44 */	blt lbl_800CD7B4
/* 800CD774 000CA6B4  3C 06 BF 70 */	addis r0, r6, 0xbf70
/* 800CD778 000CA6B8  7C 00 2B 79 */	or. r0, r0, r5
/* 800CD77C 000CA6BC  41 82 00 14 */	beq lbl_800CD790
/* 800CD780 000CA6C0  C8 22 90 40 */	lfd f1, lbl_805173A0@sda21(r2)
/* 800CD784 000CA6C4  FC 01 07 F2 */	fmul f0, f1, f31
/* 800CD788 000CA6C8  FC 21 00 32 */	fmul f1, f1, f0
/* 800CD78C 000CA6CC  48 00 01 D0 */	b lbl_800CD95C
lbl_800CD790:
/* 800CD790 000CA6D0  C8 22 90 48 */	lfd f1, lbl_805173A8@sda21(r2)
/* 800CD794 000CA6D4  FC 00 10 28 */	fsub f0, f0, f2
/* 800CD798 000CA6D8  FC 21 60 2A */	fadd f1, f1, f12
/* 800CD79C 000CA6DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CD7A0 000CA6E0  40 81 00 68 */	ble lbl_800CD808
/* 800CD7A4 000CA6E4  C8 22 90 40 */	lfd f1, lbl_805173A0@sda21(r2)
/* 800CD7A8 000CA6E8  FC 01 07 F2 */	fmul f0, f1, f31
/* 800CD7AC 000CA6EC  FC 21 00 32 */	fmul f1, f1, f0
/* 800CD7B0 000CA6F0  48 00 01 AC */	b lbl_800CD95C
lbl_800CD7B4:
/* 800CD7B4 000CA6F4  3C 60 40 91 */	lis r3, 0x4090CC00@ha
/* 800CD7B8 000CA6F8  54 C4 00 7E */	clrlwi r4, r6, 1
/* 800CD7BC 000CA6FC  38 03 CC 00 */	addi r0, r3, 0x4090CC00@l
/* 800CD7C0 000CA700  7C 04 00 00 */	cmpw r4, r0
/* 800CD7C4 000CA704  41 80 00 44 */	blt lbl_800CD808
/* 800CD7C8 000CA708  3C 66 3F 6F */	addis r3, r6, 0x3f6f
/* 800CD7CC 000CA70C  38 03 34 00 */	addi r0, r3, 0x3400
/* 800CD7D0 000CA710  7C 00 2B 79 */	or. r0, r0, r5
/* 800CD7D4 000CA714  41 82 00 14 */	beq lbl_800CD7E8
/* 800CD7D8 000CA718  C8 22 90 50 */	lfd f1, lbl_805173B0@sda21(r2)
/* 800CD7DC 000CA71C  FC 01 07 F2 */	fmul f0, f1, f31
/* 800CD7E0 000CA720  FC 21 00 32 */	fmul f1, f1, f0
/* 800CD7E4 000CA724  48 00 01 78 */	b lbl_800CD95C
lbl_800CD7E8:
/* 800CD7E8 000CA728  FC 00 10 28 */	fsub f0, f0, f2
/* 800CD7EC 000CA72C  FC 0C 00 40 */	fcmpo cr0, f12, f0
/* 800CD7F0 000CA730  4C 40 13 82 */	cror 2, 0, 2
/* 800CD7F4 000CA734  40 82 00 14 */	bne lbl_800CD808
/* 800CD7F8 000CA738  C8 22 90 50 */	lfd f1, lbl_805173B0@sda21(r2)
/* 800CD7FC 000CA73C  FC 01 07 F2 */	fmul f0, f1, f31
/* 800CD800 000CA740  FC 21 00 32 */	fmul f1, f1, f0
/* 800CD804 000CA744  48 00 01 58 */	b lbl_800CD95C
lbl_800CD808:
/* 800CD808 000CA748  54 C3 00 7E */	clrlwi r3, r6, 1
/* 800CD80C 000CA74C  3C 00 3F E0 */	lis r0, 0x3fe0
/* 800CD810 000CA750  7C 03 00 00 */	cmpw r3, r0
/* 800CD814 000CA754  54 C4 65 7E */	rlwinm r4, r6, 0xc, 0x15, 0x1f
/* 800CD818 000CA758  38 60 00 00 */	li r3, 0
/* 800CD81C 000CA75C  40 81 00 64 */	ble lbl_800CD880
/* 800CD820 000CA760  3C 60 00 10 */	lis r3, 0x000FFFFF@ha
/* 800CD824 000CA764  38 04 FC 02 */	addi r0, r4, -1022
/* 800CD828 000CA768  7C 60 06 30 */	sraw r0, r3, r0
/* 800CD82C 000CA76C  C8 02 8F A0 */	lfd f0, lbl_80517300@sda21(r2)
/* 800CD830 000CA770  7C E6 02 14 */	add r7, r6, r0
/* 800CD834 000CA774  38 63 FF FF */	addi r3, r3, 0x000FFFFF@l
/* 800CD838 000CA778  54 E0 00 7E */	clrlwi r0, r7, 1
/* 800CD83C 000CA77C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 800CD840 000CA780  7C 04 A6 70 */	srawi r4, r0, 0x14
/* 800CD844 000CA784  54 E0 03 3E */	clrlwi r0, r7, 0xc
/* 800CD848 000CA788  38 A4 FC 01 */	addi r5, r4, -1023
/* 800CD84C 000CA78C  2C 06 00 00 */	cmpwi r6, 0
/* 800CD850 000CA790  7C 64 2E 30 */	sraw r4, r3, r5
/* 800CD854 000CA794  64 03 00 10 */	oris r3, r0, 0x10
/* 800CD858 000CA798  7C E4 20 78 */	andc r4, r7, r4
/* 800CD85C 000CA79C  20 05 00 14 */	subfic r0, r5, 0x14
/* 800CD860 000CA7A0  90 81 00 28 */	stw r4, 0x28(r1)
/* 800CD864 000CA7A4  7C 63 06 30 */	sraw r3, r3, r0
/* 800CD868 000CA7A8  40 80 00 08 */	bge lbl_800CD870
/* 800CD86C 000CA7AC  7C 63 00 D0 */	neg r3, r3
lbl_800CD870:
/* 800CD870 000CA7B0  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 800CD874 000CA7B4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800CD878 000CA7B8  FC 01 00 28 */	fsub f0, f1, f0
/* 800CD87C 000CA7BC  D8 01 00 40 */	stfd f0, 0x40(r1)
lbl_800CD880:
/* 800CD880 000CA7C0  C8 41 00 40 */	lfd f2, 0x40(r1)
/* 800CD884 000CA7C4  38 00 00 00 */	li r0, 0
/* 800CD888 000CA7C8  C8 22 90 68 */	lfd f1, lbl_805173C8@sda21(r2)
/* 800CD88C 000CA7CC  54 64 A0 16 */	slwi r4, r3, 0x14
/* 800CD890 000CA7D0  FC 0C 10 2A */	fadd f0, f12, f2
/* 800CD894 000CA7D4  C9 42 90 58 */	lfd f10, lbl_805173B8@sda21(r2)
/* 800CD898 000CA7D8  C9 22 90 60 */	lfd f9, lbl_805173C0@sda21(r2)
/* 800CD89C 000CA7DC  C8 C2 90 90 */	lfd f6, lbl_805173F0@sda21(r2)
/* 800CD8A0 000CA7E0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 800CD8A4 000CA7E4  C8 A2 90 88 */	lfd f5, lbl_805173E8@sda21(r2)
/* 800CD8A8 000CA7E8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800CD8AC 000CA7EC  C8 02 90 80 */	lfd f0, lbl_805173E0@sda21(r2)
/* 800CD8B0 000CA7F0  C9 61 00 28 */	lfd f11, 0x28(r1)
/* 800CD8B4 000CA7F4  C8 82 90 78 */	lfd f4, lbl_805173D8@sda21(r2)
/* 800CD8B8 000CA7F8  FD 0B 10 28 */	fsub f8, f11, f2
/* 800CD8BC 000CA7FC  C8 62 90 70 */	lfd f3, lbl_805173D0@sda21(r2)
/* 800CD8C0 000CA800  FC E1 02 F2 */	fmul f7, f1, f11
/* 800CD8C4 000CA804  C8 42 90 98 */	lfd f2, lbl_805173F8@sda21(r2)
/* 800CD8C8 000CA808  C8 22 8F 98 */	lfd f1, lbl_805172F8@sda21(r2)
/* 800CD8CC 000CA80C  FD 0C 40 28 */	fsub f8, f12, f8
/* 800CD8D0 000CA810  FD 4A 02 F2 */	fmul f10, f10, f11
/* 800CD8D4 000CA814  FD 69 3A 3A */	fmadd f11, f9, f8, f7
/* 800CD8D8 000CA818  FD 2A 58 2A */	fadd f9, f10, f11
/* 800CD8DC 000CA81C  FC E9 02 72 */	fmul f7, f9, f9
/* 800CD8E0 000CA820  D9 21 00 50 */	stfd f9, 0x50(r1)
/* 800CD8E4 000CA824  FD 09 50 28 */	fsub f8, f9, f10
/* 800CD8E8 000CA828  FC A6 29 FA */	fmadd f5, f6, f7, f5
/* 800CD8EC 000CA82C  D8 E1 00 28 */	stfd f7, 0x28(r1)
/* 800CD8F0 000CA830  FC CB 40 28 */	fsub f6, f11, f8
/* 800CD8F4 000CA834  FC A7 01 7A */	fmadd f5, f7, f5, f0
/* 800CD8F8 000CA838  FC 09 31 BA */	fmadd f0, f9, f6, f6
/* 800CD8FC 000CA83C  FC 87 21 7A */	fmadd f4, f7, f5, f4
/* 800CD900 000CA840  FC 67 19 3A */	fmadd f3, f7, f4, f3
/* 800CD904 000CA844  FC 67 00 F2 */	fmul f3, f7, f3
/* 800CD908 000CA848  FC 89 18 28 */	fsub f4, f9, f3
/* 800CD90C 000CA84C  FC 69 01 32 */	fmul f3, f9, f4
/* 800CD910 000CA850  D8 81 00 30 */	stfd f4, 0x30(r1)
/* 800CD914 000CA854  FC 44 10 28 */	fsub f2, f4, f2
/* 800CD918 000CA858  FC 43 10 24 */	fdiv f2, f3, f2
/* 800CD91C 000CA85C  FC 02 00 28 */	fsub f0, f2, f0
/* 800CD920 000CA860  FC 00 48 28 */	fsub f0, f0, f9
/* 800CD924 000CA864  FC 21 00 28 */	fsub f1, f1, f0
/* 800CD928 000CA868  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 800CD92C 000CA86C  80 01 00 50 */	lwz r0, 0x50(r1)
/* 800CD930 000CA870  7C 00 22 14 */	add r0, r0, r4
/* 800CD934 000CA874  7C 00 A6 71 */	srawi. r0, r0, 0x14
/* 800CD938 000CA878  41 81 00 10 */	bgt lbl_800CD948
/* 800CD93C 000CA87C  48 00 1C 21 */	bl ldexp
/* 800CD940 000CA880  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 800CD944 000CA884  48 00 00 10 */	b lbl_800CD954
lbl_800CD948:
/* 800CD948 000CA888  80 01 00 50 */	lwz r0, 0x50(r1)
/* 800CD94C 000CA88C  7C 00 22 14 */	add r0, r0, r4
/* 800CD950 000CA890  90 01 00 50 */	stw r0, 0x50(r1)
lbl_800CD954:
/* 800CD954 000CA894  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 800CD958 000CA898  FC 3F 00 32 */	fmul f1, f31, f0
lbl_800CD95C:
/* 800CD95C 000CA89C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 800CD960 000CA8A0  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 800CD964 000CA8A4  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 800CD968 000CA8A8  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 800CD96C 000CA8AC  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 800CD970 000CA8B0  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 800CD974 000CA8B4  E3 81 00 78 */	psq_l f28, 120(r1), 0, qr0
/* 800CD978 000CA8B8  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 800CD97C 000CA8BC  E3 61 00 68 */	psq_l f27, 104(r1), 0, qr0
/* 800CD980 000CA8C0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800CD984 000CA8C4  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 800CD988 000CA8C8  7C 08 03 A6 */	mtlr r0
/* 800CD98C 000CA8CC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 800CD990 000CA8D0  4E 80 00 20 */	blr 
