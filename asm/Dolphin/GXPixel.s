.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global GXSetFog
GXSetFog:
/* 800E8BE0 000E5B20  7C 08 02 A6 */	mflr r0
/* 800E8BE4 000E5B24  90 01 00 04 */	stw r0, 4(r1)
/* 800E8BE8 000E5B28  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800E8BEC 000E5B2C  DB E1 00 58 */	stfd f31, 0x58(r1)
/* 800E8BF0 000E5B30  BE E1 00 34 */	stmw r23, 0x34(r1)
/* 800E8BF4 000E5B34  3B C0 00 00 */	li r30, 0
/* 800E8BF8 000E5B38  54 7F EF FF */	rlwinm. r31, r3, 0x1d, 0x1f, 0x1f
/* 800E8BFC 000E5B3C  3B 04 00 00 */	addi r24, r4, 0
/* 800E8C00 000E5B40  3B BE 00 00 */	addi r29, r30, 0
/* 800E8C04 000E5B44  54 79 07 7E */	clrlwi r25, r3, 0x1d
/* 800E8C08 000E5B48  3B 80 00 00 */	li r28, 0
/* 800E8C0C 000E5B4C  3B 60 00 00 */	li r27, 0
/* 800E8C10 000E5B50  3B 40 00 00 */	li r26, 0
/* 800E8C14 000E5B54  41 82 00 4C */	beq lbl_800E8C60
/* 800E8C18 000E5B58  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 800E8C1C 000E5B5C  41 82 00 0C */	beq lbl_800E8C28
/* 800E8C20 000E5B60  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 800E8C24 000E5B64  40 82 00 14 */	bne lbl_800E8C38
lbl_800E8C28:
/* 800E8C28 000E5B68  C0 02 93 40 */	lfs f0, lbl_805176A0@sda21(r2)
/* 800E8C2C 000E5B6C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800E8C30 000E5B70  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800E8C34 000E5B74  48 00 01 18 */	b lbl_800E8D4C
lbl_800E8C38:
/* 800E8C38 000E5B78  EC A2 08 28 */	fsubs f5, f2, f1
/* 800E8C3C 000E5B7C  C0 C2 93 44 */	lfs f6, lbl_805176A4@sda21(r2)
/* 800E8C40 000E5B80  EC 44 18 28 */	fsubs f2, f4, f3
/* 800E8C44 000E5B84  EC 01 18 28 */	fsubs f0, f1, f3
/* 800E8C48 000E5B88  EC 66 28 24 */	fdivs f3, f6, f5
/* 800E8C4C 000E5B8C  EC 23 00 B2 */	fmuls f1, f3, f2
/* 800E8C50 000E5B90  EC 03 00 32 */	fmuls f0, f3, f0
/* 800E8C54 000E5B94  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 800E8C58 000E5B98  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800E8C5C 000E5B9C  48 00 00 F0 */	b lbl_800E8D4C
lbl_800E8C60:
/* 800E8C60 000E5BA0  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 800E8C64 000E5BA4  41 82 00 0C */	beq lbl_800E8C70
/* 800E8C68 000E5BA8  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 800E8C6C 000E5BAC  40 82 00 14 */	bne lbl_800E8C80
lbl_800E8C70:
/* 800E8C70 000E5BB0  C0 62 93 40 */	lfs f3, lbl_805176A0@sda21(r2)
/* 800E8C74 000E5BB4  C0 82 93 48 */	lfs f4, lbl_805176A8@sda21(r2)
/* 800E8C78 000E5BB8  FF E0 18 90 */	fmr f31, f3
/* 800E8C7C 000E5BBC  48 00 00 20 */	b lbl_800E8C9C
lbl_800E8C80:
/* 800E8C80 000E5BC0  EC 04 18 28 */	fsubs f0, f4, f3
/* 800E8C84 000E5BC4  EC A2 08 28 */	fsubs f5, f2, f1
/* 800E8C88 000E5BC8  EC 44 00 F2 */	fmuls f2, f4, f3
/* 800E8C8C 000E5BCC  EC 84 00 24 */	fdivs f4, f4, f0
/* 800E8C90 000E5BD0  EC 00 01 72 */	fmuls f0, f0, f5
/* 800E8C94 000E5BD4  EF E1 28 24 */	fdivs f31, f1, f5
/* 800E8C98 000E5BD8  EC 62 00 24 */	fdivs f3, f2, f0
lbl_800E8C9C:
/* 800E8C9C 000E5BDC  C0 22 93 48 */	lfs f1, lbl_805176A8@sda21(r2)
/* 800E8CA0 000E5BE0  38 60 00 00 */	li r3, 0
/* 800E8CA4 000E5BE4  C8 02 93 50 */	lfd f0, lbl_805176B0@sda21(r2)
/* 800E8CA8 000E5BE8  48 00 00 0C */	b lbl_800E8CB4
lbl_800E8CAC:
/* 800E8CAC 000E5BEC  EC 84 00 72 */	fmuls f4, f4, f1
/* 800E8CB0 000E5BF0  38 63 00 01 */	addi r3, r3, 1
lbl_800E8CB4:
/* 800E8CB4 000E5BF4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 800E8CB8 000E5BF8  41 81 FF F4 */	bgt lbl_800E8CAC
/* 800E8CBC 000E5BFC  C8 02 93 60 */	lfd f0, lbl_805176C0@sda21(r2)
/* 800E8CC0 000E5C00  C0 42 93 58 */	lfs f2, lbl_805176B8@sda21(r2)
/* 800E8CC4 000E5C04  C0 22 93 40 */	lfs f1, lbl_805176A0@sda21(r2)
/* 800E8CC8 000E5C08  48 00 00 0C */	b lbl_800E8CD4
lbl_800E8CCC:
/* 800E8CCC 000E5C0C  EC 84 00 B2 */	fmuls f4, f4, f2
/* 800E8CD0 000E5C10  38 63 FF FF */	addi r3, r3, -1
lbl_800E8CD4:
/* 800E8CD4 000E5C14  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 800E8CD8 000E5C18  40 81 00 0C */	ble lbl_800E8CE4
/* 800E8CDC 000E5C1C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 800E8CE0 000E5C20  41 80 FF EC */	blt lbl_800E8CCC
lbl_800E8CE4:
/* 800E8CE4 000E5C24  3A E3 00 01 */	addi r23, r3, 1
/* 800E8CE8 000E5C28  C0 02 93 68 */	lfs f0, lbl_805176C8@sda21(r2)
/* 800E8CEC 000E5C2C  38 00 00 01 */	li r0, 1
/* 800E8CF0 000E5C30  C8 42 93 70 */	lfd f2, lbl_805176D0@sda21(r2)
/* 800E8CF4 000E5C34  7C 00 B8 30 */	slw r0, r0, r23
/* 800E8CF8 000E5C38  EC 20 01 32 */	fmuls f1, f0, f4
/* 800E8CFC 000E5C3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800E8D00 000E5C40  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800E8D04 000E5C44  3C 00 43 30 */	lis r0, 0x4330
/* 800E8D08 000E5C48  90 01 00 28 */	stw r0, 0x28(r1)
/* 800E8D0C 000E5C4C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800E8D10 000E5C50  EC 00 10 28 */	fsubs f0, f0, f2
/* 800E8D14 000E5C54  EC 03 00 24 */	fdivs f0, f3, f0
/* 800E8D18 000E5C58  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800E8D1C 000E5C5C  4B FD 8E 31 */	bl __cvt_fp2unsigned
/* 800E8D20 000E5C60  50 7E 02 3E */	rlwimi r30, r3, 0, 8, 0x1f
/* 800E8D24 000E5C64  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 800E8D28 000E5C68  52 FD 06 FE */	rlwimi r29, r23, 0, 0x1b, 0x1f
/* 800E8D2C 000E5C6C  38 00 00 EF */	li r0, 0xef
/* 800E8D30 000E5C70  38 7E 00 00 */	addi r3, r30, 0
/* 800E8D34 000E5C74  50 03 C0 0E */	rlwimi r3, r0, 0x18, 0, 7
/* 800E8D38 000E5C78  38 00 00 F0 */	li r0, 0xf0
/* 800E8D3C 000E5C7C  38 9D 00 00 */	addi r4, r29, 0
/* 800E8D40 000E5C80  50 04 C0 0E */	rlwimi r4, r0, 0x18, 0, 7
/* 800E8D44 000E5C84  3B C3 00 00 */	addi r30, r3, 0
/* 800E8D48 000E5C88  3B A4 00 00 */	addi r29, r4, 0
lbl_800E8D4C:
/* 800E8D4C 000E5C8C  81 01 00 24 */	lwz r8, 0x24(r1)
/* 800E8D50 000E5C90  38 00 00 61 */	li r0, 0x61
/* 800E8D54 000E5C94  88 F8 00 02 */	lbz r7, 2(r24)
/* 800E8D58 000E5C98  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E8D5C 000E5C9C  51 1B A5 7E */	rlwimi r27, r8, 0x14, 0x15, 0x1f
/* 800E8D60 000E5CA0  39 3B 00 00 */	addi r9, r27, 0
/* 800E8D64 000E5CA4  88 D8 00 01 */	lbz r6, 1(r24)
/* 800E8D68 000E5CA8  88 B8 00 00 */	lbz r5, 0(r24)
/* 800E8D6C 000E5CAC  51 09 A3 68 */	rlwimi r9, r8, 0x14, 0xd, 0x14
/* 800E8D70 000E5CB0  51 09 A3 18 */	rlwimi r9, r8, 0x14, 0xc, 0xc
/* 800E8D74 000E5CB4  81 41 00 20 */	lwz r10, 0x20(r1)
/* 800E8D78 000E5CB8  39 00 00 EE */	li r8, 0xee
/* 800E8D7C 000E5CBC  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800E8D80 000E5CC0  51 09 C0 0E */	rlwimi r9, r8, 0x18, 0, 7
/* 800E8D84 000E5CC4  50 FC 06 3E */	rlwimi r28, r7, 0, 0x18, 0x1f
/* 800E8D88 000E5CC8  80 62 92 90 */	lwz r3, __GXData@sda21(r2)
/* 800E8D8C 000E5CCC  91 24 80 00 */	stw r9, -0x8000(r4)
/* 800E8D90 000E5CD0  51 5A A5 7E */	rlwimi r26, r10, 0x14, 0x15, 0x1f
/* 800E8D94 000E5CD4  98 04 80 00 */	stb r0, -0x8000(r4)
/* 800E8D98 000E5CD8  38 FC 00 00 */	addi r7, r28, 0
/* 800E8D9C 000E5CDC  50 C7 44 2E */	rlwimi r7, r6, 8, 0x10, 0x17
/* 800E8DA0 000E5CE0  93 C4 80 00 */	stw r30, -0x8000(r4)
/* 800E8DA4 000E5CE4  50 A7 82 1E */	rlwimi r7, r5, 0x10, 8, 0xf
/* 800E8DA8 000E5CE8  7F 49 D3 78 */	mr r9, r26
/* 800E8DAC 000E5CEC  98 04 80 00 */	stb r0, -0x8000(r4)
/* 800E8DB0 000E5CF0  38 A0 00 F1 */	li r5, 0xf1
/* 800E8DB4 000E5CF4  51 49 A3 68 */	rlwimi r9, r10, 0x14, 0xd, 0x14
/* 800E8DB8 000E5CF8  93 A4 80 00 */	stw r29, -0x8000(r4)
/* 800E8DBC 000E5CFC  51 49 A3 18 */	rlwimi r9, r10, 0x14, 0xc, 0xc
/* 800E8DC0 000E5D00  53 E9 A2 D6 */	rlwimi r9, r31, 0x14, 0xb, 0xb
/* 800E8DC4 000E5D04  53 29 AA 14 */	rlwimi r9, r25, 0x15, 8, 0xa
/* 800E8DC8 000E5D08  98 04 80 00 */	stb r0, -0x8000(r4)
/* 800E8DCC 000E5D0C  50 A9 C0 0E */	rlwimi r9, r5, 0x18, 0, 7
/* 800E8DD0 000E5D10  91 24 80 00 */	stw r9, -0x8000(r4)
/* 800E8DD4 000E5D14  38 A0 00 F2 */	li r5, 0xf2
/* 800E8DD8 000E5D18  50 A7 C0 0E */	rlwimi r7, r5, 0x18, 0, 7
/* 800E8DDC 000E5D1C  98 04 80 00 */	stb r0, -0x8000(r4)
/* 800E8DE0 000E5D20  38 00 00 00 */	li r0, 0
/* 800E8DE4 000E5D24  90 E4 80 00 */	stw r7, -0x8000(r4)
/* 800E8DE8 000E5D28  B0 03 00 02 */	sth r0, 2(r3)
/* 800E8DEC 000E5D2C  BA E1 00 34 */	lmw r23, 0x34(r1)
/* 800E8DF0 000E5D30  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800E8DF4 000E5D34  CB E1 00 58 */	lfd f31, 0x58(r1)
/* 800E8DF8 000E5D38  38 21 00 60 */	addi r1, r1, 0x60
/* 800E8DFC 000E5D3C  7C 08 03 A6 */	mtlr r0
/* 800E8E00 000E5D40  4E 80 00 20 */	blr 

