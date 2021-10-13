.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x4
.global lbl_8049AB98
lbl_8049AB98:
	.4byte 0x6D657373
	.4byte 0x6167654F
	.4byte 0x626A2E63
	.4byte 0x70700000
.global lbl_8049ABA8
lbl_8049ABA8:
	.4byte 0x50324173
	.4byte 0x73657274
	.4byte 0x00000000
.global lbl_8049ABB4
lbl_8049ABB4:
	.4byte 0x4A4D6573
	.4byte 0x73616765
	.4byte 0x8EC09195
	.4byte 0x834E8389
	.4byte 0x83580000
.global lbl_8049ABC8
lbl_8049ABC8:
	.4byte 0x8CC295CA
	.4byte 0x8F898AFA
	.4byte 0x89BB0000
.global lbl_8049ABD4
lbl_8049ABD4:
	.4byte 0x6D657373
	.4byte 0x6167654F
	.4byte 0x626A2E68
	.4byte 0x00000000
	.4byte 0x00000000

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 0x8
.global lbl_805208A8
lbl_805208A8:
	.4byte 0x00000000
	.4byte 0x00000000
.global lbl_805208B0
lbl_805208B0:
	.4byte 0x43300000
	.4byte 0x80000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q25P2JME8TControlFv
__ct__Q25P2JME8TControlFv:
/* 80438A34 00435974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80438A38 00435978  7C 08 02 A6 */	mflr r0
/* 80438A3C 0043597C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80438A40 00435980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80438A44 00435984  7C 7F 1B 78 */	mr r31, r3
/* 80438A48 00435988  4B BC F9 5D */	bl __ct__Q28JMessage8TControlFv
/* 80438A4C 0043598C  3C 60 80 4F */	lis r3, __vt__Q25P2JME8TControl@ha
/* 80438A50 00435990  38 00 00 00 */	li r0, 0
/* 80438A54 00435994  38 63 C9 F0 */	addi r3, r3, __vt__Q25P2JME8TControl@l
/* 80438A58 00435998  C0 02 25 48 */	lfs f0, lbl_805208A8@sda21(r2)
/* 80438A5C 0043599C  90 7F 00 00 */	stw r3, 0(r31)
/* 80438A60 004359A0  7F E3 FB 78 */	mr r3, r31
/* 80438A64 004359A4  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80438A68 004359A8  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80438A6C 004359AC  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80438A70 004359B0  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80438A74 004359B4  98 1F 00 4C */	stb r0, 0x4c(r31)
/* 80438A78 004359B8  98 1F 00 4D */	stb r0, 0x4d(r31)
/* 80438A7C 004359BC  98 1F 00 4E */	stb r0, 0x4e(r31)
/* 80438A80 004359C0  98 1F 00 4F */	stb r0, 0x4f(r31)
/* 80438A84 004359C4  98 1F 00 4C */	stb r0, 0x4c(r31)
/* 80438A88 004359C8  98 1F 00 4D */	stb r0, 0x4d(r31)
/* 80438A8C 004359CC  98 1F 00 4E */	stb r0, 0x4e(r31)
/* 80438A90 004359D0  98 1F 00 4F */	stb r0, 0x4f(r31)
/* 80438A94 004359D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80438A98 004359D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80438A9C 004359DC  7C 08 03 A6 */	mtlr r0
/* 80438AA0 004359E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80438AA4 004359E4  4E 80 00 20 */	blr 

.global setController__Q25P2JME8TControlFP10ControllerP10Controller
setController__Q25P2JME8TControlFP10ControllerP10Controller:
/* 80438AA8 004359E8  80 C3 00 3C */	lwz r6, 0x3c(r3)
/* 80438AAC 004359EC  28 06 00 00 */	cmplwi r6, 0
/* 80438AB0 004359F0  41 82 00 14 */	beq lbl_80438AC4
/* 80438AB4 004359F4  90 86 00 54 */	stw r4, 0x54(r6)
/* 80438AB8 004359F8  38 60 00 01 */	li r3, 1
/* 80438ABC 004359FC  90 A6 00 58 */	stw r5, 0x58(r6)
/* 80438AC0 00435A00  4E 80 00 20 */	blr 
lbl_80438AC4:
/* 80438AC4 00435A04  38 60 00 00 */	li r3, 0
/* 80438AC8 00435A08  4E 80 00 20 */	blr 

