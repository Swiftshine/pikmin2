.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q24Game9AILODParmFv
__ct__Q24Game9AILODParmFv:
/* 801D7808 001D4748  C0 22 B3 F0 */	lfs f1, lbl_80519750@sda21(r2)
/* 801D780C 001D474C  38 00 00 00 */	li r0, 0
/* 801D7810 001D4750  C0 02 B3 F4 */	lfs f0, lbl_80519754@sda21(r2)
/* 801D7814 001D4754  D0 23 00 00 */	stfs f1, 0(r3)
/* 801D7818 001D4758  D0 03 00 04 */	stfs f0, 4(r3)
/* 801D781C 001D475C  98 03 00 08 */	stb r0, 8(r3)
/* 801D7820 001D4760  4E 80 00 20 */	blr 

.global __ct__Q24Game5AILODFv
__ct__Q24Game5AILODFv:
/* 801D7824 001D4764  38 80 00 00 */	li r4, 0
/* 801D7828 001D4768  38 00 00 10 */	li r0, 0x10
/* 801D782C 001D476C  98 83 00 00 */	stb r4, 0(r3)
/* 801D7830 001D4770  98 83 00 01 */	stb r4, 1(r3)
/* 801D7834 001D4774  98 03 00 00 */	stb r0, 0(r3)
/* 801D7838 001D4778  4E 80 00 20 */	blr 

