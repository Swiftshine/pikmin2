.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global stop__Q32og6Screen15CallBack_FurikoFv
stop__Q32og6Screen15CallBack_FurikoFv:
/* 80329F18 00326E58  38 80 00 00 */	li r4, 0
/* 80329F1C 00326E5C  38 00 00 01 */	li r0, 1
/* 80329F20 00326E60  98 83 00 20 */	stb r4, 0x20(r3)
/* 80329F24 00326E64  C0 42 FB 48 */	lfs f2, lbl_8051DEA8@sda21(r2)
/* 80329F28 00326E68  98 03 00 21 */	stb r0, 0x21(r3)
/* 80329F2C 00326E6C  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80329F30 00326E70  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 80329F34 00326E74  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80329F38 00326E78  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80329F3C 00326E7C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80329F40 00326E80  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80329F44 00326E84  EC 01 00 2A */	fadds f0, f1, f0
/* 80329F48 00326E88  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80329F4C 00326E8C  D0 43 00 40 */	stfs f2, 0x40(r3)
/* 80329F50 00326E90  D0 43 00 44 */	stfs f2, 0x44(r3)
/* 80329F54 00326E94  4E 80 00 20 */	blr 

.global setParam__Q32og6Screen15CallBack_FurikoFfff
setParam__Q32og6Screen15CallBack_FurikoFfff:
/* 80329F58 00326E98  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 80329F5C 00326E9C  D0 43 00 34 */	stfs f2, 0x34(r3)
/* 80329F60 00326EA0  D0 63 00 30 */	stfs f3, 0x30(r3)
/* 80329F64 00326EA4  4E 80 00 20 */	blr 

.global update__Q32og6Screen15CallBack_FurikoFv
update__Q32og6Screen15CallBack_FurikoFv:
/* 80329F68 00326EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80329F6C 00326EAC  7C 08 02 A6 */	mflr r0
/* 80329F70 00326EB0  C0 02 FB 58 */	lfs f0, lbl_8051DEB8@sda21(r2)
/* 80329F74 00326EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80329F78 00326EB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80329F7C 00326EBC  7C 7F 1B 78 */	mr r31, r3
/* 80329F80 00326EC0  80 8D 9A EC */	lwz r4, sys@sda21(r13)
/* 80329F84 00326EC4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80329F88 00326EC8  C0 24 00 54 */	lfs f1, 0x54(r4)
/* 80329F8C 00326ECC  28 00 00 00 */	cmplwi r0, 0
/* 80329F90 00326ED0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80329F94 00326ED4  41 82 01 28 */	beq lbl_8032A0BC
/* 80329F98 00326ED8  88 1F 00 20 */	lbz r0, 0x20(r31)
/* 80329F9C 00326EDC  28 00 00 00 */	cmplwi r0, 0
/* 80329FA0 00326EE0  41 82 01 1C */	beq lbl_8032A0BC
/* 80329FA4 00326EE4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80329FA8 00326EE8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80329FAC 00326EEC  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 80329FB0 00326EF0  EC C2 08 28 */	fsubs f6, f2, f1
/* 80329FB4 00326EF4  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80329FB8 00326EF8  C0 22 FB 48 */	lfs f1, lbl_8051DEA8@sda21(r2)
/* 80329FBC 00326EFC  EC 63 10 28 */	fsubs f3, f3, f2
/* 80329FC0 00326F00  EC 46 01 B2 */	fmuls f2, f6, f6
/* 80329FC4 00326F04  EC A3 10 FA */	fmadds f5, f3, f3, f2
/* 80329FC8 00326F08  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 80329FCC 00326F0C  40 81 00 14 */	ble lbl_80329FE0
/* 80329FD0 00326F10  40 81 00 14 */	ble lbl_80329FE4
/* 80329FD4 00326F14  FC 20 28 34 */	frsqrte f1, f5
/* 80329FD8 00326F18  EC A1 01 72 */	fmuls f5, f1, f5
/* 80329FDC 00326F1C  48 00 00 08 */	b lbl_80329FE4
lbl_80329FE0:
/* 80329FE0 00326F20  FC A0 08 90 */	fmr f5, f1
lbl_80329FE4:
/* 80329FE4 00326F24  C0 22 FB 48 */	lfs f1, lbl_8051DEA8@sda21(r2)
/* 80329FE8 00326F28  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 80329FEC 00326F2C  40 81 00 C8 */	ble lbl_8032A0B4
/* 80329FF0 00326F30  EC 43 28 24 */	fdivs f2, f3, f5
/* 80329FF4 00326F34  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80329FF8 00326F38  3C 60 80 51 */	lis r3, atanTable___5JMath@ha
/* 80329FFC 00326F3C  C0 9F 00 40 */	lfs f4, 0x40(r31)
/* 8032A000 00326F40  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 8032A004 00326F44  38 63 D1 E0 */	addi r3, r3, atanTable___5JMath@l
/* 8032A008 00326F48  EC E5 08 28 */	fsubs f7, f5, f1
/* 8032A00C 00326F4C  EC 26 28 24 */	fdivs f1, f6, f5
/* 8032A010 00326F50  EC 47 00 B2 */	fmuls f2, f7, f2
/* 8032A014 00326F54  EC 27 00 72 */	fmuls f1, f7, f1
/* 8032A018 00326F58  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8032A01C 00326F5C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8032A020 00326F60  EC 44 10 FC */	fnmsubs f2, f4, f3, f2
/* 8032A024 00326F64  EC 40 20 BA */	fmadds f2, f0, f2, f4
/* 8032A028 00326F68  D0 5F 00 40 */	stfs f2, 0x40(r31)
/* 8032A02C 00326F6C  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 8032A030 00326F70  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 8032A034 00326F74  C0 9F 00 30 */	lfs f4, 0x30(r31)
/* 8032A038 00326F78  EC 23 08 BC */	fnmsubs f1, f3, f2, f1
/* 8032A03C 00326F7C  EC 24 08 2A */	fadds f1, f4, f1
/* 8032A040 00326F80  EC 20 18 7A */	fmadds f1, f0, f1, f3
/* 8032A044 00326F84  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 8032A048 00326F88  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8032A04C 00326F8C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8032A050 00326F90  EC 22 08 3A */	fmadds f1, f2, f0, f1
/* 8032A054 00326F94  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 8032A058 00326F98  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 8032A05C 00326F9C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8032A060 00326FA0  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 8032A064 00326FA4  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8032A068 00326FA8  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8032A06C 00326FAC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8032A070 00326FB0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8032A074 00326FB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8032A078 00326FB8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8032A07C 00326FBC  EC 22 08 28 */	fsubs f1, f2, f1
/* 8032A080 00326FC0  FC 40 00 50 */	fneg f2, f0
/* 8032A084 00326FC4  4B D0 B0 85 */	bl atan2___Q25JMath18TAtanTable$$01024$$4f$$1CFff
/* 8032A088 00326FC8  C0 42 FB 60 */	lfs f2, lbl_8051DEC0@sda21(r2)
/* 8032A08C 00326FCC  C0 02 FB 5C */	lfs f0, lbl_8051DEBC@sda21(r2)
/* 8032A090 00326FD0  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8032A094 00326FD4  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8032A098 00326FD8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8032A09C 00326FDC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8032A0A0 00326FE0  D0 03 00 C0 */	stfs f0, 0xc0(r3)
/* 8032A0A4 00326FE4  81 83 00 00 */	lwz r12, 0(r3)
/* 8032A0A8 00326FE8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8032A0AC 00326FEC  7D 89 03 A6 */	mtctr r12
/* 8032A0B0 00326FF0  4E 80 04 21 */	bctrl 
lbl_8032A0B4:
/* 8032A0B4 00326FF4  38 00 00 00 */	li r0, 0
/* 8032A0B8 00326FF8  98 1F 00 20 */	stb r0, 0x20(r31)
lbl_8032A0BC:
/* 8032A0BC 00326FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032A0C0 00327000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032A0C4 00327004  7C 08 03 A6 */	mtlr r0
/* 8032A0C8 00327008  38 21 00 10 */	addi r1, r1, 0x10
/* 8032A0CC 0032700C  4E 80 00 20 */	blr 