.global setFont__Q25P2JME8TControlFP7JUTFont
setFont__Q25P2JME8TControlFP7JUTFont:
/* 80438ACC 00435A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80438AD0 00435A10  7C 08 02 A6 */	mflr r0
/* 80438AD4 00435A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80438AD8 00435A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80438ADC 00435A1C  7C 9F 23 78 */	mr r31, r4
/* 80438AE0 00435A20  93 C1 00 08 */	stw r30, 8(r1)
/* 80438AE4 00435A24  7C 7E 1B 78 */	mr r30, r3
/* 80438AE8 00435A28  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80438AEC 00435A2C  28 00 00 00 */	cmplwi r0, 0
/* 80438AF0 00435A30  40 82 00 20 */	bne lbl_80438B10
/* 80438AF4 00435A34  3C 60 80 4A */	lis r3, lbl_8049AB98@ha
/* 80438AF8 00435A38  3C A0 80 4A */	lis r5, lbl_8049ABA8@ha
/* 80438AFC 00435A3C  38 63 AB 98 */	addi r3, r3, lbl_8049AB98@l
/* 80438B00 00435A40  38 80 00 4D */	li r4, 0x4d
/* 80438B04 00435A44  38 A5 AB A8 */	addi r5, r5, lbl_8049ABA8@l
/* 80438B08 00435A48  4C C6 31 82 */	crclr 6
/* 80438B0C 00435A4C  4B BF 1B 35 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80438B10:
/* 80438B10 00435A50  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 80438B14 00435A54  7F E4 FB 78 */	mr r4, r31
/* 80438B18 00435A58  48 00 43 4D */	bl setFont__Q25P2JME19TRenderingProcessorFP7JUTFont
/* 80438B1C 00435A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80438B20 00435A60  38 60 00 01 */	li r3, 1
/* 80438B24 00435A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80438B28 00435A68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80438B2C 00435A6C  7C 08 03 A6 */	mtlr r0
/* 80438B30 00435A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80438B34 00435A74  4E 80 00 20 */	blr 

.global setRubyFont__Q25P2JME8TControlFP7JUTFont
setRubyFont__Q25P2JME8TControlFP7JUTFont:
/* 80438B38 00435A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80438B3C 00435A7C  7C 08 02 A6 */	mflr r0
/* 80438B40 00435A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80438B44 00435A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80438B48 00435A88  7C 9F 23 78 */	mr r31, r4
/* 80438B4C 00435A8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80438B50 00435A90  7C 7E 1B 78 */	mr r30, r3
/* 80438B54 00435A94  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80438B58 00435A98  28 00 00 00 */	cmplwi r0, 0
/* 80438B5C 00435A9C  40 82 00 20 */	bne lbl_80438B7C
/* 80438B60 00435AA0  3C 60 80 4A */	lis r3, lbl_8049AB98@ha
/* 80438B64 00435AA4  3C A0 80 4A */	lis r5, lbl_8049ABA8@ha
/* 80438B68 00435AA8  38 63 AB 98 */	addi r3, r3, lbl_8049AB98@l
/* 80438B6C 00435AAC  38 80 00 58 */	li r4, 0x58
/* 80438B70 00435AB0  38 A5 AB A8 */	addi r5, r5, lbl_8049ABA8@l
/* 80438B74 00435AB4  4C C6 31 82 */	crclr 6
/* 80438B78 00435AB8  4B BF 1A C9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80438B7C:
/* 80438B7C 00435ABC  28 1F 00 00 */	cmplwi r31, 0
/* 80438B80 00435AC0  40 82 00 10 */	bne lbl_80438B90
/* 80438B84 00435AC4  80 6D 9B D8 */	lwz r3, gP2JMEMgr@sda21(r13)
/* 80438B88 00435AC8  83 E3 00 1C */	lwz r31, 0x1c(r3)
/* 80438B8C 00435ACC  48 00 00 24 */	b lbl_80438BB0
lbl_80438B90:
/* 80438B90 00435AD0  40 82 00 20 */	bne lbl_80438BB0
/* 80438B94 00435AD4  3C 60 80 4A */	lis r3, lbl_8049AB98@ha
/* 80438B98 00435AD8  3C A0 80 4A */	lis r5, lbl_8049ABA8@ha
/* 80438B9C 00435ADC  38 63 AB 98 */	addi r3, r3, lbl_8049AB98@l
/* 80438BA0 00435AE0  38 80 00 62 */	li r4, 0x62
/* 80438BA4 00435AE4  38 A5 AB A8 */	addi r5, r5, lbl_8049ABA8@l
/* 80438BA8 00435AE8  4C C6 31 82 */	crclr 6
/* 80438BAC 00435AEC  4B BF 1A 95 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80438BB0:
/* 80438BB0 00435AF0  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 80438BB4 00435AF4  38 60 00 01 */	li r3, 1
/* 80438BB8 00435AF8  93 E4 00 50 */	stw r31, 0x50(r4)
/* 80438BBC 00435AFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80438BC0 00435B00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80438BC4 00435B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80438BC8 00435B08  7C 08 03 A6 */	mtlr r0
/* 80438BCC 00435B0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80438BD0 00435B10  4E 80 00 20 */	blr 

