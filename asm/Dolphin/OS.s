.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __OSFPRInit
__OSFPRInit:
/* 800EAFC8 000E7F08  7C 60 00 A6 */	mfmsr r3
/* 800EAFCC 000E7F0C  60 63 20 00 */	ori r3, r3, 0x2000
/* 800EAFD0 000E7F10  7C 60 01 24 */	mtmsr r3
/* 800EAFD4 000E7F14  7C 78 E2 A6 */	mfspr r3, 0x398
/* 800EAFD8 000E7F18  54 63 1F FF */	rlwinm. r3, r3, 3, 0x1f, 0x1f
/* 800EAFDC 000E7F1C  41 82 00 8C */	beq lbl_800EB068
/* 800EAFE0 000E7F20  3C 60 80 51 */	lis r3, ZeroPS@ha
/* 800EAFE4 000E7F24  38 63 55 A8 */	addi r3, r3, ZeroPS@l
/* 800EAFE8 000E7F28  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800EAFEC 000E7F2C  10 20 00 90 */	ps_mr f1, f0
/* 800EAFF0 000E7F30  10 40 00 90 */	ps_mr f2, f0
/* 800EAFF4 000E7F34  10 60 00 90 */	ps_mr f3, f0
/* 800EAFF8 000E7F38  10 80 00 90 */	ps_mr f4, f0
/* 800EAFFC 000E7F3C  10 A0 00 90 */	ps_mr f5, f0
/* 800EB000 000E7F40  10 C0 00 90 */	ps_mr f6, f0
/* 800EB004 000E7F44  10 E0 00 90 */	ps_mr f7, f0
/* 800EB008 000E7F48  11 00 00 90 */	ps_mr f8, f0
/* 800EB00C 000E7F4C  11 20 00 90 */	ps_mr f9, f0
/* 800EB010 000E7F50  11 40 00 90 */	ps_mr f10, f0
/* 800EB014 000E7F54  11 60 00 90 */	ps_mr f11, f0
/* 800EB018 000E7F58  11 80 00 90 */	ps_mr f12, f0
/* 800EB01C 000E7F5C  11 A0 00 90 */	ps_mr f13, f0
/* 800EB020 000E7F60  11 C0 00 90 */	ps_mr f14, f0
/* 800EB024 000E7F64  11 E0 00 90 */	ps_mr f15, f0
/* 800EB028 000E7F68  12 00 00 90 */	ps_mr f16, f0
/* 800EB02C 000E7F6C  12 20 00 90 */	ps_mr f17, f0
/* 800EB030 000E7F70  12 40 00 90 */	ps_mr f18, f0
/* 800EB034 000E7F74  12 60 00 90 */	ps_mr f19, f0
/* 800EB038 000E7F78  12 80 00 90 */	ps_mr f20, f0
/* 800EB03C 000E7F7C  12 A0 00 90 */	ps_mr f21, f0
/* 800EB040 000E7F80  12 C0 00 90 */	ps_mr f22, f0
/* 800EB044 000E7F84  12 E0 00 90 */	ps_mr f23, f0
/* 800EB048 000E7F88  13 00 00 90 */	ps_mr f24, f0
/* 800EB04C 000E7F8C  13 20 00 90 */	ps_mr f25, f0
/* 800EB050 000E7F90  13 40 00 90 */	ps_mr f26, f0
/* 800EB054 000E7F94  13 60 00 90 */	ps_mr f27, f0
/* 800EB058 000E7F98  13 80 00 90 */	ps_mr f28, f0
/* 800EB05C 000E7F9C  13 A0 00 90 */	ps_mr f29, f0
/* 800EB060 000E7FA0  13 C0 00 90 */	ps_mr f30, f0
/* 800EB064 000E7FA4  13 E0 00 90 */	ps_mr f31, f0
lbl_800EB068:
/* 800EB068 000E7FA8  C8 0D 8F 20 */	lfd f0, ZeroF@sda21(r13)
/* 800EB06C 000E7FAC  FC 20 00 90 */	fmr f1, f0
/* 800EB070 000E7FB0  FC 40 00 90 */	fmr f2, f0
/* 800EB074 000E7FB4  FC 60 00 90 */	fmr f3, f0
/* 800EB078 000E7FB8  FC 80 00 90 */	fmr f4, f0
/* 800EB07C 000E7FBC  FC A0 00 90 */	fmr f5, f0
/* 800EB080 000E7FC0  FC C0 00 90 */	fmr f6, f0
/* 800EB084 000E7FC4  FC E0 00 90 */	fmr f7, f0
/* 800EB088 000E7FC8  FD 00 00 90 */	fmr f8, f0
/* 800EB08C 000E7FCC  FD 20 00 90 */	fmr f9, f0
/* 800EB090 000E7FD0  FD 40 00 90 */	fmr f10, f0
/* 800EB094 000E7FD4  FD 60 00 90 */	fmr f11, f0
/* 800EB098 000E7FD8  FD 80 00 90 */	fmr f12, f0
/* 800EB09C 000E7FDC  FD A0 00 90 */	fmr f13, f0
/* 800EB0A0 000E7FE0  FD C0 00 90 */	fmr f14, f0
/* 800EB0A4 000E7FE4  FD E0 00 90 */	fmr f15, f0
/* 800EB0A8 000E7FE8  FE 00 00 90 */	fmr f16, f0
/* 800EB0AC 000E7FEC  FE 20 00 90 */	fmr f17, f0
/* 800EB0B0 000E7FF0  FE 40 00 90 */	fmr f18, f0
/* 800EB0B4 000E7FF4  FE 60 00 90 */	fmr f19, f0
/* 800EB0B8 000E7FF8  FE 80 00 90 */	fmr f20, f0
/* 800EB0BC 000E7FFC  FE A0 00 90 */	fmr f21, f0
/* 800EB0C0 000E8000  FE C0 00 90 */	fmr f22, f0
/* 800EB0C4 000E8004  FE E0 00 90 */	fmr f23, f0
/* 800EB0C8 000E8008  FF 00 00 90 */	fmr f24, f0
/* 800EB0CC 000E800C  FF 20 00 90 */	fmr f25, f0
/* 800EB0D0 000E8010  FF 40 00 90 */	fmr f26, f0
/* 800EB0D4 000E8014  FF 60 00 90 */	fmr f27, f0
/* 800EB0D8 000E8018  FF 80 00 90 */	fmr f28, f0
/* 800EB0DC 000E801C  FF A0 00 90 */	fmr f29, f0
/* 800EB0E0 000E8020  FF C0 00 90 */	fmr f30, f0
/* 800EB0E4 000E8024  FF E0 00 90 */	fmr f31, f0
/* 800EB0E8 000E8028  FD FE 05 8E */	mtfsf 0xff, f0
/* 800EB0EC 000E802C  4E 80 00 20 */	blr 

.global OSGetConsoleType
OSGetConsoleType:
/* 800EB0F0 000E8030  80 6D 8F 10 */	lwz r3, BootInfo_1@sda21(r13)
/* 800EB0F4 000E8034  28 03 00 00 */	cmplwi r3, 0
/* 800EB0F8 000E8038  41 82 00 10 */	beq lbl_800EB108
/* 800EB0FC 000E803C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800EB100 000E8040  28 03 00 00 */	cmplwi r3, 0
/* 800EB104 000E8044  40 82 00 10 */	bne lbl_800EB114
lbl_800EB108:
/* 800EB108 000E8048  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 800EB10C 000E804C  38 63 00 02 */	addi r3, r3, 0x10000002@l
/* 800EB110 000E8050  48 00 00 04 */	b lbl_800EB114
lbl_800EB114:
/* 800EB114 000E8054  4E 80 00 20 */	blr 