.global GXInitFogAdjTable
GXInitFogAdjTable:
/* 800E8E04 000E5D44  7C 08 02 A6 */	mflr r0
/* 800E8E08 000E5D48  90 01 00 04 */	stw r0, 4(r1)
/* 800E8E0C 000E5D4C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800E8E10 000E5D50  DB E1 00 78 */	stfd f31, 0x78(r1)
/* 800E8E14 000E5D54  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 800E8E18 000E5D58  DB A1 00 68 */	stfd f29, 0x68(r1)
/* 800E8E1C 000E5D5C  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 800E8E20 000E5D60  DB 61 00 58 */	stfd f27, 0x58(r1)
/* 800E8E24 000E5D64  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 800E8E28 000E5D68  DB 21 00 48 */	stfd f25, 0x48(r1)
/* 800E8E2C 000E5D6C  DB 01 00 40 */	stfd f24, 0x40(r1)
/* 800E8E30 000E5D70  DA E1 00 38 */	stfd f23, 0x38(r1)
/* 800E8E34 000E5D74  93 E1 00 34 */	stw r31, 0x34(r1)
/* 800E8E38 000E5D78  93 C1 00 30 */	stw r30, 0x30(r1)
/* 800E8E3C 000E5D7C  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 800E8E40 000E5D80  C8 22 93 78 */	lfd f1, lbl_805176D8@sda21(r2)
/* 800E8E44 000E5D84  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 800E8E48 000E5D88  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800E8E4C 000E5D8C  40 82 00 28 */	bne lbl_800E8E74
/* 800E8E50 000E5D90  C0 25 00 28 */	lfs f1, 0x28(r5)
/* 800E8E54 000E5D94  C0 02 93 44 */	lfs f0, lbl_805176A4@sda21(r2)
/* 800E8E58 000E5D98  C0 45 00 2C */	lfs f2, 0x2c(r5)
/* 800E8E5C 000E5D9C  EC 21 00 28 */	fsubs f1, f1, f0
/* 800E8E60 000E5DA0  C0 05 00 00 */	lfs f0, 0(r5)
/* 800E8E64 000E5DA4  EC 22 08 24 */	fdivs f1, f2, f1
/* 800E8E68 000E5DA8  EF 01 00 24 */	fdivs f24, f1, f0
/* 800E8E6C 000E5DAC  FC 00 08 90 */	fmr f0, f1
/* 800E8E70 000E5DB0  48 00 00 1C */	b lbl_800E8E8C
lbl_800E8E74:
/* 800E8E74 000E5DB4  C0 42 93 44 */	lfs f2, lbl_805176A4@sda21(r2)
/* 800E8E78 000E5DB8  C0 25 00 00 */	lfs f1, 0(r5)
/* 800E8E7C 000E5DBC  C0 02 93 80 */	lfs f0, lbl_805176E0@sda21(r2)
/* 800E8E80 000E5DC0  EC 22 08 24 */	fdivs f1, f2, f1
/* 800E8E84 000E5DC4  FF 00 08 90 */	fmr f24, f1
/* 800E8E88 000E5DC8  EC 00 00 72 */	fmuls f0, f0, f1
lbl_800E8E8C:
/* 800E8E8C 000E5DCC  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 800E8E90 000E5DD0  CB 62 93 98 */	lfd f27, lbl_805176F8@sda21(r2)
/* 800E8E94 000E5DD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E8E98 000E5DD8  3F E0 43 30 */	lis r31, 0x4330
/* 800E8E9C 000E5DDC  C0 22 93 58 */	lfs f1, lbl_805176B8@sda21(r2)
/* 800E8EA0 000E5DE0  EF 40 00 32 */	fmuls f26, f0, f0
/* 800E8EA4 000E5DE4  93 E1 00 20 */	stw r31, 0x20(r1)
/* 800E8EA8 000E5DE8  C3 82 93 44 */	lfs f28, lbl_805176A4@sda21(r2)
/* 800E8EAC 000E5DEC  7C 7E 1B 78 */	mr r30, r3
/* 800E8EB0 000E5DF0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 800E8EB4 000E5DF4  C3 A2 93 40 */	lfs f29, lbl_805176A0@sda21(r2)
/* 800E8EB8 000E5DF8  3B A0 00 00 */	li r29, 0
/* 800E8EBC 000E5DFC  EC 00 D8 28 */	fsubs f0, f0, f27
/* 800E8EC0 000E5E00  CB C2 93 60 */	lfd f30, lbl_805176C0@sda21(r2)
/* 800E8EC4 000E5E04  CB E2 93 88 */	lfd f31, lbl_805176E8@sda21(r2)
/* 800E8EC8 000E5E08  C2 E2 93 90 */	lfs f23, lbl_805176F0@sda21(r2)
/* 800E8ECC 000E5E0C  EF 21 00 24 */	fdivs f25, f1, f0
lbl_800E8ED0:
/* 800E8ED0 000E5E10  38 1D 00 01 */	addi r0, r29, 1
/* 800E8ED4 000E5E14  54 00 28 34 */	slwi r0, r0, 5
/* 800E8ED8 000E5E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E8EDC 000E5E1C  93 E1 00 20 */	stw r31, 0x20(r1)
/* 800E8EE0 000E5E20  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 800E8EE4 000E5E24  EC 00 D8 28 */	fsubs f0, f0, f27
/* 800E8EE8 000E5E28  EC 00 06 72 */	fmuls f0, f0, f25
/* 800E8EEC 000E5E2C  EC 00 06 32 */	fmuls f0, f0, f24
/* 800E8EF0 000E5E30  EC 00 00 32 */	fmuls f0, f0, f0
/* 800E8EF4 000E5E34  EC 00 D0 24 */	fdivs f0, f0, f26
/* 800E8EF8 000E5E38  EC 5C 00 2A */	fadds f2, f28, f0
/* 800E8EFC 000E5E3C  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 800E8F00 000E5E40  40 81 00 54 */	ble lbl_800E8F54
/* 800E8F04 000E5E44  FC 20 10 34 */	frsqrte f1, f2
/* 800E8F08 000E5E48  FC 01 00 72 */	fmul f0, f1, f1
/* 800E8F0C 000E5E4C  FC 3E 00 72 */	fmul f1, f30, f1
/* 800E8F10 000E5E50  FC 02 00 32 */	fmul f0, f2, f0
/* 800E8F14 000E5E54  FC 1F 00 28 */	fsub f0, f31, f0
/* 800E8F18 000E5E58  FC 21 00 32 */	fmul f1, f1, f0
/* 800E8F1C 000E5E5C  FC 01 00 72 */	fmul f0, f1, f1
/* 800E8F20 000E5E60  FC 3E 00 72 */	fmul f1, f30, f1
/* 800E8F24 000E5E64  FC 02 00 32 */	fmul f0, f2, f0
/* 800E8F28 000E5E68  FC 1F 00 28 */	fsub f0, f31, f0
/* 800E8F2C 000E5E6C  FC 21 00 32 */	fmul f1, f1, f0
/* 800E8F30 000E5E70  FC 01 00 72 */	fmul f0, f1, f1
/* 800E8F34 000E5E74  FC 3E 00 72 */	fmul f1, f30, f1
/* 800E8F38 000E5E78  FC 02 00 32 */	fmul f0, f2, f0
/* 800E8F3C 000E5E7C  FC 1F 00 28 */	fsub f0, f31, f0
/* 800E8F40 000E5E80  FC 01 00 32 */	fmul f0, f1, f0
/* 800E8F44 000E5E84  FC 02 00 32 */	fmul f0, f2, f0
/* 800E8F48 000E5E88  FC 00 00 18 */	frsp f0, f0
/* 800E8F4C 000E5E8C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800E8F50 000E5E90  C0 41 00 14 */	lfs f2, 0x14(r1)
lbl_800E8F54:
/* 800E8F54 000E5E94  EC 37 00 B2 */	fmuls f1, f23, f2
/* 800E8F58 000E5E98  4B FD 8B F5 */	bl __cvt_fp2unsigned
/* 800E8F5C 000E5E9C  3B BD 00 01 */	addi r29, r29, 1
/* 800E8F60 000E5EA0  54 60 05 3E */	clrlwi r0, r3, 0x14
/* 800E8F64 000E5EA4  B0 1E 00 00 */	sth r0, 0(r30)
/* 800E8F68 000E5EA8  28 1D 00 0A */	cmplwi r29, 0xa
/* 800E8F6C 000E5EAC  3B DE 00 02 */	addi r30, r30, 2
/* 800E8F70 000E5EB0  41 80 FF 60 */	blt lbl_800E8ED0
/* 800E8F74 000E5EB4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800E8F78 000E5EB8  CB E1 00 78 */	lfd f31, 0x78(r1)
/* 800E8F7C 000E5EBC  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 800E8F80 000E5EC0  CB A1 00 68 */	lfd f29, 0x68(r1)
/* 800E8F84 000E5EC4  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 800E8F88 000E5EC8  CB 61 00 58 */	lfd f27, 0x58(r1)
/* 800E8F8C 000E5ECC  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 800E8F90 000E5ED0  CB 21 00 48 */	lfd f25, 0x48(r1)
/* 800E8F94 000E5ED4  CB 01 00 40 */	lfd f24, 0x40(r1)
/* 800E8F98 000E5ED8  CA E1 00 38 */	lfd f23, 0x38(r1)
/* 800E8F9C 000E5EDC  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 800E8FA0 000E5EE0  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 800E8FA4 000E5EE4  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 800E8FA8 000E5EE8  38 21 00 80 */	addi r1, r1, 0x80
/* 800E8FAC 000E5EEC  7C 08 03 A6 */	mtlr r0
/* 800E8FB0 000E5EF0  4E 80 00 20 */	blr 

