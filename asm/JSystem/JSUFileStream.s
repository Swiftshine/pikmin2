.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__18JSUFileInputStreamFP7JKRFile
__ct__18JSUFileInputStreamFP7JKRFile:
/* 80026EE4 00023E24  3C A0 80 4A */	lis r5, __vt__10JSUIosBase@ha
/* 80026EE8 00023E28  3C E0 80 4A */	lis r7, __vt__14JSUInputStream@ha
/* 80026EEC 00023E2C  38 05 00 30 */	addi r0, r5, __vt__10JSUIosBase@l
/* 80026EF0 00023E30  3C C0 80 4A */	lis r6, __vt__20JSURandomInputStream@ha
/* 80026EF4 00023E34  90 03 00 00 */	stw r0, 0(r3)
/* 80026EF8 00023E38  39 00 00 00 */	li r8, 0
/* 80026EFC 00023E3C  3C A0 80 4A */	lis r5, __vt__18JSUFileInputStream@ha
/* 80026F00 00023E40  38 E7 00 64 */	addi r7, r7, __vt__14JSUInputStream@l
/* 80026F04 00023E44  99 03 00 04 */	stb r8, 4(r3)
/* 80026F08 00023E48  38 C6 00 40 */	addi r6, r6, __vt__20JSURandomInputStream@l
/* 80026F0C 00023E4C  38 05 00 A8 */	addi r0, r5, __vt__18JSUFileInputStream@l
/* 80026F10 00023E50  90 E3 00 00 */	stw r7, 0(r3)
/* 80026F14 00023E54  90 C3 00 00 */	stw r6, 0(r3)
/* 80026F18 00023E58  90 03 00 00 */	stw r0, 0(r3)
/* 80026F1C 00023E5C  90 83 00 08 */	stw r4, 8(r3)
/* 80026F20 00023E60  91 03 00 0C */	stw r8, 0xc(r3)
/* 80026F24 00023E64  4E 80 00 20 */	blr 

.global readData__18JSUFileInputStreamFPvl
readData__18JSUFileInputStreamFPvl:
/* 80026F28 00023E68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80026F2C 00023E6C  7C 08 02 A6 */	mflr r0
/* 80026F30 00023E70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80026F34 00023E74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80026F38 00023E78  3B E0 00 00 */	li r31, 0
/* 80026F3C 00023E7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80026F40 00023E80  7C BE 2B 78 */	mr r30, r5
/* 80026F44 00023E84  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80026F48 00023E88  7C 9D 23 78 */	mr r29, r4
/* 80026F4C 00023E8C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80026F50 00023E90  7C 7C 1B 78 */	mr r28, r3
/* 80026F54 00023E94  80 63 00 08 */	lwz r3, 8(r3)
/* 80026F58 00023E98  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80026F5C 00023E9C  28 00 00 00 */	cmplwi r0, 0
/* 80026F60 00023EA0  41 82 00 84 */	beq lbl_80026FE4
/* 80026F64 00023EA4  81 83 00 00 */	lwz r12, 0(r3)
/* 80026F68 00023EA8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80026F6C 00023EAC  7D 89 03 A6 */	mtctr r12
/* 80026F70 00023EB0  4E 80 04 21 */	bctrl 
/* 80026F74 00023EB4  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80026F78 00023EB8  7C 00 F2 14 */	add r0, r0, r30
/* 80026F7C 00023EBC  7C 00 18 40 */	cmplw r0, r3
/* 80026F80 00023EC0  40 81 00 20 */	ble lbl_80026FA0
/* 80026F84 00023EC4  80 7C 00 08 */	lwz r3, 8(r28)
/* 80026F88 00023EC8  81 83 00 00 */	lwz r12, 0(r3)
/* 80026F8C 00023ECC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80026F90 00023ED0  7D 89 03 A6 */	mtctr r12
/* 80026F94 00023ED4  4E 80 04 21 */	bctrl 
/* 80026F98 00023ED8  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80026F9C 00023EDC  7F C0 18 50 */	subf r30, r0, r3
lbl_80026FA0:
/* 80026FA0 00023EE0  2C 1E 00 00 */	cmpwi r30, 0
/* 80026FA4 00023EE4  40 81 00 40 */	ble lbl_80026FE4
/* 80026FA8 00023EE8  80 7C 00 08 */	lwz r3, 8(r28)
/* 80026FAC 00023EEC  7F A4 EB 78 */	mr r4, r29
/* 80026FB0 00023EF0  7F C5 F3 78 */	mr r5, r30
/* 80026FB4 00023EF4  80 DC 00 0C */	lwz r6, 0xc(r28)
/* 80026FB8 00023EF8  81 83 00 00 */	lwz r12, 0(r3)
/* 80026FBC 00023EFC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80026FC0 00023F00  7D 89 03 A6 */	mtctr r12
/* 80026FC4 00023F04  4E 80 04 21 */	bctrl 
/* 80026FC8 00023F08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80026FCC 00023F0C  40 80 00 0C */	bge lbl_80026FD8
/* 80026FD0 00023F10  38 60 00 00 */	li r3, 0
/* 80026FD4 00023F14  48 00 00 14 */	b lbl_80026FE8
lbl_80026FD8:
/* 80026FD8 00023F18  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80026FDC 00023F1C  7C 00 FA 14 */	add r0, r0, r31
/* 80026FE0 00023F20  90 1C 00 0C */	stw r0, 0xc(r28)
lbl_80026FE4:
/* 80026FE4 00023F24  7F E3 FB 78 */	mr r3, r31
lbl_80026FE8:
/* 80026FE8 00023F28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80026FEC 00023F2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80026FF0 00023F30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80026FF4 00023F34  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80026FF8 00023F38  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80026FFC 00023F3C  7C 08 03 A6 */	mtlr r0
/* 80027000 00023F40  38 21 00 20 */	addi r1, r1, 0x20
/* 80027004 00023F44  4E 80 00 20 */	blr 