.global ClearArena
ClearArena:
/* 800EB118 000E8058  7C 08 02 A6 */	mflr r0
/* 800EB11C 000E805C  90 01 00 04 */	stw r0, 4(r1)
/* 800EB120 000E8060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EB124 000E8064  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EB128 000E8068  48 00 55 75 */	bl OSGetResetCode
/* 800EB12C 000E806C  3C 03 80 00 */	addis r0, r3, 0x8000
/* 800EB130 000E8070  28 00 00 00 */	cmplwi r0, 0
/* 800EB134 000E8074  41 82 00 34 */	beq lbl_800EB168
/* 800EB138 000E8078  38 00 00 00 */	li r0, 0
/* 800EB13C 000E807C  90 0D 8F 3C */	stw r0, __OSSavedRegionStart@sda21(r13)
/* 800EB140 000E8080  90 0D 8F 38 */	stw r0, __OSSavedRegionEnd@sda21(r13)
/* 800EB144 000E8084  48 00 12 E1 */	bl OSGetArenaHi
/* 800EB148 000E8088  7C 7F 1B 78 */	mr r31, r3
/* 800EB14C 000E808C  48 00 12 E1 */	bl OSGetArenaLo
/* 800EB150 000E8090  7F E3 F8 50 */	subf r31, r3, r31
/* 800EB154 000E8094  48 00 12 D9 */	bl OSGetArenaLo
/* 800EB158 000E8098  7F E5 FB 78 */	mr r5, r31
/* 800EB15C 000E809C  38 80 00 00 */	li r4, 0
/* 800EB160 000E80A0  4B F1 9F 55 */	bl memset
/* 800EB164 000E80A4  48 00 00 C8 */	b lbl_800EB22C
lbl_800EB168:
/* 800EB168 000E80A8  3C 80 81 30 */	lis r4, 0x812FDFF0@ha
/* 800EB16C 000E80AC  80 64 DF F0 */	lwz r3, 0x812FDFF0@l(r4)
/* 800EB170 000E80B0  80 04 DF EC */	lwz r0, -0x2014(r4)
/* 800EB174 000E80B4  28 03 00 00 */	cmplwi r3, 0
/* 800EB178 000E80B8  90 6D 8F 3C */	stw r3, __OSSavedRegionStart@sda21(r13)
/* 800EB17C 000E80BC  90 0D 8F 38 */	stw r0, __OSSavedRegionEnd@sda21(r13)
/* 800EB180 000E80C0  40 82 00 28 */	bne lbl_800EB1A8
/* 800EB184 000E80C4  48 00 12 A1 */	bl OSGetArenaHi
/* 800EB188 000E80C8  7C 7F 1B 78 */	mr r31, r3
/* 800EB18C 000E80CC  48 00 12 A1 */	bl OSGetArenaLo
/* 800EB190 000E80D0  7F E3 F8 50 */	subf r31, r3, r31
/* 800EB194 000E80D4  48 00 12 99 */	bl OSGetArenaLo
/* 800EB198 000E80D8  7F E5 FB 78 */	mr r5, r31
/* 800EB19C 000E80DC  38 80 00 00 */	li r4, 0
/* 800EB1A0 000E80E0  4B F1 9F 15 */	bl memset
/* 800EB1A4 000E80E4  48 00 00 88 */	b lbl_800EB22C
lbl_800EB1A8:
/* 800EB1A8 000E80E8  48 00 12 85 */	bl OSGetArenaLo
/* 800EB1AC 000E80EC  80 0D 8F 3C */	lwz r0, __OSSavedRegionStart@sda21(r13)
/* 800EB1B0 000E80F0  7C 03 00 40 */	cmplw r3, r0
/* 800EB1B4 000E80F4  40 80 00 78 */	bge lbl_800EB22C
/* 800EB1B8 000E80F8  48 00 12 6D */	bl OSGetArenaHi
/* 800EB1BC 000E80FC  80 0D 8F 3C */	lwz r0, __OSSavedRegionStart@sda21(r13)
/* 800EB1C0 000E8100  7C 03 00 40 */	cmplw r3, r0
/* 800EB1C4 000E8104  41 81 00 28 */	bgt lbl_800EB1EC
/* 800EB1C8 000E8108  48 00 12 5D */	bl OSGetArenaHi
/* 800EB1CC 000E810C  7C 7F 1B 78 */	mr r31, r3
/* 800EB1D0 000E8110  48 00 12 5D */	bl OSGetArenaLo
/* 800EB1D4 000E8114  7F E3 F8 50 */	subf r31, r3, r31
/* 800EB1D8 000E8118  48 00 12 55 */	bl OSGetArenaLo
/* 800EB1DC 000E811C  7F E5 FB 78 */	mr r5, r31
/* 800EB1E0 000E8120  38 80 00 00 */	li r4, 0
/* 800EB1E4 000E8124  4B F1 9E D1 */	bl memset
/* 800EB1E8 000E8128  48 00 00 44 */	b lbl_800EB22C
lbl_800EB1EC:
/* 800EB1EC 000E812C  48 00 12 41 */	bl OSGetArenaLo
/* 800EB1F0 000E8130  80 0D 8F 3C */	lwz r0, __OSSavedRegionStart@sda21(r13)
/* 800EB1F4 000E8134  7F E3 00 50 */	subf r31, r3, r0
/* 800EB1F8 000E8138  48 00 12 35 */	bl OSGetArenaLo
/* 800EB1FC 000E813C  7F E5 FB 78 */	mr r5, r31
/* 800EB200 000E8140  38 80 00 00 */	li r4, 0
/* 800EB204 000E8144  4B F1 9E B1 */	bl memset
/* 800EB208 000E8148  48 00 12 1D */	bl OSGetArenaHi
/* 800EB20C 000E814C  83 ED 8F 38 */	lwz r31, __OSSavedRegionEnd@sda21(r13)
/* 800EB210 000E8150  7C 03 F8 40 */	cmplw r3, r31
/* 800EB214 000E8154  40 81 00 18 */	ble lbl_800EB22C
/* 800EB218 000E8158  48 00 12 0D */	bl OSGetArenaHi
/* 800EB21C 000E815C  7C BF 18 50 */	subf r5, r31, r3
/* 800EB220 000E8160  7F E3 FB 78 */	mr r3, r31
/* 800EB224 000E8164  38 80 00 00 */	li r4, 0
/* 800EB228 000E8168  4B F1 9E 8D */	bl memset
lbl_800EB22C:
/* 800EB22C 000E816C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EB230 000E8170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EB234 000E8174  38 21 00 10 */	addi r1, r1, 0x10
/* 800EB238 000E8178  7C 08 03 A6 */	mtlr r0
/* 800EB23C 000E817C  4E 80 00 20 */	blr 

.global InquiryCallback
InquiryCallback:
/* 800EB240 000E8180  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800EB244 000E8184  2C 00 00 00 */	cmpwi r0, 0
/* 800EB248 000E8188  41 82 00 08 */	beq lbl_800EB250
/* 800EB24C 000E818C  48 00 00 20 */	b lbl_800EB26C
lbl_800EB250:
/* 800EB250 000E8190  3C 60 80 4F */	lis r3, DriveInfo@ha
/* 800EB254 000E8194  38 63 66 20 */	addi r3, r3, DriveInfo@l
/* 800EB258 000E8198  A0 03 00 02 */	lhz r0, 2(r3)
/* 800EB25C 000E819C  3C 60 80 00 */	lis r3, 0x800030E6@ha
/* 800EB260 000E81A0  60 00 80 00 */	ori r0, r0, 0x8000
/* 800EB264 000E81A4  B0 03 30 E6 */	sth r0, 0x800030E6@l(r3)
/* 800EB268 000E81A8  48 00 00 10 */	b lbl_800EB278
lbl_800EB26C:
/* 800EB26C 000E81AC  38 00 00 01 */	li r0, 1
/* 800EB270 000E81B0  3C 60 80 00 */	lis r3, 0x800030E6@ha
/* 800EB274 000E81B4  B0 03 30 E6 */	sth r0, 0x800030E6@l(r3)
lbl_800EB278:
/* 800EB278 000E81B8  4E 80 00 20 */	blr 

