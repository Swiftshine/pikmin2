.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __kernel_cos
__kernel_cos:
/* 800CDD34 000CAC74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800CDD38 000CAC78  3C 00 3E 40 */	lis r0, 0x3e40
/* 800CDD3C 000CAC7C  D8 21 00 08 */	stfd f1, 8(r1)
/* 800CDD40 000CAC80  80 61 00 08 */	lwz r3, 8(r1)
/* 800CDD44 000CAC84  54 64 00 7E */	clrlwi r4, r3, 1
/* 800CDD48 000CAC88  7C 04 00 00 */	cmpw r4, r0
/* 800CDD4C 000CAC8C  40 80 00 20 */	bge lbl_800CDD6C
/* 800CDD50 000CAC90  FC 00 08 1E */	fctiwz f0, f1
/* 800CDD54 000CAC94  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800CDD58 000CAC98  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800CDD5C 000CAC9C  2C 00 00 00 */	cmpwi r0, 0
/* 800CDD60 000CACA0  40 82 00 0C */	bne lbl_800CDD6C
/* 800CDD64 000CACA4  C8 22 91 00 */	lfd f1, lbl_80517460@sda21(r2)
/* 800CDD68 000CACA8  48 00 00 B8 */	b lbl_800CDE20
lbl_800CDD6C:
/* 800CDD6C 000CACAC  C8 C1 00 08 */	lfd f6, 8(r1)
/* 800CDD70 000CACB0  3C 60 3F D3 */	lis r3, 0x3FD33333@ha
/* 800CDD74 000CACB4  38 03 33 33 */	addi r0, r3, 0x3FD33333@l
/* 800CDD78 000CACB8  C8 A2 91 30 */	lfd f5, lbl_80517490@sda21(r2)
/* 800CDD7C 000CACBC  FC E6 01 B2 */	fmul f7, f6, f6
/* 800CDD80 000CACC0  C8 02 91 28 */	lfd f0, lbl_80517488@sda21(r2)
/* 800CDD84 000CACC4  C8 82 91 20 */	lfd f4, lbl_80517480@sda21(r2)
/* 800CDD88 000CACC8  7C 04 00 00 */	cmpw r4, r0
/* 800CDD8C 000CACCC  C8 62 91 18 */	lfd f3, lbl_80517478@sda21(r2)
/* 800CDD90 000CACD0  C8 22 91 10 */	lfd f1, lbl_80517470@sda21(r2)
/* 800CDD94 000CACD4  FC A5 01 FA */	fmadd f5, f5, f7, f0
/* 800CDD98 000CACD8  C8 02 91 08 */	lfd f0, lbl_80517468@sda21(r2)
/* 800CDD9C 000CACDC  FC 87 21 7A */	fmadd f4, f7, f5, f4
/* 800CDDA0 000CACE0  FC 67 19 3A */	fmadd f3, f7, f4, f3
/* 800CDDA4 000CACE4  FC 27 08 FA */	fmadd f1, f7, f3, f1
/* 800CDDA8 000CACE8  FC 07 00 7A */	fmadd f0, f7, f1, f0
/* 800CDDAC 000CACEC  FC 87 00 32 */	fmul f4, f7, f0
/* 800CDDB0 000CACF0  40 80 00 20 */	bge lbl_800CDDD0
/* 800CDDB4 000CACF4  FC 06 00 B2 */	fmul f0, f6, f2
/* 800CDDB8 000CACF8  C8 22 91 38 */	lfd f1, lbl_80517498@sda21(r2)
/* 800CDDBC 000CACFC  C8 42 91 00 */	lfd f2, lbl_80517460@sda21(r2)
/* 800CDDC0 000CAD00  FC 07 01 38 */	fmsub f0, f7, f4, f0
/* 800CDDC4 000CAD04  FC 01 01 F8 */	fmsub f0, f1, f7, f0
/* 800CDDC8 000CAD08  FC 22 00 28 */	fsub f1, f2, f0
/* 800CDDCC 000CAD0C  48 00 00 54 */	b lbl_800CDE20
lbl_800CDDD0:
/* 800CDDD0 000CAD10  3C 00 3F E9 */	lis r0, 0x3fe9
/* 800CDDD4 000CAD14  7C 04 00 00 */	cmpw r4, r0
/* 800CDDD8 000CAD18  40 81 00 10 */	ble lbl_800CDDE8
/* 800CDDDC 000CAD1C  C8 02 91 40 */	lfd f0, lbl_805174A0@sda21(r2)
/* 800CDDE0 000CAD20  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800CDDE4 000CAD24  48 00 00 14 */	b lbl_800CDDF8
lbl_800CDDE8:
/* 800CDDE8 000CAD28  3C 64 FF E0 */	addis r3, r4, 0xffe0
/* 800CDDEC 000CAD2C  38 00 00 00 */	li r0, 0
/* 800CDDF0 000CAD30  90 61 00 10 */	stw r3, 0x10(r1)
/* 800CDDF4 000CAD34  90 01 00 14 */	stw r0, 0x14(r1)
lbl_800CDDF8:
/* 800CDDF8 000CAD38  C8 01 00 08 */	lfd f0, 8(r1)
/* 800CDDFC 000CAD3C  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 800CDE00 000CAD40  FC 00 00 B2 */	fmul f0, f0, f2
/* 800CDE04 000CAD44  C8 22 91 38 */	lfd f1, lbl_80517498@sda21(r2)
/* 800CDE08 000CAD48  C8 42 91 00 */	lfd f2, lbl_80517460@sda21(r2)
/* 800CDE0C 000CAD4C  FC 21 19 F8 */	fmsub f1, f1, f7, f3
/* 800CDE10 000CAD50  FC 07 01 38 */	fmsub f0, f7, f4, f0
/* 800CDE14 000CAD54  FC 42 18 28 */	fsub f2, f2, f3
/* 800CDE18 000CAD58  FC 01 00 28 */	fsub f0, f1, f0
/* 800CDE1C 000CAD5C  FC 22 00 28 */	fsub f1, f2, f0
lbl_800CDE20:
/* 800CDE20 000CAD60  38 21 00 20 */	addi r1, r1, 0x20
/* 800CDE24 000CAD64  4E 80 00 20 */	blr 