.global GXSetFogRangeAdj
GXSetFogRangeAdj:
/* 800E8FB4 000E5EF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E8FB8 000E5EF8  41 82 00 E4 */	beq lbl_800E909C
/* 800E8FBC 000E5EFC  38 C0 00 00 */	li r6, 0
/* 800E8FC0 000E5F00  54 C0 08 3C */	slwi r0, r6, 1
/* 800E8FC4 000E5F04  7D 25 02 14 */	add r9, r5, r0
/* 800E8FC8 000E5F08  A1 09 00 00 */	lhz r8, 0(r9)
/* 800E8FCC 000E5F0C  54 CA F8 7E */	srwi r10, r6, 1
/* 800E8FD0 000E5F10  A0 E9 00 02 */	lhz r7, 2(r9)
/* 800E8FD4 000E5F14  38 00 00 61 */	li r0, 0x61
/* 800E8FD8 000E5F18  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800E8FDC 000E5F1C  39 60 00 00 */	li r11, 0
/* 800E8FE0 000E5F20  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800E8FE4 000E5F24  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 800E8FE8 000E5F28  39 0B 00 00 */	addi r8, r11, 0
/* 800E8FEC 000E5F2C  38 CA 00 E9 */	addi r6, r10, 0xe9
/* 800E8FF0 000E5F30  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 800E8FF4 000E5F34  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 800E8FF8 000E5F38  91 05 80 00 */	stw r8, -0x8000(r5)
/* 800E8FFC 000E5F3C  38 CA 00 EA */	addi r6, r10, 0xea
/* 800E9000 000E5F40  39 60 00 00 */	li r11, 0
/* 800E9004 000E5F44  A1 09 00 04 */	lhz r8, 4(r9)
/* 800E9008 000E5F48  A0 E9 00 06 */	lhz r7, 6(r9)
/* 800E900C 000E5F4C  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 800E9010 000E5F50  39 0B 00 00 */	addi r8, r11, 0
/* 800E9014 000E5F54  98 05 80 00 */	stb r0, -0x8000(r5)
/* 800E9018 000E5F58  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 800E901C 000E5F5C  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 800E9020 000E5F60  91 05 80 00 */	stw r8, -0x8000(r5)
/* 800E9024 000E5F64  38 CA 00 EB */	addi r6, r10, 0xeb
/* 800E9028 000E5F68  39 60 00 00 */	li r11, 0
/* 800E902C 000E5F6C  A1 09 00 08 */	lhz r8, 8(r9)
/* 800E9030 000E5F70  A0 E9 00 0A */	lhz r7, 0xa(r9)
/* 800E9034 000E5F74  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 800E9038 000E5F78  39 0B 00 00 */	addi r8, r11, 0
/* 800E903C 000E5F7C  98 05 80 00 */	stb r0, -0x8000(r5)
/* 800E9040 000E5F80  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 800E9044 000E5F84  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 800E9048 000E5F88  91 05 80 00 */	stw r8, -0x8000(r5)
/* 800E904C 000E5F8C  38 CA 00 EC */	addi r6, r10, 0xec
/* 800E9050 000E5F90  39 60 00 00 */	li r11, 0
/* 800E9054 000E5F94  A1 09 00 0C */	lhz r8, 0xc(r9)
/* 800E9058 000E5F98  A0 E9 00 0E */	lhz r7, 0xe(r9)
/* 800E905C 000E5F9C  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 800E9060 000E5FA0  39 0B 00 00 */	addi r8, r11, 0
/* 800E9064 000E5FA4  98 05 80 00 */	stb r0, -0x8000(r5)
/* 800E9068 000E5FA8  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 800E906C 000E5FAC  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 800E9070 000E5FB0  91 05 80 00 */	stw r8, -0x8000(r5)
/* 800E9074 000E5FB4  38 CA 00 ED */	addi r6, r10, 0xed
/* 800E9078 000E5FB8  39 60 00 00 */	li r11, 0
/* 800E907C 000E5FBC  A1 09 00 10 */	lhz r8, 0x10(r9)
/* 800E9080 000E5FC0  A0 E9 00 12 */	lhz r7, 0x12(r9)
/* 800E9084 000E5FC4  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 800E9088 000E5FC8  39 0B 00 00 */	addi r8, r11, 0
/* 800E908C 000E5FCC  98 05 80 00 */	stb r0, -0x8000(r5)
/* 800E9090 000E5FD0  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 800E9094 000E5FD4  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 800E9098 000E5FD8  91 05 80 00 */	stw r8, -0x8000(r5)
lbl_800E909C:
/* 800E909C 000E5FDC  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 800E90A0 000E5FE0  80 82 92 90 */	lwz r4, __GXData@sda21(r2)
/* 800E90A4 000E5FE4  38 05 01 56 */	addi r0, r5, 0x156
/* 800E90A8 000E5FE8  38 A0 00 00 */	li r5, 0
/* 800E90AC 000E5FEC  50 05 05 BE */	rlwimi r5, r0, 0, 0x16, 0x1f
/* 800E90B0 000E5FF0  50 65 55 6A */	rlwimi r5, r3, 0xa, 0x15, 0x15
/* 800E90B4 000E5FF4  38 00 00 61 */	li r0, 0x61
/* 800E90B8 000E5FF8  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800E90BC 000E5FFC  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800E90C0 000E6000  38 00 00 E8 */	li r0, 0xe8
/* 800E90C4 000E6004  50 05 C0 0E */	rlwimi r5, r0, 0x18, 0, 7
/* 800E90C8 000E6008  90 A3 80 00 */	stw r5, -0x8000(r3)
/* 800E90CC 000E600C  38 00 00 00 */	li r0, 0
/* 800E90D0 000E6010  B0 04 00 02 */	sth r0, 2(r4)
/* 800E90D4 000E6014  4E 80 00 20 */	blr 