.global OSInit
OSInit:
/* 800EB27C 000E81BC  7C 08 02 A6 */	mflr r0
/* 800EB280 000E81C0  90 01 00 04 */	stw r0, 4(r1)
/* 800EB284 000E81C4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800EB288 000E81C8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800EB28C 000E81CC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800EB290 000E81D0  93 A1 00 0C */	stw r29, 0xc(r1)
/* 800EB294 000E81D4  80 0D 8F 30 */	lwz r0, AreWeInitialized@sda21(r13)
/* 800EB298 000E81D8  3C 60 80 4F */	lis r3, DriveInfo@ha
/* 800EB29C 000E81DC  3B C3 66 20 */	addi r30, r3, DriveInfo@l
/* 800EB2A0 000E81E0  2C 00 00 00 */	cmpwi r0, 0
/* 800EB2A4 000E81E4  3C 60 80 4B */	lis r3, lbl_804A8900@ha
/* 800EB2A8 000E81E8  3B E3 89 00 */	addi r31, r3, lbl_804A8900@l
/* 800EB2AC 000E81EC  40 82 03 8C */	bne lbl_800EB638
/* 800EB2B0 000E81F0  38 00 00 01 */	li r0, 1
/* 800EB2B4 000E81F4  90 0D 8F 30 */	stw r0, AreWeInitialized@sda21(r13)
/* 800EB2B8 000E81F8  48 00 78 F9 */	bl __OSGetSystemTime
/* 800EB2BC 000E81FC  90 8D 8F 4C */	stw r4, lbl_805155CC@sda21(r13)
/* 800EB2C0 000E8200  90 6D 8F 48 */	stw r3, __OSStartTime@sda21(r13)
/* 800EB2C4 000E8204  48 00 39 75 */	bl OSDisableInterrupts
/* 800EB2C8 000E8208  38 60 00 00 */	li r3, 0
/* 800EB2CC 000E820C  4B FE 92 E1 */	bl PPCMtmmcr0
/* 800EB2D0 000E8210  38 60 00 00 */	li r3, 0
/* 800EB2D4 000E8214  4B FE 92 E1 */	bl PPCMtmmcr1
/* 800EB2D8 000E8218  38 60 00 00 */	li r3, 0
/* 800EB2DC 000E821C  4B FE 92 E1 */	bl PPCMtpmc1
/* 800EB2E0 000E8220  38 60 00 00 */	li r3, 0
/* 800EB2E4 000E8224  4B FE 92 E1 */	bl PPCMtpmc2
/* 800EB2E8 000E8228  38 60 00 00 */	li r3, 0
/* 800EB2EC 000E822C  4B FE 92 E1 */	bl PPCMtpmc3
/* 800EB2F0 000E8230  38 60 00 00 */	li r3, 0
/* 800EB2F4 000E8234  4B FE 92 E1 */	bl PPCMtpmc4
/* 800EB2F8 000E8238  4B FE 93 45 */	bl PPCDisableSpeculation
/* 800EB2FC 000E823C  4B FE 93 69 */	bl PPCSetFpNonIEEEMode
/* 800EB300 000E8240  38 00 00 00 */	li r0, 0
/* 800EB304 000E8244  3C 80 80 00 */	lis r4, 0x800000F4@ha
/* 800EB308 000E8248  90 0D 8F 14 */	stw r0, BI2DebugFlag@sda21(r13)
/* 800EB30C 000E824C  90 8D 8F 10 */	stw r4, BootInfo_1@sda21(r13)
/* 800EB310 000E8250  90 0D 8E 24 */	stw r0, __DVDLongFileNameFlag@sda21(r13)
/* 800EB314 000E8254  80 64 00 F4 */	lwz r3, 0x800000F4@l(r4)
/* 800EB318 000E8258  28 03 00 00 */	cmplwi r3, 0
/* 800EB31C 000E825C  41 82 00 34 */	beq lbl_800EB350
/* 800EB320 000E8260  38 03 00 0C */	addi r0, r3, 0xc
/* 800EB324 000E8264  90 0D 8F 14 */	stw r0, BI2DebugFlag@sda21(r13)
/* 800EB328 000E8268  80 03 00 24 */	lwz r0, 0x24(r3)
/* 800EB32C 000E826C  80 6D 8F 14 */	lwz r3, BI2DebugFlag@sda21(r13)
/* 800EB330 000E8270  90 0D 90 18 */	stw r0, __PADSpec@sda21(r13)
/* 800EB334 000E8274  80 03 00 00 */	lwz r0, 0(r3)
/* 800EB338 000E8278  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800EB33C 000E827C  98 04 30 E8 */	stb r0, 0x30e8(r4)
/* 800EB340 000E8280  80 0D 90 18 */	lwz r0, __PADSpec@sda21(r13)
/* 800EB344 000E8284  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800EB348 000E8288  98 04 30 E9 */	stb r0, 0x30e9(r4)
/* 800EB34C 000E828C  48 00 00 28 */	b lbl_800EB374
lbl_800EB350:
/* 800EB350 000E8290  80 04 00 34 */	lwz r0, 0x34(r4)
/* 800EB354 000E8294  28 00 00 00 */	cmplwi r0, 0
/* 800EB358 000E8298  41 82 00 1C */	beq lbl_800EB374
/* 800EB35C 000E829C  88 64 30 E8 */	lbz r3, 0x30e8(r4)
/* 800EB360 000E82A0  38 0D 8F 18 */	addi r0, r13, BI2DebugFlagHolder@sda21
/* 800EB364 000E82A4  90 6D 8F 18 */	stw r3, BI2DebugFlagHolder@sda21(r13)
/* 800EB368 000E82A8  90 0D 8F 14 */	stw r0, BI2DebugFlag@sda21(r13)
/* 800EB36C 000E82AC  88 04 30 E9 */	lbz r0, 0x30e9(r4)
/* 800EB370 000E82B0  90 0D 90 18 */	stw r0, __PADSpec@sda21(r13)
lbl_800EB374:
/* 800EB374 000E82B4  38 00 00 01 */	li r0, 1
/* 800EB378 000E82B8  80 6D 8F 10 */	lwz r3, BootInfo_1@sda21(r13)
/* 800EB37C 000E82BC  90 0D 8E 24 */	stw r0, __DVDLongFileNameFlag@sda21(r13)
/* 800EB380 000E82C0  80 63 00 30 */	lwz r3, 0x30(r3)
/* 800EB384 000E82C4  28 03 00 00 */	cmplwi r3, 0
/* 800EB388 000E82C8  40 82 00 10 */	bne lbl_800EB398
/* 800EB38C 000E82CC  3C 60 80 53 */	lis r3, 0x80532EE0@ha
/* 800EB390 000E82D0  38 63 2E E0 */	addi r3, r3, 0x80532EE0@l
/* 800EB394 000E82D4  48 00 00 04 */	b lbl_800EB398
lbl_800EB398:
/* 800EB398 000E82D8  48 00 10 A5 */	bl OSSetArenaLo
/* 800EB39C 000E82DC  80 6D 8F 10 */	lwz r3, BootInfo_1@sda21(r13)
/* 800EB3A0 000E82E0  80 03 00 30 */	lwz r0, 0x30(r3)
/* 800EB3A4 000E82E4  28 00 00 00 */	cmplwi r0, 0
/* 800EB3A8 000E82E8  40 82 00 30 */	bne lbl_800EB3D8
/* 800EB3AC 000E82EC  80 6D 8F 14 */	lwz r3, BI2DebugFlag@sda21(r13)
/* 800EB3B0 000E82F0  28 03 00 00 */	cmplwi r3, 0
/* 800EB3B4 000E82F4  41 82 00 24 */	beq lbl_800EB3D8
/* 800EB3B8 000E82F8  80 03 00 00 */	lwz r0, 0(r3)
/* 800EB3BC 000E82FC  28 00 00 02 */	cmplwi r0, 2
/* 800EB3C0 000E8300  40 80 00 18 */	bge lbl_800EB3D8
/* 800EB3C4 000E8304  3C 60 80 53 */	lis r3, 0x80530ED8@ha
/* 800EB3C8 000E8308  38 63 0E D8 */	addi r3, r3, 0x80530ED8@l
/* 800EB3CC 000E830C  38 03 00 1F */	addi r0, r3, 0x1f
/* 800EB3D0 000E8310  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 800EB3D4 000E8314  48 00 10 69 */	bl OSSetArenaLo
lbl_800EB3D8:
/* 800EB3D8 000E8318  80 6D 8F 10 */	lwz r3, BootInfo_1@sda21(r13)
/* 800EB3DC 000E831C  80 63 00 34 */	lwz r3, 0x34(r3)
/* 800EB3E0 000E8320  28 03 00 00 */	cmplwi r3, 0
/* 800EB3E4 000E8324  40 82 00 10 */	bne lbl_800EB3F4
/* 800EB3E8 000E8328  3C 60 81 70 */	lis r3, 0x81700000@ha
/* 800EB3EC 000E832C  38 63 00 00 */	addi r3, r3, 0x81700000@l
/* 800EB3F0 000E8330  48 00 00 04 */	b lbl_800EB3F4
lbl_800EB3F4:
/* 800EB3F4 000E8334  48 00 10 41 */	bl OSSetArenaHi
/* 800EB3F8 000E8338  48 00 02 5D */	bl OSExceptionInit
/* 800EB3FC 000E833C  48 00 63 F9 */	bl __OSInitSystemCall
/* 800EB400 000E8340  48 00 06 B5 */	bl OSInitAlarm
/* 800EB404 000E8344  48 00 40 A1 */	bl __OSModuleInit
/* 800EB408 000E8348  48 00 38 AD */	bl __OSInterruptInit
/* 800EB40C 000E834C  3C 60 80 0F */	lis r3, __OSResetSWInterruptHandler@ha
/* 800EB410 000E8350  38 83 06 D0 */	addi r4, r3, __OSResetSWInterruptHandler@l
/* 800EB414 000E8354  38 60 00 16 */	li r3, 0x16
/* 800EB418 000E8358  48 00 38 6D */	bl __OSSetInterruptHandler
/* 800EB41C 000E835C  48 00 21 5D */	bl __OSContextInit
/* 800EB420 000E8360  48 00 18 3D */	bl __OSCacheInit
/* 800EB424 000E8364  4B FF 59 79 */	bl EXIInit
/* 800EB428 000E8368  48 00 A3 C9 */	bl SIInit
/* 800EB42C 000E836C  48 00 57 C9 */	bl __OSInitSram
/* 800EB430 000E8370  48 00 64 2D */	bl __OSThreadInit
/* 800EB434 000E8374  48 00 10 11 */	bl __OSInitAudioSystem
/* 800EB438 000E8378  4B FE 91 ED */	bl PPCMfhid2
/* 800EB43C 000E837C  54 63 00 80 */	rlwinm r3, r3, 0, 2, 0
/* 800EB440 000E8380  4B FE 91 ED */	bl PPCMthid2
/* 800EB444 000E8384  80 0D 8F 40 */	lwz r0, __OSInIPL@sda21(r13)
/* 800EB448 000E8388  2C 00 00 00 */	cmpwi r0, 0
/* 800EB44C 000E838C  40 82 00 08 */	bne lbl_800EB454
/* 800EB450 000E8390  48 00 45 C9 */	bl __OSInitMemoryProtection
lbl_800EB454:
/* 800EB454 000E8394  38 7F 00 44 */	addi r3, r31, 0x44
/* 800EB458 000E8398  4C C6 31 82 */	crclr 6
/* 800EB45C 000E839C  48 00 22 91 */	bl OSReport
/* 800EB460 000E83A0  38 7F 00 54 */	addi r3, r31, 0x54
/* 800EB464 000E83A4  4C C6 31 82 */	crclr 6
/* 800EB468 000E83A8  38 9F 00 6C */	addi r4, r31, 0x6c
/* 800EB46C 000E83AC  38 BF 00 78 */	addi r5, r31, 0x78
/* 800EB470 000E83B0  48 00 22 7D */	bl OSReport
/* 800EB474 000E83B4  38 7F 00 84 */	addi r3, r31, 0x84
/* 800EB478 000E83B8  4C C6 31 82 */	crclr 6
/* 800EB47C 000E83BC  48 00 22 71 */	bl OSReport
/* 800EB480 000E83C0  80 6D 8F 10 */	lwz r3, BootInfo_1@sda21(r13)
/* 800EB484 000E83C4  28 03 00 00 */	cmplwi r3, 0
/* 800EB488 000E83C8  41 82 00 10 */	beq lbl_800EB498
/* 800EB48C 000E83CC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 800EB490 000E83D0  28 04 00 00 */	cmplwi r4, 0
/* 800EB494 000E83D4  40 82 00 10 */	bne lbl_800EB4A4
lbl_800EB498:
/* 800EB498 000E83D8  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 800EB49C 000E83DC  38 83 00 02 */	addi r4, r3, 0x10000002@l
/* 800EB4A0 000E83E0  48 00 00 04 */	b lbl_800EB4A4
lbl_800EB4A4:
/* 800EB4A4 000E83E4  54 83 00 06 */	rlwinm r3, r4, 0, 0, 3
/* 800EB4A8 000E83E8  3C 00 10 00 */	lis r0, 0x1000
/* 800EB4AC 000E83EC  7C 03 00 00 */	cmpw r3, r0
/* 800EB4B0 000E83F0  41 82 00 34 */	beq lbl_800EB4E4
/* 800EB4B4 000E83F4  40 80 00 10 */	bge lbl_800EB4C4
/* 800EB4B8 000E83F8  2C 03 00 00 */	cmpwi r3, 0
/* 800EB4BC 000E83FC  41 82 00 18 */	beq lbl_800EB4D4
/* 800EB4C0 000E8400  48 00 00 B8 */	b lbl_800EB578
lbl_800EB4C4:
/* 800EB4C4 000E8404  3C 00 20 00 */	lis r0, 0x2000
/* 800EB4C8 000E8408  7C 03 00 00 */	cmpw r3, r0
/* 800EB4CC 000E840C  41 82 00 18 */	beq lbl_800EB4E4
/* 800EB4D0 000E8410  48 00 00 A8 */	b lbl_800EB578
lbl_800EB4D4:
/* 800EB4D4 000E8414  4C C6 31 82 */	crclr 6
/* 800EB4D8 000E8418  38 7F 00 94 */	addi r3, r31, 0x94
/* 800EB4DC 000E841C  48 00 22 11 */	bl OSReport
/* 800EB4E0 000E8420  48 00 00 A4 */	b lbl_800EB584
lbl_800EB4E4:
/* 800EB4E4 000E8424  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 800EB4E8 000E8428  54 85 01 3E */	clrlwi r5, r4, 4
/* 800EB4EC 000E842C  38 03 00 02 */	addi r0, r3, 0x10000002@l
/* 800EB4F0 000E8430  7C 05 00 00 */	cmpw r5, r0
/* 800EB4F4 000E8434  41 82 00 48 */	beq lbl_800EB53C
/* 800EB4F8 000E8438  40 80 00 14 */	bge lbl_800EB50C
/* 800EB4FC 000E843C  7C 05 18 00 */	cmpw r5, r3
/* 800EB500 000E8440  41 82 00 1C */	beq lbl_800EB51C
/* 800EB504 000E8444  40 80 00 28 */	bge lbl_800EB52C
/* 800EB508 000E8448  48 00 00 54 */	b lbl_800EB55C
lbl_800EB50C:
/* 800EB50C 000E844C  38 03 00 04 */	addi r0, r3, 4
/* 800EB510 000E8450  7C 05 00 00 */	cmpw r5, r0
/* 800EB514 000E8454  40 80 00 48 */	bge lbl_800EB55C
/* 800EB518 000E8458  48 00 00 34 */	b lbl_800EB54C
lbl_800EB51C:
/* 800EB51C 000E845C  38 7F 00 A0 */	addi r3, r31, 0xa0
/* 800EB520 000E8460  4C C6 31 82 */	crclr 6
/* 800EB524 000E8464  48 00 21 C9 */	bl OSReport
/* 800EB528 000E8468  48 00 00 5C */	b lbl_800EB584
lbl_800EB52C:
/* 800EB52C 000E846C  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 800EB530 000E8470  4C C6 31 82 */	crclr 6
/* 800EB534 000E8474  48 00 21 B9 */	bl OSReport
/* 800EB538 000E8478  48 00 00 4C */	b lbl_800EB584
lbl_800EB53C:
/* 800EB53C 000E847C  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 800EB540 000E8480  4C C6 31 82 */	crclr 6
/* 800EB544 000E8484  48 00 21 A9 */	bl OSReport
/* 800EB548 000E8488  48 00 00 3C */	b lbl_800EB584
lbl_800EB54C:
/* 800EB54C 000E848C  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 800EB550 000E8490  4C C6 31 82 */	crclr 6
/* 800EB554 000E8494  48 00 21 99 */	bl OSReport
/* 800EB558 000E8498  48 00 00 2C */	b lbl_800EB584
lbl_800EB55C:
/* 800EB55C 000E849C  54 86 01 3E */	clrlwi r6, r4, 4
/* 800EB560 000E84A0  4C C6 31 82 */	crclr 6
/* 800EB564 000E84A4  7C 85 23 78 */	mr r5, r4
/* 800EB568 000E84A8  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 800EB56C 000E84AC  38 86 FF FD */	addi r4, r6, -3
/* 800EB570 000E84B0  48 00 21 7D */	bl OSReport
/* 800EB574 000E84B4  48 00 00 10 */	b lbl_800EB584
lbl_800EB578:
/* 800EB578 000E84B8  4C C6 31 82 */	crclr 6
/* 800EB57C 000E84BC  38 6D 83 4C */	addi r3, r13, lbl_805149CC@sda21
/* 800EB580 000E84C0  48 00 21 6D */	bl OSReport
lbl_800EB584:
/* 800EB584 000E84C4  80 8D 8F 10 */	lwz r4, BootInfo_1@sda21(r13)
/* 800EB588 000E84C8  38 7F 00 FC */	addi r3, r31, 0xfc
/* 800EB58C 000E84CC  4C C6 31 82 */	crclr 6
/* 800EB590 000E84D0  80 04 00 28 */	lwz r0, 0x28(r4)
/* 800EB594 000E84D4  54 04 65 3E */	srwi r4, r0, 0x14
/* 800EB598 000E84D8  48 00 21 55 */	bl OSReport
/* 800EB59C 000E84DC  48 00 0E 89 */	bl OSGetArenaHi
/* 800EB5A0 000E84E0  7C 7D 1B 78 */	mr r29, r3
/* 800EB5A4 000E84E4  48 00 0E 89 */	bl OSGetArenaLo
/* 800EB5A8 000E84E8  7C 64 1B 78 */	mr r4, r3
/* 800EB5AC 000E84EC  4C C6 31 82 */	crclr 6
/* 800EB5B0 000E84F0  7F A5 EB 78 */	mr r5, r29
/* 800EB5B4 000E84F4  38 7F 01 0C */	addi r3, r31, 0x10c
/* 800EB5B8 000E84F8  48 00 21 35 */	bl OSReport
/* 800EB5BC 000E84FC  80 6D 83 48 */	lwz r3, __OSVersion@sda21(r13)
/* 800EB5C0 000E8500  48 00 04 C9 */	bl OSRegisterVersion
/* 800EB5C4 000E8504  80 6D 8F 14 */	lwz r3, BI2DebugFlag@sda21(r13)
/* 800EB5C8 000E8508  28 03 00 00 */	cmplwi r3, 0
/* 800EB5CC 000E850C  41 82 00 14 */	beq lbl_800EB5E0
/* 800EB5D0 000E8510  80 03 00 00 */	lwz r0, 0(r3)
/* 800EB5D4 000E8514  28 00 00 02 */	cmplwi r0, 2
/* 800EB5D8 000E8518  41 80 00 08 */	blt lbl_800EB5E0
/* 800EB5DC 000E851C  4B FD 4E 11 */	bl EnableMetroTRKInterrupts
lbl_800EB5E0:
/* 800EB5E0 000E8520  4B FF FB 39 */	bl ClearArena
/* 800EB5E4 000E8524  48 00 36 69 */	bl OSEnableInterrupts
/* 800EB5E8 000E8528  80 0D 8F 40 */	lwz r0, __OSInIPL@sda21(r13)
/* 800EB5EC 000E852C  2C 00 00 00 */	cmpwi r0, 0
/* 800EB5F0 000E8530  40 82 00 48 */	bne lbl_800EB638
/* 800EB5F4 000E8534  4B FF 17 39 */	bl DVDInit
/* 800EB5F8 000E8538  80 0D 8F 1C */	lwz r0, __OSIsGcam@sda21(r13)
/* 800EB5FC 000E853C  2C 00 00 00 */	cmpwi r0, 0
/* 800EB600 000E8540  41 82 00 18 */	beq lbl_800EB618
/* 800EB604 000E8544  3C 60 00 01 */	lis r3, 0x00009000@ha
/* 800EB608 000E8548  38 03 90 00 */	addi r0, r3, 0x00009000@l
/* 800EB60C 000E854C  3C 60 80 00 */	lis r3, 0x800030E6@ha
/* 800EB610 000E8550  B0 03 30 E6 */	sth r0, 0x800030E6@l(r3)
/* 800EB614 000E8554  48 00 00 24 */	b lbl_800EB638
lbl_800EB618:
/* 800EB618 000E8558  7F C3 F3 78 */	mr r3, r30
/* 800EB61C 000E855C  38 80 00 20 */	li r4, 0x20
/* 800EB620 000E8560  48 00 10 CD */	bl DCInvalidateRange
/* 800EB624 000E8564  3C 60 80 0F */	lis r3, InquiryCallback@ha
/* 800EB628 000E8568  38 A3 B2 40 */	addi r5, r3, InquiryCallback@l
/* 800EB62C 000E856C  7F C4 F3 78 */	mr r4, r30
/* 800EB630 000E8570  38 7E 00 20 */	addi r3, r30, 0x20
/* 800EB634 000E8574  4B FF 36 1D */	bl DVDInquiryAsync
lbl_800EB638:
/* 800EB638 000E8578  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800EB63C 000E857C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800EB640 000E8580  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800EB644 000E8584  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 800EB648 000E8588  38 21 00 18 */	addi r1, r1, 0x18
/* 800EB64C 000E858C  7C 08 03 A6 */	mtlr r0
/* 800EB650 000E8590  4E 80 00 20 */	blr 