.global seekPos__18JSUFileInputStreamFl17JSUStreamSeekFrom
seekPos__18JSUFileInputStreamFl17JSUStreamSeekFrom:
/* 80027008 00023F48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002700C 00023F4C  7C 08 02 A6 */	mflr r0
/* 80027010 00023F50  2C 05 00 01 */	cmpwi r5, 1
/* 80027014 00023F54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80027018 00023F58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8002701C 00023F5C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80027020 00023F60  7C 9E 23 78 */	mr r30, r4
/* 80027024 00023F64  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80027028 00023F68  7C 7D 1B 78 */	mr r29, r3
/* 8002702C 00023F6C  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 80027030 00023F70  41 82 00 48 */	beq lbl_80027078
/* 80027034 00023F74  40 80 00 10 */	bge lbl_80027044
/* 80027038 00023F78  2C 05 00 00 */	cmpwi r5, 0
/* 8002703C 00023F7C  40 80 00 14 */	bge lbl_80027050
/* 80027040 00023F80  48 00 00 40 */	b lbl_80027080
lbl_80027044:
/* 80027044 00023F84  2C 05 00 03 */	cmpwi r5, 3
/* 80027048 00023F88  40 80 00 38 */	bge lbl_80027080
/* 8002704C 00023F8C  48 00 00 0C */	b lbl_80027058
lbl_80027050:
/* 80027050 00023F90  93 DD 00 0C */	stw r30, 0xc(r29)
/* 80027054 00023F94  48 00 00 2C */	b lbl_80027080
lbl_80027058:
/* 80027058 00023F98  80 7D 00 08 */	lwz r3, 8(r29)
/* 8002705C 00023F9C  81 83 00 00 */	lwz r12, 0(r3)
/* 80027060 00023FA0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80027064 00023FA4  7D 89 03 A6 */	mtctr r12
/* 80027068 00023FA8  4E 80 04 21 */	bctrl 
/* 8002706C 00023FAC  7C 1E 18 50 */	subf r0, r30, r3
/* 80027070 00023FB0  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80027074 00023FB4  48 00 00 0C */	b lbl_80027080
lbl_80027078:
/* 80027078 00023FB8  7C 1F F2 14 */	add r0, r31, r30
/* 8002707C 00023FBC  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_80027080:
/* 80027080 00023FC0  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80027084 00023FC4  2C 00 00 00 */	cmpwi r0, 0
/* 80027088 00023FC8  40 80 00 0C */	bge lbl_80027094
/* 8002708C 00023FCC  38 00 00 00 */	li r0, 0
/* 80027090 00023FD0  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_80027094:
/* 80027094 00023FD4  80 7D 00 08 */	lwz r3, 8(r29)
/* 80027098 00023FD8  81 83 00 00 */	lwz r12, 0(r3)
/* 8002709C 00023FDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800270A0 00023FE0  7D 89 03 A6 */	mtctr r12
/* 800270A4 00023FE4  4E 80 04 21 */	bctrl 
/* 800270A8 00023FE8  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 800270AC 00023FEC  7C 00 18 00 */	cmpw r0, r3
/* 800270B0 00023FF0  40 81 00 1C */	ble lbl_800270CC
/* 800270B4 00023FF4  80 7D 00 08 */	lwz r3, 8(r29)
/* 800270B8 00023FF8  81 83 00 00 */	lwz r12, 0(r3)
/* 800270BC 00023FFC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800270C0 00024000  7D 89 03 A6 */	mtctr r12
/* 800270C4 00024004  4E 80 04 21 */	bctrl 
/* 800270C8 00024008  90 7D 00 0C */	stw r3, 0xc(r29)
lbl_800270CC:
/* 800270CC 0002400C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 800270D0 00024010  7C 7F 00 50 */	subf r3, r31, r0
/* 800270D4 00024014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800270D8 00024018  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800270DC 0002401C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800270E0 00024020  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800270E4 00024024  7C 08 03 A6 */	mtlr r0
/* 800270E8 00024028  38 21 00 20 */	addi r1, r1, 0x20
/* 800270EC 0002402C  4E 80 00 20 */	blr 

.global getLength__18JSUFileInputStreamCFv
getLength__18JSUFileInputStreamCFv:
/* 800270F0 00024030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800270F4 00024034  7C 08 02 A6 */	mflr r0
/* 800270F8 00024038  80 63 00 08 */	lwz r3, 8(r3)
/* 800270FC 0002403C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027100 00024040  81 83 00 00 */	lwz r12, 0(r3)
/* 80027104 00024044  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80027108 00024048  7D 89 03 A6 */	mtctr r12
/* 8002710C 0002404C  4E 80 04 21 */	bctrl 
/* 80027110 00024050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027114 00024054  7C 08 03 A6 */	mtlr r0
/* 80027118 00024058  38 21 00 10 */	addi r1, r1, 0x10
/* 8002711C 0002405C  4E 80 00 20 */	blr 

.global getPosition__18JSUFileInputStreamCFv
getPosition__18JSUFileInputStreamCFv:
/* 80027120 00024060  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80027124 00024064  4E 80 00 20 */	blr 
