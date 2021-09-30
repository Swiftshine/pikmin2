.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q34Game14CommonSaveData3MgrFv
__ct__Q34Game14CommonSaveData3MgrFv:
/* 80446C68 00443BA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80446C6C 00443BAC  7C 08 02 A6 */	mflr r0
/* 80446C70 00443BB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80446C74 00443BB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80446C78 00443BB8  7C 7F 1B 78 */	mr r31, r3
/* 80446C7C 00443BBC  4B DE D4 91 */	bl __ct__Q24Game14PlayCommonDataFv
/* 80446C80 00443BC0  38 00 00 00 */	li r0, 0
/* 80446C84 00443BC4  7F E3 FB 78 */	mr r3, r31
/* 80446C88 00443BC8  98 1F 00 40 */	stb r0, 0x40(r31)
/* 80446C8C 00443BCC  98 1F 00 41 */	stb r0, 0x41(r31)
/* 80446C90 00443BD0  48 00 00 1D */	bl setDefault__Q34Game14CommonSaveData3MgrFv
/* 80446C94 00443BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80446C98 00443BD8  7F E3 FB 78 */	mr r3, r31
/* 80446C9C 00443BDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80446CA0 00443BE0  7C 08 03 A6 */	mtlr r0
/* 80446CA4 00443BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80446CA8 00443BE8  4E 80 00 20 */	blr 

.global setDefault__Q34Game14CommonSaveData3MgrFv
setDefault__Q34Game14CommonSaveData3MgrFv:
/* 80446CAC 00443BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80446CB0 00443BF0  7C 08 02 A6 */	mflr r0
/* 80446CB4 00443BF4  38 C0 00 00 */	li r6, 0
/* 80446CB8 00443BF8  38 A0 00 FF */	li r5, 0xff
/* 80446CBC 00443BFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80446CC0 00443C00  38 80 00 01 */	li r4, 1
/* 80446CC4 00443C04  38 00 FF FF */	li r0, -1
/* 80446CC8 00443C08  98 C3 00 40 */	stb r6, 0x40(r3)
/* 80446CCC 00443C0C  98 C3 00 41 */	stb r6, 0x41(r3)
/* 80446CD0 00443C10  90 C3 00 34 */	stw r6, 0x34(r3)
/* 80446CD4 00443C14  90 C3 00 30 */	stw r6, 0x30(r3)
/* 80446CD8 00443C18  90 C3 00 28 */	stw r6, 0x28(r3)
/* 80446CDC 00443C1C  98 C3 00 38 */	stb r6, 0x38(r3)
/* 80446CE0 00443C20  98 A3 00 39 */	stb r5, 0x39(r3)
/* 80446CE4 00443C24  98 A3 00 3A */	stb r5, 0x3a(r3)
/* 80446CE8 00443C28  98 83 00 3B */	stb r4, 0x3b(r3)
/* 80446CEC 00443C2C  98 83 00 3C */	stb r4, 0x3c(r3)
/* 80446CF0 00443C30  98 83 00 3D */	stb r4, 0x3d(r3)
/* 80446CF4 00443C34  80 8D 9A EC */	lwz r4, sys@sda21(r13)
/* 80446CF8 00443C38  80 84 00 D4 */	lwz r4, 0xd4(r4)
/* 80446CFC 00443C3C  98 83 00 3E */	stb r4, 0x3e(r3)
/* 80446D00 00443C40  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80446D04 00443C44  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 80446D08 00443C48  98 03 00 20 */	stb r0, 0x20(r3)
/* 80446D0C 00443C4C  98 C3 00 42 */	stb r6, 0x42(r3)
/* 80446D10 00443C50  4B DE D4 F9 */	bl reset__Q24Game14PlayCommonDataFv
/* 80446D14 00443C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80446D18 00443C58  7C 08 03 A6 */	mtlr r0
/* 80446D1C 00443C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80446D20 00443C60  4E 80 00 20 */	blr 

.global setCardSerialNo__Q34Game14CommonSaveData3MgrFUx
setCardSerialNo__Q34Game14CommonSaveData3MgrFUx:
/* 80446D24 00443C64  90 C3 00 34 */	stw r6, 0x34(r3)
/* 80446D28 00443C68  90 A3 00 30 */	stw r5, 0x30(r3)
/* 80446D2C 00443C6C  A0 03 00 40 */	lhz r0, 0x40(r3)
/* 80446D30 00443C70  60 00 00 01 */	ori r0, r0, 1
/* 80446D34 00443C74  B0 03 00 40 */	sth r0, 0x40(r3)
/* 80446D38 00443C78  4E 80 00 20 */	blr 