.global OSExceptionInit
OSExceptionInit:
/* 800EB654 000E8594  7C 08 02 A6 */	mflr r0
/* 800EB658 000E8598  90 01 00 04 */	stw r0, 4(r1)
/* 800EB65C 000E859C  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800EB660 000E85A0  BE 81 00 08 */	stmw r20, 8(r1)
/* 800EB664 000E85A4  3C 60 80 00 */	lis r3, 0x80000060@ha
/* 800EB668 000E85A8  80 03 00 60 */	lwz r0, 0x80000060@l(r3)
/* 800EB66C 000E85AC  3C 80 80 0F */	lis r4, lbl_800EB994@ha
/* 800EB670 000E85B0  3B C4 B9 94 */	addi r30, r4, lbl_800EB994@l
/* 800EB674 000E85B4  3C A0 80 0F */	lis r5, OSExceptionVector@ha
/* 800EB678 000E85B8  83 3E 00 00 */	lwz r25, 0(r30)
/* 800EB67C 000E85BC  3C 80 80 0F */	lis r4, lbl_800EB9C4@ha
/* 800EB680 000E85C0  38 A5 B9 2C */	addi r5, r5, OSExceptionVector@l
/* 800EB684 000E85C4  38 84 B9 C4 */	addi r4, r4, lbl_800EB9C4@l
/* 800EB688 000E85C8  3C C0 80 4B */	lis r6, lbl_804A8900@ha
/* 800EB68C 000E85CC  28 00 00 00 */	cmplwi r0, 0
/* 800EB690 000E85D0  7C B8 2B 78 */	mr r24, r5
/* 800EB694 000E85D4  3B A6 89 00 */	addi r29, r6, lbl_804A8900@l
/* 800EB698 000E85D8  7E E5 20 50 */	subf r23, r5, r4
/* 800EB69C 000E85DC  3A 83 00 60 */	addi r20, r3, 0x60
/* 800EB6A0 000E85E0  40 82 00 4C */	bne lbl_800EB6EC
/* 800EB6A4 000E85E4  38 7D 01 60 */	addi r3, r29, 0x160
/* 800EB6A8 000E85E8  4C C6 31 82 */	crclr 6
/* 800EB6AC 000E85EC  4B FE F5 B5 */	bl DBPrintf
/* 800EB6B0 000E85F0  3C 80 80 0F */	lis r4, __OSDBIntegrator@ha
/* 800EB6B4 000E85F4  3C 60 80 0F */	lis r3, __OSDBJump@ha
/* 800EB6B8 000E85F8  38 03 B8 F8 */	addi r0, r3, __OSDBJump@l
/* 800EB6BC 000E85FC  38 84 B8 D4 */	addi r4, r4, __OSDBIntegrator@l
/* 800EB6C0 000E8600  7E A4 00 50 */	subf r21, r4, r0
/* 800EB6C4 000E8604  7E 83 A3 78 */	mr r3, r20
/* 800EB6C8 000E8608  7E A5 AB 78 */	mr r5, r21
/* 800EB6CC 000E860C  4B F1 9A D1 */	bl memcpy
/* 800EB6D0 000E8610  7E 83 A3 78 */	mr r3, r20
/* 800EB6D4 000E8614  7E A4 AB 78 */	mr r4, r21
/* 800EB6D8 000E8618  48 00 10 A1 */	bl DCFlushRangeNoSync
/* 800EB6DC 000E861C  7C 00 04 AC */	sync 0
/* 800EB6E0 000E8620  7E 83 A3 78 */	mr r3, r20
/* 800EB6E4 000E8624  7E A4 AB 78 */	mr r4, r21
/* 800EB6E8 000E8628  48 00 11 15 */	bl ICInvalidateRange
lbl_800EB6EC:
/* 800EB6EC 000E862C  3C 80 80 0F */	lis r4, __OSDBJump@ha
/* 800EB6F0 000E8630  3C 60 80 0F */	lis r3, __OSSetExceptionHandler@ha
/* 800EB6F4 000E8634  3B E4 B8 F8 */	addi r31, r4, __OSDBJump@l
/* 800EB6F8 000E8638  38 03 B8 FC */	addi r0, r3, __OSSetExceptionHandler@l
/* 800EB6FC 000E863C  3B 9D 01 24 */	addi r28, r29, 0x124
/* 800EB700 000E8640  7F 7F 00 50 */	subf r27, r31, r0
/* 800EB704 000E8644  3B 40 00 00 */	li r26, 0
/* 800EB708 000E8648  48 00 00 04 */	b lbl_800EB70C
lbl_800EB70C:
/* 800EB70C 000E864C  3C 60 80 0F */	lis r3, lbl_800EB984@ha
/* 800EB710 000E8650  3A A3 B9 84 */	addi r21, r3, lbl_800EB984@l
/* 800EB714 000E8654  3E C0 60 00 */	lis r22, 0x6000
/* 800EB718 000E8658  48 00 00 04 */	b lbl_800EB71C
lbl_800EB71C:
/* 800EB71C 000E865C  48 00 01 48 */	b lbl_800EB864
lbl_800EB720:
/* 800EB720 000E8660  80 6D 8F 14 */	lwz r3, BI2DebugFlag@sda21(r13)
/* 800EB724 000E8664  28 03 00 00 */	cmplwi r3, 0
/* 800EB728 000E8668  41 82 00 34 */	beq lbl_800EB75C
/* 800EB72C 000E866C  80 03 00 00 */	lwz r0, 0(r3)
/* 800EB730 000E8670  28 00 00 02 */	cmplwi r0, 2
/* 800EB734 000E8674  41 80 00 28 */	blt lbl_800EB75C
/* 800EB738 000E8678  7F 43 D3 78 */	mr r3, r26
/* 800EB73C 000E867C  4B FE F5 09 */	bl __DBIsExceptionMarked
/* 800EB740 000E8680  2C 03 00 00 */	cmpwi r3, 0
/* 800EB744 000E8684  41 82 00 18 */	beq lbl_800EB75C
/* 800EB748 000E8688  38 7D 01 7C */	addi r3, r29, 0x17c
/* 800EB74C 000E868C  4C C6 31 82 */	crclr 6
/* 800EB750 000E8690  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 800EB754 000E8694  4B FE F5 0D */	bl DBPrintf
/* 800EB758 000E8698  48 00 01 04 */	b lbl_800EB85C
lbl_800EB75C:
/* 800EB75C 000E869C  57 54 06 3E */	clrlwi r20, r26, 0x18
/* 800EB760 000E86A0  7F 20 A3 78 */	or r0, r25, r20
/* 800EB764 000E86A4  90 1E 00 00 */	stw r0, 0(r30)
/* 800EB768 000E86A8  7F 43 D3 78 */	mr r3, r26
/* 800EB76C 000E86AC  4B FE F4 D9 */	bl __DBIsExceptionMarked
/* 800EB770 000E86B0  2C 03 00 00 */	cmpwi r3, 0
/* 800EB774 000E86B4  41 82 00 28 */	beq lbl_800EB79C
/* 800EB778 000E86B8  7E 84 A3 78 */	mr r4, r20
/* 800EB77C 000E86BC  4C C6 31 82 */	crclr 6
/* 800EB780 000E86C0  38 7D 01 AC */	addi r3, r29, 0x1ac
/* 800EB784 000E86C4  4B FE F4 DD */	bl DBPrintf
/* 800EB788 000E86C8  7E A3 AB 78 */	mr r3, r21
/* 800EB78C 000E86CC  7F E4 FB 78 */	mr r4, r31
/* 800EB790 000E86D0  7F 65 DB 78 */	mr r5, r27
/* 800EB794 000E86D4  4B F1 9A 09 */	bl memcpy
/* 800EB798 000E86D8  48 00 00 90 */	b lbl_800EB828
lbl_800EB79C:
/* 800EB79C 000E86DC  7E A4 AB 78 */	mr r4, r21
/* 800EB7A0 000E86E0  48 00 00 04 */	b lbl_800EB7A4
lbl_800EB7A4:
/* 800EB7A4 000E86E4  28 1B 00 00 */	cmplwi r27, 0
/* 800EB7A8 000E86E8  38 7B 00 03 */	addi r3, r27, 3
/* 800EB7AC 000E86EC  54 63 F0 BE */	srwi r3, r3, 2
/* 800EB7B0 000E86F0  40 81 00 78 */	ble lbl_800EB828
/* 800EB7B4 000E86F4  54 60 E8 FE */	srwi r0, r3, 3
/* 800EB7B8 000E86F8  28 00 00 00 */	cmplwi r0, 0
/* 800EB7BC 000E86FC  7C 09 03 A6 */	mtctr r0
/* 800EB7C0 000E8700  41 82 00 54 */	beq lbl_800EB814
/* 800EB7C4 000E8704  48 00 00 04 */	b lbl_800EB7C8
lbl_800EB7C8:
/* 800EB7C8 000E8708  92 C4 00 00 */	stw r22, 0(r4)
/* 800EB7CC 000E870C  38 84 00 04 */	addi r4, r4, 4
/* 800EB7D0 000E8710  92 C4 00 00 */	stw r22, 0(r4)
/* 800EB7D4 000E8714  38 84 00 04 */	addi r4, r4, 4
/* 800EB7D8 000E8718  92 C4 00 00 */	stw r22, 0(r4)
/* 800EB7DC 000E871C  38 84 00 04 */	addi r4, r4, 4
/* 800EB7E0 000E8720  92 C4 00 00 */	stw r22, 0(r4)
/* 800EB7E4 000E8724  38 84 00 04 */	addi r4, r4, 4
/* 800EB7E8 000E8728  92 C4 00 00 */	stw r22, 0(r4)
/* 800EB7EC 000E872C  38 84 00 04 */	addi r4, r4, 4
/* 800EB7F0 000E8730  92 C4 00 00 */	stw r22, 0(r4)
/* 800EB7F4 000E8734  38 84 00 04 */	addi r4, r4, 4
/* 800EB7F8 000E8738  92 C4 00 00 */	stw r22, 0(r4)
/* 800EB7FC 000E873C  38 84 00 04 */	addi r4, r4, 4
/* 800EB800 000E8740  92 C4 00 00 */	stw r22, 0(r4)
/* 800EB804 000E8744  38 84 00 04 */	addi r4, r4, 4
/* 800EB808 000E8748  42 00 FF C0 */	bdnz lbl_800EB7C8
/* 800EB80C 000E874C  70 63 00 07 */	andi. r3, r3, 7
/* 800EB810 000E8750  41 82 00 18 */	beq lbl_800EB828
lbl_800EB814:
/* 800EB814 000E8754  7C 69 03 A6 */	mtctr r3
/* 800EB818 000E8758  48 00 00 04 */	b lbl_800EB81C
lbl_800EB81C:
/* 800EB81C 000E875C  92 C4 00 00 */	stw r22, 0(r4)
/* 800EB820 000E8760  38 84 00 04 */	addi r4, r4, 4
/* 800EB824 000E8764  42 00 FF F8 */	bdnz lbl_800EB81C
lbl_800EB828:
/* 800EB828 000E8768  80 7C 00 00 */	lwz r3, 0(r28)
/* 800EB82C 000E876C  7F 04 C3 78 */	mr r4, r24
/* 800EB830 000E8770  7E E5 BB 78 */	mr r5, r23
/* 800EB834 000E8774  3E 83 80 00 */	addis r20, r3, 0x8000
/* 800EB838 000E8778  7E 83 A3 78 */	mr r3, r20
/* 800EB83C 000E877C  4B F1 99 61 */	bl memcpy
/* 800EB840 000E8780  7E 83 A3 78 */	mr r3, r20
/* 800EB844 000E8784  7E E4 BB 78 */	mr r4, r23
/* 800EB848 000E8788  48 00 0F 31 */	bl DCFlushRangeNoSync
/* 800EB84C 000E878C  7C 00 04 AC */	sync 0
/* 800EB850 000E8790  7E 83 A3 78 */	mr r3, r20
/* 800EB854 000E8794  7E E4 BB 78 */	mr r4, r23
/* 800EB858 000E8798  48 00 0F A5 */	bl ICInvalidateRange
lbl_800EB85C:
/* 800EB85C 000E879C  3B 9C 00 04 */	addi r28, r28, 4
/* 800EB860 000E87A0  3B 5A 00 01 */	addi r26, r26, 1
lbl_800EB864:
/* 800EB864 000E87A4  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 800EB868 000E87A8  28 00 00 0F */	cmplwi r0, 0xf
/* 800EB86C 000E87AC  41 80 FE B4 */	blt lbl_800EB720
/* 800EB870 000E87B0  3C 60 80 00 */	lis r3, 0x80003000@ha
/* 800EB874 000E87B4  38 03 30 00 */	addi r0, r3, 0x80003000@l
/* 800EB878 000E87B8  90 0D 8F 34 */	stw r0, OSExceptionTable@sda21(r13)
/* 800EB87C 000E87BC  3A 80 00 00 */	li r20, 0
/* 800EB880 000E87C0  48 00 00 04 */	b lbl_800EB884
lbl_800EB884:
/* 800EB884 000E87C4  3C 60 80 0F */	lis r3, OSDefaultExceptionHandler@ha
/* 800EB888 000E87C8  3A E3 B9 C8 */	addi r23, r3, OSDefaultExceptionHandler@l
/* 800EB88C 000E87CC  48 00 00 04 */	b lbl_800EB890
lbl_800EB890:
/* 800EB890 000E87D0  48 00 00 14 */	b lbl_800EB8A4
lbl_800EB894:
/* 800EB894 000E87D4  7E 83 A3 78 */	mr r3, r20
/* 800EB898 000E87D8  7E E4 BB 78 */	mr r4, r23
/* 800EB89C 000E87DC  48 00 00 61 */	bl __OSSetExceptionHandler
/* 800EB8A0 000E87E0  3A 94 00 01 */	addi r20, r20, 1
lbl_800EB8A4:
/* 800EB8A4 000E87E4  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 800EB8A8 000E87E8  28 00 00 0F */	cmplwi r0, 0xf
/* 800EB8AC 000E87EC  41 80 FF E8 */	blt lbl_800EB894
/* 800EB8B0 000E87F0  93 3E 00 00 */	stw r25, 0(r30)
/* 800EB8B4 000E87F4  38 7D 01 DC */	addi r3, r29, 0x1dc
/* 800EB8B8 000E87F8  4C C6 31 82 */	crclr 6
/* 800EB8BC 000E87FC  4B FE F3 A5 */	bl DBPrintf
/* 800EB8C0 000E8800  BA 81 00 08 */	lmw r20, 8(r1)
/* 800EB8C4 000E8804  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800EB8C8 000E8808  38 21 00 38 */	addi r1, r1, 0x38
/* 800EB8CC 000E880C  7C 08 03 A6 */	mtlr r0
/* 800EB8D0 000E8810  4E 80 00 20 */	blr 

