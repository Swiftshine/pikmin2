.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__17JASChannelUpdaterFv
__ct__17JASChannelUpdaterFv:
/* 800A8504 000A5444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A8508 000A5448  7C 08 02 A6 */	mflr r0
/* 800A850C 000A544C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A8510 000A5450  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A8514 000A5454  7C 7F 1B 78 */	mr r31, r3
/* 800A8518 000A5458  48 00 00 1D */	bl init__17JASChannelUpdaterFv
/* 800A851C 000A545C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A8520 000A5460  7F E3 FB 78 */	mr r3, r31
/* 800A8524 000A5464  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A8528 000A5468  7C 08 03 A6 */	mtlr r0
/* 800A852C 000A546C  38 21 00 10 */	addi r1, r1, 0x10
/* 800A8530 000A5470  4E 80 00 20 */	blr 

.global init__17JASChannelUpdaterFv
init__17JASChannelUpdaterFv:
/* 800A8534 000A5474  C0 42 8B 40 */	lfs f2, lbl_80516EA0@sda21(r2)
/* 800A8538 000A5478  39 20 00 00 */	li r9, 0
/* 800A853C 000A547C  C0 22 8B 44 */	lfs f1, lbl_80516EA4@sda21(r2)
/* 800A8540 000A5480  39 00 7F FF */	li r8, 0x7fff
/* 800A8544 000A5484  D0 43 00 00 */	stfs f2, 0(r3)
/* 800A8548 000A5488  38 E0 01 50 */	li r7, 0x150
/* 800A854C 000A548C  C0 02 8B 48 */	lfs f0, lbl_80516EA8@sda21(r2)
/* 800A8550 000A5490  38 C0 02 10 */	li r6, 0x210
/* 800A8554 000A5494  D0 43 00 04 */	stfs f2, 4(r3)
/* 800A8558 000A5498  38 A0 03 52 */	li r5, 0x352
/* 800A855C 000A549C  38 80 04 12 */	li r4, 0x412
/* 800A8560 000A54A0  38 00 00 0D */	li r0, 0xd
/* 800A8564 000A54A4  D0 23 00 08 */	stfs f1, 8(r3)
/* 800A8568 000A54A8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 800A856C 000A54AC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800A8570 000A54B0  B1 23 00 14 */	sth r9, 0x14(r3)
/* 800A8574 000A54B4  B1 23 00 16 */	sth r9, 0x16(r3)
/* 800A8578 000A54B8  B1 23 00 18 */	sth r9, 0x18(r3)
/* 800A857C 000A54BC  B1 23 00 1A */	sth r9, 0x1a(r3)
/* 800A8580 000A54C0  B1 23 00 1C */	sth r9, 0x1c(r3)
/* 800A8584 000A54C4  B1 23 00 1E */	sth r9, 0x1e(r3)
/* 800A8588 000A54C8  B1 23 00 20 */	sth r9, 0x20(r3)
/* 800A858C 000A54CC  B1 23 00 22 */	sth r9, 0x22(r3)
/* 800A8590 000A54D0  B1 03 00 14 */	sth r8, 0x14(r3)
/* 800A8594 000A54D4  B1 23 00 34 */	sth r9, 0x34(r3)
/* 800A8598 000A54D8  B1 23 00 24 */	sth r9, 0x24(r3)
/* 800A859C 000A54DC  B1 23 00 26 */	sth r9, 0x26(r3)
/* 800A85A0 000A54E0  B1 23 00 28 */	sth r9, 0x28(r3)
/* 800A85A4 000A54E4  B1 23 00 2A */	sth r9, 0x2a(r3)
/* 800A85A8 000A54E8  99 23 00 42 */	stb r9, 0x42(r3)
/* 800A85AC 000A54EC  99 23 00 43 */	stb r9, 0x43(r3)
/* 800A85B0 000A54F0  99 23 00 44 */	stb r9, 0x44(r3)
/* 800A85B4 000A54F4  99 23 00 45 */	stb r9, 0x45(r3)
/* 800A85B8 000A54F8  99 23 00 46 */	stb r9, 0x46(r3)
/* 800A85BC 000A54FC  99 23 00 47 */	stb r9, 0x47(r3)
/* 800A85C0 000A5500  99 23 00 48 */	stb r9, 0x48(r3)
/* 800A85C4 000A5504  B1 03 00 24 */	sth r8, 0x24(r3)
/* 800A85C8 000A5508  99 23 00 49 */	stb r9, 0x49(r3)
/* 800A85CC 000A550C  B0 E3 00 36 */	sth r7, 0x36(r3)
/* 800A85D0 000A5510  B0 C3 00 38 */	sth r6, 0x38(r3)
/* 800A85D4 000A5514  B0 A3 00 3A */	sth r5, 0x3a(r3)
/* 800A85D8 000A5518  B0 83 00 3C */	sth r4, 0x3c(r3)
/* 800A85DC 000A551C  B1 23 00 3E */	sth r9, 0x3e(r3)
/* 800A85E0 000A5520  B1 23 00 40 */	sth r9, 0x40(r3)
/* 800A85E4 000A5524  98 03 00 4A */	stb r0, 0x4a(r3)
/* 800A85E8 000A5528  98 03 00 4B */	stb r0, 0x4b(r3)
/* 800A85EC 000A552C  98 03 00 4C */	stb r0, 0x4c(r3)
/* 800A85F0 000A5530  4E 80 00 20 */	blr 