.global init__Q25P2JME8TControlFv
init__Q25P2JME8TControlFv:
/* 80438BD4 00435B14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80438BD8 00435B18  7C 08 02 A6 */	mflr r0
/* 80438BDC 00435B1C  3C 80 80 4A */	lis r4, lbl_8049ABB4@ha
/* 80438BE0 00435B20  38 A0 00 00 */	li r5, 0
/* 80438BE4 00435B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80438BE8 00435B28  38 84 AB B4 */	addi r4, r4, lbl_8049ABB4@l
/* 80438BEC 00435B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80438BF0 00435B30  7C 7F 1B 78 */	mr r31, r3
/* 80438BF4 00435B34  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80438BF8 00435B38  4B FE A7 65 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 80438BFC 00435B3C  7F E3 FB 78 */	mr r3, r31
/* 80438C00 00435B40  81 9F 00 00 */	lwz r12, 0(r31)
/* 80438C04 00435B44  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80438C08 00435B48  7D 89 03 A6 */	mtctr r12
/* 80438C0C 00435B4C  4E 80 04 21 */	bctrl 
/* 80438C10 00435B50  7F E3 FB 78 */	mr r3, r31
/* 80438C14 00435B54  81 9F 00 00 */	lwz r12, 0(r31)
/* 80438C18 00435B58  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80438C1C 00435B5C  7D 89 03 A6 */	mtctr r12
/* 80438C20 00435B60  4E 80 04 21 */	bctrl 
/* 80438C24 00435B64  7F E3 FB 78 */	mr r3, r31
/* 80438C28 00435B68  81 9F 00 00 */	lwz r12, 0(r31)
/* 80438C2C 00435B6C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80438C30 00435B70  7D 89 03 A6 */	mtctr r12
/* 80438C34 00435B74  4E 80 04 21 */	bctrl 
/* 80438C38 00435B78  7F E3 FB 78 */	mr r3, r31
/* 80438C3C 00435B7C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80438C40 00435B80  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80438C44 00435B84  7D 89 03 A6 */	mtctr r12
/* 80438C48 00435B88  4E 80 04 21 */	bctrl 
/* 80438C4C 00435B8C  3C 80 80 4A */	lis r4, lbl_8049ABB4@ha
/* 80438C50 00435B90  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80438C54 00435B94  38 84 AB B4 */	addi r4, r4, lbl_8049ABB4@l
/* 80438C58 00435B98  4B FE A7 0D */	bl heapStatusEnd__6SystemFPc
/* 80438C5C 00435B9C  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80438C60 00435BA0  3C 60 80 4A */	lis r3, lbl_8049ABC8@ha
/* 80438C64 00435BA4  80 DF 00 38 */	lwz r6, 0x38(r31)
/* 80438C68 00435BA8  38 83 AB C8 */	addi r4, r3, lbl_8049ABC8@l
/* 80438C6C 00435BAC  38 A0 00 00 */	li r5, 0
/* 80438C70 00435BB0  90 06 00 04 */	stw r0, 4(r6)
/* 80438C74 00435BB4  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80438C78 00435BB8  90 1F 00 04 */	stw r0, 4(r31)
/* 80438C7C 00435BBC  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80438C80 00435BC0  90 1F 00 08 */	stw r0, 8(r31)
/* 80438C84 00435BC4  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80438C88 00435BC8  4B FE A6 D5 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 80438C8C 00435BCC  7F E3 FB 78 */	mr r3, r31
/* 80438C90 00435BD0  3B E0 00 00 */	li r31, 0
/* 80438C94 00435BD4  81 83 00 00 */	lwz r12, 0(r3)
/* 80438C98 00435BD8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80438C9C 00435BDC  7D 89 03 A6 */	mtctr r12
/* 80438CA0 00435BE0  4E 80 04 21 */	bctrl 
/* 80438CA4 00435BE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80438CA8 00435BE8  41 82 00 08 */	beq lbl_80438CB0
/* 80438CAC 00435BEC  3B E0 00 01 */	li r31, 1
lbl_80438CB0:
/* 80438CB0 00435BF0  3C 80 80 4A */	lis r4, lbl_8049ABC8@ha
/* 80438CB4 00435BF4  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80438CB8 00435BF8  38 84 AB C8 */	addi r4, r4, lbl_8049ABC8@l
/* 80438CBC 00435BFC  4B FE A6 A9 */	bl heapStatusEnd__6SystemFPc
/* 80438CC0 00435C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80438CC4 00435C04  7F E3 FB 78 */	mr r3, r31
/* 80438CC8 00435C08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80438CCC 00435C0C  7C 08 03 A6 */	mtlr r0
/* 80438CD0 00435C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80438CD4 00435C14  4E 80 00 20 */	blr 