.global draw__Q32og6Screen15CallBack_FurikoFR8GraphicsR14J2DGrafContext
draw__Q32og6Screen15CallBack_FurikoFR8GraphicsR14J2DGrafContext:
/* 8032A0D0 00327010  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8032A0D4 00327014  7C 08 02 A6 */	mflr r0
/* 8032A0D8 00327018  90 01 00 44 */	stw r0, 0x44(r1)
/* 8032A0DC 0032701C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8032A0E0 00327020  7C 7F 1B 78 */	mr r31, r3
/* 8032A0E4 00327024  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 8032A0E8 00327028  28 04 00 00 */	cmplwi r4, 0
/* 8032A0EC 0032702C  41 82 01 70 */	beq lbl_8032A25C
/* 8032A0F0 00327030  38 61 00 14 */	addi r3, r1, 0x14
/* 8032A0F4 00327034  38 A0 00 00 */	li r5, 0
/* 8032A0F8 00327038  4B D0 EE A1 */	bl getGlbVtx__7J2DPaneCFUc
/* 8032A0FC 0032703C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8032A100 00327040  38 61 00 08 */	addi r3, r1, 8
/* 8032A104 00327044  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 8032A108 00327048  38 A0 00 03 */	li r5, 3
/* 8032A10C 0032704C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8032A110 00327050  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8032A114 00327054  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8032A118 00327058  90 C1 00 30 */	stw r6, 0x30(r1)
/* 8032A11C 0032705C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032A120 00327060  4B D0 EE 79 */	bl getGlbVtx__7J2DPaneCFUc
/* 8032A124 00327064  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8032A128 00327068  3C 60 55 55 */	lis r3, 0x55555556@ha
/* 8032A12C 0032706C  80 C1 00 08 */	lwz r6, 8(r1)
/* 8032A130 00327070  38 03 55 56 */	addi r0, r3, 0x55555556@l
/* 8032A134 00327074  88 E4 00 B7 */	lbz r7, 0xb7(r4)
/* 8032A138 00327078  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8032A13C 0032707C  7C 60 38 96 */	mulhw r3, r0, r7
/* 8032A140 00327080  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8032A144 00327084  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8032A148 00327088  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8032A14C 0032708C  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8032A150 00327090  90 81 00 28 */	stw r4, 0x28(r1)
/* 8032A154 00327094  7C 03 02 14 */	add r0, r3, r0
/* 8032A158 00327098  1C 00 00 03 */	mulli r0, r0, 3
/* 8032A15C 0032709C  7C 00 38 50 */	subf r0, r0, r7
/* 8032A160 003270A0  2C 00 00 01 */	cmpwi r0, 1
/* 8032A164 003270A4  41 82 00 2C */	beq lbl_8032A190
/* 8032A168 003270A8  40 80 00 10 */	bge lbl_8032A178
/* 8032A16C 003270AC  2C 00 00 00 */	cmpwi r0, 0
/* 8032A170 003270B0  40 80 00 14 */	bge lbl_8032A184
/* 8032A174 003270B4  48 00 00 40 */	b lbl_8032A1B4
lbl_8032A178:
/* 8032A178 003270B8  2C 00 00 03 */	cmpwi r0, 3
/* 8032A17C 003270BC  40 80 00 38 */	bge lbl_8032A1B4
/* 8032A180 003270C0  48 00 00 2C */	b lbl_8032A1AC
lbl_8032A184:
/* 8032A184 003270C4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8032A188 003270C8  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8032A18C 003270CC  48 00 00 28 */	b lbl_8032A1B4
lbl_8032A190:
/* 8032A190 003270D0  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8032A194 003270D4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8032A198 003270D8  C0 02 FB 64 */	lfs f0, lbl_8051DEC4@sda21(r2)
/* 8032A19C 003270DC  EC 22 08 2A */	fadds f1, f2, f1
/* 8032A1A0 003270E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8032A1A4 003270E4  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8032A1A8 003270E8  48 00 00 0C */	b lbl_8032A1B4
lbl_8032A1AC:
/* 8032A1AC 003270EC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8032A1B0 003270F0  D0 1F 00 24 */	stfs f0, 0x24(r31)
lbl_8032A1B4:
/* 8032A1B4 003270F4  3C 60 55 55 */	lis r3, 0x55555556@ha
/* 8032A1B8 003270F8  38 03 55 56 */	addi r0, r3, 0x55555556@l
/* 8032A1BC 003270FC  7C 60 38 96 */	mulhw r3, r0, r7
/* 8032A1C0 00327100  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8032A1C4 00327104  7C 03 02 14 */	add r0, r3, r0
/* 8032A1C8 00327108  2C 00 00 01 */	cmpwi r0, 1
/* 8032A1CC 0032710C  41 82 00 2C */	beq lbl_8032A1F8
/* 8032A1D0 00327110  40 80 00 10 */	bge lbl_8032A1E0
/* 8032A1D4 00327114  2C 00 00 00 */	cmpwi r0, 0
/* 8032A1D8 00327118  40 80 00 14 */	bge lbl_8032A1EC
/* 8032A1DC 0032711C  48 00 00 40 */	b lbl_8032A21C
lbl_8032A1E0:
/* 8032A1E0 00327120  2C 00 00 03 */	cmpwi r0, 3
/* 8032A1E4 00327124  40 80 00 38 */	bge lbl_8032A21C
/* 8032A1E8 00327128  48 00 00 2C */	b lbl_8032A214
lbl_8032A1EC:
/* 8032A1EC 0032712C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8032A1F0 00327130  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8032A1F4 00327134  48 00 00 28 */	b lbl_8032A21C
lbl_8032A1F8:
/* 8032A1F8 00327138  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8032A1FC 0032713C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8032A200 00327140  C0 02 FB 64 */	lfs f0, lbl_8051DEC4@sda21(r2)
/* 8032A204 00327144  EC 22 08 2A */	fadds f1, f2, f1
/* 8032A208 00327148  EC 01 00 32 */	fmuls f0, f1, f0
/* 8032A20C 0032714C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8032A210 00327150  48 00 00 0C */	b lbl_8032A21C
lbl_8032A214:
/* 8032A214 00327154  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8032A218 00327158  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_8032A21C:
/* 8032A21C 0032715C  88 1F 00 21 */	lbz r0, 0x21(r31)
/* 8032A220 00327160  28 00 00 00 */	cmplwi r0, 0
/* 8032A224 00327164  41 82 00 30 */	beq lbl_8032A254
/* 8032A228 00327168  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8032A22C 0032716C  38 00 00 00 */	li r0, 0
/* 8032A230 00327170  C0 02 FB 48 */	lfs f0, lbl_8051DEA8@sda21(r2)
/* 8032A234 00327174  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 8032A238 00327178  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8032A23C 0032717C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8032A240 00327180  EC 22 08 2A */	fadds f1, f2, f1
/* 8032A244 00327184  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 8032A248 00327188  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8032A24C 0032718C  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8032A250 00327190  98 1F 00 21 */	stb r0, 0x21(r31)
lbl_8032A254:
/* 8032A254 00327194  38 00 00 01 */	li r0, 1
/* 8032A258 00327198  98 1F 00 20 */	stb r0, 0x20(r31)
lbl_8032A25C:
/* 8032A25C 0032719C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8032A260 003271A0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8032A264 003271A4  7C 08 03 A6 */	mtlr r0
/* 8032A268 003271A8  38 21 00 40 */	addi r1, r1, 0x40
/* 8032A26C 003271AC  4E 80 00 20 */	blr 