.global resetCardSerialNo__Q34Game14CommonSaveData3MgrFv
resetCardSerialNo__Q34Game14CommonSaveData3MgrFv:
/* 80446D3C 00443C7C  3C 80 CD CE */	lis r4, 0xCDCDCDCD@ha
/* 80446D40 00443C80  38 04 CD CD */	addi r0, r4, 0xCDCDCDCD@l
/* 80446D44 00443C84  90 03 00 34 */	stw r0, 0x34(r3)
/* 80446D48 00443C88  90 03 00 30 */	stw r0, 0x30(r3)
/* 80446D4C 00443C8C  A0 03 00 40 */	lhz r0, 0x40(r3)
/* 80446D50 00443C90  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 80446D54 00443C94  B0 03 00 40 */	sth r0, 0x40(r3)
/* 80446D58 00443C98  4E 80 00 20 */	blr 

.global write__Q34Game14CommonSaveData3MgrFR6Stream
write__Q34Game14CommonSaveData3MgrFR6Stream:
/* 80446D5C 00443C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80446D60 00443CA0  7C 08 02 A6 */	mflr r0
/* 80446D64 00443CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80446D68 00443CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80446D6C 00443CAC  7C 9F 23 78 */	mr r31, r4
/* 80446D70 00443CB0  38 80 00 00 */	li r4, 0
/* 80446D74 00443CB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80446D78 00443CB8  7C 7E 1B 78 */	mr r30, r3
/* 80446D7C 00443CBC  90 9F 00 0C */	stw r4, 0xc(r31)
/* 80446D80 00443CC0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80446D84 00443CC4  2C 00 00 01 */	cmpwi r0, 1
/* 80446D88 00443CC8  40 82 00 08 */	bne lbl_80446D90
/* 80446D8C 00443CCC  90 9F 04 14 */	stw r4, 0x414(r31)
lbl_80446D90:
/* 80446D90 00443CD0  88 9E 00 38 */	lbz r4, 0x38(r30)
/* 80446D94 00443CD4  7F E3 FB 78 */	mr r3, r31
/* 80446D98 00443CD8  4B FC E8 D9 */	bl writeByte__6StreamFUc
/* 80446D9C 00443CDC  88 9E 00 39 */	lbz r4, 0x39(r30)
/* 80446DA0 00443CE0  7F E3 FB 78 */	mr r3, r31
/* 80446DA4 00443CE4  4B FC E8 CD */	bl writeByte__6StreamFUc
/* 80446DA8 00443CE8  88 9E 00 3A */	lbz r4, 0x3a(r30)
/* 80446DAC 00443CEC  7F E3 FB 78 */	mr r3, r31
/* 80446DB0 00443CF0  4B FC E8 C1 */	bl writeByte__6StreamFUc
/* 80446DB4 00443CF4  88 9E 00 3B */	lbz r4, 0x3b(r30)
/* 80446DB8 00443CF8  7F E3 FB 78 */	mr r3, r31
/* 80446DBC 00443CFC  4B FC E8 B5 */	bl writeByte__6StreamFUc
/* 80446DC0 00443D00  88 9E 00 3C */	lbz r4, 0x3c(r30)
/* 80446DC4 00443D04  7F E3 FB 78 */	mr r3, r31
/* 80446DC8 00443D08  4B FC E8 A9 */	bl writeByte__6StreamFUc
/* 80446DCC 00443D0C  88 9E 00 3D */	lbz r4, 0x3d(r30)
/* 80446DD0 00443D10  7F E3 FB 78 */	mr r3, r31
/* 80446DD4 00443D14  4B FC E8 9D */	bl writeByte__6StreamFUc
/* 80446DD8 00443D18  88 9E 00 3E */	lbz r4, 0x3e(r30)
/* 80446DDC 00443D1C  7F E3 FB 78 */	mr r3, r31
/* 80446DE0 00443D20  4B FC E8 91 */	bl writeByte__6StreamFUc
/* 80446DE4 00443D24  7F C3 F3 78 */	mr r3, r30
/* 80446DE8 00443D28  7F E4 FB 78 */	mr r4, r31
/* 80446DEC 00443D2C  4B DE D5 55 */	bl write__Q24Game14PlayCommonDataFR6Stream
/* 80446DF0 00443D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80446DF4 00443D34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80446DF8 00443D38  83 C1 00 08 */	lwz r30, 8(r1)
/* 80446DFC 00443D3C  7C 08 03 A6 */	mtlr r0
/* 80446E00 00443D40  38 21 00 10 */	addi r1, r1, 0x10
/* 80446E04 00443D44  4E 80 00 20 */	blr 