.global onInit__Q25P2JME8TControlFv
onInit__Q25P2JME8TControlFv:
/* 80438CD8 00435C18  38 60 00 01 */	li r3, 1
/* 80438CDC 00435C1C  4E 80 00 20 */	blr 

.global createRenderingProcessor__Q25P2JME8TControlFv
createRenderingProcessor__Q25P2JME8TControlFv:
/* 80438CE0 00435C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80438CE4 00435C24  7C 08 02 A6 */	mflr r0
/* 80438CE8 00435C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80438CEC 00435C2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80438CF0 00435C30  93 C1 00 08 */	stw r30, 8(r1)
/* 80438CF4 00435C34  7C 7E 1B 78 */	mr r30, r3
/* 80438CF8 00435C38  38 60 01 10 */	li r3, 0x110
/* 80438CFC 00435C3C  4B BE B1 A9 */	bl __nw__FUl
/* 80438D00 00435C40  7C 7F 1B 79 */	or. r31, r3, r3
/* 80438D04 00435C44  41 82 00 3C */	beq lbl_80438D40
/* 80438D08 00435C48  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80438D0C 00435C4C  28 00 00 00 */	cmplwi r0, 0
/* 80438D10 00435C50  40 82 00 20 */	bne lbl_80438D30
/* 80438D14 00435C54  3C 60 80 4A */	lis r3, lbl_8049ABD4@ha
/* 80438D18 00435C58  3C A0 80 4A */	lis r5, lbl_8049ABA8@ha
/* 80438D1C 00435C5C  38 63 AB D4 */	addi r3, r3, lbl_8049ABD4@l
/* 80438D20 00435C60  38 80 00 79 */	li r4, 0x79
/* 80438D24 00435C64  38 A5 AB A8 */	addi r5, r5, lbl_8049ABA8@l
/* 80438D28 00435C68  4C C6 31 82 */	crclr 6
/* 80438D2C 00435C6C  4B BF 19 15 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80438D30:
/* 80438D30 00435C70  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 80438D34 00435C74  7F E3 FB 78 */	mr r3, r31
/* 80438D38 00435C78  48 00 06 A9 */	bl __ct__Q25P2JME19TRenderingProcessorFPCQ28JMessage10TReference
/* 80438D3C 00435C7C  7C 7F 1B 78 */	mr r31, r3
lbl_80438D40:
/* 80438D40 00435C80  93 FE 00 40 */	stw r31, 0x40(r30)
/* 80438D44 00435C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80438D48 00435C88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80438D4C 00435C8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80438D50 00435C90  7C 08 03 A6 */	mtlr r0
/* 80438D54 00435C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80438D58 00435C98  4E 80 00 20 */	blr 

.global createSequenceProcessor__Q25P2JME8TControlFv
createSequenceProcessor__Q25P2JME8TControlFv:
/* 80438D5C 00435C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80438D60 00435CA0  7C 08 02 A6 */	mflr r0
/* 80438D64 00435CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80438D68 00435CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80438D6C 00435CAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80438D70 00435CB0  7C 7E 1B 78 */	mr r30, r3
/* 80438D74 00435CB4  38 60 00 70 */	li r3, 0x70
/* 80438D78 00435CB8  4B BE B1 2D */	bl __nw__FUl
/* 80438D7C 00435CBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80438D80 00435CC0  41 82 00 40 */	beq lbl_80438DC0
/* 80438D84 00435CC4  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80438D88 00435CC8  28 00 00 00 */	cmplwi r0, 0
/* 80438D8C 00435CCC  40 82 00 20 */	bne lbl_80438DAC
/* 80438D90 00435CD0  3C 60 80 4A */	lis r3, lbl_8049ABD4@ha
/* 80438D94 00435CD4  3C A0 80 4A */	lis r5, lbl_8049ABA8@ha
/* 80438D98 00435CD8  38 63 AB D4 */	addi r3, r3, lbl_8049ABD4@l
/* 80438D9C 00435CDC  38 80 00 79 */	li r4, 0x79
/* 80438DA0 00435CE0  38 A5 AB A8 */	addi r5, r5, lbl_8049ABA8@l
/* 80438DA4 00435CE4  4C C6 31 82 */	crclr 6
/* 80438DA8 00435CE8  4B BF 18 99 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80438DAC:
/* 80438DAC 00435CEC  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 80438DB0 00435CF0  7F E3 FB 78 */	mr r3, r31
/* 80438DB4 00435CF4  7F C5 F3 78 */	mr r5, r30
/* 80438DB8 00435CF8  4B FF EA 8D */	bl __ct__Q25P2JME18TSequenceProcessorFPCQ28JMessage10TReferencePQ28JMessage8TControl
/* 80438DBC 00435CFC  7C 7F 1B 78 */	mr r31, r3
lbl_80438DC0:
/* 80438DC0 00435D00  93 FE 00 3C */	stw r31, 0x3c(r30)
/* 80438DC4 00435D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80438DC8 00435D08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80438DCC 00435D0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80438DD0 00435D10  7C 08 03 A6 */	mtlr r0
/* 80438DD4 00435D14  38 21 00 10 */	addi r1, r1, 0x10
/* 80438DD8 00435D18  4E 80 00 20 */	blr 