.global GXSetBlendMode
GXSetBlendMode:
/* 800E90D8 000E6018  81 02 92 90 */	lwz r8, __GXData@sda21(r2)
/* 800E90DC 000E601C  20 03 00 03 */	subfic r0, r3, 3
/* 800E90E0 000E6020  7C 07 00 34 */	cntlzw r7, r0
/* 800E90E4 000E6024  20 03 00 02 */	subfic r0, r3, 2
/* 800E90E8 000E6028  81 28 01 D0 */	lwz r9, 0x1d0(r8)
/* 800E90EC 000E602C  50 E9 35 28 */	rlwimi r9, r7, 6, 0x14, 0x14
/* 800E90F0 000E6030  38 E9 00 00 */	addi r7, r9, 0
/* 800E90F4 000E6034  50 67 07 FE */	rlwimi r7, r3, 0, 0x1f, 0x1f
/* 800E90F8 000E6038  7C 00 00 34 */	cntlzw r0, r0
/* 800E90FC 000E603C  50 07 E7 BC */	rlwimi r7, r0, 0x1c, 0x1e, 0x1e
/* 800E9100 000E6040  50 C7 64 26 */	rlwimi r7, r6, 0xc, 0x10, 0x13
/* 800E9104 000E6044  50 87 45 6E */	rlwimi r7, r4, 8, 0x15, 0x17
/* 800E9108 000E6048  38 00 00 61 */	li r0, 0x61
/* 800E910C 000E604C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800E9110 000E6050  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800E9114 000E6054  50 A7 2E 34 */	rlwimi r7, r5, 5, 0x18, 0x1a
/* 800E9118 000E6058  38 00 00 00 */	li r0, 0
/* 800E911C 000E605C  90 E3 80 00 */	stw r7, -0x8000(r3)
/* 800E9120 000E6060  90 E8 01 D0 */	stw r7, 0x1d0(r8)
/* 800E9124 000E6064  B0 08 00 02 */	sth r0, 2(r8)
/* 800E9128 000E6068  4E 80 00 20 */	blr 

