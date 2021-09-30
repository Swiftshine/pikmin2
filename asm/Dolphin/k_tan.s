.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __kernel_tan
__kernel_tan:
/* 800CED1C 000CBC5C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800CED20 000CBC60  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800CED24 000CBC64  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 800CED28 000CBC68  D8 21 00 08 */	stfd f1, 8(r1)
/* 800CED2C 000CBC6C  3C 00 3E 30 */	lis r0, 0x3e30
/* 800CED30 000CBC70  80 E1 00 08 */	lwz r7, 8(r1)
/* 800CED34 000CBC74  54 E6 00 7E */	clrlwi r6, r7, 1
/* 800CED38 000CBC78  7C 06 00 00 */	cmpw r6, r0
/* 800CED3C 000CBC7C  40 80 00 54 */	bge lbl_800CED90
/* 800CED40 000CBC80  FC 00 08 1E */	fctiwz f0, f1
/* 800CED44 000CBC84  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800CED48 000CBC88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CED4C 000CBC8C  2C 00 00 00 */	cmpwi r0, 0
/* 800CED50 000CBC90  40 82 00 40 */	bne lbl_800CED90
/* 800CED54 000CBC94  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800CED58 000CBC98  38 83 00 01 */	addi r4, r3, 1
/* 800CED5C 000CBC9C  7C C0 03 78 */	or r0, r6, r0
/* 800CED60 000CBCA0  7C 80 03 79 */	or. r0, r4, r0
/* 800CED64 000CBCA4  40 82 00 14 */	bne lbl_800CED78
/* 800CED68 000CBCA8  FC 20 0A 10 */	fabs f1, f1
/* 800CED6C 000CBCAC  C8 02 91 C0 */	lfd f0, lbl_80517520@sda21(r2)
/* 800CED70 000CBCB0  FC 20 08 24 */	fdiv f1, f0, f1
/* 800CED74 000CBCB4  48 00 01 AC */	b lbl_800CEF20
lbl_800CED78:
/* 800CED78 000CBCB8  2C 03 00 01 */	cmpwi r3, 1
/* 800CED7C 000CBCBC  40 82 00 08 */	bne lbl_800CED84
/* 800CED80 000CBCC0  48 00 01 A0 */	b lbl_800CEF20
lbl_800CED84:
/* 800CED84 000CBCC4  C8 02 91 C8 */	lfd f0, lbl_80517528@sda21(r2)
/* 800CED88 000CBCC8  FC 20 08 24 */	fdiv f1, f0, f1
/* 800CED8C 000CBCCC  48 00 01 94 */	b lbl_800CEF20
lbl_800CED90:
/* 800CED90 000CBCD0  3C 80 3F E6 */	lis r4, 0x3FE59428@ha
/* 800CED94 000CBCD4  38 04 94 28 */	addi r0, r4, 0x3FE59428@l
/* 800CED98 000CBCD8  7C 06 00 00 */	cmpw r6, r0
/* 800CED9C 000CBCDC  41 80 00 40 */	blt lbl_800CEDDC
/* 800CEDA0 000CBCE0  2C 07 00 00 */	cmpwi r7, 0
/* 800CEDA4 000CBCE4  40 80 00 14 */	bge lbl_800CEDB8
/* 800CEDA8 000CBCE8  C8 01 00 08 */	lfd f0, 8(r1)
/* 800CEDAC 000CBCEC  FC 40 10 50 */	fneg f2, f2
/* 800CEDB0 000CBCF0  FC 00 00 50 */	fneg f0, f0
/* 800CEDB4 000CBCF4  D8 01 00 08 */	stfd f0, 8(r1)
lbl_800CEDB8:
/* 800CEDB8 000CBCF8  C8 02 91 D8 */	lfd f0, lbl_80517538@sda21(r2)
/* 800CEDBC 000CBCFC  C8 62 91 D0 */	lfd f3, lbl_80517530@sda21(r2)
/* 800CEDC0 000CBD00  C8 21 00 08 */	lfd f1, 8(r1)
/* 800CEDC4 000CBD04  FC 00 10 28 */	fsub f0, f0, f2
/* 800CEDC8 000CBD08  C8 42 91 E0 */	lfd f2, lbl_80517540@sda21(r2)
/* 800CEDCC 000CBD0C  FC 23 08 28 */	fsub f1, f3, f1
/* 800CEDD0 000CBD10  FC 01 00 2A */	fadd f0, f1, f0
/* 800CEDD4 000CBD14  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 800CEDD8 000CBD18  D8 01 00 08 */	stfd f0, 8(r1)
lbl_800CEDDC:
/* 800CEDDC 000CBD1C  C8 01 00 08 */	lfd f0, 8(r1)
/* 800CEDE0 000CBD20  3C 80 80 48 */	lis r4, T@ha
/* 800CEDE4 000CBD24  38 A4 A3 80 */	addi r5, r4, T@l
/* 800CEDE8 000CBD28  3C 80 3F E6 */	lis r4, 0x3FE59428@ha
/* 800CEDEC 000CBD2C  FD A0 00 32 */	fmul f13, f0, f0
/* 800CEDF0 000CBD30  38 04 94 28 */	addi r0, r4, 0x3FE59428@l
/* 800CEDF4 000CBD34  C8 A5 00 60 */	lfd f5, 0x60(r5)
/* 800CEDF8 000CBD38  7C 06 00 00 */	cmpw r6, r0
/* 800CEDFC 000CBD3C  C8 85 00 50 */	lfd f4, 0x50(r5)
/* 800CEE00 000CBD40  C9 25 00 58 */	lfd f9, 0x58(r5)
/* 800CEE04 000CBD44  FF ED 03 72 */	fmul f31, f13, f13
/* 800CEE08 000CBD48  C9 05 00 48 */	lfd f8, 0x48(r5)
/* 800CEE0C 000CBD4C  C8 65 00 40 */	lfd f3, 0x40(r5)
/* 800CEE10 000CBD50  C9 65 00 38 */	lfd f11, 0x38(r5)
/* 800CEE14 000CBD54  FC 2D 00 32 */	fmul f1, f13, f0
/* 800CEE18 000CBD58  C8 C5 00 30 */	lfd f6, 0x30(r5)
/* 800CEE1C 000CBD5C  FC FF 21 7A */	fmadd f7, f31, f5, f4
/* 800CEE20 000CBD60  C9 45 00 28 */	lfd f10, 0x28(r5)
/* 800CEE24 000CBD64  C8 A5 00 20 */	lfd f5, 0x20(r5)
/* 800CEE28 000CBD68  FD 9F 42 7A */	fmadd f12, f31, f9, f8
/* 800CEE2C 000CBD6C  C9 25 00 18 */	lfd f9, 0x18(r5)
/* 800CEE30 000CBD70  C8 85 00 10 */	lfd f4, 0x10(r5)
/* 800CEE34 000CBD74  FC FF 19 FA */	fmadd f7, f31, f7, f3
/* 800CEE38 000CBD78  C9 05 00 08 */	lfd f8, 8(r5)
/* 800CEE3C 000CBD7C  C8 65 00 00 */	lfd f3, 0(r5)
/* 800CEE40 000CBD80  FD 7F 5B 3A */	fmadd f11, f31, f12, f11
/* 800CEE44 000CBD84  D9 A1 00 18 */	stfd f13, 0x18(r1)
/* 800CEE48 000CBD88  FC DF 31 FA */	fmadd f6, f31, f7, f6
/* 800CEE4C 000CBD8C  FC FF 52 FA */	fmadd f7, f31, f11, f10
/* 800CEE50 000CBD90  FC BF 29 BA */	fmadd f5, f31, f6, f5
/* 800CEE54 000CBD94  FC DF 49 FA */	fmadd f6, f31, f7, f9
/* 800CEE58 000CBD98  FC 9F 21 7A */	fmadd f4, f31, f5, f4
/* 800CEE5C 000CBD9C  FC BF 41 BA */	fmadd f5, f31, f6, f8
/* 800CEE60 000CBDA0  FC 8D 01 32 */	fmul f4, f13, f4
/* 800CEE64 000CBDA4  FC 85 20 2A */	fadd f4, f5, f4
/* 800CEE68 000CBDA8  FC 81 11 3A */	fmadd f4, f1, f4, f2
/* 800CEE6C 000CBDAC  FC CD 11 3A */	fmadd f6, f13, f4, f2
/* 800CEE70 000CBDB0  FC C3 30 7A */	fmadd f6, f3, f1, f6
/* 800CEE74 000CBDB4  FC 20 30 2A */	fadd f1, f0, f6
/* 800CEE78 000CBDB8  41 80 00 60 */	blt lbl_800CEED8
/* 800CEE7C 000CBDBC  3C 80 43 30 */	lis r4, 0x4330
/* 800CEE80 000CBDC0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800CEE84 000CBDC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CEE88 000CBDC8  54 E0 17 BC */	rlwinm r0, r7, 2, 0x1e, 0x1e
/* 800CEE8C 000CBDCC  20 00 00 01 */	subfic r0, r0, 1
/* 800CEE90 000CBDD0  C8 A2 91 F0 */	lfd f5, lbl_80517550@sda21(r2)
/* 800CEE94 000CBDD4  90 81 00 20 */	stw r4, 0x20(r1)
/* 800CEE98 000CBDD8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CEE9C 000CBDDC  FC 41 00 72 */	fmul f2, f1, f1
/* 800CEEA0 000CBDE0  C8 62 91 E8 */	lfd f3, lbl_80517548@sda21(r2)
/* 800CEEA4 000CBDE4  C8 81 00 20 */	lfd f4, 0x20(r1)
/* 800CEEA8 000CBDE8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800CEEAC 000CBDEC  FC E4 28 28 */	fsub f7, f4, f5
/* 800CEEB0 000CBDF0  90 81 00 28 */	stw r4, 0x28(r1)
/* 800CEEB4 000CBDF4  FC 21 38 2A */	fadd f1, f1, f7
/* 800CEEB8 000CBDF8  C8 81 00 28 */	lfd f4, 0x28(r1)
/* 800CEEBC 000CBDFC  FC 84 28 28 */	fsub f4, f4, f5
/* 800CEEC0 000CBE00  FC 22 08 24 */	fdiv f1, f2, f1
/* 800CEEC4 000CBE04  FC 21 30 28 */	fsub f1, f1, f6
/* 800CEEC8 000CBE08  FC 00 08 28 */	fsub f0, f0, f1
/* 800CEECC 000CBE0C  FC 03 38 3C */	fnmsub f0, f3, f0, f7
/* 800CEED0 000CBE10  FC 24 00 32 */	fmul f1, f4, f0
/* 800CEED4 000CBE14  48 00 00 4C */	b lbl_800CEF20
lbl_800CEED8:
/* 800CEED8 000CBE18  2C 03 00 01 */	cmpwi r3, 1
/* 800CEEDC 000CBE1C  40 82 00 08 */	bne lbl_800CEEE4
/* 800CEEE0 000CBE20  48 00 00 40 */	b lbl_800CEF20
lbl_800CEEE4:
/* 800CEEE4 000CBE24  C8 42 91 C8 */	lfd f2, lbl_80517528@sda21(r2)
/* 800CEEE8 000CBE28  38 00 00 00 */	li r0, 0
/* 800CEEEC 000CBE2C  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 800CEEF0 000CBE30  FC 82 08 24 */	fdiv f4, f2, f1
/* 800CEEF4 000CBE34  C8 22 91 C0 */	lfd f1, lbl_80517520@sda21(r2)
/* 800CEEF8 000CBE38  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800CEEFC 000CBE3C  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 800CEF00 000CBE40  D8 81 00 10 */	stfd f4, 0x10(r1)
/* 800CEF04 000CBE44  FC 02 00 28 */	fsub f0, f2, f0
/* 800CEF08 000CBE48  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CEF0C 000CBE4C  FC 06 00 28 */	fsub f0, f6, f0
/* 800CEF10 000CBE50  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 800CEF14 000CBE54  FC 23 08 BA */	fmadd f1, f3, f2, f1
/* 800CEF18 000CBE58  FC 03 08 3A */	fmadd f0, f3, f0, f1
/* 800CEF1C 000CBE5C  FC 24 18 3A */	fmadd f1, f4, f0, f3
lbl_800CEF20:
/* 800CEF20 000CBE60  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 800CEF24 000CBE64  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800CEF28 000CBE68  38 21 00 40 */	addi r1, r1, 0x40
/* 800CEF2C 000CBE6C  4E 80 00 20 */	blr 