.global __OSDBIntegrator
__OSDBIntegrator:
/* 800EB8D4 000E8814  38 A0 00 40 */	li r5, 0x40
/* 800EB8D8 000E8818  7C 68 02 A6 */	mflr r3
/* 800EB8DC 000E881C  90 65 00 0C */	stw r3, 0xc(r5)
/* 800EB8E0 000E8820  80 65 00 08 */	lwz r3, 8(r5)
/* 800EB8E4 000E8824  64 63 80 00 */	oris r3, r3, 0x8000
/* 800EB8E8 000E8828  7C 68 03 A6 */	mtlr r3
/* 800EB8EC 000E882C  38 60 00 30 */	li r3, 0x30
/* 800EB8F0 000E8830  7C 60 01 24 */	mtmsr r3
/* 800EB8F4 000E8834  4E 80 00 20 */	blr 

.global __OSDBJump
__OSDBJump:
/* 800EB8F8 000E8838  48 00 00 63 */	bla 0x60

.global __OSSetExceptionHandler
__OSSetExceptionHandler:
/* 800EB8FC 000E883C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800EB900 000E8840  80 6D 8F 34 */	lwz r3, OSExceptionTable@sda21(r13)
/* 800EB904 000E8844  54 00 10 3A */	slwi r0, r0, 2
/* 800EB908 000E8848  7C A3 02 14 */	add r5, r3, r0
/* 800EB90C 000E884C  80 65 00 00 */	lwz r3, 0(r5)
/* 800EB910 000E8850  90 85 00 00 */	stw r4, 0(r5)
/* 800EB914 000E8854  4E 80 00 20 */	blr 