.global GXSetColorUpdate
GXSetColorUpdate:
/* 800E912C 000E606C  80 A2 92 90 */	lwz r5, __GXData@sda21(r2)
/* 800E9130 000E6070  38 00 00 61 */	li r0, 0x61
/* 800E9134 000E6074  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E9138 000E6078  80 C5 01 D0 */	lwz r6, 0x1d0(r5)
/* 800E913C 000E607C  50 66 1F 38 */	rlwimi r6, r3, 3, 0x1c, 0x1c
/* 800E9140 000E6080  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800E9144 000E6084  38 00 00 00 */	li r0, 0
/* 800E9148 000E6088  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E914C 000E608C  90 C5 01 D0 */	stw r6, 0x1d0(r5)
/* 800E9150 000E6090  B0 05 00 02 */	sth r0, 2(r5)
/* 800E9154 000E6094  4E 80 00 20 */	blr 

.global GXSetAlphaUpdate
GXSetAlphaUpdate:
/* 800E9158 000E6098  80 A2 92 90 */	lwz r5, __GXData@sda21(r2)
/* 800E915C 000E609C  38 00 00 61 */	li r0, 0x61
/* 800E9160 000E60A0  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E9164 000E60A4  80 C5 01 D0 */	lwz r6, 0x1d0(r5)
/* 800E9168 000E60A8  50 66 26 F6 */	rlwimi r6, r3, 4, 0x1b, 0x1b
/* 800E916C 000E60AC  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800E9170 000E60B0  38 00 00 00 */	li r0, 0
/* 800E9174 000E60B4  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E9178 000E60B8  90 C5 01 D0 */	stw r6, 0x1d0(r5)
/* 800E917C 000E60BC  B0 05 00 02 */	sth r0, 2(r5)
/* 800E9180 000E60C0  4E 80 00 20 */	blr 

