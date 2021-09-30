.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global deform__13J3DSkinDeformFP8J3DModel
deform__13J3DSkinDeformFP8J3DModel:
/* 80088658 00085598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008865C 0008559C  7C 08 02 A6 */	mflr r0
/* 80088660 000855A0  7C 85 23 78 */	mr r5, r4
/* 80088664 000855A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80088668 000855A8  80 04 00 08 */	lwz r0, 8(r4)
/* 8008866C 000855AC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80088670 000855B0  41 82 00 14 */	beq lbl_80088684
/* 80088674 000855B4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80088678 000855B8  60 00 00 02 */	ori r0, r0, 2
/* 8008867C 000855BC  90 03 00 14 */	stw r0, 0x14(r3)
/* 80088680 000855C0  48 00 00 10 */	b lbl_80088690
lbl_80088684:
/* 80088684 000855C4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80088688 000855C8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8008868C 000855CC  90 03 00 14 */	stw r0, 0x14(r3)
lbl_80088690:
/* 80088690 000855D0  80 05 00 08 */	lwz r0, 8(r5)
/* 80088694 000855D4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80088698 000855D8  41 82 00 14 */	beq lbl_800886AC
/* 8008869C 000855DC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800886A0 000855E0  60 00 00 01 */	ori r0, r0, 1
/* 800886A4 000855E4  90 03 00 14 */	stw r0, 0x14(r3)
/* 800886A8 000855E8  48 00 00 10 */	b lbl_800886B8
lbl_800886AC:
/* 800886AC 000855EC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800886B0 000855F0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800886B4 000855F4  90 03 00 14 */	stw r0, 0x14(r3)
lbl_800886B8:
/* 800886B8 000855F8  81 83 00 00 */	lwz r12, 0(r3)
/* 800886BC 000855FC  38 85 00 88 */	addi r4, r5, 0x88
/* 800886C0 00085600  80 A5 00 84 */	lwz r5, 0x84(r5)
/* 800886C4 00085604  81 8C 00 08 */	lwz r12, 8(r12)
/* 800886C8 00085608  7D 89 03 A6 */	mtctr r12
/* 800886CC 0008560C  4E 80 04 21 */	bctrl 
/* 800886D0 00085610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800886D4 00085614  7C 08 03 A6 */	mtlr r0
/* 800886D8 00085618  38 21 00 10 */	addi r1, r1, 0x10
/* 800886DC 0008561C  4E 80 00 20 */	blr 

.global calc__15J3DVtxColorCalcFP8J3DModel
calc__15J3DVtxColorCalcFP8J3DModel:
/* 800886E0 00085620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800886E4 00085624  7C 08 02 A6 */	mflr r0
/* 800886E8 00085628  38 84 00 88 */	addi r4, r4, 0x88
/* 800886EC 0008562C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800886F0 00085630  81 83 00 00 */	lwz r12, 0(r3)
/* 800886F4 00085634  81 8C 00 08 */	lwz r12, 8(r12)
/* 800886F8 00085638  7D 89 03 A6 */	mtctr r12
/* 800886FC 0008563C  4E 80 04 21 */	bctrl 
/* 80088700 00085640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80088704 00085644  7C 08 03 A6 */	mtlr r0
/* 80088708 00085648  38 21 00 10 */	addi r1, r1, 0x10
/* 8008870C 0008564C  4E 80 00 20 */	blr 