.global __OSGetExceptionHandler
__OSGetExceptionHandler:
/* 800EB918 000E8858  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800EB91C 000E885C  80 6D 8F 34 */	lwz r3, OSExceptionTable@sda21(r13)
/* 800EB920 000E8860  54 00 10 3A */	slwi r0, r0, 2
/* 800EB924 000E8864  7C 63 00 2E */	lwzx r3, r3, r0
/* 800EB928 000E8868  4E 80 00 20 */	blr 

.global OSExceptionVector
OSExceptionVector:
/* 800EB92C 000E886C  7C 90 43 A6 */	mtspr 0x110, r4
/* 800EB930 000E8870  80 80 00 C0 */	lwz r4, 0xc0(0)
/* 800EB934 000E8874  90 64 00 0C */	stw r3, 0xc(r4)
/* 800EB938 000E8878  7C 70 42 A6 */	mfspr r3, 0x110
/* 800EB93C 000E887C  90 64 00 10 */	stw r3, 0x10(r4)
/* 800EB940 000E8880  90 A4 00 14 */	stw r5, 0x14(r4)
/* 800EB944 000E8884  A0 64 01 A2 */	lhz r3, 0x1a2(r4)
/* 800EB948 000E8888  60 63 00 02 */	ori r3, r3, 2
/* 800EB94C 000E888C  B0 64 01 A2 */	sth r3, 0x1a2(r4)
/* 800EB950 000E8890  7C 60 00 26 */	mfcr r3
/* 800EB954 000E8894  90 64 00 80 */	stw r3, 0x80(r4)
/* 800EB958 000E8898  7C 68 02 A6 */	mflr r3
/* 800EB95C 000E889C  90 64 00 84 */	stw r3, 0x84(r4)
/* 800EB960 000E88A0  7C 69 02 A6 */	mfctr r3
/* 800EB964 000E88A4  90 64 00 88 */	stw r3, 0x88(r4)
/* 800EB968 000E88A8  7C 61 02 A6 */	mfxer r3
/* 800EB96C 000E88AC  90 64 00 8C */	stw r3, 0x8c(r4)
/* 800EB970 000E88B0  7C 7A 02 A6 */	mfspr r3, 0x1a
/* 800EB974 000E88B4  90 64 01 98 */	stw r3, 0x198(r4)
/* 800EB978 000E88B8  7C 7B 02 A6 */	mfspr r3, 0x1b
/* 800EB97C 000E88BC  90 64 01 9C */	stw r3, 0x19c(r4)
/* 800EB980 000E88C0  7C 65 1B 78 */	mr r5, r3
lbl_800EB984:
/* 800EB984 000E88C4  60 00 00 00 */	nop 
/* 800EB988 000E88C8  7C 60 00 A6 */	mfmsr r3
/* 800EB98C 000E88CC  60 63 00 30 */	ori r3, r3, 0x30
/* 800EB990 000E88D0  7C 7B 03 A6 */	mtspr 0x1b, r3
lbl_800EB994:
/* 800EB994 000E88D4  38 60 00 00 */	li r3, 0
/* 800EB998 000E88D8  80 80 00 D4 */	lwz r4, 0xd4(0)
/* 800EB99C 000E88DC  54 A5 07 BD */	rlwinm. r5, r5, 0, 0x1e, 0x1e
/* 800EB9A0 000E88E0  40 82 00 14 */	bne lbl_800EB9B4
/* 800EB9A4 000E88E4  3C A0 80 0F */	lis r5, OSDefaultExceptionHandler@ha
/* 800EB9A8 000E88E8  38 A5 B9 C8 */	addi r5, r5, OSDefaultExceptionHandler@l
/* 800EB9AC 000E88EC  7C BA 03 A6 */	mtspr 0x1a, r5
/* 800EB9B0 000E88F0  4C 00 00 64 */	rfi 
lbl_800EB9B4:
/* 800EB9B4 000E88F4  54 65 15 BA */	rlwinm r5, r3, 2, 0x16, 0x1d
/* 800EB9B8 000E88F8  80 A5 30 00 */	lwz r5, 0x3000(r5)
/* 800EB9BC 000E88FC  7C BA 03 A6 */	mtspr 0x1a, r5
/* 800EB9C0 000E8900  4C 00 00 64 */	rfi 
lbl_800EB9C4:
/* 800EB9C4 000E8904  60 00 00 00 */	nop 