.global initialUpdateChannel__17JASChannelUpdaterFP10JASChannelPQ26JASDsp8TChannel
initialUpdateChannel__17JASChannelUpdaterFP10JASChannelPQ26JASDsp8TChannel:
/* 800A85F4 000A5534  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A85F8 000A5538  7C 08 02 A6 */	mflr r0
/* 800A85FC 000A553C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A8600 000A5540  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 800A8604 000A5544  7C 7E 1B 78 */	mr r30, r3
/* 800A8608 000A5548  7C 9B 23 78 */	mr r27, r4
/* 800A860C 000A554C  7C BF 2B 78 */	mr r31, r5
/* 800A8610 000A5550  3B 80 00 00 */	li r28, 0
/* 800A8614 000A5554  7F DD F3 78 */	mr r29, r30
lbl_800A8618:
/* 800A8618 000A5558  A0 BD 00 36 */	lhz r5, 0x36(r29)
/* 800A861C 000A555C  7F 63 DB 78 */	mr r3, r27
/* 800A8620 000A5560  7F 84 E3 78 */	mr r4, r28
/* 800A8624 000A5564  4B FF AF 55 */	bl setMixConfig__10JASChannelFiUs
/* 800A8628 000A5568  3B 9C 00 01 */	addi r28, r28, 1
/* 800A862C 000A556C  3B BD 00 02 */	addi r29, r29, 2
/* 800A8630 000A5570  2C 1C 00 06 */	cmpwi r28, 6
/* 800A8634 000A5574  41 80 FF E4 */	blt lbl_800A8618
/* 800A8638 000A5578  A0 1B 00 B0 */	lhz r0, 0xb0(r27)
/* 800A863C 000A557C  28 00 FF FF */	cmplwi r0, 0xffff
/* 800A8640 000A5580  40 82 00 10 */	bne lbl_800A8650
/* 800A8644 000A5584  7F E3 FB 78 */	mr r3, r31
/* 800A8648 000A5588  4B FF D2 71 */	bl initAutoMixer__Q26JASDsp8TChannelFv
/* 800A864C 000A558C  48 00 00 40 */	b lbl_800A868C
lbl_800A8650:
/* 800A8650 000A5590  88 9E 00 48 */	lbz r4, 0x48(r30)
/* 800A8654 000A5594  7F E3 FB 78 */	mr r3, r31
/* 800A8658 000A5598  4B FF D2 D1 */	bl setMixerInitDelayMax__Q26JASDsp8TChannelFUc
/* 800A865C 000A559C  3B 80 00 00 */	li r28, 0
/* 800A8660 000A55A0  48 00 00 20 */	b lbl_800A8680
lbl_800A8664:
/* 800A8664 000A55A4  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 800A8668 000A55A8  7F E3 FB 78 */	mr r3, r31
/* 800A866C 000A55AC  38 04 00 42 */	addi r0, r4, 0x42
/* 800A8670 000A55B0  7F 84 E3 78 */	mr r4, r28
/* 800A8674 000A55B4  7C BE 00 AE */	lbzx r5, r30, r0
/* 800A8678 000A55B8  4B FF D2 DD */	bl setMixerInitDelaySamples__Q26JASDsp8TChannelFUcUc
/* 800A867C 000A55BC  3B 9C 00 01 */	addi r28, r28, 1
lbl_800A8680:
/* 800A8680 000A55C0  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 800A8684 000A55C4  28 00 00 06 */	cmplwi r0, 6
/* 800A8688 000A55C8  41 80 FF DC */	blt lbl_800A8664
lbl_800A868C:
/* 800A868C 000A55CC  88 1E 00 4A */	lbz r0, 0x4a(r30)
/* 800A8690 000A55D0  3B 80 00 00 */	li r28, 0
/* 800A8694 000A55D4  98 1B 01 08 */	stb r0, 0x108(r27)
/* 800A8698 000A55D8  88 1E 00 4B */	lbz r0, 0x4b(r30)
/* 800A869C 000A55DC  98 1B 01 09 */	stb r0, 0x109(r27)
/* 800A86A0 000A55E0  88 1E 00 4C */	lbz r0, 0x4c(r30)
/* 800A86A4 000A55E4  98 1B 01 0A */	stb r0, 0x10a(r27)
/* 800A86A8 000A55E8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 800A86AC 000A55EC  D0 1B 01 00 */	stfs f0, 0x100(r27)
/* 800A86B0 000A55F0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 800A86B4 000A55F4  D0 1B 01 04 */	stfs f0, 0x104(r27)
/* 800A86B8 000A55F8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 800A86BC 000A55FC  D0 1B 00 D0 */	stfs f0, 0xd0(r27)
/* 800A86C0 000A5600  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 800A86C4 000A5604  D0 1B 00 D8 */	stfs f0, 0xd8(r27)
/* 800A86C8 000A5608  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 800A86CC 000A560C  D0 1B 00 E0 */	stfs f0, 0xe0(r27)
/* 800A86D0 000A5610  48 00 00 20 */	b lbl_800A86F0
lbl_800A86D4:
/* 800A86D4 000A5614  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 800A86D8 000A5618  7F E3 FB 78 */	mr r3, r31
/* 800A86DC 000A561C  38 04 00 42 */	addi r0, r4, 0x42
/* 800A86E0 000A5620  7F 84 E3 78 */	mr r4, r28
/* 800A86E4 000A5624  7C BE 00 AE */	lbzx r5, r30, r0
/* 800A86E8 000A5628  4B FF D2 85 */	bl setMixerDelaySamples__Q26JASDsp8TChannelFUcUc
/* 800A86EC 000A562C  3B 9C 00 01 */	addi r28, r28, 1
lbl_800A86F0:
/* 800A86F0 000A5630  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 800A86F4 000A5634  28 00 00 06 */	cmplwi r0, 6
/* 800A86F8 000A5638  41 80 FF DC */	blt lbl_800A86D4
/* 800A86FC 000A563C  88 1E 00 49 */	lbz r0, 0x49(r30)
/* 800A8700 000A5640  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800A8704 000A5644  41 82 00 10 */	beq lbl_800A8714
/* 800A8708 000A5648  7F E3 FB 78 */	mr r3, r31
/* 800A870C 000A564C  38 9E 00 24 */	addi r4, r30, 0x24
/* 800A8710 000A5650  4B FF D3 59 */	bl setIIRFilterParam__Q26JASDsp8TChannelFPs
lbl_800A8714:
/* 800A8714 000A5654  88 1E 00 49 */	lbz r0, 0x49(r30)
/* 800A8718 000A5658  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 800A871C 000A565C  41 82 00 10 */	beq lbl_800A872C
/* 800A8720 000A5660  7F E3 FB 78 */	mr r3, r31
/* 800A8724 000A5664  38 9E 00 14 */	addi r4, r30, 0x14
/* 800A8728 000A5668  4B FF D3 65 */	bl setFIR8FilterParam__Q26JASDsp8TChannelFPs
lbl_800A872C:
/* 800A872C 000A566C  88 9E 00 49 */	lbz r4, 0x49(r30)
/* 800A8730 000A5670  7F E3 FB 78 */	mr r3, r31
/* 800A8734 000A5674  4B FF D2 FD */	bl setFilterMode__Q26JASDsp8TChannelFUs
/* 800A8738 000A5678  A8 9E 00 34 */	lha r4, 0x34(r30)
/* 800A873C 000A567C  7F E3 FB 78 */	mr r3, r31
/* 800A8740 000A5680  4B FF D3 91 */	bl setDistFilter__Q26JASDsp8TChannelFs
/* 800A8744 000A5684  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 800A8748 000A5688  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A874C 000A568C  7C 08 03 A6 */	mtlr r0
/* 800A8750 000A5690  38 21 00 20 */	addi r1, r1, 0x20
/* 800A8754 000A5694  4E 80 00 20 */	blr 