.global reset__Q25P2JME8TControlFv
reset__Q25P2JME8TControlFv:
/* 80438DDC 00435D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80438DE0 00435D20  7C 08 02 A6 */	mflr r0
/* 80438DE4 00435D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80438DE8 00435D28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80438DEC 00435D2C  7C 7F 1B 78 */	mr r31, r3
/* 80438DF0 00435D30  4B BC F6 41 */	bl reset__Q28JMessage8TControlFv
/* 80438DF4 00435D34  C0 02 25 48 */	lfs f0, lbl_805208A8@sda21(r2)
/* 80438DF8 00435D38  38 00 00 00 */	li r0, 0
/* 80438DFC 00435D3C  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80438E00 00435D40  98 1F 00 4C */	stb r0, 0x4c(r31)
/* 80438E04 00435D44  98 1F 00 4D */	stb r0, 0x4d(r31)
/* 80438E08 00435D48  98 1F 00 4E */	stb r0, 0x4e(r31)
/* 80438E0C 00435D4C  98 1F 00 4F */	stb r0, 0x4f(r31)
/* 80438E10 00435D50  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80438E14 00435D54  81 83 00 00 */	lwz r12, 0(r3)
/* 80438E18 00435D58  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80438E1C 00435D5C  7D 89 03 A6 */	mtctr r12
/* 80438E20 00435D60  4E 80 04 21 */	bctrl 
/* 80438E24 00435D64  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80438E28 00435D68  81 83 00 00 */	lwz r12, 0(r3)
/* 80438E2C 00435D6C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 80438E30 00435D70  7D 89 03 A6 */	mtctr r12
/* 80438E34 00435D74  4E 80 04 21 */	bctrl 
/* 80438E38 00435D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80438E3C 00435D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80438E40 00435D80  7C 08 03 A6 */	mtlr r0
/* 80438E44 00435D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80438E48 00435D88  4E 80 00 20 */	blr 

.global update__Q25P2JME8TControlFv
update__Q25P2JME8TControlFv:
/* 80438E4C 00435D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80438E50 00435D90  7C 08 02 A6 */	mflr r0
/* 80438E54 00435D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80438E58 00435D98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80438E5C 00435D9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80438E60 00435DA0  7C 7E 1B 78 */	mr r30, r3
/* 80438E64 00435DA4  4B BC F6 35 */	bl update__Q28JMessage8TControlFv
/* 80438E68 00435DA8  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 80438E6C 00435DAC  7C 7F 1B 78 */	mr r31, r3
/* 80438E70 00435DB0  28 00 00 00 */	cmplwi r0, 0
/* 80438E74 00435DB4  41 82 00 18 */	beq lbl_80438E8C
/* 80438E78 00435DB8  7C 03 03 78 */	mr r3, r0
/* 80438E7C 00435DBC  81 83 00 00 */	lwz r12, 0(r3)
/* 80438E80 00435DC0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80438E84 00435DC4  7D 89 03 A6 */	mtctr r12
/* 80438E88 00435DC8  4E 80 04 21 */	bctrl 
lbl_80438E8C:
/* 80438E8C 00435DCC  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 80438E90 00435DD0  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80438E94 00435DD4  41 82 00 18 */	beq lbl_80438EAC
/* 80438E98 00435DD8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80438E9C 00435DDC  40 82 00 20 */	bne lbl_80438EBC
/* 80438EA0 00435DE0  60 60 00 02 */	ori r0, r3, 2
/* 80438EA4 00435DE4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80438EA8 00435DE8  48 00 00 14 */	b lbl_80438EBC
lbl_80438EAC:
/* 80438EAC 00435DEC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80438EB0 00435DF0  41 82 00 0C */	beq lbl_80438EBC
/* 80438EB4 00435DF4  60 60 00 01 */	ori r0, r3, 1
/* 80438EB8 00435DF8  90 1E 00 4C */	stw r0, 0x4c(r30)
lbl_80438EBC:
/* 80438EBC 00435DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80438EC0 00435E00  7F E3 FB 78 */	mr r3, r31
/* 80438EC4 00435E04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80438EC8 00435E08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80438ECC 00435E0C  7C 08 03 A6 */	mtlr r0
/* 80438ED0 00435E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80438ED4 00435E14  4E 80 00 20 */	blr 

