.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q34Game4Cave8MapUnitsFP10JUTTexture
__ct__Q34Game4Cave8MapUnitsFP10JUTTexture:
/* 802427A8 0023F6E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802427AC 0023F6EC  7C 08 02 A6 */	mflr r0
/* 802427B0 0023F6F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802427B4 0023F6F4  38 00 FF FF */	li r0, -1
/* 802427B8 0023F6F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802427BC 0023F6FC  7C 7F 1B 78 */	mr r31, r3
/* 802427C0 0023F700  38 60 00 00 */	li r3, 0
/* 802427C4 0023F704  90 9F 00 08 */	stw r4, 8(r31)
/* 802427C8 0023F708  90 7F 00 0C */	stw r3, 0xc(r31)
/* 802427CC 0023F70C  90 7F 00 10 */	stw r3, 0x10(r31)
/* 802427D0 0023F710  90 1F 00 14 */	stw r0, 0x14(r31)
/* 802427D4 0023F714  90 1F 00 18 */	stw r0, 0x18(r31)
/* 802427D8 0023F718  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 802427DC 0023F71C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802427E0 0023F720  80 7F 00 08 */	lwz r3, 8(r31)
/* 802427E4 0023F724  28 03 00 00 */	cmplwi r3, 0
/* 802427E8 0023F728  41 82 00 28 */	beq lbl_80242810
/* 802427EC 0023F72C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802427F0 0023F730  A0 03 00 02 */	lhz r0, 2(r3)
/* 802427F4 0023F734  54 00 E8 FE */	srwi r0, r0, 3
/* 802427F8 0023F738  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 802427FC 0023F73C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80242800 0023F740  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80242804 0023F744  A0 03 00 04 */	lhz r0, 4(r3)
/* 80242808 0023F748  54 00 E8 FE */	srwi r0, r0, 3
/* 8024280C 0023F74C  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_80242810:
/* 80242810 0023F750  38 60 00 20 */	li r3, 0x20
/* 80242814 0023F754  4B DE 16 91 */	bl __nw__FUl
/* 80242818 0023F758  7C 60 1B 79 */	or. r0, r3, r3
/* 8024281C 0023F75C  41 82 00 0C */	beq lbl_80242828
/* 80242820 0023F760  48 00 91 09 */	bl __ct__Q34Game4Cave8DoorNodeFv
/* 80242824 0023F764  7C 60 1B 78 */	mr r0, r3
lbl_80242828:
/* 80242828 0023F768  90 1F 00 00 */	stw r0, 0(r31)
/* 8024282C 0023F76C  38 00 00 00 */	li r0, 0
/* 80242830 0023F770  7F E3 FB 78 */	mr r3, r31
/* 80242834 0023F774  90 1F 00 04 */	stw r0, 4(r31)
/* 80242838 0023F778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024283C 0023F77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80242840 0023F780  7C 08 03 A6 */	mtlr r0
/* 80242844 0023F784  38 21 00 10 */	addi r1, r1, 0x10
/* 80242848 0023F788  4E 80 00 20 */	blr 

.global setDoorNum__Q34Game4Cave8MapUnitsFi
setDoorNum__Q34Game4Cave8MapUnitsFi:
/* 8024284C 0023F78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80242850 0023F790  7C 08 02 A6 */	mflr r0
/* 80242854 0023F794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80242858 0023F798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024285C 0023F79C  7C 9F 23 78 */	mr r31, r4
/* 80242860 0023F7A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80242864 0023F7A4  7C 7E 1B 78 */	mr r30, r3
/* 80242868 0023F7A8  1C 7F 00 1C */	mulli r3, r31, 0x1c
/* 8024286C 0023F7AC  38 63 00 10 */	addi r3, r3, 0x10
/* 80242870 0023F7B0  4B DE 17 3D */	bl __nwa__FUl
/* 80242874 0023F7B4  3C 80 80 25 */	lis r4, __ct__Q34Game4Cave10AdjustNodeFv@ha
/* 80242878 0023F7B8  3C A0 80 24 */	lis r5, __dt__Q34Game4Cave10AdjustNodeFv@ha
/* 8024287C 0023F7BC  38 84 B8 88 */	addi r4, r4, __ct__Q34Game4Cave10AdjustNodeFv@l
/* 80242880 0023F7C0  7F E7 FB 78 */	mr r7, r31
/* 80242884 0023F7C4  38 A5 28 AC */	addi r5, r5, __dt__Q34Game4Cave10AdjustNodeFv@l
/* 80242888 0023F7C8  38 C0 00 1C */	li r6, 0x1c
/* 8024288C 0023F7CC  4B E7 F1 65 */	bl __construct_new_array
/* 80242890 0023F7D0  90 7E 00 04 */	stw r3, 4(r30)
/* 80242894 0023F7D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80242898 0023F7D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024289C 0023F7DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802428A0 0023F7E0  7C 08 03 A6 */	mtlr r0
/* 802428A4 0023F7E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802428A8 0023F7E8  4E 80 00 20 */	blr 