.global calc__15J3DVtxColorCalcFP15J3DVertexBuffer
calc__15J3DVtxColorCalcFP15J3DVertexBuffer:
/* 80088710 00085650  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80088714 00085654  7C 08 02 A6 */	mflr r0
/* 80088718 00085658  90 01 00 34 */	stw r0, 0x34(r1)
/* 8008871C 0008565C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80088720 00085660  7C 7D 1B 78 */	mr r29, r3
/* 80088724 00085664  7C 9E 23 78 */	mr r30, r4
/* 80088728 00085668  80 03 00 04 */	lwz r0, 4(r3)
/* 8008872C 0008566C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80088730 00085670  41 82 00 C0 */	beq lbl_800887F0
/* 80088734 00085674  80 1D 00 08 */	lwz r0, 8(r29)
/* 80088738 00085678  28 00 00 00 */	cmplwi r0, 0
/* 8008873C 0008567C  41 82 00 B4 */	beq lbl_800887F0
/* 80088740 00085680  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80088744 00085684  3B E0 00 00 */	li r31, 0
/* 80088748 00085688  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8008874C 0008568C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80088750 00085690  90 7E 00 18 */	stw r3, 0x18(r30)
/* 80088754 00085694  80 7D 00 08 */	lwz r3, 8(r29)
/* 80088758 00085698  83 7E 00 14 */	lwz r27, 0x14(r30)
/* 8008875C 0008569C  A3 83 00 0C */	lhz r28, 0xc(r3)
/* 80088760 000856A0  48 00 00 6C */	b lbl_800887CC
lbl_80088764:
/* 80088764 000856A4  80 7D 00 08 */	lwz r3, 8(r29)
/* 80088768 000856A8  7F E5 FB 78 */	mr r5, r31
/* 8008876C 000856AC  38 C1 00 08 */	addi r6, r1, 8
/* 80088770 000856B0  38 80 00 00 */	li r4, 0
/* 80088774 000856B4  81 83 00 00 */	lwz r12, 0(r3)
/* 80088778 000856B8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8008877C 000856BC  7D 89 03 A6 */	mtctr r12
/* 80088780 000856C0  4E 80 04 21 */	bctrl 
/* 80088784 000856C4  80 7D 00 08 */	lwz r3, 8(r29)
/* 80088788 000856C8  57 E0 1B 78 */	rlwinm r0, r31, 3, 0xd, 0x1c
/* 8008878C 000856CC  38 E0 00 00 */	li r7, 0
/* 80088790 000856D0  38 C0 00 00 */	li r6, 0
/* 80088794 000856D4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80088798 000856D8  7C A3 02 14 */	add r5, r3, r0
/* 8008879C 000856DC  48 00 00 20 */	b lbl_800887BC
lbl_800887A0:
/* 800887A0 000856E0  80 65 00 04 */	lwz r3, 4(r5)
/* 800887A4 000856E4  38 E7 00 01 */	addi r7, r7, 1
/* 800887A8 000856E8  80 81 00 08 */	lwz r4, 8(r1)
/* 800887AC 000856EC  7C 03 32 2E */	lhzx r0, r3, r6
/* 800887B0 000856F0  38 C6 00 02 */	addi r6, r6, 2
/* 800887B4 000856F4  54 00 10 3A */	slwi r0, r0, 2
/* 800887B8 000856F8  7C 9B 01 2E */	stwx r4, r27, r0
lbl_800887BC:
/* 800887BC 000856FC  A0 05 00 00 */	lhz r0, 0(r5)
/* 800887C0 00085700  7C 07 00 40 */	cmplw r7, r0
/* 800887C4 00085704  41 80 FF DC */	blt lbl_800887A0
/* 800887C8 00085708  3B FF 00 01 */	addi r31, r31, 1
lbl_800887CC:
/* 800887CC 0008570C  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 800887D0 00085710  7C 00 E0 40 */	cmplw r0, r28
/* 800887D4 00085714  41 80 FF 90 */	blt lbl_80088764
/* 800887D8 00085718  80 9E 00 00 */	lwz r4, 0(r30)
/* 800887DC 0008571C  7F 63 DB 78 */	mr r3, r27
/* 800887E0 00085720  80 04 00 08 */	lwz r0, 8(r4)
/* 800887E4 00085724  54 04 10 3A */	slwi r4, r0, 2
/* 800887E8 00085728  48 06 3F 61 */	bl DCStoreRange
/* 800887EC 0008572C  93 7E 00 34 */	stw r27, 0x34(r30)
lbl_800887F0:
/* 800887F0 00085730  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 800887F4 00085734  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800887F8 00085738  7C 08 03 A6 */	mtlr r0
/* 800887FC 0008573C  38 21 00 30 */	addi r1, r1, 0x30
/* 80088800 00085740  4E 80 00 20 */	blr 

.global __dt__15J3DVtxColorCalcFv
__dt__15J3DVtxColorCalcFv:
/* 80088804 00085744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80088808 00085748  7C 08 02 A6 */	mflr r0
/* 8008880C 0008574C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80088810 00085750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80088814 00085754  7C 7F 1B 79 */	or. r31, r3, r3
/* 80088818 00085758  41 82 00 1C */	beq lbl_80088834
/* 8008881C 0008575C  3C A0 80 4A */	lis r5, __vt__15J3DVtxColorCalc@ha
/* 80088820 00085760  7C 80 07 35 */	extsh. r0, r4
/* 80088824 00085764  38 05 2F D0 */	addi r0, r5, __vt__15J3DVtxColorCalc@l
/* 80088828 00085768  90 1F 00 00 */	stw r0, 0(r31)
/* 8008882C 0008576C  40 81 00 08 */	ble lbl_80088834
/* 80088830 00085770  4B F9 B8 85 */	bl __dl__FPv
lbl_80088834:
/* 80088834 00085774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80088838 00085778  7F E3 FB 78 */	mr r3, r31
/* 8008883C 0008577C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80088840 00085780  7C 08 03 A6 */	mtlr r0
/* 80088844 00085784  38 21 00 10 */	addi r1, r1, 0x10
/* 80088848 00085788  4E 80 00 20 */	blr 