.global update__Q25P2JME19TRenderingProcessorFv
update__Q25P2JME19TRenderingProcessorFv:
/* 80438ED8 00435E18  4E 80 00 20 */	blr 

.global draw__Q25P2JME8TControlFR8Graphics
draw__Q25P2JME8TControlFR8Graphics:
/* 80438EDC 00435E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80438EE0 00435E20  7C 08 02 A6 */	mflr r0
/* 80438EE4 00435E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80438EE8 00435E28  4B BC F6 39 */	bl render__Q28JMessage8TControlFv
/* 80438EEC 00435E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80438EF0 00435E30  7C 08 03 A6 */	mtlr r0
/* 80438EF4 00435E34  38 21 00 10 */	addi r1, r1, 0x10
/* 80438EF8 00435E38  4E 80 00 20 */	blr 

.global draw__Q25P2JME8TControlFPA4_fPA4_f
draw__Q25P2JME8TControlFPA4_fPA4_f:
/* 80438EFC 00435E3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80438F00 00435E40  7C 08 02 A6 */	mflr r0
/* 80438F04 00435E44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80438F08 00435E48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80438F0C 00435E4C  7C BF 2B 78 */	mr r31, r5
/* 80438F10 00435E50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80438F14 00435E54  7C 9E 23 78 */	mr r30, r4
/* 80438F18 00435E58  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80438F1C 00435E5C  7C 7D 1B 78 */	mr r29, r3
/* 80438F20 00435E60  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80438F24 00435E64  28 00 00 00 */	cmplwi r0, 0
/* 80438F28 00435E68  40 82 00 20 */	bne lbl_80438F48
/* 80438F2C 00435E6C  3C 60 80 4A */	lis r3, lbl_8049AB98@ha
/* 80438F30 00435E70  3C A0 80 4A */	lis r5, lbl_8049ABA8@ha
/* 80438F34 00435E74  38 63 AB 98 */	addi r3, r3, lbl_8049AB98@l
/* 80438F38 00435E78  38 80 01 01 */	li r4, 0x101
/* 80438F3C 00435E7C  38 A5 AB A8 */	addi r5, r5, lbl_8049ABA8@l
/* 80438F40 00435E80  4C C6 31 82 */	crclr 6
/* 80438F44 00435E84  4B BF 16 FD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80438F48:
/* 80438F48 00435E88  80 9D 00 40 */	lwz r4, 0x40(r29)
/* 80438F4C 00435E8C  7F A3 EB 78 */	mr r3, r29
/* 80438F50 00435E90  93 C4 00 44 */	stw r30, 0x44(r4)
/* 80438F54 00435E94  80 9D 00 40 */	lwz r4, 0x40(r29)
/* 80438F58 00435E98  93 E4 00 48 */	stw r31, 0x48(r4)
/* 80438F5C 00435E9C  4B BC F5 C5 */	bl render__Q28JMessage8TControlFv
/* 80438F60 00435EA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80438F64 00435EA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80438F68 00435EA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80438F6C 00435EAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80438F70 00435EB0  7C 08 03 A6 */	mtlr r0
/* 80438F74 00435EB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80438F78 00435EB8  4E 80 00 20 */	blr 

.global setLocate__Q25P2JME8TControlFii
setLocate__Q25P2JME8TControlFii:
/* 80438F7C 00435EBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80438F80 00435EC0  3C C0 43 30 */	lis r6, 0x4330
/* 80438F84 00435EC4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80438F88 00435EC8  C8 42 25 50 */	lfd f2, lbl_805208B0@sda21(r2)
/* 80438F8C 00435ECC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80438F90 00435ED0  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80438F94 00435ED4  80 63 00 40 */	lwz r3, 0x40(r3)
/* 80438F98 00435ED8  90 C1 00 08 */	stw r6, 8(r1)
/* 80438F9C 00435EDC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80438FA0 00435EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80438FA4 00435EE4  EC 20 10 28 */	fsubs f1, f0, f2
/* 80438FA8 00435EE8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80438FAC 00435EEC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80438FB0 00435EF0  D0 23 00 90 */	stfs f1, 0x90(r3)
/* 80438FB4 00435EF4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80438FB8 00435EF8  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 80438FBC 00435EFC  D0 03 00 94 */	stfs f0, 0x94(r3)
/* 80438FC0 00435F00  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 80438FC4 00435F04  38 21 00 20 */	addi r1, r1, 0x20
/* 80438FC8 00435F08  4E 80 00 20 */	blr 