.global __dt__Q34Game4Cave10AdjustNodeFv
__dt__Q34Game4Cave10AdjustNodeFv:
/* 802428AC 0023F7EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802428B0 0023F7F0  7C 08 02 A6 */	mflr r0
/* 802428B4 0023F7F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802428B8 0023F7F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802428BC 0023F7FC  7C 9F 23 78 */	mr r31, r4
/* 802428C0 0023F800  93 C1 00 08 */	stw r30, 8(r1)
/* 802428C4 0023F804  7C 7E 1B 79 */	or. r30, r3, r3
/* 802428C8 0023F808  41 82 00 28 */	beq lbl_802428F0
/* 802428CC 0023F80C  3C A0 80 4C */	lis r5, __vt__Q34Game4Cave10AdjustNode@ha
/* 802428D0 0023F810  38 80 00 00 */	li r4, 0
/* 802428D4 0023F814  38 05 1A 58 */	addi r0, r5, __vt__Q34Game4Cave10AdjustNode@l
/* 802428D8 0023F818  90 1E 00 00 */	stw r0, 0(r30)
/* 802428DC 0023F81C  48 1C EC AD */	bl __dt__5CNodeFv
/* 802428E0 0023F820  7F E0 07 35 */	extsh. r0, r31
/* 802428E4 0023F824  40 81 00 0C */	ble lbl_802428F0
/* 802428E8 0023F828  7F C3 F3 78 */	mr r3, r30
/* 802428EC 0023F82C  4B DE 17 C9 */	bl __dl__FPv
lbl_802428F0:
/* 802428F0 0023F830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802428F4 0023F834  7F C3 F3 78 */	mr r3, r30
/* 802428F8 0023F838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802428FC 0023F83C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80242900 0023F840  7C 08 03 A6 */	mtlr r0
/* 80242904 0023F844  38 21 00 10 */	addi r1, r1, 0x10
/* 80242908 0023F848  4E 80 00 20 */	blr 

.global setUnitName__Q34Game4Cave8MapUnitsFPc
setUnitName__Q34Game4Cave8MapUnitsFPc:
/* 8024290C 0023F84C  90 83 00 10 */	stw r4, 0x10(r3)
/* 80242910 0023F850  4E 80 00 20 */	blr 

.global setUnitIndex__Q34Game4Cave8MapUnitsFi
setUnitIndex__Q34Game4Cave8MapUnitsFi:
/* 80242914 0023F854  90 83 00 14 */	stw r4, 0x14(r3)
/* 80242918 0023F858  4E 80 00 20 */	blr 

.global setUnitKind__Q34Game4Cave8MapUnitsFi
setUnitKind__Q34Game4Cave8MapUnitsFi:
/* 8024291C 0023F85C  90 83 00 18 */	stw r4, 0x18(r3)
/* 80242920 0023F860  4E 80 00 20 */	blr 

.global setUnitSize__Q34Game4Cave8MapUnitsFii
setUnitSize__Q34Game4Cave8MapUnitsFii:
/* 80242924 0023F864  90 83 00 1C */	stw r4, 0x1c(r3)
/* 80242928 0023F868  90 A3 00 20 */	stw r5, 0x20(r3)
/* 8024292C 0023F86C  4E 80 00 20 */	blr 

.global setBaseGenPtr__Q34Game4Cave8MapUnitsFPQ34Game4Cave7BaseGen
setBaseGenPtr__Q34Game4Cave8MapUnitsFPQ34Game4Cave7BaseGen:
/* 80242930 0023F870  90 83 00 0C */	stw r4, 0xc(r3)
/* 80242934 0023F874  4E 80 00 20 */	blr 