.global setCallBack_Furiko__Q22og6ScreenFPQ29P2DScreen3MgrUx
setCallBack_Furiko__Q22og6ScreenFPQ29P2DScreen3MgrUx:
/* 8032A270 003271B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032A274 003271B4  7C 08 02 A6 */	mflr r0
/* 8032A278 003271B8  3C 80 80 49 */	lis r4, lbl_8048F550@ha
/* 8032A27C 003271BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032A280 003271C0  BF 41 00 08 */	stmw r26, 8(r1)
/* 8032A284 003271C4  7C 7D 1B 78 */	mr r29, r3
/* 8032A288 003271C8  7C BF 2B 78 */	mr r31, r5
/* 8032A28C 003271CC  7C DE 33 78 */	mr r30, r6
/* 8032A290 003271D0  3B 64 F5 50 */	addi r27, r4, lbl_8048F550@l
/* 8032A294 003271D4  38 60 00 4C */	li r3, 0x4c
/* 8032A298 003271D8  4B CF 9C 0D */	bl __nw__FUl
/* 8032A29C 003271DC  7C 7A 1B 79 */	or. r26, r3, r3
/* 8032A2A0 003271E0  41 82 00 8C */	beq lbl_8032A32C
/* 8032A2A4 003271E4  48 0E 70 ED */	bl __ct__5CNodeFv
/* 8032A2A8 003271E8  3C 60 80 4D */	lis r3, __vt__Q29P2DScreen4Node@ha
/* 8032A2AC 003271EC  3C 80 80 4D */	lis r4, __vt__Q29P2DScreen12CallBackNode@ha
/* 8032A2B0 003271F0  38 03 7B 0C */	addi r0, r3, __vt__Q29P2DScreen4Node@l
/* 8032A2B4 003271F4  3C 60 80 4E */	lis r3, __vt__Q32og6Screen15CallBack_Furiko@ha
/* 8032A2B8 003271F8  90 1A 00 00 */	stw r0, 0(r26)
/* 8032A2BC 003271FC  38 A0 00 00 */	li r5, 0
/* 8032A2C0 00327200  38 84 7F 2C */	addi r4, r4, __vt__Q29P2DScreen12CallBackNode@l
/* 8032A2C4 00327204  38 63 9D 00 */	addi r3, r3, __vt__Q32og6Screen15CallBack_Furiko@l
/* 8032A2C8 00327208  90 BA 00 18 */	stw r5, 0x18(r26)
/* 8032A2CC 0032720C  38 00 00 01 */	li r0, 1
/* 8032A2D0 00327210  C0 62 FB 48 */	lfs f3, lbl_8051DEA8@sda21(r2)
/* 8032A2D4 00327214  90 9A 00 00 */	stw r4, 0(r26)
/* 8032A2D8 00327218  C0 42 FB 4C */	lfs f2, lbl_8051DEAC@sda21(r2)
/* 8032A2DC 0032721C  90 7A 00 00 */	stw r3, 0(r26)
/* 8032A2E0 00327220  C0 22 FB 50 */	lfs f1, lbl_8051DEB0@sda21(r2)
/* 8032A2E4 00327224  90 BA 00 1C */	stw r5, 0x1c(r26)
/* 8032A2E8 00327228  C0 02 FB 54 */	lfs f0, lbl_8051DEB4@sda21(r2)
/* 8032A2EC 0032722C  98 BA 00 20 */	stb r5, 0x20(r26)
/* 8032A2F0 00327230  98 1A 00 21 */	stb r0, 0x21(r26)
/* 8032A2F4 00327234  D0 7A 00 24 */	stfs f3, 0x24(r26)
/* 8032A2F8 00327238  D0 7A 00 28 */	stfs f3, 0x28(r26)
/* 8032A2FC 0032723C  D0 5A 00 2C */	stfs f2, 0x2c(r26)
/* 8032A300 00327240  D0 3A 00 30 */	stfs f1, 0x30(r26)
/* 8032A304 00327244  D0 1A 00 34 */	stfs f0, 0x34(r26)
/* 8032A308 00327248  C0 1A 00 24 */	lfs f0, 0x24(r26)
/* 8032A30C 0032724C  D0 1A 00 38 */	stfs f0, 0x38(r26)
/* 8032A310 00327250  C0 3A 00 28 */	lfs f1, 0x28(r26)
/* 8032A314 00327254  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 8032A318 00327258  EC 01 00 2A */	fadds f0, f1, f0
/* 8032A31C 0032725C  D0 1A 00 3C */	stfs f0, 0x3c(r26)
/* 8032A320 00327260  D0 7A 00 40 */	stfs f3, 0x40(r26)
/* 8032A324 00327264  D0 7A 00 44 */	stfs f3, 0x44(r26)
/* 8032A328 00327268  D0 7A 00 48 */	stfs f3, 0x48(r26)
lbl_8032A32C:
/* 8032A32C 0032726C  28 1A 00 00 */	cmplwi r26, 0
/* 8032A330 00327270  40 82 00 18 */	bne lbl_8032A348
/* 8032A334 00327274  38 7B 00 00 */	addi r3, r27, 0
/* 8032A338 00327278  38 BB 00 1C */	addi r5, r27, 0x1c
/* 8032A33C 0032727C  38 80 00 E3 */	li r4, 0xe3
/* 8032A340 00327280  4C C6 31 82 */	crclr 6
/* 8032A344 00327284  4B D0 02 FD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8032A348:
/* 8032A348 00327288  7F A3 EB 78 */	mr r3, r29
/* 8032A34C 0032728C  7F C6 F3 78 */	mr r6, r30
/* 8032A350 00327290  7F E5 FB 78 */	mr r5, r31
/* 8032A354 00327294  4B FD 8B 59 */	bl TagSearch__Q22og6ScreenFP9J2DScreenUx
/* 8032A358 00327298  7C 7C 1B 79 */	or. r28, r3, r3
/* 8032A35C 0032729C  40 82 00 18 */	bne lbl_8032A374
/* 8032A360 003272A0  38 7B 00 00 */	addi r3, r27, 0
/* 8032A364 003272A4  38 BB 00 1C */	addi r5, r27, 0x1c
/* 8032A368 003272A8  38 80 00 E5 */	li r4, 0xe5
/* 8032A36C 003272AC  4C C6 31 82 */	crclr 6
/* 8032A370 003272B0  4B D0 02 D1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8032A374:
/* 8032A374 003272B4  28 1C 00 00 */	cmplwi r28, 0
/* 8032A378 003272B8  41 82 00 7C */	beq lbl_8032A3F4
/* 8032A37C 003272BC  93 9A 00 1C */	stw r28, 0x1c(r26)
/* 8032A380 003272C0  C0 02 FB 48 */	lfs f0, lbl_8051DEA8@sda21(r2)
/* 8032A384 003272C4  80 7A 00 1C */	lwz r3, 0x1c(r26)
/* 8032A388 003272C8  D0 03 00 C0 */	stfs f0, 0xc0(r3)
/* 8032A38C 003272CC  81 83 00 00 */	lwz r12, 0(r3)
/* 8032A390 003272D0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8032A394 003272D4  7D 89 03 A6 */	mtctr r12
/* 8032A398 003272D8  4E 80 04 21 */	bctrl 
/* 8032A39C 003272DC  C0 02 FB 4C */	lfs f0, lbl_8051DEAC@sda21(r2)
/* 8032A3A0 003272E0  38 60 00 00 */	li r3, 0
/* 8032A3A4 003272E4  C0 22 FB 50 */	lfs f1, lbl_8051DEB0@sda21(r2)
/* 8032A3A8 003272E8  38 00 00 01 */	li r0, 1
/* 8032A3AC 003272EC  D0 1A 00 2C */	stfs f0, 0x2c(r26)
/* 8032A3B0 003272F0  C0 02 FB 54 */	lfs f0, lbl_8051DEB4@sda21(r2)
/* 8032A3B4 003272F4  D0 3A 00 30 */	stfs f1, 0x30(r26)
/* 8032A3B8 003272F8  C0 42 FB 48 */	lfs f2, lbl_8051DEA8@sda21(r2)
/* 8032A3BC 003272FC  D0 1A 00 34 */	stfs f0, 0x34(r26)
/* 8032A3C0 00327300  98 7A 00 20 */	stb r3, 0x20(r26)
/* 8032A3C4 00327304  98 1A 00 21 */	stb r0, 0x21(r26)
/* 8032A3C8 00327308  D0 5A 00 24 */	stfs f2, 0x24(r26)
/* 8032A3CC 0032730C  D0 5A 00 28 */	stfs f2, 0x28(r26)
/* 8032A3D0 00327310  C0 1A 00 24 */	lfs f0, 0x24(r26)
/* 8032A3D4 00327314  D0 1A 00 38 */	stfs f0, 0x38(r26)
/* 8032A3D8 00327318  C0 3A 00 28 */	lfs f1, 0x28(r26)
/* 8032A3DC 0032731C  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 8032A3E0 00327320  EC 01 00 2A */	fadds f0, f1, f0
/* 8032A3E4 00327324  D0 1A 00 3C */	stfs f0, 0x3c(r26)
/* 8032A3E8 00327328  D0 5A 00 40 */	stfs f2, 0x40(r26)
/* 8032A3EC 0032732C  D0 5A 00 44 */	stfs f2, 0x44(r26)
/* 8032A3F0 00327330  48 00 00 18 */	b lbl_8032A408
lbl_8032A3F4:
/* 8032A3F4 00327334  38 7B 00 00 */	addi r3, r27, 0
/* 8032A3F8 00327338  38 BB 00 10 */	addi r5, r27, 0x10
/* 8032A3FC 0032733C  38 80 00 76 */	li r4, 0x76
/* 8032A400 00327340  4C C6 31 82 */	crclr 6
/* 8032A404 00327344  4B D0 02 3D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8032A408:
/* 8032A408 00327348  7F A3 EB 78 */	mr r3, r29
/* 8032A40C 0032734C  7F C6 F3 78 */	mr r6, r30
/* 8032A410 00327350  7F E5 FB 78 */	mr r5, r31
/* 8032A414 00327354  7F 47 D3 78 */	mr r7, r26
/* 8032A418 00327358  48 10 A7 0D */	bl addCallBack__Q29P2DScreen3MgrFUxPQ29P2DScreen4Node
/* 8032A41C 0032735C  93 5C 00 1C */	stw r26, 0x1c(r28)
/* 8032A420 00327360  38 00 00 00 */	li r0, 0
/* 8032A424 00327364  7F 43 D3 78 */	mr r3, r26
/* 8032A428 00327368  90 1C 00 18 */	stw r0, 0x18(r28)
/* 8032A42C 0032736C  BB 41 00 08 */	lmw r26, 8(r1)
/* 8032A430 00327370  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032A434 00327374  7C 08 03 A6 */	mtlr r0
/* 8032A438 00327378  38 21 00 20 */	addi r1, r1, 0x20
/* 8032A43C 0032737C  4E 80 00 20 */	blr 