.global setMessageID__Q25P2JME8TControlFPc
setMessageID__Q25P2JME8TControlFPc:
/* 80438FCC 00435F0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80438FD0 00435F10  7C 08 02 A6 */	mflr r0
/* 80438FD4 00435F14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80438FD8 00435F18  38 A1 00 08 */	addi r5, r1, 8
/* 80438FDC 00435F1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80438FE0 00435F20  7C 7F 1B 78 */	mr r31, r3
/* 80438FE4 00435F24  7C 83 23 78 */	mr r3, r4
/* 80438FE8 00435F28  38 81 00 0C */	addi r4, r1, 0xc
/* 80438FEC 00435F2C  48 00 43 89 */	bl convertCharToMessageID__5P2JMEFPcPUlPUl
/* 80438FF0 00435F30  7F E3 FB 78 */	mr r3, r31
/* 80438FF4 00435F34  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80438FF8 00435F38  81 9F 00 00 */	lwz r12, 0(r31)
/* 80438FFC 00435F3C  80 A1 00 08 */	lwz r5, 8(r1)
/* 80439000 00435F40  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80439004 00435F44  7D 89 03 A6 */	mtctr r12
/* 80439008 00435F48  4E 80 04 21 */	bctrl 
/* 8043900C 00435F4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80439010 00435F50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80439014 00435F54  7C 08 03 A6 */	mtlr r0
/* 80439018 00435F58  38 21 00 20 */	addi r1, r1, 0x20
/* 8043901C 00435F5C  4E 80 00 20 */	blr 

.global setMessageID__Q25P2JME8TControlFUlUl
setMessageID__Q25P2JME8TControlFUlUl:
/* 80439020 00435F60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80439024 00435F64  7C 08 02 A6 */	mflr r0
/* 80439028 00435F68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043902C 00435F6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80439030 00435F70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80439034 00435F74  7C BE 2B 78 */	mr r30, r5
/* 80439038 00435F78  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8043903C 00435F7C  7C 9D 23 78 */	mr r29, r4
/* 80439040 00435F80  93 81 00 10 */	stw r28, 0x10(r1)
/* 80439044 00435F84  7C 7C 1B 78 */	mr r28, r3
/* 80439048 00435F88  81 83 00 00 */	lwz r12, 0(r3)
/* 8043904C 00435F8C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80439050 00435F90  7D 89 03 A6 */	mtctr r12
/* 80439054 00435F94  4E 80 04 21 */	bctrl 
/* 80439058 00435F98  7F 83 E3 78 */	mr r3, r28
/* 8043905C 00435F9C  7F A4 EB 78 */	mr r4, r29
/* 80439060 00435FA0  7F C5 F3 78 */	mr r5, r30
/* 80439064 00435FA4  38 C0 00 00 */	li r6, 0
/* 80439068 00435FA8  4B BC F6 F1 */	bl setMessageID__Q28JMessage8TControlFUlUlPb
/* 8043906C 00435FAC  7C 7F 1B 78 */	mr r31, r3
/* 80439070 00435FB0  80 7C 00 40 */	lwz r3, 0x40(r28)
/* 80439074 00435FB4  7F A4 EB 78 */	mr r4, r29
/* 80439078 00435FB8  7F C5 F3 78 */	mr r5, r30
/* 8043907C 00435FBC  48 00 36 81 */	bl preProcID__Q25P2JME19TRenderingProcessorFUiUi
/* 80439080 00435FC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80439084 00435FC4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80439088 00435FC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043908C 00435FCC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80439090 00435FD0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80439094 00435FD4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80439098 00435FD8  7C 08 03 A6 */	mtlr r0
/* 8043909C 00435FDC  38 21 00 20 */	addi r1, r1, 0x20
/* 804390A0 00435FE0  4E 80 00 20 */	blr 