.global updateChannel__17JASChannelUpdaterFP10JASChannelPQ26JASDsp8TChannel
updateChannel__17JASChannelUpdaterFP10JASChannelPQ26JASDsp8TChannel:
/* 800A8758 000A5698  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A875C 000A569C  7C 08 02 A6 */	mflr r0
/* 800A8760 000A56A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A8764 000A56A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A8768 000A56A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A876C 000A56AC  7C BE 2B 78 */	mr r30, r5
/* 800A8770 000A56B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A8774 000A56B4  7C 7D 1B 78 */	mr r29, r3
/* 800A8778 000A56B8  80 04 00 18 */	lwz r0, 0x18(r4)
/* 800A877C 000A56BC  2C 00 00 02 */	cmpwi r0, 2
/* 800A8780 000A56C0  41 82 00 A4 */	beq lbl_800A8824
/* 800A8784 000A56C4  C0 1D 00 00 */	lfs f0, 0(r29)
/* 800A8788 000A56C8  3B E0 00 00 */	li r31, 0
/* 800A878C 000A56CC  D0 04 01 00 */	stfs f0, 0x100(r4)
/* 800A8790 000A56D0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 800A8794 000A56D4  D0 04 01 04 */	stfs f0, 0x104(r4)
/* 800A8798 000A56D8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 800A879C 000A56DC  D0 04 00 D0 */	stfs f0, 0xd0(r4)
/* 800A87A0 000A56E0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 800A87A4 000A56E4  D0 04 00 D8 */	stfs f0, 0xd8(r4)
/* 800A87A8 000A56E8  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 800A87AC 000A56EC  D0 04 00 E0 */	stfs f0, 0xe0(r4)
/* 800A87B0 000A56F0  48 00 00 20 */	b lbl_800A87D0
lbl_800A87B4:
/* 800A87B4 000A56F4  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 800A87B8 000A56F8  7F C3 F3 78 */	mr r3, r30
/* 800A87BC 000A56FC  38 04 00 42 */	addi r0, r4, 0x42
/* 800A87C0 000A5700  7F E4 FB 78 */	mr r4, r31
/* 800A87C4 000A5704  7C BD 00 AE */	lbzx r5, r29, r0
/* 800A87C8 000A5708  4B FF D1 A5 */	bl setMixerDelaySamples__Q26JASDsp8TChannelFUcUc
/* 800A87CC 000A570C  3B FF 00 01 */	addi r31, r31, 1
lbl_800A87D0:
/* 800A87D0 000A5710  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 800A87D4 000A5714  28 00 00 06 */	cmplwi r0, 6
/* 800A87D8 000A5718  41 80 FF DC */	blt lbl_800A87B4
/* 800A87DC 000A571C  88 1D 00 49 */	lbz r0, 0x49(r29)
/* 800A87E0 000A5720  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800A87E4 000A5724  41 82 00 10 */	beq lbl_800A87F4
/* 800A87E8 000A5728  7F C3 F3 78 */	mr r3, r30
/* 800A87EC 000A572C  38 9D 00 24 */	addi r4, r29, 0x24
/* 800A87F0 000A5730  4B FF D2 79 */	bl setIIRFilterParam__Q26JASDsp8TChannelFPs
lbl_800A87F4:
/* 800A87F4 000A5734  88 1D 00 49 */	lbz r0, 0x49(r29)
/* 800A87F8 000A5738  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 800A87FC 000A573C  41 82 00 10 */	beq lbl_800A880C
/* 800A8800 000A5740  7F C3 F3 78 */	mr r3, r30
/* 800A8804 000A5744  38 9D 00 14 */	addi r4, r29, 0x14
/* 800A8808 000A5748  4B FF D2 85 */	bl setFIR8FilterParam__Q26JASDsp8TChannelFPs
lbl_800A880C:
/* 800A880C 000A574C  88 9D 00 49 */	lbz r4, 0x49(r29)
/* 800A8810 000A5750  7F C3 F3 78 */	mr r3, r30
/* 800A8814 000A5754  4B FF D2 1D */	bl setFilterMode__Q26JASDsp8TChannelFUs
/* 800A8818 000A5758  A8 9D 00 34 */	lha r4, 0x34(r29)
/* 800A881C 000A575C  7F C3 F3 78 */	mr r3, r30
/* 800A8820 000A5760  4B FF D2 B1 */	bl setDistFilter__Q26JASDsp8TChannelFs
lbl_800A8824:
/* 800A8824 000A5764  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A8828 000A5768  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A882C 000A576C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A8830 000A5770  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A8834 000A5774  7C 08 03 A6 */	mtlr r0
/* 800A8838 000A5778  38 21 00 20 */	addi r1, r1, 0x20
/* 800A883C 000A577C  4E 80 00 20 */	blr 