.global __ct__Q34Game4Cave8UnitInfoFPQ34Game4Cave8MapUnits
__ct__Q34Game4Cave8UnitInfoFPQ34Game4Cave8MapUnits:
/* 80242938 0023F878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024293C 0023F87C  7C 08 02 A6 */	mflr r0
/* 80242940 0023F880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80242944 0023F884  38 00 FF FF */	li r0, -1
/* 80242948 0023F888  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024294C 0023F88C  7C 7F 1B 78 */	mr r31, r3
/* 80242950 0023F890  90 83 00 08 */	stw r4, 8(r3)
/* 80242954 0023F894  38 60 00 20 */	li r3, 0x20
/* 80242958 0023F898  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8024295C 0023F89C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80242960 0023F8A0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80242964 0023F8A4  4B DE 15 41 */	bl __nw__FUl
/* 80242968 0023F8A8  7C 60 1B 79 */	or. r0, r3, r3
/* 8024296C 0023F8AC  41 82 00 0C */	beq lbl_80242978
/* 80242970 0023F8B0  48 00 8F B9 */	bl __ct__Q34Game4Cave8DoorNodeFv
/* 80242974 0023F8B4  7C 60 1B 78 */	mr r0, r3
lbl_80242978:
/* 80242978 0023F8B8  90 1F 00 00 */	stw r0, 0(r31)
/* 8024297C 0023F8BC  38 00 00 00 */	li r0, 0
/* 80242980 0023F8C0  7F E3 FB 78 */	mr r3, r31
/* 80242984 0023F8C4  90 1F 00 04 */	stw r0, 4(r31)
/* 80242988 0023F8C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024298C 0023F8CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80242990 0023F8D0  7C 08 03 A6 */	mtlr r0
/* 80242994 0023F8D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80242998 0023F8D8  4E 80 00 20 */	blr 

.global setUnitTexture__Q34Game4Cave8UnitInfoFP10JUTTexture
setUnitTexture__Q34Game4Cave8UnitInfoFP10JUTTexture:
/* 8024299C 0023F8DC  80 63 00 08 */	lwz r3, 8(r3)
/* 802429A0 0023F8E0  90 83 00 08 */	stw r4, 8(r3)
/* 802429A4 0023F8E4  4E 80 00 20 */	blr 

.global setUnitRotation__Q34Game4Cave8UnitInfoFi
setUnitRotation__Q34Game4Cave8UnitInfoFi:
/* 802429A8 0023F8E8  90 83 00 0C */	stw r4, 0xc(r3)
/* 802429AC 0023F8EC  4E 80 00 20 */	blr 