.global GXSetZMode
GXSetZMode:
/* 800E9184 000E60C4  80 C2 92 90 */	lwz r6, __GXData@sda21(r2)
/* 800E9188 000E60C8  38 00 00 61 */	li r0, 0x61
/* 800E918C 000E60CC  80 E6 01 D8 */	lwz r7, 0x1d8(r6)
/* 800E9190 000E60D0  50 67 07 FE */	rlwimi r7, r3, 0, 0x1f, 0x1f
/* 800E9194 000E60D4  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800E9198 000E60D8  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800E919C 000E60DC  50 87 0F 3C */	rlwimi r7, r4, 1, 0x1c, 0x1e
/* 800E91A0 000E60E0  50 A7 26 F6 */	rlwimi r7, r5, 4, 0x1b, 0x1b
/* 800E91A4 000E60E4  90 E3 80 00 */	stw r7, -0x8000(r3)
/* 800E91A8 000E60E8  38 00 00 00 */	li r0, 0
/* 800E91AC 000E60EC  90 E6 01 D8 */	stw r7, 0x1d8(r6)
/* 800E91B0 000E60F0  B0 06 00 02 */	sth r0, 2(r6)
/* 800E91B4 000E60F4  4E 80 00 20 */	blr 

.global GXSetZCompLoc
GXSetZCompLoc:
/* 800E91B8 000E60F8  80 C2 92 90 */	lwz r6, __GXData@sda21(r2)
/* 800E91BC 000E60FC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800E91C0 000E6100  38 60 00 61 */	li r3, 0x61
/* 800E91C4 000E6104  80 A6 01 DC */	lwz r5, 0x1dc(r6)
/* 800E91C8 000E6108  50 05 36 72 */	rlwimi r5, r0, 6, 0x19, 0x19
/* 800E91CC 000E610C  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E91D0 000E6110  90 A6 01 DC */	stw r5, 0x1dc(r6)
/* 800E91D4 000E6114  38 00 00 00 */	li r0, 0
/* 800E91D8 000E6118  98 64 80 00 */	stb r3, 0xCC008000@l(r4)
/* 800E91DC 000E611C  80 66 01 DC */	lwz r3, 0x1dc(r6)
/* 800E91E0 000E6120  90 64 80 00 */	stw r3, -0x8000(r4)
/* 800E91E4 000E6124  B0 06 00 02 */	sth r0, 2(r6)
/* 800E91E8 000E6128  4E 80 00 20 */	blr 