.global read__Q34Game14CommonSaveData3MgrFR6Stream
read__Q34Game14CommonSaveData3MgrFR6Stream:
/* 80446E08 00443D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80446E0C 00443D4C  7C 08 02 A6 */	mflr r0
/* 80446E10 00443D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80446E14 00443D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80446E18 00443D58  7C 9F 23 78 */	mr r31, r4
/* 80446E1C 00443D5C  38 80 00 00 */	li r4, 0
/* 80446E20 00443D60  93 C1 00 08 */	stw r30, 8(r1)
/* 80446E24 00443D64  7C 7E 1B 78 */	mr r30, r3
/* 80446E28 00443D68  90 9F 00 0C */	stw r4, 0xc(r31)
/* 80446E2C 00443D6C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80446E30 00443D70  2C 00 00 01 */	cmpwi r0, 1
/* 80446E34 00443D74  40 82 00 08 */	bne lbl_80446E3C
/* 80446E38 00443D78  90 9F 04 14 */	stw r4, 0x414(r31)
lbl_80446E3C:
/* 80446E3C 00443D7C  7F E3 FB 78 */	mr r3, r31
/* 80446E40 00443D80  4B FC D6 5D */	bl readByte__6StreamFv
/* 80446E44 00443D84  98 7E 00 38 */	stb r3, 0x38(r30)
/* 80446E48 00443D88  7F E3 FB 78 */	mr r3, r31
/* 80446E4C 00443D8C  4B FC D6 51 */	bl readByte__6StreamFv
/* 80446E50 00443D90  98 7E 00 39 */	stb r3, 0x39(r30)
/* 80446E54 00443D94  7F E3 FB 78 */	mr r3, r31
/* 80446E58 00443D98  4B FC D6 45 */	bl readByte__6StreamFv
/* 80446E5C 00443D9C  98 7E 00 3A */	stb r3, 0x3a(r30)
/* 80446E60 00443DA0  7F E3 FB 78 */	mr r3, r31
/* 80446E64 00443DA4  4B FC D6 39 */	bl readByte__6StreamFv
/* 80446E68 00443DA8  98 7E 00 3B */	stb r3, 0x3b(r30)
/* 80446E6C 00443DAC  7F E3 FB 78 */	mr r3, r31
/* 80446E70 00443DB0  4B FC D6 2D */	bl readByte__6StreamFv
/* 80446E74 00443DB4  98 7E 00 3C */	stb r3, 0x3c(r30)
/* 80446E78 00443DB8  7F E3 FB 78 */	mr r3, r31
/* 80446E7C 00443DBC  4B FC D6 21 */	bl readByte__6StreamFv
/* 80446E80 00443DC0  98 7E 00 3D */	stb r3, 0x3d(r30)
/* 80446E84 00443DC4  7F E3 FB 78 */	mr r3, r31
/* 80446E88 00443DC8  4B FC D6 15 */	bl readByte__6StreamFv
/* 80446E8C 00443DCC  98 7E 00 3E */	stb r3, 0x3e(r30)
/* 80446E90 00443DD0  7F C3 F3 78 */	mr r3, r30
/* 80446E94 00443DD4  7F E4 FB 78 */	mr r4, r31
/* 80446E98 00443DD8  4B DE D5 49 */	bl read__Q24Game14PlayCommonDataFR6Stream
/* 80446E9C 00443DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80446EA0 00443DE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80446EA4 00443DE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80446EA8 00443DE8  7C 08 03 A6 */	mtlr r0
/* 80446EAC 00443DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80446EB0 00443DF0  4E 80 00 20 */	blr 