.global setFurikoScreen__Q22og6ScreenFPQ29P2DScreen3Mgr
setFurikoScreen__Q22og6ScreenFPQ29P2DScreen3Mgr:
/* 8032A440 00327380  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8032A444 00327384  7C 08 02 A6 */	mflr r0
/* 8032A448 00327388  3C E0 80 49 */	lis r7, lbl_8048F550@ha
/* 8032A44C 0032738C  3C C0 66 66 */	lis r6, 0x66666667@ha
/* 8032A450 00327390  90 01 00 44 */	stw r0, 0x44(r1)
/* 8032A454 00327394  3C A0 6B 6F */	lis r5, 0x6B6F3030@ha
/* 8032A458 00327398  3C 80 66 75 */	lis r4, 0x66757269@ha
/* 8032A45C 0032739C  BE A1 00 14 */	stmw r21, 0x14(r1)
/* 8032A460 003273A0  7C 76 1B 78 */	mr r22, r3
/* 8032A464 003273A4  3B 67 F5 50 */	addi r27, r7, lbl_8048F550@l
/* 8032A468 003273A8  3B 86 66 67 */	addi r28, r6, 0x66666667@l
/* 8032A46C 003273AC  3B A5 30 30 */	addi r29, r5, 0x6B6F3030@l
/* 8032A470 003273B0  3B C4 72 69 */	addi r30, r4, 0x66757269@l
/* 8032A474 003273B4  3B 20 00 00 */	li r25, 0
lbl_8032A478:
/* 8032A478 003273B8  7C BC C8 96 */	mulhw r5, r28, r25
/* 8032A47C 003273BC  81 96 00 00 */	lwz r12, 0(r22)
/* 8032A480 003273C0  7E C3 B3 78 */	mr r3, r22
/* 8032A484 003273C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8032A488 003273C8  7C A0 16 70 */	srawi r0, r5, 2
/* 8032A48C 003273CC  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8032A490 003273D0  7C 00 22 14 */	add r0, r0, r4
/* 8032A494 003273D4  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8032A498 003273D8  7C 80 C8 50 */	subf r4, r0, r25
/* 8032A49C 003273DC  7C 80 FE 70 */	srawi r0, r4, 0x1f
/* 8032A4A0 003273E0  7C C4 E8 14 */	addc r6, r4, r29
/* 8032A4A4 003273E4  7C E0 F1 14 */	adde r7, r0, r30
/* 8032A4A8 003273E8  7C A0 16 70 */	srawi r0, r5, 2
/* 8032A4AC 003273EC  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8032A4B0 003273F0  7C A0 22 14 */	add r5, r0, r4
/* 8032A4B4 003273F4  7C 1C 28 96 */	mulhw r0, r28, r5
/* 8032A4B8 003273F8  7C 00 16 70 */	srawi r0, r0, 2
/* 8032A4BC 003273FC  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8032A4C0 00327400  7C 00 22 14 */	add r0, r0, r4
/* 8032A4C4 00327404  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8032A4C8 00327408  7C 00 28 50 */	subf r0, r0, r5
/* 8032A4CC 0032740C  54 04 40 2E */	slwi r4, r0, 8
/* 8032A4D0 00327410  7C 80 FE 70 */	srawi r0, r4, 0x1f
/* 8032A4D4 00327414  7C C6 20 14 */	addc r6, r6, r4
/* 8032A4D8 00327418  7C A7 01 14 */	adde r5, r7, r0
/* 8032A4DC 0032741C  7C D7 33 78 */	mr r23, r6
/* 8032A4E0 00327420  7C B8 2B 78 */	mr r24, r5
/* 8032A4E4 00327424  7D 89 03 A6 */	mtctr r12
/* 8032A4E8 00327428  4E 80 04 21 */	bctrl 
/* 8032A4EC 0032742C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032A4F0 00327430  41 82 01 A0 */	beq lbl_8032A690
/* 8032A4F4 00327434  38 60 00 4C */	li r3, 0x4c
/* 8032A4F8 00327438  4B CF 99 AD */	bl __nw__FUl
/* 8032A4FC 0032743C  7C 7A 1B 79 */	or. r26, r3, r3
/* 8032A500 00327440  41 82 00 8C */	beq lbl_8032A58C
/* 8032A504 00327444  48 0E 6E 8D */	bl __ct__5CNodeFv
/* 8032A508 00327448  3C 60 80 4D */	lis r3, __vt__Q29P2DScreen4Node@ha
/* 8032A50C 0032744C  3C 80 80 4D */	lis r4, __vt__Q29P2DScreen12CallBackNode@ha
/* 8032A510 00327450  38 03 7B 0C */	addi r0, r3, __vt__Q29P2DScreen4Node@l
/* 8032A514 00327454  3C 60 80 4E */	lis r3, __vt__Q32og6Screen15CallBack_Furiko@ha
/* 8032A518 00327458  90 1A 00 00 */	stw r0, 0(r26)
/* 8032A51C 0032745C  38 A0 00 00 */	li r5, 0
/* 8032A520 00327460  38 84 7F 2C */	addi r4, r4, __vt__Q29P2DScreen12CallBackNode@l
/* 8032A524 00327464  38 63 9D 00 */	addi r3, r3, __vt__Q32og6Screen15CallBack_Furiko@l
/* 8032A528 00327468  90 BA 00 18 */	stw r5, 0x18(r26)
/* 8032A52C 0032746C  38 00 00 01 */	li r0, 1
/* 8032A530 00327470  C0 62 FB 48 */	lfs f3, lbl_8051DEA8@sda21(r2)
/* 8032A534 00327474  90 9A 00 00 */	stw r4, 0(r26)
/* 8032A538 00327478  C0 42 FB 4C */	lfs f2, lbl_8051DEAC@sda21(r2)
/* 8032A53C 0032747C  90 7A 00 00 */	stw r3, 0(r26)
/* 8032A540 00327480  C0 22 FB 50 */	lfs f1, lbl_8051DEB0@sda21(r2)
/* 8032A544 00327484  90 BA 00 1C */	stw r5, 0x1c(r26)
/* 8032A548 00327488  C0 02 FB 54 */	lfs f0, lbl_8051DEB4@sda21(r2)
/* 8032A54C 0032748C  98 BA 00 20 */	stb r5, 0x20(r26)
/* 8032A550 00327490  98 1A 00 21 */	stb r0, 0x21(r26)
/* 8032A554 00327494  D0 7A 00 24 */	stfs f3, 0x24(r26)
/* 8032A558 00327498  D0 7A 00 28 */	stfs f3, 0x28(r26)
/* 8032A55C 0032749C  D0 5A 00 2C */	stfs f2, 0x2c(r26)
/* 8032A560 003274A0  D0 3A 00 30 */	stfs f1, 0x30(r26)
/* 8032A564 003274A4  D0 1A 00 34 */	stfs f0, 0x34(r26)
/* 8032A568 003274A8  C0 1A 00 24 */	lfs f0, 0x24(r26)
/* 8032A56C 003274AC  D0 1A 00 38 */	stfs f0, 0x38(r26)
/* 8032A570 003274B0  C0 3A 00 28 */	lfs f1, 0x28(r26)
/* 8032A574 003274B4  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 8032A578 003274B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8032A57C 003274BC  D0 1A 00 3C */	stfs f0, 0x3c(r26)
/* 8032A580 003274C0  D0 7A 00 40 */	stfs f3, 0x40(r26)
/* 8032A584 003274C4  D0 7A 00 44 */	stfs f3, 0x44(r26)
/* 8032A588 003274C8  D0 7A 00 48 */	stfs f3, 0x48(r26)
lbl_8032A58C:
/* 8032A58C 003274CC  28 1A 00 00 */	cmplwi r26, 0
/* 8032A590 003274D0  40 82 00 18 */	bne lbl_8032A5A8
/* 8032A594 003274D4  38 7B 00 00 */	addi r3, r27, 0
/* 8032A598 003274D8  38 BB 00 1C */	addi r5, r27, 0x1c
/* 8032A59C 003274DC  38 80 00 E3 */	li r4, 0xe3
/* 8032A5A0 003274E0  4C C6 31 82 */	crclr 6
/* 8032A5A4 003274E4  4B D0 00 9D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8032A5A8:
/* 8032A5A8 003274E8  7E C3 B3 78 */	mr r3, r22
/* 8032A5AC 003274EC  7E E6 BB 78 */	mr r6, r23
/* 8032A5B0 003274F0  7F 05 C3 78 */	mr r5, r24
/* 8032A5B4 003274F4  4B FD 88 F9 */	bl TagSearch__Q22og6ScreenFP9J2DScreenUx
/* 8032A5B8 003274F8  7C 75 1B 79 */	or. r21, r3, r3
/* 8032A5BC 003274FC  40 82 00 18 */	bne lbl_8032A5D4
/* 8032A5C0 00327500  38 7B 00 00 */	addi r3, r27, 0
/* 8032A5C4 00327504  38 BB 00 1C */	addi r5, r27, 0x1c
/* 8032A5C8 00327508  38 80 00 E5 */	li r4, 0xe5
/* 8032A5CC 0032750C  4C C6 31 82 */	crclr 6
/* 8032A5D0 00327510  4B D0 00 71 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8032A5D4:
/* 8032A5D4 00327514  28 15 00 00 */	cmplwi r21, 0
/* 8032A5D8 00327518  41 82 00 7C */	beq lbl_8032A654
/* 8032A5DC 0032751C  92 BA 00 1C */	stw r21, 0x1c(r26)
/* 8032A5E0 00327520  C0 02 FB 48 */	lfs f0, lbl_8051DEA8@sda21(r2)
/* 8032A5E4 00327524  80 7A 00 1C */	lwz r3, 0x1c(r26)
/* 8032A5E8 00327528  D0 03 00 C0 */	stfs f0, 0xc0(r3)
/* 8032A5EC 0032752C  81 83 00 00 */	lwz r12, 0(r3)
/* 8032A5F0 00327530  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8032A5F4 00327534  7D 89 03 A6 */	mtctr r12
/* 8032A5F8 00327538  4E 80 04 21 */	bctrl 
/* 8032A5FC 0032753C  C0 02 FB 4C */	lfs f0, lbl_8051DEAC@sda21(r2)
/* 8032A600 00327540  38 60 00 00 */	li r3, 0
/* 8032A604 00327544  C0 22 FB 50 */	lfs f1, lbl_8051DEB0@sda21(r2)
/* 8032A608 00327548  38 00 00 01 */	li r0, 1
/* 8032A60C 0032754C  D0 1A 00 2C */	stfs f0, 0x2c(r26)
/* 8032A610 00327550  C0 02 FB 54 */	lfs f0, lbl_8051DEB4@sda21(r2)
/* 8032A614 00327554  D0 3A 00 30 */	stfs f1, 0x30(r26)
/* 8032A618 00327558  C0 42 FB 48 */	lfs f2, lbl_8051DEA8@sda21(r2)
/* 8032A61C 0032755C  D0 1A 00 34 */	stfs f0, 0x34(r26)
/* 8032A620 00327560  98 7A 00 20 */	stb r3, 0x20(r26)
/* 8032A624 00327564  98 1A 00 21 */	stb r0, 0x21(r26)
/* 8032A628 00327568  D0 5A 00 24 */	stfs f2, 0x24(r26)
/* 8032A62C 0032756C  D0 5A 00 28 */	stfs f2, 0x28(r26)
/* 8032A630 00327570  C0 1A 00 24 */	lfs f0, 0x24(r26)
/* 8032A634 00327574  D0 1A 00 38 */	stfs f0, 0x38(r26)
/* 8032A638 00327578  C0 3A 00 28 */	lfs f1, 0x28(r26)
/* 8032A63C 0032757C  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 8032A640 00327580  EC 01 00 2A */	fadds f0, f1, f0
/* 8032A644 00327584  D0 1A 00 3C */	stfs f0, 0x3c(r26)
/* 8032A648 00327588  D0 5A 00 40 */	stfs f2, 0x40(r26)
/* 8032A64C 0032758C  D0 5A 00 44 */	stfs f2, 0x44(r26)
/* 8032A650 00327590  48 00 00 18 */	b lbl_8032A668
lbl_8032A654:
/* 8032A654 00327594  38 7B 00 00 */	addi r3, r27, 0
/* 8032A658 00327598  38 BB 00 10 */	addi r5, r27, 0x10
/* 8032A65C 0032759C  38 80 00 76 */	li r4, 0x76
/* 8032A660 003275A0  4C C6 31 82 */	crclr 6
/* 8032A664 003275A4  4B CF FF DD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8032A668:
/* 8032A668 003275A8  7E C3 B3 78 */	mr r3, r22
/* 8032A66C 003275AC  7E E6 BB 78 */	mr r6, r23
/* 8032A670 003275B0  7F 05 C3 78 */	mr r5, r24
/* 8032A674 003275B4  7F 47 D3 78 */	mr r7, r26
/* 8032A678 003275B8  48 10 A4 AD */	bl addCallBack__Q29P2DScreen3MgrFUxPQ29P2DScreen4Node
/* 8032A67C 003275BC  93 55 00 1C */	stw r26, 0x1c(r21)
/* 8032A680 003275C0  38 00 00 00 */	li r0, 0
/* 8032A684 003275C4  90 15 00 18 */	stw r0, 0x18(r21)
/* 8032A688 003275C8  93 5F 00 1C */	stw r26, 0x1c(r31)
/* 8032A68C 003275CC  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_8032A690:
/* 8032A690 003275D0  3B 39 00 01 */	addi r25, r25, 1
/* 8032A694 003275D4  2C 19 00 64 */	cmpwi r25, 0x64
/* 8032A698 003275D8  41 80 FD E0 */	blt lbl_8032A478
/* 8032A69C 003275DC  BA A1 00 14 */	lmw r21, 0x14(r1)
/* 8032A6A0 003275E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8032A6A4 003275E4  7C 08 03 A6 */	mtlr r0
/* 8032A6A8 003275E8  38 21 00 40 */	addi r1, r1, 0x40
/* 8032A6AC 003275EC  4E 80 00 20 */	blr 