.global GXSetPixelFmt
GXSetPixelFmt:
/* 800E91EC 000E612C  3C A0 80 4B */	lis r5, p2f$362@ha
/* 800E91F0 000E6130  80 E2 92 90 */	lwz r7, __GXData@sda21(r2)
/* 800E91F4 000E6134  54 66 10 3A */	slwi r6, r3, 2
/* 800E91F8 000E6138  38 05 87 F0 */	addi r0, r5, p2f$362@l
/* 800E91FC 000E613C  80 A7 01 DC */	lwz r5, 0x1dc(r7)
/* 800E9200 000E6140  7C C0 32 14 */	add r6, r0, r6
/* 800E9204 000E6144  80 06 00 00 */	lwz r0, 0(r6)
/* 800E9208 000E6148  39 05 00 00 */	addi r8, r5, 0
/* 800E920C 000E614C  50 05 07 7E */	rlwimi r5, r0, 0, 0x1d, 0x1f
/* 800E9210 000E6150  90 A7 01 DC */	stw r5, 0x1dc(r7)
/* 800E9214 000E6154  80 07 01 DC */	lwz r0, 0x1dc(r7)
/* 800E9218 000E6158  50 80 1E B8 */	rlwimi r0, r4, 3, 0x1a, 0x1c
/* 800E921C 000E615C  90 07 01 DC */	stw r0, 0x1dc(r7)
/* 800E9220 000E6160  80 A7 01 DC */	lwz r5, 0x1dc(r7)
/* 800E9224 000E6164  7C 08 28 40 */	cmplw r8, r5
/* 800E9228 000E6168  41 82 00 44 */	beq lbl_800E926C
/* 800E922C 000E616C  38 00 00 61 */	li r0, 0x61
/* 800E9230 000E6170  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E9234 000E6174  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800E9238 000E6178  2C 03 00 02 */	cmpwi r3, 2
/* 800E923C 000E617C  90 A4 80 00 */	stw r5, -0x8000(r4)
/* 800E9240 000E6180  40 82 00 0C */	bne lbl_800E924C
/* 800E9244 000E6184  38 00 00 01 */	li r0, 1
/* 800E9248 000E6188  48 00 00 08 */	b lbl_800E9250
lbl_800E924C:
/* 800E924C 000E618C  38 00 00 00 */	li r0, 0
lbl_800E9250:
/* 800E9250 000E6190  80 A2 92 90 */	lwz r5, __GXData@sda21(r2)
/* 800E9254 000E6194  80 85 02 04 */	lwz r4, 0x204(r5)
/* 800E9258 000E6198  50 04 4D AC */	rlwimi r4, r0, 9, 0x16, 0x16
/* 800E925C 000E619C  90 85 02 04 */	stw r4, 0x204(r5)
/* 800E9260 000E61A0  80 05 05 AC */	lwz r0, 0x5ac(r5)
/* 800E9264 000E61A4  60 00 00 04 */	ori r0, r0, 4
/* 800E9268 000E61A8  90 05 05 AC */	stw r0, 0x5ac(r5)
lbl_800E926C:
/* 800E926C 000E61AC  80 06 00 00 */	lwz r0, 0(r6)
/* 800E9270 000E61B0  28 00 00 04 */	cmplwi r0, 4
/* 800E9274 000E61B4  40 82 00 3C */	bne lbl_800E92B0
/* 800E9278 000E61B8  80 C2 92 90 */	lwz r6, __GXData@sda21(r2)
/* 800E927C 000E61BC  38 03 FF FC */	addi r0, r3, -4
/* 800E9280 000E61C0  38 80 00 42 */	li r4, 0x42
/* 800E9284 000E61C4  80 66 01 D4 */	lwz r3, 0x1d4(r6)
/* 800E9288 000E61C8  50 03 4D 6C */	rlwimi r3, r0, 9, 0x15, 0x16
/* 800E928C 000E61CC  38 00 00 61 */	li r0, 0x61
/* 800E9290 000E61D0  90 66 01 D4 */	stw r3, 0x1d4(r6)
/* 800E9294 000E61D4  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800E9298 000E61D8  80 A6 01 D4 */	lwz r5, 0x1d4(r6)
/* 800E929C 000E61DC  50 85 C0 0E */	rlwimi r5, r4, 0x18, 0, 7
/* 800E92A0 000E61E0  90 A6 01 D4 */	stw r5, 0x1d4(r6)
/* 800E92A4 000E61E4  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800E92A8 000E61E8  80 06 01 D4 */	lwz r0, 0x1d4(r6)
/* 800E92AC 000E61EC  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_800E92B0:
/* 800E92B0 000E61F0  80 62 92 90 */	lwz r3, __GXData@sda21(r2)
/* 800E92B4 000E61F4  38 00 00 00 */	li r0, 0
/* 800E92B8 000E61F8  B0 03 00 02 */	sth r0, 2(r3)
/* 800E92BC 000E61FC  4E 80 00 20 */	blr 