.global setup__Q34Game14CommonSaveData3MgrFv
setup__Q34Game14CommonSaveData3MgrFv:
/* 80446EB4 00443DF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80446EB8 00443DF8  7C 08 02 A6 */	mflr r0
/* 80446EBC 00443DFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80446EC0 00443E00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80446EC4 00443E04  7C 7F 1B 78 */	mr r31, r3
/* 80446EC8 00443E08  4B CA A3 D9 */	bl OSGetSoundMode
/* 80446ECC 00443E0C  2C 03 00 01 */	cmpwi r3, 1
/* 80446ED0 00443E10  41 82 00 20 */	beq lbl_80446EF0
/* 80446ED4 00443E14  40 80 00 6C */	bge lbl_80446F40
/* 80446ED8 00443E18  2C 03 00 00 */	cmpwi r3, 0
/* 80446EDC 00443E1C  40 80 00 08 */	bge lbl_80446EE4
/* 80446EE0 00443E20  48 00 00 60 */	b lbl_80446F40
lbl_80446EE4:
/* 80446EE4 00443E24  7F E3 FB 78 */	mr r3, r31
/* 80446EE8 00443E28  48 00 01 E1 */	bl setSoundModeMono__Q34Game14CommonSaveData3MgrFv
/* 80446EEC 00443E2C  48 00 00 54 */	b lbl_80446F40
lbl_80446EF0:
/* 80446EF0 00443E30  88 DF 00 38 */	lbz r6, 0x38(r31)
/* 80446EF4 00443E34  2C 06 00 02 */	cmpwi r6, 2
/* 80446EF8 00443E38  41 82 00 20 */	beq lbl_80446F18
/* 80446EFC 00443E3C  40 80 00 28 */	bge lbl_80446F24
/* 80446F00 00443E40  2C 06 00 00 */	cmpwi r6, 0
/* 80446F04 00443E44  40 80 00 08 */	bge lbl_80446F0C
/* 80446F08 00443E48  48 00 00 1C */	b lbl_80446F24
lbl_80446F0C:
/* 80446F0C 00443E4C  7F E3 FB 78 */	mr r3, r31
/* 80446F10 00443E50  48 00 01 ED */	bl setSoundModeStereo__Q34Game14CommonSaveData3MgrFv
/* 80446F14 00443E54  48 00 00 2C */	b lbl_80446F40
lbl_80446F18:
/* 80446F18 00443E58  7F E3 FB 78 */	mr r3, r31
/* 80446F1C 00443E5C  48 00 02 15 */	bl setSoundModeSurround__Q34Game14CommonSaveData3MgrFv
/* 80446F20 00443E60  48 00 00 20 */	b lbl_80446F40
lbl_80446F24:
/* 80446F24 00443E64  3C 60 80 4A */	lis r3, lbl_8049AEC0@ha
/* 80446F28 00443E68  3C 80 80 4A */	lis r4, lbl_8049AED4@ha
/* 80446F2C 00443E6C  38 A4 AE D4 */	addi r5, r4, lbl_8049AED4@l
/* 80446F30 00443E70  38 63 AE C0 */	addi r3, r3, lbl_8049AEC0@l
/* 80446F34 00443E74  38 80 01 0C */	li r4, 0x10c
/* 80446F38 00443E78  4C C6 31 82 */	crclr 6
/* 80446F3C 00443E7C  4B BE 37 05 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80446F40:
/* 80446F40 00443E80  88 9F 00 39 */	lbz r4, 0x39(r31)
/* 80446F44 00443E84  3C 00 43 30 */	lis r0, 0x4330
/* 80446F48 00443E88  90 01 00 08 */	stw r0, 8(r1)
/* 80446F4C 00443E8C  7F E3 FB 78 */	mr r3, r31
/* 80446F50 00443E90  C8 42 26 28 */	lfd f2, lbl_80520988@sda21(r2)
/* 80446F54 00443E94  90 81 00 0C */	stw r4, 0xc(r1)
/* 80446F58 00443E98  C0 02 26 20 */	lfs f0, lbl_80520980@sda21(r2)
/* 80446F5C 00443E9C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80446F60 00443EA0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80446F64 00443EA4  EC 21 00 24 */	fdivs f1, f1, f0
/* 80446F68 00443EA8  48 00 01 FD */	bl setBgmVolume__Q34Game14CommonSaveData3MgrFf
/* 80446F6C 00443EAC  88 9F 00 3A */	lbz r4, 0x3a(r31)
/* 80446F70 00443EB0  3C 00 43 30 */	lis r0, 0x4330
/* 80446F74 00443EB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80446F78 00443EB8  7F E3 FB 78 */	mr r3, r31
/* 80446F7C 00443EBC  C8 42 26 28 */	lfd f2, lbl_80520988@sda21(r2)
/* 80446F80 00443EC0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80446F84 00443EC4  C0 02 26 20 */	lfs f0, lbl_80520980@sda21(r2)
/* 80446F88 00443EC8  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80446F8C 00443ECC  EC 21 10 28 */	fsubs f1, f1, f2
/* 80446F90 00443ED0  EC 21 00 24 */	fdivs f1, f1, f0
/* 80446F94 00443ED4  48 00 02 FD */	bl setSeVolume__Q34Game14CommonSaveData3MgrFf
/* 80446F98 00443ED8  7F E3 FB 78 */	mr r3, r31
/* 80446F9C 00443EDC  48 00 00 2D */	bl setDeflicker__Q34Game14CommonSaveData3MgrFv
/* 80446FA0 00443EE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80446FA4 00443EE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80446FA8 00443EE8  7C 08 03 A6 */	mtlr r0
/* 80446FAC 00443EEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80446FB0 00443EF0  4E 80 00 20 */	blr 

.global resetPlayer__Q34Game14CommonSaveData3MgrFSc
resetPlayer__Q34Game14CommonSaveData3MgrFSc:
/* 80446FB4 00443EF4  98 83 00 20 */	stb r4, 0x20(r3)
/* 80446FB8 00443EF8  38 00 00 00 */	li r0, 0
/* 80446FBC 00443EFC  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80446FC0 00443F00  90 03 00 18 */	stw r0, 0x18(r3)
/* 80446FC4 00443F04  4E 80 00 20 */	blr 