.global setMessageCode__Q25P2JME8TControlFUsUs
setMessageCode__Q25P2JME8TControlFUsUs:
/* 804390A4 00435FE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804390A8 00435FE8  7C 08 02 A6 */	mflr r0
/* 804390AC 00435FEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804390B0 00435FF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804390B4 00435FF4  7C BF 2B 78 */	mr r31, r5
/* 804390B8 00435FF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804390BC 00435FFC  7C 9E 23 78 */	mr r30, r4
/* 804390C0 00436000  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804390C4 00436004  7C 7D 1B 78 */	mr r29, r3
/* 804390C8 00436008  81 83 00 00 */	lwz r12, 0(r3)
/* 804390CC 0043600C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 804390D0 00436010  7D 89 03 A6 */	mtctr r12
/* 804390D4 00436014  4E 80 04 21 */	bctrl 
/* 804390D8 00436018  7F A3 EB 78 */	mr r3, r29
/* 804390DC 0043601C  7F C4 F3 78 */	mr r4, r30
/* 804390E0 00436020  7F E5 FB 78 */	mr r5, r31
/* 804390E4 00436024  4B BC F5 99 */	bl setMessageCode__Q28JMessage8TControlFUsUs
/* 804390E8 00436028  A0 1D 00 0C */	lhz r0, 0xc(r29)
/* 804390EC 0043602C  7C 7F 1B 78 */	mr r31, r3
/* 804390F0 00436030  A0 9D 00 0E */	lhz r4, 0xe(r29)
/* 804390F4 00436034  80 7D 00 40 */	lwz r3, 0x40(r29)
/* 804390F8 00436038  50 04 80 1E */	rlwimi r4, r0, 0x10, 0, 0xf
/* 804390FC 0043603C  48 00 35 E1 */	bl preProcCode__Q25P2JME19TRenderingProcessorFUi
/* 80439100 00436040  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80439104 00436044  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80439108 00436048  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043910C 0043604C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80439110 00436050  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80439114 00436054  7C 08 03 A6 */	mtlr r0
/* 80439118 00436058  38 21 00 20 */	addi r1, r1, 0x20
/* 8043911C 0043605C  4E 80 00 20 */	blr 

.global setMessageCode__Q25P2JME8TControlFUl
setMessageCode__Q25P2JME8TControlFUl:
/* 80439120 00436060  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80439124 00436064  7C 08 02 A6 */	mflr r0
/* 80439128 00436068  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043912C 0043606C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80439130 00436070  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80439134 00436074  7C 9E 23 78 */	mr r30, r4
/* 80439138 00436078  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8043913C 0043607C  7C 7D 1B 78 */	mr r29, r3
/* 80439140 00436080  81 83 00 00 */	lwz r12, 0(r3)
/* 80439144 00436084  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80439148 00436088  7D 89 03 A6 */	mtctr r12
/* 8043914C 0043608C  4E 80 04 21 */	bctrl 
/* 80439150 00436090  57 C4 84 3E */	srwi r4, r30, 0x10
/* 80439154 00436094  7F A3 EB 78 */	mr r3, r29
/* 80439158 00436098  57 C5 04 3E */	clrlwi r5, r30, 0x10
/* 8043915C 0043609C  4B BC F5 21 */	bl setMessageCode__Q28JMessage8TControlFUsUs
/* 80439160 004360A0  7C 7F 1B 78 */	mr r31, r3
/* 80439164 004360A4  80 7D 00 40 */	lwz r3, 0x40(r29)
/* 80439168 004360A8  7F C4 F3 78 */	mr r4, r30
/* 8043916C 004360AC  48 00 35 71 */	bl preProcCode__Q25P2JME19TRenderingProcessorFUi
/* 80439170 004360B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80439174 004360B4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80439178 004360B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043917C 004360BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80439180 004360C0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80439184 004360C4  7C 08 03 A6 */	mtlr r0
/* 80439188 004360C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8043918C 004360CC  4E 80 00 20 */	blr 

.global __dt__Q25P2JME8TControlFv
__dt__Q25P2JME8TControlFv:
/* 80439190 004360D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80439194 004360D4  7C 08 02 A6 */	mflr r0
/* 80439198 004360D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043919C 004360DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804391A0 004360E0  7C 9F 23 78 */	mr r31, r4
/* 804391A4 004360E4  93 C1 00 08 */	stw r30, 8(r1)
/* 804391A8 004360E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 804391AC 004360EC  41 82 00 28 */	beq lbl_804391D4
/* 804391B0 004360F0  3C A0 80 4F */	lis r5, __vt__Q25P2JME8TControl@ha
/* 804391B4 004360F4  38 80 00 00 */	li r4, 0
/* 804391B8 004360F8  38 05 C9 F0 */	addi r0, r5, __vt__Q25P2JME8TControl@l
/* 804391BC 004360FC  90 1E 00 00 */	stw r0, 0(r30)
/* 804391C0 00436100  4B BC F2 29 */	bl __dt__Q28JMessage8TControlFv
/* 804391C4 00436104  7F E0 07 35 */	extsh. r0, r31
/* 804391C8 00436108  40 81 00 0C */	ble lbl_804391D4
/* 804391CC 0043610C  7F C3 F3 78 */	mr r3, r30
/* 804391D0 00436110  4B BE AE E5 */	bl __dl__FPv
lbl_804391D4:
/* 804391D4 00436114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804391D8 00436118  7F C3 F3 78 */	mr r3, r30
/* 804391DC 0043611C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804391E0 00436120  83 C1 00 08 */	lwz r30, 8(r1)
/* 804391E4 00436124  7C 08 03 A6 */	mtlr r0
/* 804391E8 00436128  38 21 00 10 */	addi r1, r1, 0x10
/* 804391EC 0043612C  4E 80 00 20 */	blr 