.global OSDefaultExceptionHandler
OSDefaultExceptionHandler:
/* 800EB9C8 000E8908  90 04 00 00 */	stw r0, 0(r4)
/* 800EB9CC 000E890C  90 24 00 04 */	stw r1, 4(r4)
/* 800EB9D0 000E8910  90 44 00 08 */	stw r2, 8(r4)
/* 800EB9D4 000E8914  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 800EB9D8 000E8918  7C 11 E2 A6 */	mfspr r0, 0x391
/* 800EB9DC 000E891C  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 800EB9E0 000E8920  7C 12 E2 A6 */	mfspr r0, 0x392
/* 800EB9E4 000E8924  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 800EB9E8 000E8928  7C 13 E2 A6 */	mfspr r0, 0x393
/* 800EB9EC 000E892C  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 800EB9F0 000E8930  7C 14 E2 A6 */	mfspr r0, 0x394
/* 800EB9F4 000E8934  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 800EB9F8 000E8938  7C 15 E2 A6 */	mfspr r0, 0x395
/* 800EB9FC 000E893C  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 800EBA00 000E8940  7C 16 E2 A6 */	mfspr r0, 0x396
/* 800EBA04 000E8944  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 800EBA08 000E8948  7C 17 E2 A6 */	mfspr r0, 0x397
/* 800EBA0C 000E894C  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 800EBA10 000E8950  7C B2 02 A6 */	mfdsisr r5
/* 800EBA14 000E8954  7C D3 02 A6 */	mfdar r6
/* 800EBA18 000E8958  94 21 FF F8 */	stwu r1, -8(r1)
/* 800EBA1C 000E895C  48 00 20 94 */	b __OSUnhandledException