.global setDeflicker__Q34Game14CommonSaveData3MgrFv
setDeflicker__Q34Game14CommonSaveData3MgrFv:
/* 80446FC8 00443F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80446FCC 00443F0C  7C 08 02 A6 */	mflr r0
/* 80446FD0 00443F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80446FD4 00443F14  88 83 00 3D */	lbz r4, 0x3d(r3)
/* 80446FD8 00443F18  7C 04 00 D0 */	neg r0, r4
/* 80446FDC 00443F1C  7C 00 23 78 */	or r0, r0, r4
/* 80446FE0 00443F20  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80446FE4 00443F24  48 00 00 15 */	bl setDeflicker__Q34Game14CommonSaveData3MgrFb
/* 80446FE8 00443F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80446FEC 00443F2C  7C 08 03 A6 */	mtlr r0
/* 80446FF0 00443F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80446FF4 00443F34  4E 80 00 20 */	blr 

.global setDeflicker__Q34Game14CommonSaveData3MgrFb
setDeflicker__Q34Game14CommonSaveData3MgrFb:
/* 80446FF8 00443F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80446FFC 00443F3C  7C 08 02 A6 */	mflr r0
/* 80447000 00443F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80447004 00443F44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80447008 00443F48  7C 7F 1B 78 */	mr r31, r3
/* 8044700C 00443F4C  93 C1 00 08 */	stw r30, 8(r1)
/* 80447010 00443F50  7C 9E 23 78 */	mr r30, r4
/* 80447014 00443F54  4B FD C2 11 */	bl getRenderModeObj__6SystemFv
/* 80447018 00443F58  9B DF 00 3D */	stb r30, 0x3d(r31)
/* 8044701C 00443F5C  7C 7F 1B 78 */	mr r31, r3
/* 80447020 00443F60  4B CA A3 A5 */	bl OSGetProgressiveMode
/* 80447024 00443F64  28 03 00 01 */	cmplwi r3, 1
/* 80447028 00443F68  40 82 00 30 */	bne lbl_80447058
/* 8044702C 00443F6C  38 80 00 00 */	li r4, 0
/* 80447030 00443F70  38 60 00 15 */	li r3, 0x15
/* 80447034 00443F74  98 9F 00 32 */	stb r4, 0x32(r31)
/* 80447038 00443F78  38 00 00 16 */	li r0, 0x16
/* 8044703C 00443F7C  98 9F 00 33 */	stb r4, 0x33(r31)
/* 80447040 00443F80  98 7F 00 34 */	stb r3, 0x34(r31)
/* 80447044 00443F84  98 1F 00 35 */	stb r0, 0x35(r31)
/* 80447048 00443F88  98 7F 00 36 */	stb r3, 0x36(r31)
/* 8044704C 00443F8C  98 9F 00 37 */	stb r4, 0x37(r31)
/* 80447050 00443F90  98 9F 00 38 */	stb r4, 0x38(r31)
/* 80447054 00443F94  48 00 00 5C */	b lbl_804470B0
lbl_80447058:
/* 80447058 00443F98  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8044705C 00443F9C  41 82 00 2C */	beq lbl_80447088
/* 80447060 00443FA0  38 60 00 07 */	li r3, 7
/* 80447064 00443FA4  38 00 00 0C */	li r0, 0xc
/* 80447068 00443FA8  98 7F 00 32 */	stb r3, 0x32(r31)
/* 8044706C 00443FAC  98 7F 00 33 */	stb r3, 0x33(r31)
/* 80447070 00443FB0  98 1F 00 34 */	stb r0, 0x34(r31)
/* 80447074 00443FB4  98 1F 00 35 */	stb r0, 0x35(r31)
/* 80447078 00443FB8  98 1F 00 36 */	stb r0, 0x36(r31)
/* 8044707C 00443FBC  98 7F 00 37 */	stb r3, 0x37(r31)
/* 80447080 00443FC0  98 7F 00 38 */	stb r3, 0x38(r31)
/* 80447084 00443FC4  48 00 00 2C */	b lbl_804470B0
lbl_80447088:
/* 80447088 00443FC8  38 00 00 10 */	li r0, 0x10
/* 8044708C 00443FCC  38 60 00 00 */	li r3, 0
/* 80447090 00443FD0  98 1F 00 32 */	stb r0, 0x32(r31)
/* 80447094 00443FD4  38 00 00 30 */	li r0, 0x30
/* 80447098 00443FD8  98 7F 00 33 */	stb r3, 0x33(r31)
/* 8044709C 00443FDC  98 7F 00 34 */	stb r3, 0x34(r31)
/* 804470A0 00443FE0  98 1F 00 35 */	stb r0, 0x35(r31)
/* 804470A4 00443FE4  98 7F 00 36 */	stb r3, 0x36(r31)
/* 804470A8 00443FE8  98 7F 00 37 */	stb r3, 0x37(r31)
/* 804470AC 00443FEC  98 7F 00 38 */	stb r3, 0x38(r31)
lbl_804470B0:
/* 804470B0 00443FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804470B4 00443FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804470B8 00443FF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804470BC 00443FFC  7C 08 03 A6 */	mtlr r0
/* 804470C0 00444000  38 21 00 10 */	addi r1, r1, 0x10
/* 804470C4 00444004  4E 80 00 20 */	blr 