.global create__Q34Game4Cave8UnitInfoFv
create__Q34Game4Cave8UnitInfoFv:
/* 802429B0 0023F8F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802429B4 0023F8F4  7C 08 02 A6 */	mflr r0
/* 802429B8 0023F8F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802429BC 0023F8FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802429C0 0023F900  7C 7F 1B 78 */	mr r31, r3
/* 802429C4 0023F904  93 C1 00 08 */	stw r30, 8(r1)
/* 802429C8 0023F908  80 63 00 08 */	lwz r3, 8(r3)
/* 802429CC 0023F90C  80 63 00 00 */	lwz r3, 0(r3)
/* 802429D0 0023F910  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 802429D4 0023F914  48 00 00 38 */	b lbl_80242A0C
lbl_802429D8:
/* 802429D8 0023F918  38 60 00 20 */	li r3, 0x20
/* 802429DC 0023F91C  4B DE 14 C9 */	bl __nw__FUl
/* 802429E0 0023F920  7C 64 1B 79 */	or. r4, r3, r3
/* 802429E4 0023F924  41 82 00 0C */	beq lbl_802429F0
/* 802429E8 0023F928  48 00 8F 41 */	bl __ct__Q34Game4Cave8DoorNodeFv
/* 802429EC 0023F92C  7C 64 1B 78 */	mr r4, r3
lbl_802429F0:
/* 802429F0 0023F930  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 802429F4 0023F934  90 04 00 18 */	stw r0, 0x18(r4)
/* 802429F8 0023F938  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802429FC 0023F93C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80242A00 0023F940  80 7F 00 00 */	lwz r3, 0(r31)
/* 80242A04 0023F944  48 1C EA 05 */	bl add__5CNodeFP5CNode
/* 80242A08 0023F948  83 DE 00 04 */	lwz r30, 4(r30)
lbl_80242A0C:
/* 80242A0C 0023F94C  28 1E 00 00 */	cmplwi r30, 0
/* 80242A10 0023F950  40 82 FF C8 */	bne lbl_802429D8
/* 80242A14 0023F954  80 7F 00 08 */	lwz r3, 8(r31)
/* 80242A18 0023F958  80 03 00 04 */	lwz r0, 4(r3)
/* 80242A1C 0023F95C  90 1F 00 04 */	stw r0, 4(r31)
/* 80242A20 0023F960  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80242A24 0023F964  2C 00 00 00 */	cmpwi r0, 0
/* 80242A28 0023F968  41 82 00 0C */	beq lbl_80242A34
/* 80242A2C 0023F96C  2C 00 00 02 */	cmpwi r0, 2
/* 80242A30 0023F970  40 82 00 20 */	bne lbl_80242A50
lbl_80242A34:
/* 80242A34 0023F974  80 7F 00 08 */	lwz r3, 8(r31)
/* 80242A38 0023F978  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80242A3C 0023F97C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80242A40 0023F980  80 7F 00 08 */	lwz r3, 8(r31)
/* 80242A44 0023F984  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80242A48 0023F988  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80242A4C 0023F98C  48 00 00 1C */	b lbl_80242A68
lbl_80242A50:
/* 80242A50 0023F990  80 7F 00 08 */	lwz r3, 8(r31)
/* 80242A54 0023F994  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80242A58 0023F998  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80242A5C 0023F99C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80242A60 0023F9A0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80242A64 0023F9A4  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_80242A68:
/* 80242A68 0023F9A8  80 9F 00 08 */	lwz r4, 8(r31)
/* 80242A6C 0023F9AC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80242A70 0023F9B0  80 A4 00 1C */	lwz r5, 0x1c(r4)
/* 80242A74 0023F9B4  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80242A78 0023F9B8  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 80242A7C 0023F9BC  38 A5 FF FF */	addi r5, r5, -1
/* 80242A80 0023F9C0  38 84 FF FF */	addi r4, r4, -1
/* 80242A84 0023F9C4  48 00 00 C8 */	b lbl_80242B4C
lbl_80242A88:
/* 80242A88 0023F9C8  80 E6 00 18 */	lwz r7, 0x18(r6)
/* 80242A8C 0023F9CC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80242A90 0023F9D0  2C 07 00 00 */	cmpwi r7, 0
/* 80242A94 0023F9D4  7C 67 02 14 */	add r3, r7, r0
/* 80242A98 0023F9D8  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 80242A9C 0023F9DC  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80242AA0 0023F9E0  7C 03 00 50 */	subf r0, r3, r0
/* 80242AA4 0023F9E4  54 00 10 3E */	rotlwi r0, r0, 2
/* 80242AA8 0023F9E8  7C 00 1A 14 */	add r0, r0, r3
/* 80242AAC 0023F9EC  90 06 00 18 */	stw r0, 0x18(r6)
/* 80242AB0 0023F9F0  40 82 00 24 */	bne lbl_80242AD4
/* 80242AB4 0023F9F4  2C 00 00 02 */	cmpwi r0, 2
/* 80242AB8 0023F9F8  41 82 00 0C */	beq lbl_80242AC4
/* 80242ABC 0023F9FC  2C 00 00 03 */	cmpwi r0, 3
/* 80242AC0 0023FA00  40 82 00 88 */	bne lbl_80242B48
lbl_80242AC4:
/* 80242AC4 0023FA04  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 80242AC8 0023FA08  7C 00 28 50 */	subf r0, r0, r5
/* 80242ACC 0023FA0C  90 06 00 1C */	stw r0, 0x1c(r6)
/* 80242AD0 0023FA10  48 00 00 78 */	b lbl_80242B48
lbl_80242AD4:
/* 80242AD4 0023FA14  2C 07 00 01 */	cmpwi r7, 1
/* 80242AD8 0023FA18  40 82 00 24 */	bne lbl_80242AFC
/* 80242ADC 0023FA1C  2C 00 00 02 */	cmpwi r0, 2
/* 80242AE0 0023FA20  41 82 00 0C */	beq lbl_80242AEC
/* 80242AE4 0023FA24  2C 00 00 03 */	cmpwi r0, 3
/* 80242AE8 0023FA28  40 82 00 60 */	bne lbl_80242B48
lbl_80242AEC:
/* 80242AEC 0023FA2C  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 80242AF0 0023FA30  7C 00 20 50 */	subf r0, r0, r4
/* 80242AF4 0023FA34  90 06 00 1C */	stw r0, 0x1c(r6)
/* 80242AF8 0023FA38  48 00 00 50 */	b lbl_80242B48
lbl_80242AFC:
/* 80242AFC 0023FA3C  2C 07 00 02 */	cmpwi r7, 2
/* 80242B00 0023FA40  40 82 00 24 */	bne lbl_80242B24
/* 80242B04 0023FA44  2C 00 00 00 */	cmpwi r0, 0
/* 80242B08 0023FA48  41 82 00 0C */	beq lbl_80242B14
/* 80242B0C 0023FA4C  2C 00 00 01 */	cmpwi r0, 1
/* 80242B10 0023FA50  40 82 00 38 */	bne lbl_80242B48
lbl_80242B14:
/* 80242B14 0023FA54  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 80242B18 0023FA58  7C 00 28 50 */	subf r0, r0, r5
/* 80242B1C 0023FA5C  90 06 00 1C */	stw r0, 0x1c(r6)
/* 80242B20 0023FA60  48 00 00 28 */	b lbl_80242B48
lbl_80242B24:
/* 80242B24 0023FA64  2C 07 00 03 */	cmpwi r7, 3
/* 80242B28 0023FA68  40 82 00 20 */	bne lbl_80242B48
/* 80242B2C 0023FA6C  2C 00 00 00 */	cmpwi r0, 0
/* 80242B30 0023FA70  41 82 00 0C */	beq lbl_80242B3C
/* 80242B34 0023FA74  2C 00 00 01 */	cmpwi r0, 1
/* 80242B38 0023FA78  40 82 00 10 */	bne lbl_80242B48
lbl_80242B3C:
/* 80242B3C 0023FA7C  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 80242B40 0023FA80  7C 00 20 50 */	subf r0, r0, r4
/* 80242B44 0023FA84  90 06 00 1C */	stw r0, 0x1c(r6)
lbl_80242B48:
/* 80242B48 0023FA88  80 C6 00 04 */	lwz r6, 4(r6)
lbl_80242B4C:
/* 80242B4C 0023FA8C  28 06 00 00 */	cmplwi r6, 0
/* 80242B50 0023FA90  40 82 FF 38 */	bne lbl_80242A88
/* 80242B54 0023FA94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80242B58 0023FA98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80242B5C 0023FA9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80242B60 0023FAA0  7C 08 03 A6 */	mtlr r0
/* 80242B64 0023FAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80242B68 0023FAA8  4E 80 00 20 */	blr 