.global GXSetDither
GXSetDither:
/* 800E92C0 000E6200  80 A2 92 90 */	lwz r5, __GXData@sda21(r2)
/* 800E92C4 000E6204  38 00 00 61 */	li r0, 0x61
/* 800E92C8 000E6208  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E92CC 000E620C  80 C5 01 D0 */	lwz r6, 0x1d0(r5)
/* 800E92D0 000E6210  50 66 17 7A */	rlwimi r6, r3, 2, 0x1d, 0x1d
/* 800E92D4 000E6214  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800E92D8 000E6218  38 00 00 00 */	li r0, 0
/* 800E92DC 000E621C  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E92E0 000E6220  90 C5 01 D0 */	stw r6, 0x1d0(r5)
/* 800E92E4 000E6224  B0 05 00 02 */	sth r0, 2(r5)
/* 800E92E8 000E6228  4E 80 00 20 */	blr 

.global GXSetDstAlpha
GXSetDstAlpha:
/* 800E92EC 000E622C  80 C2 92 90 */	lwz r6, __GXData@sda21(r2)
/* 800E92F0 000E6230  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 800E92F4 000E6234  38 00 00 61 */	li r0, 0x61
/* 800E92F8 000E6238  80 E6 01 D4 */	lwz r7, 0x1d4(r6)
/* 800E92FC 000E623C  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E9300 000E6240  50 A7 06 3E */	rlwimi r7, r5, 0, 0x18, 0x1f
/* 800E9304 000E6244  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800E9308 000E6248  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800E930C 000E624C  38 67 00 00 */	addi r3, r7, 0
/* 800E9310 000E6250  50 03 45 EE */	rlwimi r3, r0, 8, 0x17, 0x17
/* 800E9314 000E6254  90 64 80 00 */	stw r3, -0x8000(r4)
/* 800E9318 000E6258  38 00 00 00 */	li r0, 0
/* 800E931C 000E625C  90 66 01 D4 */	stw r3, 0x1d4(r6)
/* 800E9320 000E6260  B0 06 00 02 */	sth r0, 2(r6)
/* 800E9324 000E6264  4E 80 00 20 */	blr 

.global GXSetFieldMask
GXSetFieldMask:
/* 800E9328 000E6268  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 800E932C 000E626C  80 82 92 90 */	lwz r4, __GXData@sda21(r2)
/* 800E9330 000E6270  38 A0 00 00 */	li r5, 0
/* 800E9334 000E6274  50 05 07 FE */	rlwimi r5, r0, 0, 0x1f, 0x1f
/* 800E9338 000E6278  50 65 0F BC */	rlwimi r5, r3, 1, 0x1e, 0x1e
/* 800E933C 000E627C  38 00 00 61 */	li r0, 0x61
/* 800E9340 000E6280  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800E9344 000E6284  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800E9348 000E6288  38 00 00 44 */	li r0, 0x44
/* 800E934C 000E628C  50 05 C0 0E */	rlwimi r5, r0, 0x18, 0, 7
/* 800E9350 000E6290  90 A3 80 00 */	stw r5, -0x8000(r3)
/* 800E9354 000E6294  38 00 00 00 */	li r0, 0
/* 800E9358 000E6298  B0 04 00 02 */	sth r0, 2(r4)
/* 800E935C 000E629C  4E 80 00 20 */	blr 

.global GXSetFieldMode
GXSetFieldMode:
/* 800E9360 000E62A0  7C 08 02 A6 */	mflr r0
/* 800E9364 000E62A4  90 01 00 04 */	stw r0, 4(r1)
/* 800E9368 000E62A8  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 800E936C 000E62AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E9370 000E62B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E9374 000E62B4  3F E0 CC 01 */	lis r31, 0xCC008000@ha
/* 800E9378 000E62B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E937C 000E62BC  3B C0 00 61 */	li r30, 0x61
/* 800E9380 000E62C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E9384 000E62C4  7C 7D 1B 78 */	mr r29, r3
/* 800E9388 000E62C8  80 A2 92 90 */	lwz r5, __GXData@sda21(r2)
/* 800E938C 000E62CC  80 85 00 7C */	lwz r4, 0x7c(r5)
/* 800E9390 000E62D0  50 04 B2 52 */	rlwimi r4, r0, 0x16, 9, 9
/* 800E9394 000E62D4  90 85 00 7C */	stw r4, 0x7c(r5)
/* 800E9398 000E62D8  9B DF 80 00 */	stb r30, 0xCC008000@l(r31)
/* 800E939C 000E62DC  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 800E93A0 000E62E0  90 1F 80 00 */	stw r0, -0x8000(r31)
/* 800E93A4 000E62E4  4B FF F0 B5 */	bl __GXFlushTextureState
/* 800E93A8 000E62E8  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800E93AC 000E62EC  9B DF 80 00 */	stb r30, -0x8000(r31)
/* 800E93B0 000E62F0  64 00 68 00 */	oris r0, r0, 0x6800
/* 800E93B4 000E62F4  90 1F 80 00 */	stw r0, -0x8000(r31)
/* 800E93B8 000E62F8  4B FF F0 A1 */	bl __GXFlushTextureState
/* 800E93BC 000E62FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E93C0 000E6300  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E93C4 000E6304  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E93C8 000E6308  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E93CC 000E630C  38 21 00 20 */	addi r1, r1, 0x20
/* 800E93D0 000E6310  7C 08 03 A6 */	mtlr r0
/* 800E93D4 000E6314  4E 80 00 20 */	blr 