.global setSoundModeMono__Q34Game14CommonSaveData3MgrFv
setSoundModeMono__Q34Game14CommonSaveData3MgrFv:
/* 804470C8 00444008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804470CC 0044400C  7C 08 02 A6 */	mflr r0
/* 804470D0 00444010  90 01 00 14 */	stw r0, 0x14(r1)
/* 804470D4 00444014  38 00 00 00 */	li r0, 0
/* 804470D8 00444018  98 03 00 38 */	stb r0, 0x38(r3)
/* 804470DC 0044401C  38 60 00 00 */	li r3, 0
/* 804470E0 00444020  4B C6 69 29 */	bl setParamSoundOutputMode__18JAIGlobalParameterFUl
/* 804470E4 00444024  38 60 00 00 */	li r3, 0
/* 804470E8 00444028  4B CA A2 39 */	bl OSSetSoundMode
/* 804470EC 0044402C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804470F0 00444030  7C 08 03 A6 */	mtlr r0
/* 804470F4 00444034  38 21 00 10 */	addi r1, r1, 0x10
/* 804470F8 00444038  4E 80 00 20 */	blr 

.global setSoundModeStereo__Q34Game14CommonSaveData3MgrFv
setSoundModeStereo__Q34Game14CommonSaveData3MgrFv:
/* 804470FC 0044403C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80447100 00444040  7C 08 02 A6 */	mflr r0
/* 80447104 00444044  90 01 00 14 */	stw r0, 0x14(r1)
/* 80447108 00444048  38 00 00 01 */	li r0, 1
/* 8044710C 0044404C  98 03 00 38 */	stb r0, 0x38(r3)
/* 80447110 00444050  38 60 00 01 */	li r3, 1
/* 80447114 00444054  4B C6 68 F5 */	bl setParamSoundOutputMode__18JAIGlobalParameterFUl
/* 80447118 00444058  38 60 00 01 */	li r3, 1
/* 8044711C 0044405C  4B CA A2 05 */	bl OSSetSoundMode
/* 80447120 00444060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80447124 00444064  7C 08 03 A6 */	mtlr r0
/* 80447128 00444068  38 21 00 10 */	addi r1, r1, 0x10
/* 8044712C 0044406C  4E 80 00 20 */	blr 

.global setSoundModeSurround__Q34Game14CommonSaveData3MgrFv
setSoundModeSurround__Q34Game14CommonSaveData3MgrFv:
/* 80447130 00444070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80447134 00444074  7C 08 02 A6 */	mflr r0
/* 80447138 00444078  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044713C 0044407C  38 00 00 02 */	li r0, 2
/* 80447140 00444080  98 03 00 38 */	stb r0, 0x38(r3)
/* 80447144 00444084  38 60 00 02 */	li r3, 2
/* 80447148 00444088  4B C6 68 C1 */	bl setParamSoundOutputMode__18JAIGlobalParameterFUl
/* 8044714C 0044408C  38 60 00 01 */	li r3, 1
/* 80447150 00444090  4B CA A1 D1 */	bl OSSetSoundMode
/* 80447154 00444094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80447158 00444098  7C 08 03 A6 */	mtlr r0
/* 8044715C 0044409C  38 21 00 10 */	addi r1, r1, 0x10
/* 80447160 004440A0  4E 80 00 20 */	blr 