.global getUnitName__Q34Game4Cave8UnitInfoFv
getUnitName__Q34Game4Cave8UnitInfoFv:
/* 80242B6C 0023FAAC  80 63 00 08 */	lwz r3, 8(r3)
/* 80242B70 0023FAB0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80242B74 0023FAB4  4E 80 00 20 */	blr 

.global getUnitKind__Q34Game4Cave8UnitInfoFv
getUnitKind__Q34Game4Cave8UnitInfoFv:
/* 80242B78 0023FAB8  80 63 00 08 */	lwz r3, 8(r3)
/* 80242B7C 0023FABC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80242B80 0023FAC0  4E 80 00 20 */	blr 

.global getUnitSizeX__Q34Game4Cave8UnitInfoFv
getUnitSizeX__Q34Game4Cave8UnitInfoFv:
/* 80242B84 0023FAC4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80242B88 0023FAC8  4E 80 00 20 */	blr 

.global getUnitSizeY__Q34Game4Cave8UnitInfoFv
getUnitSizeY__Q34Game4Cave8UnitInfoFv:
/* 80242B8C 0023FACC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80242B90 0023FAD0  4E 80 00 20 */	blr 

.global getUnitRotation__Q34Game4Cave8UnitInfoFv
getUnitRotation__Q34Game4Cave8UnitInfoFv:
/* 80242B94 0023FAD4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80242B98 0023FAD8  4E 80 00 20 */	blr 