.global getFurikoPtr__Q22og6ScreenFPQ29P2DScreen3MgrUx
getFurikoPtr__Q22og6ScreenFPQ29P2DScreen3MgrUx:
/* 8032A6B0 003275F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032A6B4 003275F4  7C 08 02 A6 */	mflr r0
/* 8032A6B8 003275F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032A6BC 003275FC  4B FD 87 F1 */	bl TagSearch__Q22og6ScreenFP9J2DScreenUx
/* 8032A6C0 00327600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032A6C4 00327604  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8032A6C8 00327608  7C 08 03 A6 */	mtlr r0
/* 8032A6CC 0032760C  38 21 00 10 */	addi r1, r1, 0x10
/* 8032A6D0 00327610  4E 80 00 20 */	blr 

.global __dt__Q32og6Screen15CallBack_FurikoFv
__dt__Q32og6Screen15CallBack_FurikoFv:
/* 8032A6D4 00327614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032A6D8 00327618  7C 08 02 A6 */	mflr r0
/* 8032A6DC 0032761C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032A6E0 00327620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032A6E4 00327624  7C 9F 23 78 */	mr r31, r4
/* 8032A6E8 00327628  93 C1 00 08 */	stw r30, 8(r1)
/* 8032A6EC 0032762C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8032A6F0 00327630  41 82 00 48 */	beq lbl_8032A738
/* 8032A6F4 00327634  3C 80 80 4E */	lis r4, __vt__Q32og6Screen15CallBack_Furiko@ha
/* 8032A6F8 00327638  38 04 9D 00 */	addi r0, r4, __vt__Q32og6Screen15CallBack_Furiko@l
/* 8032A6FC 0032763C  90 1E 00 00 */	stw r0, 0(r30)
/* 8032A700 00327640  41 82 00 28 */	beq lbl_8032A728
/* 8032A704 00327644  3C 80 80 4D */	lis r4, __vt__Q29P2DScreen12CallBackNode@ha
/* 8032A708 00327648  38 04 7F 2C */	addi r0, r4, __vt__Q29P2DScreen12CallBackNode@l
/* 8032A70C 0032764C  90 1E 00 00 */	stw r0, 0(r30)
/* 8032A710 00327650  41 82 00 18 */	beq lbl_8032A728
/* 8032A714 00327654  3C A0 80 4D */	lis r5, __vt__Q29P2DScreen4Node@ha
/* 8032A718 00327658  38 80 00 00 */	li r4, 0
/* 8032A71C 0032765C  38 05 7B 0C */	addi r0, r5, __vt__Q29P2DScreen4Node@l
/* 8032A720 00327660  90 1E 00 00 */	stw r0, 0(r30)
/* 8032A724 00327664  48 0E 6E 65 */	bl __dt__5CNodeFv
lbl_8032A728:
/* 8032A728 00327668  7F E0 07 35 */	extsh. r0, r31
/* 8032A72C 0032766C  40 81 00 0C */	ble lbl_8032A738
/* 8032A730 00327670  7F C3 F3 78 */	mr r3, r30
/* 8032A734 00327674  4B CF 99 81 */	bl __dl__FPv
lbl_8032A738:
/* 8032A738 00327678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032A73C 0032767C  7F C3 F3 78 */	mr r3, r30
/* 8032A740 00327680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032A744 00327684  83 C1 00 08 */	lwz r30, 8(r1)
/* 8032A748 00327688  7C 08 03 A6 */	mtlr r0
/* 8032A74C 0032768C  38 21 00 10 */	addi r1, r1, 0x10
/* 8032A750 00327690  4E 80 00 20 */	blr 