.global setBgmVolume__Q34Game14CommonSaveData3MgrFf
setBgmVolume__Q34Game14CommonSaveData3MgrFf:
/* 80447164 004440A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80447168 004440A8  7C 08 02 A6 */	mflr r0
/* 8044716C 004440AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80447170 004440B0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80447174 004440B4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80447178 004440B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8044717C 004440BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80447180 004440C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80447184 004440C4  FF E0 08 90 */	fmr f31, f1
/* 80447188 004440C8  3C 80 80 4A */	lis r4, lbl_8049AEC0@ha
/* 8044718C 004440CC  7C 7D 1B 78 */	mr r29, r3
/* 80447190 004440D0  3B C4 AE C0 */	addi r30, r4, lbl_8049AEC0@l
/* 80447194 004440D4  4B CA 7A A5 */	bl OSDisableInterrupts
/* 80447198 004440D8  7C 03 00 D0 */	neg r0, r3
/* 8044719C 004440DC  7C 00 1B 78 */	or r0, r0, r3
/* 804471A0 004440E0  54 1F 0F FE */	srwi r31, r0, 0x1f
/* 804471A4 004440E4  4B CA A8 61 */	bl OSDisableScheduler
/* 804471A8 004440E8  C0 02 26 30 */	lfs f0, lbl_80520990@sda21(r2)
/* 804471AC 004440EC  38 00 00 00 */	li r0, 0
/* 804471B0 004440F0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804471B4 004440F4  4C 41 13 82 */	cror 2, 1, 2
/* 804471B8 004440F8  40 82 00 18 */	bne lbl_804471D0
/* 804471BC 004440FC  C0 02 26 34 */	lfs f0, lbl_80520994@sda21(r2)
/* 804471C0 00444100  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804471C4 00444104  4C 40 13 82 */	cror 2, 0, 2
/* 804471C8 00444108  40 82 00 08 */	bne lbl_804471D0
/* 804471CC 0044410C  38 00 00 01 */	li r0, 1
lbl_804471D0:
/* 804471D0 00444110  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 804471D4 00444114  40 82 00 18 */	bne lbl_804471EC
/* 804471D8 00444118  38 7E 00 00 */	addi r3, r30, 0
/* 804471DC 0044411C  38 BE 00 2C */	addi r5, r30, 0x2c
/* 804471E0 00444120  38 80 01 85 */	li r4, 0x185
/* 804471E4 00444124  4C C6 31 82 */	crclr 6
/* 804471E8 00444128  4B BE 34 59 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_804471EC:
/* 804471EC 0044412C  80 0D 98 58 */	lwz r0, spSysIF__8PSSystem@sda21(r13)
/* 804471F0 00444130  28 00 00 00 */	cmplwi r0, 0
/* 804471F4 00444134  41 82 00 6C */	beq lbl_80447260
/* 804471F8 00444138  C0 22 26 20 */	lfs f1, lbl_80520980@sda21(r2)
/* 804471FC 0044413C  C0 02 26 30 */	lfs f0, lbl_80520990@sda21(r2)
/* 80447200 00444140  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80447204 00444144  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80447208 00444148  4C 41 13 82 */	cror 2, 1, 2
/* 8044720C 0044414C  40 82 00 10 */	bne lbl_8044721C
/* 80447210 00444150  C0 02 26 38 */	lfs f0, lbl_80520998@sda21(r2)
/* 80447214 00444154  EC 00 08 2A */	fadds f0, f0, f1
/* 80447218 00444158  48 00 00 0C */	b lbl_80447224
lbl_8044721C:
/* 8044721C 0044415C  C0 02 26 38 */	lfs f0, lbl_80520998@sda21(r2)
/* 80447220 00444160  EC 01 00 28 */	fsubs f0, f1, f0
lbl_80447224:
/* 80447224 00444164  FC 00 00 1E */	fctiwz f0, f0
/* 80447228 00444168  D8 01 00 08 */	stfd f0, 8(r1)
/* 8044722C 0044416C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80447230 00444170  98 1D 00 39 */	stb r0, 0x39(r29)
/* 80447234 00444174  80 0D 98 58 */	lwz r0, spSysIF__8PSSystem@sda21(r13)
/* 80447238 00444178  28 00 00 00 */	cmplwi r0, 0
/* 8044723C 0044417C  40 82 00 18 */	bne lbl_80447254
/* 80447240 00444180  38 7E 00 38 */	addi r3, r30, 0x38
/* 80447244 00444184  38 BE 00 2C */	addi r5, r30, 0x2c
/* 80447248 00444188  38 80 01 8B */	li r4, 0x18b
/* 8044724C 0044418C  4C C6 31 82 */	crclr 6
/* 80447250 00444190  4B BE 33 F1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80447254:
/* 80447254 00444194  FC 20 F8 90 */	fmr f1, f31
/* 80447258 00444198  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8044725C 0044419C  4B EF 16 59 */	bl setConfigVol_Bgm__Q28PSSystem5SysIFFf
lbl_80447260:
/* 80447260 004441A0  4B CA A7 E5 */	bl OSEnableScheduler
/* 80447264 004441A4  7F E3 FB 78 */	mr r3, r31
/* 80447268 004441A8  4B CA 79 F9 */	bl OSRestoreInterrupts
/* 8044726C 004441AC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80447270 004441B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80447274 004441B4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80447278 004441B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8044727C 004441BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80447280 004441C0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80447284 004441C4  7C 08 03 A6 */	mtlr r0
/* 80447288 004441C8  38 21 00 30 */	addi r1, r1, 0x30
/* 8044728C 004441CC  4E 80 00 20 */	blr 