.global getDoorNode__Q34Game4Cave8UnitInfoFi
getDoorNode__Q34Game4Cave8UnitInfoFi:
/* 80242B9C 0023FADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80242BA0 0023FAE0  7C 08 02 A6 */	mflr r0
/* 80242BA4 0023FAE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80242BA8 0023FAE8  80 63 00 00 */	lwz r3, 0(r3)
/* 80242BAC 0023FAEC  48 1C EA F1 */	bl getChildAt__5CNodeFi
/* 80242BB0 0023FAF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80242BB4 0023FAF4  7C 08 03 A6 */	mtlr r0
/* 80242BB8 0023FAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80242BBC 0023FAFC  4E 80 00 20 */	blr 

.global getBaseGen__Q34Game4Cave8UnitInfoFv
getBaseGen__Q34Game4Cave8UnitInfoFv:
/* 80242BC0 0023FB00  80 63 00 08 */	lwz r3, 8(r3)
/* 80242BC4 0023FB04  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80242BC8 0023FB08  4E 80 00 20 */	blr 

.global draw__Q34Game4Cave8UnitInfoFffff
draw__Q34Game4Cave8UnitInfoFffff:
/* 80242BCC 0023FB0C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80242BD0 0023FB10  7C 08 02 A6 */	mflr r0
/* 80242BD4 0023FB14  90 01 00 74 */	stw r0, 0x74(r1)
/* 80242BD8 0023FB18  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80242BDC 0023FB1C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80242BE0 0023FB20  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80242BE4 0023FB24  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 80242BE8 0023FB28  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80242BEC 0023FB2C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 80242BF0 0023FB30  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 80242BF4 0023FB34  F3 81 00 38 */	psq_st f28, 56(r1), 0, qr0
/* 80242BF8 0023FB38  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 80242BFC 0023FB3C  80 83 00 08 */	lwz r4, 8(r3)
/* 80242C00 0023FB40  FF 80 08 90 */	fmr f28, f1
/* 80242C04 0023FB44  FF A0 10 90 */	fmr f29, f2
/* 80242C08 0023FB48  80 84 00 08 */	lwz r4, 8(r4)
/* 80242C0C 0023FB4C  FF C0 18 90 */	fmr f30, f3
/* 80242C10 0023FB50  FF E0 20 90 */	fmr f31, f4
/* 80242C14 0023FB54  28 04 00 00 */	cmplwi r4, 0
/* 80242C18 0023FB58  41 82 01 0C */	beq lbl_80242D24
/* 80242C1C 0023FB5C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80242C20 0023FB60  3B E0 00 00 */	li r31, 0
/* 80242C24 0023FB64  3B C0 00 10 */	li r30, 0x10
/* 80242C28 0023FB68  3B A0 00 10 */	li r29, 0x10
/* 80242C2C 0023FB6C  2C 00 00 02 */	cmpwi r0, 2
/* 80242C30 0023FB70  3B 80 00 00 */	li r28, 0
/* 80242C34 0023FB74  3B 60 00 00 */	li r27, 0
/* 80242C38 0023FB78  3B 40 00 00 */	li r26, 0
/* 80242C3C 0023FB7C  3B 20 00 10 */	li r25, 0x10
/* 80242C40 0023FB80  3B 00 00 10 */	li r24, 0x10
/* 80242C44 0023FB84  41 82 00 38 */	beq lbl_80242C7C
/* 80242C48 0023FB88  40 80 00 14 */	bge lbl_80242C5C
/* 80242C4C 0023FB8C  2C 00 00 00 */	cmpwi r0, 0
/* 80242C50 0023FB90  41 82 00 60 */	beq lbl_80242CB0
/* 80242C54 0023FB94  40 80 00 14 */	bge lbl_80242C68
/* 80242C58 0023FB98  48 00 00 58 */	b lbl_80242CB0
lbl_80242C5C:
/* 80242C5C 0023FB9C  2C 00 00 04 */	cmpwi r0, 4
/* 80242C60 0023FBA0  40 80 00 50 */	bge lbl_80242CB0
/* 80242C64 0023FBA4  48 00 00 3C */	b lbl_80242CA0
lbl_80242C68:
/* 80242C68 0023FBA8  3B C0 00 00 */	li r30, 0
/* 80242C6C 0023FBAC  3B 80 00 10 */	li r28, 0x10
/* 80242C70 0023FBB0  3B 60 00 10 */	li r27, 0x10
/* 80242C74 0023FBB4  3B 20 00 00 */	li r25, 0
/* 80242C78 0023FBB8  48 00 00 38 */	b lbl_80242CB0
lbl_80242C7C:
/* 80242C7C 0023FBBC  3B E0 00 10 */	li r31, 0x10
/* 80242C80 0023FBC0  3B C0 00 00 */	li r30, 0
/* 80242C84 0023FBC4  3B A0 00 00 */	li r29, 0
/* 80242C88 0023FBC8  3B 80 00 10 */	li r28, 0x10
/* 80242C8C 0023FBCC  3B 60 00 10 */	li r27, 0x10
/* 80242C90 0023FBD0  3B 40 00 10 */	li r26, 0x10
/* 80242C94 0023FBD4  3B 20 00 00 */	li r25, 0
/* 80242C98 0023FBD8  3B 00 00 00 */	li r24, 0
/* 80242C9C 0023FBDC  48 00 00 14 */	b lbl_80242CB0
lbl_80242CA0:
/* 80242CA0 0023FBE0  3B E0 00 10 */	li r31, 0x10
/* 80242CA4 0023FBE4  3B A0 00 00 */	li r29, 0
/* 80242CA8 0023FBE8  3B 40 00 10 */	li r26, 0x10
/* 80242CAC 0023FBEC  3B 00 00 00 */	li r24, 0
lbl_80242CB0:
/* 80242CB0 0023FBF0  7C 83 23 78 */	mr r3, r4
/* 80242CB4 0023FBF4  38 80 00 00 */	li r4, 0
/* 80242CB8 0023FBF8  4B DF 09 79 */	bl load__10JUTTextureF11_GXTexMapID
/* 80242CBC 0023FBFC  38 60 00 80 */	li r3, 0x80
/* 80242CC0 0023FC00  38 80 00 00 */	li r4, 0
/* 80242CC4 0023FC04  38 A0 00 04 */	li r5, 4
/* 80242CC8 0023FC08  4B EA 2C C1 */	bl GXBegin
/* 80242CCC 0023FC0C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80242CD0 0023FC10  C0 02 C3 78 */	lfs f0, lbl_8051A6D8@sda21(r2)
/* 80242CD4 0023FC14  D3 83 80 00 */	stfs f28, 0xCC008000@l(r3)
/* 80242CD8 0023FC18  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 80242CDC 0023FC1C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80242CE0 0023FC20  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 80242CE4 0023FC24  9B 63 80 00 */	stb r27, -0x8000(r3)
/* 80242CE8 0023FC28  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 80242CEC 0023FC2C  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 80242CF0 0023FC30  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80242CF4 0023FC34  9B C3 80 00 */	stb r30, -0x8000(r3)
/* 80242CF8 0023FC38  9B 43 80 00 */	stb r26, -0x8000(r3)
/* 80242CFC 0023FC3C  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 80242D00 0023FC40  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 80242D04 0023FC44  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80242D08 0023FC48  9B A3 80 00 */	stb r29, -0x8000(r3)
/* 80242D0C 0023FC4C  9B 23 80 00 */	stb r25, -0x8000(r3)
/* 80242D10 0023FC50  D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 80242D14 0023FC54  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 80242D18 0023FC58  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80242D1C 0023FC5C  9B 83 80 00 */	stb r28, -0x8000(r3)
/* 80242D20 0023FC60  9B 03 80 00 */	stb r24, -0x8000(r3)
lbl_80242D24:
/* 80242D24 0023FC64  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80242D28 0023FC68  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80242D2C 0023FC6C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80242D30 0023FC70  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80242D34 0023FC74  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 80242D38 0023FC78  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80242D3C 0023FC7C  E3 81 00 38 */	psq_l f28, 56(r1), 0, qr0
/* 80242D40 0023FC80  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 80242D44 0023FC84  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 80242D48 0023FC88  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80242D4C 0023FC8C  7C 08 03 A6 */	mtlr r0
/* 80242D50 0023FC90  38 21 00 70 */	addi r1, r1, 0x70
/* 80242D54 0023FC94  4E 80 00 20 */	blr 