.global updateLOD__Q24Game8CreatureFRQ24Game9AILODParm
updateLOD__Q24Game8CreatureFRQ24Game9AILODParm:
/* 801D783C 001D477C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801D7840 001D4780  7C 08 02 A6 */	mflr r0
/* 801D7844 001D4784  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801D7848 001D4788  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801D784C 001D478C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 801D7850 001D4790  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 801D7854 001D4794  F3 C1 00 88 */	psq_st f30, 136(r1), 0, qr0
/* 801D7858 001D4798  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 801D785C 001D479C  F3 A1 00 78 */	psq_st f29, 120(r1), 0, qr0
/* 801D7860 001D47A0  BE E1 00 4C */	stmw r23, 0x4c(r1)
/* 801D7864 001D47A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7868 001D47A8  7C 98 23 78 */	mr r24, r4
/* 801D786C 001D47AC  7C 77 1B 78 */	mr r23, r3
/* 801D7870 001D47B0  38 81 00 10 */	addi r4, r1, 0x10
/* 801D7874 001D47B4  81 8C 01 40 */	lwz r12, 0x140(r12)
/* 801D7878 001D47B8  7D 89 03 A6 */	mtctr r12
/* 801D787C 001D47BC  4E 80 04 21 */	bctrl 
/* 801D7880 001D47C0  88 18 00 08 */	lbz r0, 8(r24)
/* 801D7884 001D47C4  28 00 00 00 */	cmplwi r0, 0
/* 801D7888 001D47C8  41 82 00 1C */	beq lbl_801D78A4
/* 801D788C 001D47CC  7E E3 BB 78 */	mr r3, r23
/* 801D7890 001D47D0  38 81 00 20 */	addi r4, r1, 0x20
/* 801D7894 001D47D4  81 97 00 00 */	lwz r12, 0(r23)
/* 801D7898 001D47D8  81 8C 01 44 */	lwz r12, 0x144(r12)
/* 801D789C 001D47DC  7D 89 03 A6 */	mtctr r12
/* 801D78A0 001D47E0  4E 80 04 21 */	bctrl 
lbl_801D78A4:
/* 801D78A4 001D47E4  38 00 00 00 */	li r0, 0
/* 801D78A8 001D47E8  3B 81 00 08 */	addi r28, r1, 8
/* 801D78AC 001D47EC  98 17 00 D8 */	stb r0, 0xd8(r23)
/* 801D78B0 001D47F0  3B 60 00 01 */	li r27, 1
/* 801D78B4 001D47F4  3B 40 00 02 */	li r26, 2
/* 801D78B8 001D47F8  3B 20 00 00 */	li r25, 0
/* 801D78BC 001D47FC  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801D78C0 001D4800  83 E3 00 24 */	lwz r31, 0x24(r3)
/* 801D78C4 001D4804  83 DF 02 64 */	lwz r30, 0x264(r31)
/* 801D78C8 001D4808  48 00 00 F4 */	b lbl_801D79BC
lbl_801D78CC:
/* 801D78CC 001D480C  7F E3 FB 78 */	mr r3, r31
/* 801D78D0 001D4810  7F 24 CB 78 */	mr r4, r25
/* 801D78D4 001D4814  48 24 DD 1D */	bl getViewport__8GraphicsFi
/* 801D78D8 001D4818  7C 7D 1B 78 */	mr r29, r3
/* 801D78DC 001D481C  48 24 D9 65 */	bl viewable__8ViewportFv
/* 801D78E0 001D4820  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D78E4 001D4824  40 82 00 10 */	bne lbl_801D78F4
/* 801D78E8 001D4828  38 00 00 02 */	li r0, 2
/* 801D78EC 001D482C  90 1C 00 00 */	stw r0, 0(r28)
/* 801D78F0 001D4830  48 00 00 C4 */	b lbl_801D79B4
lbl_801D78F4:
/* 801D78F4 001D4834  88 18 00 08 */	lbz r0, 8(r24)
/* 801D78F8 001D4838  83 BD 00 44 */	lwz r29, 0x44(r29)
/* 801D78FC 001D483C  28 00 00 00 */	cmplwi r0, 0
/* 801D7900 001D4840  41 82 00 34 */	beq lbl_801D7934
/* 801D7904 001D4844  7F A3 EB 78 */	mr r3, r29
/* 801D7908 001D4848  38 81 00 20 */	addi r4, r1, 0x20
/* 801D790C 001D484C  48 24 28 F5 */	bl isCylinderVisible__9CullPlaneFRQ23Sys8Cylinder
/* 801D7910 001D4850  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D7914 001D4854  41 82 00 4C */	beq lbl_801D7960
/* 801D7918 001D4858  38 00 00 10 */	li r0, 0x10
/* 801D791C 001D485C  88 77 00 D8 */	lbz r3, 0xd8(r23)
/* 801D7920 001D4860  7C 00 C8 30 */	slw r0, r0, r25
/* 801D7924 001D4864  3B 60 00 00 */	li r27, 0
/* 801D7928 001D4868  7C 60 03 78 */	or r0, r3, r0
/* 801D792C 001D486C  98 17 00 D8 */	stb r0, 0xd8(r23)
/* 801D7930 001D4870  48 00 00 30 */	b lbl_801D7960
lbl_801D7934:
/* 801D7934 001D4874  7F A3 EB 78 */	mr r3, r29
/* 801D7938 001D4878  38 81 00 10 */	addi r4, r1, 0x10
/* 801D793C 001D487C  48 24 28 55 */	bl isVisible__9CullPlaneFRQ23Sys6Sphere
/* 801D7940 001D4880  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D7944 001D4884  41 82 00 1C */	beq lbl_801D7960
/* 801D7948 001D4888  38 00 00 10 */	li r0, 0x10
/* 801D794C 001D488C  88 77 00 D8 */	lbz r3, 0xd8(r23)
/* 801D7950 001D4890  7C 00 C8 30 */	slw r0, r0, r25
/* 801D7954 001D4894  3B 60 00 00 */	li r27, 0
/* 801D7958 001D4898  7C 60 03 78 */	or r0, r3, r0
/* 801D795C 001D489C  98 17 00 D8 */	stb r0, 0xd8(r23)
lbl_801D7960:
/* 801D7960 001D48A0  7F A3 EB 78 */	mr r3, r29
/* 801D7964 001D48A4  38 81 00 10 */	addi r4, r1, 0x10
/* 801D7968 001D48A8  48 24 37 91 */	bl calcScreenSize__6CameraFRQ23Sys6Sphere
/* 801D796C 001D48AC  C0 18 00 00 */	lfs f0, 0(r24)
/* 801D7970 001D48B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D7974 001D48B4  40 81 00 10 */	ble lbl_801D7984
/* 801D7978 001D48B8  38 00 00 00 */	li r0, 0
/* 801D797C 001D48BC  90 1C 00 00 */	stw r0, 0(r28)
/* 801D7980 001D48C0  48 00 00 24 */	b lbl_801D79A4
lbl_801D7984:
/* 801D7984 001D48C4  C0 18 00 04 */	lfs f0, 4(r24)
/* 801D7988 001D48C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D798C 001D48CC  40 81 00 10 */	ble lbl_801D799C
/* 801D7990 001D48D0  38 00 00 01 */	li r0, 1
/* 801D7994 001D48D4  90 1C 00 00 */	stw r0, 0(r28)
/* 801D7998 001D48D8  48 00 00 0C */	b lbl_801D79A4
lbl_801D799C:
/* 801D799C 001D48DC  38 00 00 02 */	li r0, 2
/* 801D79A0 001D48E0  90 1C 00 00 */	stw r0, 0(r28)
lbl_801D79A4:
/* 801D79A4 001D48E4  80 1C 00 00 */	lwz r0, 0(r28)
/* 801D79A8 001D48E8  7C 00 D0 00 */	cmpw r0, r26
/* 801D79AC 001D48EC  40 80 00 08 */	bge lbl_801D79B4
/* 801D79B0 001D48F0  7C 1A 03 78 */	mr r26, r0
lbl_801D79B4:
/* 801D79B4 001D48F4  3B 9C 00 04 */	addi r28, r28, 4
/* 801D79B8 001D48F8  3B 39 00 01 */	addi r25, r25, 1
lbl_801D79BC:
/* 801D79BC 001D48FC  7C 19 F0 00 */	cmpw r25, r30
/* 801D79C0 001D4900  41 80 FF 0C */	blt lbl_801D78CC
/* 801D79C4 001D4904  80 8D 93 E8 */	lwz r4, gameSystem__4Game@sda21(r13)
/* 801D79C8 001D4908  38 60 00 00 */	li r3, 0
/* 801D79CC 001D490C  80 04 00 44 */	lwz r0, 0x44(r4)
/* 801D79D0 001D4910  2C 00 00 01 */	cmpwi r0, 1
/* 801D79D4 001D4914  41 82 00 0C */	beq lbl_801D79E0
/* 801D79D8 001D4918  2C 00 00 03 */	cmpwi r0, 3
/* 801D79DC 001D491C  40 82 00 08 */	bne lbl_801D79E4
lbl_801D79E0:
/* 801D79E0 001D4920  38 60 00 01 */	li r3, 1
lbl_801D79E4:
/* 801D79E4 001D4924  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D79E8 001D4928  41 82 00 0C */	beq lbl_801D79F4
/* 801D79EC 001D492C  2C 1E 00 02 */	cmpwi r30, 2
/* 801D79F0 001D4930  40 80 00 10 */	bge lbl_801D7A00
lbl_801D79F4:
/* 801D79F4 001D4934  38 00 00 00 */	li r0, 0
/* 801D79F8 001D4938  98 17 00 D9 */	stb r0, 0xd9(r23)
/* 801D79FC 001D493C  48 00 01 4C */	b lbl_801D7B48
lbl_801D7A00:
/* 801D7A00 001D4940  7F E3 FB 78 */	mr r3, r31
/* 801D7A04 001D4944  38 80 00 00 */	li r4, 0
/* 801D7A08 001D4948  48 24 DB E9 */	bl getViewport__8GraphicsFi
/* 801D7A0C 001D494C  7C 60 1B 78 */	mr r0, r3
/* 801D7A10 001D4950  7F E3 FB 78 */	mr r3, r31
/* 801D7A14 001D4954  7C 19 03 78 */	mr r25, r0
/* 801D7A18 001D4958  38 80 00 01 */	li r4, 1
/* 801D7A1C 001D495C  48 24 DB D5 */	bl getViewport__8GraphicsFi
/* 801D7A20 001D4960  7C 60 1B 78 */	mr r0, r3
/* 801D7A24 001D4964  7F 23 CB 78 */	mr r3, r25
/* 801D7A28 001D4968  7C 1C 03 78 */	mr r28, r0
/* 801D7A2C 001D496C  48 24 D8 15 */	bl viewable__8ViewportFv
/* 801D7A30 001D4970  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D7A34 001D4974  40 82 00 10 */	bne lbl_801D7A44
/* 801D7A38 001D4978  38 00 00 01 */	li r0, 1
/* 801D7A3C 001D497C  98 17 00 D9 */	stb r0, 0xd9(r23)
/* 801D7A40 001D4980  48 00 01 08 */	b lbl_801D7B48
lbl_801D7A44:
/* 801D7A44 001D4984  7F 83 E3 78 */	mr r3, r28
/* 801D7A48 001D4988  48 24 D7 F9 */	bl viewable__8ViewportFv
/* 801D7A4C 001D498C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D7A50 001D4990  40 82 00 10 */	bne lbl_801D7A60
/* 801D7A54 001D4994  38 00 00 00 */	li r0, 0
/* 801D7A58 001D4998  98 17 00 D9 */	stb r0, 0xd9(r23)
/* 801D7A5C 001D499C  48 00 00 EC */	b lbl_801D7B48
lbl_801D7A60:
/* 801D7A60 001D49A0  80 19 00 44 */	lwz r0, 0x44(r25)
/* 801D7A64 001D49A4  28 00 00 00 */	cmplwi r0, 0
/* 801D7A68 001D49A8  40 82 00 20 */	bne lbl_801D7A88
/* 801D7A6C 001D49AC  3C 60 80 48 */	lis r3, lbl_804807C8@ha
/* 801D7A70 001D49B0  3C A0 80 48 */	lis r5, lbl_804807D8@ha
/* 801D7A74 001D49B4  38 63 07 C8 */	addi r3, r3, lbl_804807C8@l
/* 801D7A78 001D49B8  38 80 00 AF */	li r4, 0xaf
/* 801D7A7C 001D49BC  38 A5 07 D8 */	addi r5, r5, lbl_804807D8@l
/* 801D7A80 001D49C0  4C C6 31 82 */	crclr 6
/* 801D7A84 001D49C4  4B E5 2B BD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_801D7A88:
/* 801D7A88 001D49C8  80 1C 00 44 */	lwz r0, 0x44(r28)
/* 801D7A8C 001D49CC  28 00 00 00 */	cmplwi r0, 0
/* 801D7A90 001D49D0  40 82 00 20 */	bne lbl_801D7AB0
/* 801D7A94 001D49D4  3C 60 80 48 */	lis r3, lbl_804807C8@ha
/* 801D7A98 001D49D8  3C A0 80 48 */	lis r5, lbl_804807D8@ha
/* 801D7A9C 001D49DC  38 63 07 C8 */	addi r3, r3, lbl_804807C8@l
/* 801D7AA0 001D49E0  38 80 00 B0 */	li r4, 0xb0
/* 801D7AA4 001D49E4  38 A5 07 D8 */	addi r5, r5, lbl_804807D8@l
/* 801D7AA8 001D49E8  4C C6 31 82 */	crclr 6
/* 801D7AAC 001D49EC  4B E5 2B 95 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_801D7AB0:
/* 801D7AB0 001D49F0  80 79 00 44 */	lwz r3, 0x44(r25)
/* 801D7AB4 001D49F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7AB8 001D49F8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 801D7ABC 001D49FC  7D 89 03 A6 */	mtctr r12
/* 801D7AC0 001D4A00  4E 80 04 21 */	bctrl 
/* 801D7AC4 001D4A04  C3 E3 00 00 */	lfs f31, 0(r3)
/* 801D7AC8 001D4A08  C3 C3 00 04 */	lfs f30, 4(r3)
/* 801D7ACC 001D4A0C  C3 A3 00 08 */	lfs f29, 8(r3)
/* 801D7AD0 001D4A10  80 7C 00 44 */	lwz r3, 0x44(r28)
/* 801D7AD4 001D4A14  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7AD8 001D4A18  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 801D7ADC 001D4A1C  7D 89 03 A6 */	mtctr r12
/* 801D7AE0 001D4A20  4E 80 04 21 */	bctrl 
/* 801D7AE4 001D4A24  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801D7AE8 001D4A28  C0 23 00 04 */	lfs f1, 4(r3)
/* 801D7AEC 001D4A2C  EC 1E 10 28 */	fsubs f0, f30, f2
/* 801D7AF0 001D4A30  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 801D7AF4 001D4A34  EC E1 10 28 */	fsubs f7, f1, f2
/* 801D7AF8 001D4A38  C0 63 00 00 */	lfs f3, 0(r3)
/* 801D7AFC 001D4A3C  C0 A1 00 18 */	lfs f5, 0x18(r1)
/* 801D7B00 001D4A40  EC 5F 30 28 */	fsubs f2, f31, f6
/* 801D7B04 001D4A44  EC 20 00 32 */	fmuls f1, f0, f0
/* 801D7B08 001D4A48  C0 83 00 08 */	lfs f4, 8(r3)
/* 801D7B0C 001D4A4C  EC C3 30 28 */	fsubs f6, f3, f6
/* 801D7B10 001D4A50  EC 07 01 F2 */	fmuls f0, f7, f7
/* 801D7B14 001D4A54  EC 7D 28 28 */	fsubs f3, f29, f5
/* 801D7B18 001D4A58  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801D7B1C 001D4A5C  EC 44 28 28 */	fsubs f2, f4, f5
/* 801D7B20 001D4A60  EC 06 01 BA */	fmadds f0, f6, f6, f0
/* 801D7B24 001D4A64  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 801D7B28 001D4A68  EC 02 00 BA */	fmadds f0, f2, f2, f0
/* 801D7B2C 001D4A6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D7B30 001D4A70  40 80 00 10 */	bge lbl_801D7B40
/* 801D7B34 001D4A74  38 00 00 00 */	li r0, 0
/* 801D7B38 001D4A78  98 17 00 D9 */	stb r0, 0xd9(r23)
/* 801D7B3C 001D4A7C  48 00 00 0C */	b lbl_801D7B48
lbl_801D7B40:
/* 801D7B40 001D4A80  38 00 00 01 */	li r0, 1
/* 801D7B44 001D4A84  98 17 00 D9 */	stb r0, 0xd9(r23)
lbl_801D7B48:
/* 801D7B48 001D4A88  3B 00 00 00 */	li r24, 0
/* 801D7B4C 001D4A8C  48 00 00 18 */	b lbl_801D7B64
lbl_801D7B50:
/* 801D7B50 001D4A90  7F E3 FB 78 */	mr r3, r31
/* 801D7B54 001D4A94  7F 04 C3 78 */	mr r4, r24
/* 801D7B58 001D4A98  48 24 DA 99 */	bl getViewport__8GraphicsFi
/* 801D7B5C 001D4A9C  48 24 D6 E5 */	bl viewable__8ViewportFv
/* 801D7B60 001D4AA0  3B 18 00 01 */	addi r24, r24, 1
lbl_801D7B64:
/* 801D7B64 001D4AA4  7C 18 F0 00 */	cmpw r24, r30
/* 801D7B68 001D4AA8  41 80 FF E8 */	blt lbl_801D7B50
/* 801D7B6C 001D4AAC  88 97 00 D8 */	lbz r4, 0xd8(r23)
/* 801D7B70 001D4AB0  57 43 06 3E */	clrlwi r3, r26, 0x18
/* 801D7B74 001D4AB4  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 801D7B78 001D4AB8  7C 83 1B 78 */	or r3, r4, r3
/* 801D7B7C 001D4ABC  98 77 00 D8 */	stb r3, 0xd8(r23)
/* 801D7B80 001D4AC0  40 82 00 14 */	bne lbl_801D7B94
/* 801D7B84 001D4AC4  88 17 00 D8 */	lbz r0, 0xd8(r23)
/* 801D7B88 001D4AC8  60 00 00 04 */	ori r0, r0, 4
/* 801D7B8C 001D4ACC  98 17 00 D8 */	stb r0, 0xd8(r23)
/* 801D7B90 001D4AD0  48 00 00 0C */	b lbl_801D7B9C
lbl_801D7B94:
/* 801D7B94 001D4AD4  38 00 00 02 */	li r0, 2
/* 801D7B98 001D4AD8  98 17 00 D8 */	stb r0, 0xd8(r23)
lbl_801D7B9C:
/* 801D7B9C 001D4ADC  7E E3 BB 78 */	mr r3, r23
/* 801D7BA0 001D4AE0  4B F6 43 49 */	bl getCellPikiCount__Q24Game8CreatureFv
/* 801D7BA4 001D4AE4  2C 03 00 00 */	cmpwi r3, 0
/* 801D7BA8 001D4AE8  40 81 00 10 */	ble lbl_801D7BB8
/* 801D7BAC 001D4AEC  88 17 00 D8 */	lbz r0, 0xd8(r23)
/* 801D7BB0 001D4AF0  60 00 00 08 */	ori r0, r0, 8
/* 801D7BB4 001D4AF4  98 17 00 D8 */	stb r0, 0xd8(r23)
lbl_801D7BB8:
/* 801D7BB8 001D4AF8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 801D7BBC 001D4AFC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 801D7BC0 001D4B00  E3 C1 00 88 */	psq_l f30, 136(r1), 0, qr0
/* 801D7BC4 001D4B04  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 801D7BC8 001D4B08  E3 A1 00 78 */	psq_l f29, 120(r1), 0, qr0
/* 801D7BCC 001D4B0C  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 801D7BD0 001D4B10  BA E1 00 4C */	lmw r23, 0x4c(r1)
/* 801D7BD4 001D4B14  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801D7BD8 001D4B18  7C 08 03 A6 */	mtlr r0
/* 801D7BDC 001D4B1C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801D7BE0 001D4B20  4E 80 00 20 */	blr 