.global setSeVolume__Q34Game14CommonSaveData3MgrFf
setSeVolume__Q34Game14CommonSaveData3MgrFf:
/* 80447290 004441D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80447294 004441D4  7C 08 02 A6 */	mflr r0
/* 80447298 004441D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8044729C 004441DC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804472A0 004441E0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 804472A4 004441E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804472A8 004441E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804472AC 004441EC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804472B0 004441F0  FF E0 08 90 */	fmr f31, f1
/* 804472B4 004441F4  3C 80 80 4A */	lis r4, lbl_8049AEC0@ha
/* 804472B8 004441F8  7C 7D 1B 78 */	mr r29, r3
/* 804472BC 004441FC  3B C4 AE C0 */	addi r30, r4, lbl_8049AEC0@l
/* 804472C0 00444200  4B CA 79 79 */	bl OSDisableInterrupts
/* 804472C4 00444204  7C 03 00 D0 */	neg r0, r3
/* 804472C8 00444208  7C 00 1B 78 */	or r0, r0, r3
/* 804472CC 0044420C  54 1F 0F FE */	srwi r31, r0, 0x1f
/* 804472D0 00444210  4B CA A7 35 */	bl OSDisableScheduler
/* 804472D4 00444214  C0 02 26 30 */	lfs f0, lbl_80520990@sda21(r2)
/* 804472D8 00444218  38 00 00 00 */	li r0, 0
/* 804472DC 0044421C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804472E0 00444220  4C 41 13 82 */	cror 2, 1, 2
/* 804472E4 00444224  40 82 00 18 */	bne lbl_804472FC
/* 804472E8 00444228  C0 02 26 34 */	lfs f0, lbl_80520994@sda21(r2)
/* 804472EC 0044422C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804472F0 00444230  4C 40 13 82 */	cror 2, 0, 2
/* 804472F4 00444234  40 82 00 08 */	bne lbl_804472FC
/* 804472F8 00444238  38 00 00 01 */	li r0, 1
lbl_804472FC:
/* 804472FC 0044423C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80447300 00444240  40 82 00 18 */	bne lbl_80447318
/* 80447304 00444244  38 7E 00 00 */	addi r3, r30, 0
/* 80447308 00444248  38 BE 00 2C */	addi r5, r30, 0x2c
/* 8044730C 0044424C  38 80 01 97 */	li r4, 0x197
/* 80447310 00444250  4C C6 31 82 */	crclr 6
/* 80447314 00444254  4B BE 33 2D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80447318:
/* 80447318 00444258  80 0D 98 58 */	lwz r0, spSysIF__8PSSystem@sda21(r13)
/* 8044731C 0044425C  28 00 00 00 */	cmplwi r0, 0
/* 80447320 00444260  41 82 00 6C */	beq lbl_8044738C
/* 80447324 00444264  C0 22 26 20 */	lfs f1, lbl_80520980@sda21(r2)
/* 80447328 00444268  C0 02 26 30 */	lfs f0, lbl_80520990@sda21(r2)
/* 8044732C 0044426C  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80447330 00444270  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80447334 00444274  4C 41 13 82 */	cror 2, 1, 2
/* 80447338 00444278  40 82 00 10 */	bne lbl_80447348
/* 8044733C 0044427C  C0 02 26 38 */	lfs f0, lbl_80520998@sda21(r2)
/* 80447340 00444280  EC 00 08 2A */	fadds f0, f0, f1
/* 80447344 00444284  48 00 00 0C */	b lbl_80447350
lbl_80447348:
/* 80447348 00444288  C0 02 26 38 */	lfs f0, lbl_80520998@sda21(r2)
/* 8044734C 0044428C  EC 01 00 28 */	fsubs f0, f1, f0
lbl_80447350:
/* 80447350 00444290  FC 00 00 1E */	fctiwz f0, f0
/* 80447354 00444294  D8 01 00 08 */	stfd f0, 8(r1)
/* 80447358 00444298  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8044735C 0044429C  98 1D 00 3A */	stb r0, 0x3a(r29)
/* 80447360 004442A0  80 0D 98 58 */	lwz r0, spSysIF__8PSSystem@sda21(r13)
/* 80447364 004442A4  28 00 00 00 */	cmplwi r0, 0
/* 80447368 004442A8  40 82 00 18 */	bne lbl_80447380
/* 8044736C 004442AC  38 7E 00 38 */	addi r3, r30, 0x38
/* 80447370 004442B0  38 BE 00 2C */	addi r5, r30, 0x2c
/* 80447374 004442B4  38 80 01 8B */	li r4, 0x18b
/* 80447378 004442B8  4C C6 31 82 */	crclr 6
/* 8044737C 004442BC  4B BE 32 C5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80447380:
/* 80447380 004442C0  FC 20 F8 90 */	fmr f1, f31
/* 80447384 004442C4  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 80447388 004442C8  4B EF 14 A1 */	bl setConfigVol_Se__Q28PSSystem5SysIFFf
lbl_8044738C:
/* 8044738C 004442CC  4B CA A6 B9 */	bl OSEnableScheduler
/* 80447390 004442D0  7F E3 FB 78 */	mr r3, r31
/* 80447394 004442D4  4B CA 78 CD */	bl OSRestoreInterrupts
/* 80447398 004442D8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8044739C 004442DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804473A0 004442E0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804473A4 004442E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804473A8 004442E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804473AC 004442EC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804473B0 004442F0  7C 08 03 A6 */	mtlr r0
/* 804473B4 004442F4  38 21 00 30 */	addi r1, r1, 0x30
/* 804473B8 004442F8  4E 80 00 20 */	blr 