.global __OSPSInit
__OSPSInit:
/* 800EBA20 000E8960  7C 08 02 A6 */	mflr r0
/* 800EBA24 000E8964  90 01 00 04 */	stw r0, 4(r1)
/* 800EBA28 000E8968  94 21 FF F8 */	stwu r1, -8(r1)
/* 800EBA2C 000E896C  4B FE 8B F9 */	bl PPCMfhid2
/* 800EBA30 000E8970  64 63 A0 00 */	oris r3, r3, 0xa000
/* 800EBA34 000E8974  4B FE 8B F9 */	bl PPCMthid2
/* 800EBA38 000E8978  48 00 0D F9 */	bl ICFlashInvalidate
/* 800EBA3C 000E897C  7C 00 04 AC */	sync 0
/* 800EBA40 000E8980  38 60 00 00 */	li r3, 0
/* 800EBA44 000E8984  7C 70 E3 A6 */	mtspr 0x390, r3
/* 800EBA48 000E8988  7C 71 E3 A6 */	mtspr 0x391, r3
/* 800EBA4C 000E898C  7C 72 E3 A6 */	mtspr 0x392, r3
/* 800EBA50 000E8990  7C 73 E3 A6 */	mtspr 0x393, r3
/* 800EBA54 000E8994  7C 74 E3 A6 */	mtspr 0x394, r3
/* 800EBA58 000E8998  7C 75 E3 A6 */	mtspr 0x395, r3
/* 800EBA5C 000E899C  7C 76 E3 A6 */	mtspr 0x396, r3
/* 800EBA60 000E89A0  7C 77 E3 A6 */	mtspr 0x397, r3
/* 800EBA64 000E89A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800EBA68 000E89A8  38 21 00 08 */	addi r1, r1, 8
/* 800EBA6C 000E89AC  7C 08 03 A6 */	mtlr r0
/* 800EBA70 000E89B0  4E 80 00 20 */	blr 

.global __OSGetDIConfig
__OSGetDIConfig:
/* 800EBA74 000E89B4  3C 60 CC 00 */	lis r3, 0xCC006000@ha
/* 800EBA78 000E89B8  38 63 60 00 */	addi r3, r3, 0xCC006000@l
/* 800EBA7C 000E89BC  80 03 00 24 */	lwz r0, 0x24(r3)
/* 800EBA80 000E89C0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 800EBA84 000E89C4  4E 80 00 20 */	blr 

.global OSRegisterVersion
OSRegisterVersion:
/* 800EBA88 000E89C8  7C 08 02 A6 */	mflr r0
/* 800EBA8C 000E89CC  90 01 00 04 */	stw r0, 4(r1)
/* 800EBA90 000E89D0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800EBA94 000E89D4  7C 64 1B 78 */	mr r4, r3
/* 800EBA98 000E89D8  4C C6 31 82 */	crclr 6
/* 800EBA9C 000E89DC  38 6D 83 54 */	addi r3, r13, lbl_805149D4@sda21
/* 800EBAA0 000E89E0  48 00 1C 4D */	bl OSReport
/* 800EBAA4 000E89E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800EBAA8 000E89E8  38 21 00 08 */	addi r1, r1, 8
/* 800EBAAC 000E89EC  7C 08 03 A6 */	mtlr r0
/* 800EBAB0 000E89F0  4E 80 00 20 */	blr 