.global drawLODInfo__Q24Game8CreatureFR8GraphicsR10Vector3$$0f$$1
drawLODInfo__Q24Game8CreatureFR8GraphicsR10Vector3$$0f$$1:
/* 801D7BE4 001D4B24  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801D7BE8 001D4B28  7C 08 02 A6 */	mflr r0
/* 801D7BEC 001D4B2C  90 01 00 64 */	stw r0, 0x64(r1)
/* 801D7BF0 001D4B30  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801D7BF4 001D4B34  7C BF 2B 78 */	mr r31, r5
/* 801D7BF8 001D4B38  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801D7BFC 001D4B3C  7C 9E 23 78 */	mr r30, r4
/* 801D7C00 001D4B40  93 A1 00 54 */	stw r29, 0x54(r1)
/* 801D7C04 001D4B44  7C 7D 1B 78 */	mr r29, r3
/* 801D7C08 001D4B48  93 81 00 50 */	stw r28, 0x50(r1)
/* 801D7C0C 001D4B4C  88 0D 94 60 */	lbz r0, drawInfo__Q24Game5AILOD@sda21(r13)
/* 801D7C10 001D4B50  28 00 00 00 */	cmplwi r0, 0
/* 801D7C14 001D4B54  41 82 02 08 */	beq lbl_801D7E1C
/* 801D7C18 001D4B58  80 6D 89 D8 */	lwz r3, systemFont__9JFWSystem@sda21(r13)
/* 801D7C1C 001D4B5C  38 C0 00 00 */	li r6, 0
/* 801D7C20 001D4B60  38 00 00 FF */	li r0, 0xff
/* 801D7C24 001D4B64  38 A0 00 66 */	li r5, 0x66
/* 801D7C28 001D4B68  C0 02 B4 08 */	lfs f0, lbl_80519768@sda21(r2)
/* 801D7C2C 001D4B6C  38 80 00 99 */	li r4, 0x99
/* 801D7C30 001D4B70  90 61 00 30 */	stw r3, 0x30(r1)
/* 801D7C34 001D4B74  7F C3 F3 78 */	mr r3, r30
/* 801D7C38 001D4B78  90 C1 00 34 */	stw r6, 0x34(r1)
/* 801D7C3C 001D4B7C  90 C1 00 38 */	stw r6, 0x38(r1)
/* 801D7C40 001D4B80  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 801D7C44 001D4B84  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801D7C48 001D4B88  98 A1 00 44 */	stb r5, 0x44(r1)
/* 801D7C4C 001D4B8C  98 81 00 45 */	stb r4, 0x45(r1)
/* 801D7C50 001D4B90  98 01 00 46 */	stb r0, 0x46(r1)
/* 801D7C54 001D4B94  98 01 00 47 */	stb r0, 0x47(r1)
/* 801D7C58 001D4B98  98 C1 00 48 */	stb r6, 0x48(r1)
/* 801D7C5C 001D4B9C  98 A1 00 49 */	stb r5, 0x49(r1)
/* 801D7C60 001D4BA0  98 01 00 4A */	stb r0, 0x4a(r1)
/* 801D7C64 001D4BA4  98 01 00 4B */	stb r0, 0x4b(r1)
/* 801D7C68 001D4BA8  80 9E 02 5C */	lwz r4, 0x25c(r30)
/* 801D7C6C 001D4BAC  48 24 FC 3D */	bl initPerspPrintf__8GraphicsFP8Viewport
/* 801D7C70 001D4BB0  88 1D 00 D8 */	lbz r0, 0xd8(r29)
/* 801D7C74 001D4BB4  3C 60 80 48 */	lis r3, lbl_80480004@ha
/* 801D7C78 001D4BB8  84 A3 07 E4 */	lwzu r5, 0x7e4(r3)
/* 801D7C7C 001D4BBC  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 801D7C80 001D4BC0  80 83 00 04 */	lwz r4, lbl_80480004@l(r3)
/* 801D7C84 001D4BC4  2C 00 00 01 */	cmpwi r0, 1
/* 801D7C88 001D4BC8  80 63 00 08 */	lwz r3, 8(r3)
/* 801D7C8C 001D4BCC  90 A1 00 24 */	stw r5, 0x24(r1)
/* 801D7C90 001D4BD0  90 81 00 28 */	stw r4, 0x28(r1)
/* 801D7C94 001D4BD4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 801D7C98 001D4BD8  41 82 00 54 */	beq lbl_801D7CEC
/* 801D7C9C 001D4BDC  40 80 00 10 */	bge lbl_801D7CAC
/* 801D7CA0 001D4BE0  2C 00 00 00 */	cmpwi r0, 0
/* 801D7CA4 001D4BE4  40 80 00 14 */	bge lbl_801D7CB8
/* 801D7CA8 001D4BE8  48 00 00 A4 */	b lbl_801D7D4C
lbl_801D7CAC:
/* 801D7CAC 001D4BEC  2C 00 00 03 */	cmpwi r0, 3
/* 801D7CB0 001D4BF0  40 80 00 9C */	bge lbl_801D7D4C
/* 801D7CB4 001D4BF4  48 00 00 68 */	b lbl_801D7D1C
lbl_801D7CB8:
/* 801D7CB8 001D4BF8  38 80 00 FF */	li r4, 0xff
/* 801D7CBC 001D4BFC  38 60 00 C8 */	li r3, 0xc8
/* 801D7CC0 001D4C00  38 C0 00 00 */	li r6, 0
/* 801D7CC4 001D4C04  38 A0 00 0A */	li r5, 0xa
/* 801D7CC8 001D4C08  98 C1 00 44 */	stb r6, 0x44(r1)
/* 801D7CCC 001D4C0C  98 A1 00 45 */	stb r5, 0x45(r1)
/* 801D7CD0 001D4C10  98 81 00 46 */	stb r4, 0x46(r1)
/* 801D7CD4 001D4C14  98 81 00 47 */	stb r4, 0x47(r1)
/* 801D7CD8 001D4C18  98 61 00 48 */	stb r3, 0x48(r1)
/* 801D7CDC 001D4C1C  98 61 00 49 */	stb r3, 0x49(r1)
/* 801D7CE0 001D4C20  98 61 00 4A */	stb r3, 0x4a(r1)
/* 801D7CE4 001D4C24  98 81 00 4B */	stb r4, 0x4b(r1)
/* 801D7CE8 001D4C28  48 00 00 64 */	b lbl_801D7D4C
lbl_801D7CEC:
/* 801D7CEC 001D4C2C  38 A0 00 C8 */	li r5, 0xc8
/* 801D7CF0 001D4C30  38 60 00 FF */	li r3, 0xff
/* 801D7CF4 001D4C34  38 80 00 00 */	li r4, 0
/* 801D7CF8 001D4C38  98 A1 00 44 */	stb r5, 0x44(r1)
/* 801D7CFC 001D4C3C  98 A1 00 45 */	stb r5, 0x45(r1)
/* 801D7D00 001D4C40  98 81 00 46 */	stb r4, 0x46(r1)
/* 801D7D04 001D4C44  98 61 00 47 */	stb r3, 0x47(r1)
/* 801D7D08 001D4C48  98 A1 00 48 */	stb r5, 0x48(r1)
/* 801D7D0C 001D4C4C  98 A1 00 49 */	stb r5, 0x49(r1)
/* 801D7D10 001D4C50  98 A1 00 4A */	stb r5, 0x4a(r1)
/* 801D7D14 001D4C54  98 61 00 4B */	stb r3, 0x4b(r1)
/* 801D7D18 001D4C58  48 00 00 34 */	b lbl_801D7D4C
lbl_801D7D1C:
/* 801D7D1C 001D4C5C  38 C0 00 FF */	li r6, 0xff
/* 801D7D20 001D4C60  38 60 00 C8 */	li r3, 0xc8
/* 801D7D24 001D4C64  38 A0 00 0A */	li r5, 0xa
/* 801D7D28 001D4C68  38 80 00 00 */	li r4, 0
/* 801D7D2C 001D4C6C  98 C1 00 44 */	stb r6, 0x44(r1)
/* 801D7D30 001D4C70  98 A1 00 45 */	stb r5, 0x45(r1)
/* 801D7D34 001D4C74  98 81 00 46 */	stb r4, 0x46(r1)
/* 801D7D38 001D4C78  98 C1 00 47 */	stb r6, 0x47(r1)
/* 801D7D3C 001D4C7C  98 61 00 48 */	stb r3, 0x48(r1)
/* 801D7D40 001D4C80  98 61 00 49 */	stb r3, 0x49(r1)
/* 801D7D44 001D4C84  98 61 00 4A */	stb r3, 0x4a(r1)
/* 801D7D48 001D4C88  98 C1 00 4B */	stb r6, 0x4b(r1)
lbl_801D7D4C:
/* 801D7D4C 001D4C8C  88 9D 00 D8 */	lbz r4, 0xd8(r29)
/* 801D7D50 001D4C90  39 22 B4 10 */	addi r9, r2, lbl_80519770@sda21
/* 801D7D54 001D4C94  54 83 07 39 */	rlwinm. r3, r4, 0, 0x1c, 0x1c
/* 801D7D58 001D4C98  41 82 00 08 */	beq lbl_801D7D60
/* 801D7D5C 001D4C9C  39 22 B4 0C */	addi r9, r2, lbl_8051976C@sda21
lbl_801D7D60:
/* 801D7D60 001D4CA0  54 83 06 B5 */	rlwinm. r3, r4, 0, 0x1a, 0x1a
/* 801D7D64 001D4CA4  39 02 B4 18 */	addi r8, r2, lbl_80519778@sda21
/* 801D7D68 001D4CA8  41 82 00 08 */	beq lbl_801D7D70
/* 801D7D6C 001D4CAC  39 02 B4 14 */	addi r8, r2, lbl_80519774@sda21
lbl_801D7D70:
/* 801D7D70 001D4CB0  54 83 06 F7 */	rlwinm. r3, r4, 0, 0x1b, 0x1b
/* 801D7D74 001D4CB4  3C 80 80 48 */	lis r4, lbl_804807F0@ha
/* 801D7D78 001D4CB8  38 C4 07 F0 */	addi r6, r4, lbl_804807F0@l
/* 801D7D7C 001D4CBC  7F E5 FB 78 */	mr r5, r31
/* 801D7D80 001D4CC0  7F C3 F3 78 */	mr r3, r30
/* 801D7D84 001D4CC4  38 81 00 30 */	addi r4, r1, 0x30
/* 801D7D88 001D4CC8  38 E2 B4 18 */	addi r7, r2, lbl_80519778@sda21
/* 801D7D8C 001D4CCC  41 82 00 08 */	beq lbl_801D7D94
/* 801D7D90 001D4CD0  38 E2 B4 14 */	addi r7, r2, lbl_80519774@sda21
lbl_801D7D94:
/* 801D7D94 001D4CD4  54 00 10 3A */	slwi r0, r0, 2
/* 801D7D98 001D4CD8  39 41 00 24 */	addi r10, r1, 0x24
/* 801D7D9C 001D4CDC  7D 4A 00 2E */	lwzx r10, r10, r0
/* 801D7DA0 001D4CE0  4C C6 31 82 */	crclr 6
/* 801D7DA4 001D4CE4  48 24 FD 39 */	bl perspPrintf__8GraphicsFR15PerspPrintfInfoR10Vector3$$0f$$1Pce
/* 801D7DA8 001D4CE8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801D7DAC 001D4CEC  38 80 00 00 */	li r4, 0
/* 801D7DB0 001D4CF0  80 63 00 24 */	lwz r3, 0x24(r3)
/* 801D7DB4 001D4CF4  48 24 D8 3D */	bl getViewport__8GraphicsFi
/* 801D7DB8 001D4CF8  83 83 00 44 */	lwz r28, 0x44(r3)
/* 801D7DBC 001D4CFC  7F A3 EB 78 */	mr r3, r29
/* 801D7DC0 001D4D00  C0 3F 00 00 */	lfs f1, 0(r31)
/* 801D7DC4 001D4D04  38 81 00 08 */	addi r4, r1, 8
/* 801D7DC8 001D4D08  C0 02 B4 1C */	lfs f0, lbl_8051977C@sda21(r2)
/* 801D7DCC 001D4D0C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801D7DD0 001D4D10  C0 3F 00 04 */	lfs f1, 4(r31)
/* 801D7DD4 001D4D14  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801D7DD8 001D4D18  EC 01 00 2A */	fadds f0, f1, f0
/* 801D7DDC 001D4D1C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 801D7DE0 001D4D20  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801D7DE4 001D4D24  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801D7DE8 001D4D28  81 9D 00 00 */	lwz r12, 0(r29)
/* 801D7DEC 001D4D2C  81 8C 01 40 */	lwz r12, 0x140(r12)
/* 801D7DF0 001D4D30  7D 89 03 A6 */	mtctr r12
/* 801D7DF4 001D4D34  4E 80 04 21 */	bctrl 
/* 801D7DF8 001D4D38  7F 83 E3 78 */	mr r3, r28
/* 801D7DFC 001D4D3C  38 81 00 08 */	addi r4, r1, 8
/* 801D7E00 001D4D40  48 24 32 F9 */	bl calcScreenSize__6CameraFRQ23Sys6Sphere
/* 801D7E04 001D4D44  7F C3 F3 78 */	mr r3, r30
/* 801D7E08 001D4D48  38 81 00 30 */	addi r4, r1, 0x30
/* 801D7E0C 001D4D4C  38 A1 00 18 */	addi r5, r1, 0x18
/* 801D7E10 001D4D50  38 C2 B4 20 */	addi r6, r2, lbl_80519780@sda21
/* 801D7E14 001D4D54  4C C6 32 42 */	crset 6
/* 801D7E18 001D4D58  48 24 FC C5 */	bl perspPrintf__8GraphicsFR15PerspPrintfInfoR10Vector3$$0f$$1Pce
lbl_801D7E1C:
/* 801D7E1C 001D4D5C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801D7E20 001D4D60  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801D7E24 001D4D64  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801D7E28 001D4D68  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 801D7E2C 001D4D6C  83 81 00 50 */	lwz r28, 0x50(r1)
/* 801D7E30 001D4D70  7C 08 03 A6 */	mtlr r0
/* 801D7E34 001D4D74  38 21 00 60 */	addi r1, r1, 0x60
/* 801D7E38 001D4D78  4E 80 00 20 */	blr 

.global __sinit_creatureLOD_cpp
__sinit_creatureLOD_cpp:
/* 801D7E3C 001D4D7C  3C 80 80 51 */	lis r4, __float_nan@ha
/* 801D7E40 001D4D80  38 00 FF FF */	li r0, -1
/* 801D7E44 001D4D84  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 801D7E48 001D4D88  3C 60 80 4C */	lis r3, lbl_804B8610@ha
/* 801D7E4C 001D4D8C  90 0D 94 58 */	stw r0, lbl_80515AD8@sda21(r13)
/* 801D7E50 001D4D90  D4 03 86 10 */	stfsu f0, lbl_804B8610@l(r3)
/* 801D7E54 001D4D94  D0 0D 94 5C */	stfs f0, lbl_80515ADC@sda21(r13)
/* 801D7E58 001D4D98  D0 03 00 04 */	stfs f0, 4(r3)
/* 801D7E5C 001D4D9C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801D7E60 001D4DA0  4E 80 00 20 */	blr 
