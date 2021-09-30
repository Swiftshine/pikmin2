.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__17JPAEmitterManagerFUlUlP7JKRHeapUcUc
__ct__17JPAEmitterManagerFUlUlP7JKRHeapUcUc:
/* 80090538 0008D478  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009053C 0008D47C  7C 08 02 A6 */	mflr r0
/* 80090540 0008D480  90 01 00 24 */	stw r0, 0x24(r1)
/* 80090544 0008D484  BF 41 00 08 */	stmw r26, 8(r1)
/* 80090548 0008D488  7C 7E 1B 78 */	mr r30, r3
/* 8009054C 0008D48C  7C 9A 23 78 */	mr r26, r4
/* 80090550 0008D490  7C BB 2B 78 */	mr r27, r5
/* 80090554 0008D494  7C DF 33 78 */	mr r31, r6
/* 80090558 0008D498  7C FD 3B 78 */	mr r29, r7
/* 8009055C 0008D49C  7D 1C 43 78 */	mr r28, r8
/* 80090560 0008D4A0  38 7E 00 04 */	addi r3, r30, 4
/* 80090564 0008D4A4  4B F9 63 6D */	bl initiate__10JSUPtrListFv
/* 80090568 0008D4A8  38 00 00 00 */	li r0, 0
/* 8009056C 0008D4AC  7F E4 FB 78 */	mr r4, r31
/* 80090570 0008D4B0  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80090574 0008D4B4  38 A0 00 00 */	li r5, 0
/* 80090578 0008D4B8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8009057C 0008D4BC  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80090580 0008D4C0  93 7E 00 24 */	stw r27, 0x24(r30)
/* 80090584 0008D4C4  93 5E 00 28 */	stw r26, 0x28(r30)
/* 80090588 0008D4C8  9B BE 00 2C */	stb r29, 0x2c(r30)
/* 8009058C 0008D4CC  9B 9E 00 2D */	stb r28, 0x2d(r30)
/* 80090590 0008D4D0  83 BE 00 24 */	lwz r29, 0x24(r30)
/* 80090594 0008D4D4  1C 7D 01 14 */	mulli r3, r29, 0x114
/* 80090598 0008D4D8  38 63 00 10 */	addi r3, r3, 0x10
/* 8009059C 0008D4DC  4B F9 3A AD */	bl __nwa__FUlP7JKRHeapi
/* 800905A0 0008D4E0  3C 80 80 09 */	lis r4, __ct__14JPABaseEmitterFv@ha
/* 800905A4 0008D4E4  3C A0 80 09 */	lis r5, __dt__14JPABaseEmitterFv@ha
/* 800905A8 0008D4E8  38 84 08 10 */	addi r4, r4, __ct__14JPABaseEmitterFv@l
/* 800905AC 0008D4EC  7F A7 EB 78 */	mr r7, r29
/* 800905B0 0008D4F0  38 A5 07 B0 */	addi r5, r5, __dt__14JPABaseEmitterFv@l
/* 800905B4 0008D4F4  38 C0 01 14 */	li r6, 0x114
/* 800905B8 0008D4F8  48 03 14 39 */	bl __construct_new_array
/* 800905BC 0008D4FC  3B 80 00 00 */	li r28, 0
/* 800905C0 0008D500  7C 7D 1B 78 */	mr r29, r3
/* 800905C4 0008D504  48 00 00 18 */	b lbl_800905DC
lbl_800905C8:
/* 800905C8 0008D508  38 7E 00 04 */	addi r3, r30, 4
/* 800905CC 0008D50C  38 9D 00 58 */	addi r4, r29, 0x58
/* 800905D0 0008D510  4B F9 63 CD */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 800905D4 0008D514  3B BD 01 14 */	addi r29, r29, 0x114
/* 800905D8 0008D518  3B 9C 00 01 */	addi r28, r28, 1
lbl_800905DC:
/* 800905DC 0008D51C  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 800905E0 0008D520  7C 1C 00 40 */	cmplw r28, r0
/* 800905E4 0008D524  41 80 FF E4 */	blt lbl_800905C8
/* 800905E8 0008D528  83 BE 00 28 */	lwz r29, 0x28(r30)
/* 800905EC 0008D52C  7F E4 FB 78 */	mr r4, r31
/* 800905F0 0008D530  38 A0 00 00 */	li r5, 0
/* 800905F4 0008D534  1C 7D 00 A0 */	mulli r3, r29, 0xa0
/* 800905F8 0008D538  38 63 00 10 */	addi r3, r3, 0x10
/* 800905FC 0008D53C  4B F9 3A 4D */	bl __nwa__FUlP7JKRHeapi
/* 80090600 0008D540  3C 80 80 09 */	lis r4, __ct__26JPANode$$015JPABaseParticle$$1Fv@ha
/* 80090604 0008D544  3C A0 80 09 */	lis r5, __dt__26JPANode$$015JPABaseParticle$$1Fv@ha
/* 80090608 0008D548  38 84 07 A0 */	addi r4, r4, __ct__26JPANode$$015JPABaseParticle$$1Fv@l
/* 8009060C 0008D54C  7F A7 EB 78 */	mr r7, r29
/* 80090610 0008D550  38 A5 07 64 */	addi r5, r5, __dt__26JPANode$$015JPABaseParticle$$1Fv@l
/* 80090614 0008D554  38 C0 00 A0 */	li r6, 0xa0
/* 80090618 0008D558  48 03 13 D9 */	bl __construct_new_array
/* 8009061C 0008D55C  38 C0 00 00 */	li r6, 0
/* 80090620 0008D560  38 A0 00 00 */	li r5, 0
/* 80090624 0008D564  48 00 00 4C */	b lbl_80090670
lbl_80090628:
/* 80090628 0008D568  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8009062C 0008D56C  28 00 00 00 */	cmplwi r0, 0
/* 80090630 0008D570  41 82 00 1C */	beq lbl_8009064C
/* 80090634 0008D574  90 03 00 00 */	stw r0, 0(r3)
/* 80090638 0008D578  90 A3 00 04 */	stw r5, 4(r3)
/* 8009063C 0008D57C  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80090640 0008D580  90 64 00 04 */	stw r3, 4(r4)
/* 80090644 0008D584  90 7E 00 14 */	stw r3, 0x14(r30)
/* 80090648 0008D588  48 00 00 14 */	b lbl_8009065C
lbl_8009064C:
/* 8009064C 0008D58C  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80090650 0008D590  90 7E 00 14 */	stw r3, 0x14(r30)
/* 80090654 0008D594  90 A3 00 00 */	stw r5, 0(r3)
/* 80090658 0008D598  90 A3 00 04 */	stw r5, 4(r3)
lbl_8009065C:
/* 8009065C 0008D59C  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 80090660 0008D5A0  38 63 00 A0 */	addi r3, r3, 0xa0
/* 80090664 0008D5A4  38 C6 00 01 */	addi r6, r6, 1
/* 80090668 0008D5A8  38 04 00 01 */	addi r0, r4, 1
/* 8009066C 0008D5AC  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_80090670:
/* 80090670 0008D5B0  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 80090674 0008D5B4  7C 06 00 40 */	cmplw r6, r0
/* 80090678 0008D5B8  41 80 FF B0 */	blt lbl_80090628
/* 8009067C 0008D5BC  8B BE 00 2C */	lbz r29, 0x2c(r30)
/* 80090680 0008D5C0  7F E4 FB 78 */	mr r4, r31
/* 80090684 0008D5C4  38 A0 00 00 */	li r5, 0
/* 80090688 0008D5C8  1C 7D 00 0C */	mulli r3, r29, 0xc
/* 8009068C 0008D5CC  38 63 00 10 */	addi r3, r3, 0x10
/* 80090690 0008D5D0  4B F9 39 B9 */	bl __nwa__FUlP7JKRHeapi
/* 80090694 0008D5D4  3C 80 80 09 */	lis r4, __ct__25JSUList$$014JPABaseEmitter$$1Fv@ha
/* 80090698 0008D5D8  3C A0 80 09 */	lis r5, __dt__25JSUList$$014JPABaseEmitter$$1Fv@ha
/* 8009069C 0008D5DC  38 84 07 34 */	addi r4, r4, __ct__25JSUList$$014JPABaseEmitter$$1Fv@l
/* 800906A0 0008D5E0  7F A7 EB 78 */	mr r7, r29
/* 800906A4 0008D5E4  38 A5 08 68 */	addi r5, r5, __dt__25JSUList$$014JPABaseEmitter$$1Fv@l
/* 800906A8 0008D5E8  38 C0 00 0C */	li r6, 0xc
/* 800906AC 0008D5EC  48 03 13 45 */	bl __construct_new_array
/* 800906B0 0008D5F0  90 7E 00 00 */	stw r3, 0(r30)
/* 800906B4 0008D5F4  7F E4 FB 78 */	mr r4, r31
/* 800906B8 0008D5F8  38 A0 00 00 */	li r5, 0
/* 800906BC 0008D5FC  88 1E 00 2D */	lbz r0, 0x2d(r30)
/* 800906C0 0008D600  54 03 10 3A */	slwi r3, r0, 2
/* 800906C4 0008D604  4B F9 39 85 */	bl __nwa__FUlP7JKRHeapi
/* 800906C8 0008D608  38 A0 00 00 */	li r5, 0
/* 800906CC 0008D60C  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 800906D0 0008D610  7C A4 2B 78 */	mr r4, r5
/* 800906D4 0008D614  38 C0 00 00 */	li r6, 0
/* 800906D8 0008D618  48 00 00 14 */	b lbl_800906EC
lbl_800906DC:
/* 800906DC 0008D61C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 800906E0 0008D620  38 C6 00 01 */	addi r6, r6, 1
/* 800906E4 0008D624  7C 83 29 2E */	stwx r4, r3, r5
/* 800906E8 0008D628  38 A5 00 04 */	addi r5, r5, 4
lbl_800906EC:
/* 800906EC 0008D62C  88 1E 00 2D */	lbz r0, 0x2d(r30)
/* 800906F0 0008D630  7C 06 00 00 */	cmpw r6, r0
/* 800906F4 0008D634  41 80 FF E8 */	blt lbl_800906DC
/* 800906F8 0008D638  7F E4 FB 78 */	mr r4, r31
/* 800906FC 0008D63C  38 60 02 18 */	li r3, 0x218
/* 80090700 0008D640  38 A0 00 00 */	li r5, 0
/* 80090704 0008D644  4B F9 38 3D */	bl __nw__FUlP7JKRHeapi
/* 80090708 0008D648  28 03 00 00 */	cmplwi r3, 0
/* 8009070C 0008D64C  41 82 00 0C */	beq lbl_80090718
/* 80090710 0008D650  38 00 00 00 */	li r0, 0
/* 80090714 0008D654  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80090718:
/* 80090718 0008D658  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8009071C 0008D65C  7F C3 F3 78 */	mr r3, r30
/* 80090720 0008D660  BB 41 00 08 */	lmw r26, 8(r1)
/* 80090724 0008D664  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80090728 0008D668  7C 08 03 A6 */	mtlr r0
/* 8009072C 0008D66C  38 21 00 20 */	addi r1, r1, 0x20
/* 80090730 0008D670  4E 80 00 20 */	blr 

.global __ct__25JSUList$$014JPABaseEmitter$$1Fv
__ct__25JSUList$$014JPABaseEmitter$$1Fv:
/* 80090734 0008D674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80090738 0008D678  7C 08 02 A6 */	mflr r0
/* 8009073C 0008D67C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80090740 0008D680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80090744 0008D684  7C 7F 1B 78 */	mr r31, r3
/* 80090748 0008D688  4B F9 61 89 */	bl initiate__10JSUPtrListFv
/* 8009074C 0008D68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80090750 0008D690  7F E3 FB 78 */	mr r3, r31
/* 80090754 0008D694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80090758 0008D698  7C 08 03 A6 */	mtlr r0
/* 8009075C 0008D69C  38 21 00 10 */	addi r1, r1, 0x10
/* 80090760 0008D6A0  4E 80 00 20 */	blr 

.global __dt__26JPANode$$015JPABaseParticle$$1Fv
__dt__26JPANode$$015JPABaseParticle$$1Fv:
/* 80090764 0008D6A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80090768 0008D6A8  7C 08 02 A6 */	mflr r0
/* 8009076C 0008D6AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80090770 0008D6B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80090774 0008D6B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80090778 0008D6B8  41 82 00 10 */	beq lbl_80090788
/* 8009077C 0008D6BC  7C 80 07 35 */	extsh. r0, r4
/* 80090780 0008D6C0  40 81 00 08 */	ble lbl_80090788
/* 80090784 0008D6C4  4B F9 39 31 */	bl __dl__FPv
lbl_80090788:
/* 80090788 0008D6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009078C 0008D6CC  7F E3 FB 78 */	mr r3, r31
/* 80090790 0008D6D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80090794 0008D6D4  7C 08 03 A6 */	mtlr r0
/* 80090798 0008D6D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009079C 0008D6DC  4E 80 00 20 */	blr 

.global __ct__26JPANode$$015JPABaseParticle$$1Fv
__ct__26JPANode$$015JPABaseParticle$$1Fv:
/* 800907A0 0008D6E0  38 00 00 00 */	li r0, 0
/* 800907A4 0008D6E4  90 03 00 00 */	stw r0, 0(r3)
/* 800907A8 0008D6E8  90 03 00 04 */	stw r0, 4(r3)
/* 800907AC 0008D6EC  4E 80 00 20 */	blr 

.global __dt__14JPABaseEmitterFv
__dt__14JPABaseEmitterFv:
/* 800907B0 0008D6F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800907B4 0008D6F4  7C 08 02 A6 */	mflr r0
/* 800907B8 0008D6F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800907BC 0008D6FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800907C0 0008D700  7C 9F 23 78 */	mr r31, r4
/* 800907C4 0008D704  93 C1 00 08 */	stw r30, 8(r1)
/* 800907C8 0008D708  7C 7E 1B 79 */	or. r30, r3, r3
/* 800907CC 0008D70C  41 82 00 28 */	beq lbl_800907F4
/* 800907D0 0008D710  34 1E 00 58 */	addic. r0, r30, 0x58
/* 800907D4 0008D714  41 82 00 10 */	beq lbl_800907E4
/* 800907D8 0008D718  38 7E 00 58 */	addi r3, r30, 0x58
/* 800907DC 0008D71C  38 80 00 00 */	li r4, 0
/* 800907E0 0008D720  4B F9 5F F1 */	bl __dt__10JSUPtrLinkFv
lbl_800907E4:
/* 800907E4 0008D724  7F E0 07 35 */	extsh. r0, r31
/* 800907E8 0008D728  40 81 00 0C */	ble lbl_800907F4
/* 800907EC 0008D72C  7F C3 F3 78 */	mr r3, r30
/* 800907F0 0008D730  4B F9 38 C5 */	bl __dl__FPv
lbl_800907F4:
/* 800907F4 0008D734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800907F8 0008D738  7F C3 F3 78 */	mr r3, r30
/* 800907FC 0008D73C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80090800 0008D740  83 C1 00 08 */	lwz r30, 8(r1)
/* 80090804 0008D744  7C 08 03 A6 */	mtlr r0
/* 80090808 0008D748  38 21 00 10 */	addi r1, r1, 0x10
/* 8009080C 0008D74C  4E 80 00 20 */	blr 

.global __ct__14JPABaseEmitterFv
__ct__14JPABaseEmitterFv:
/* 80090810 0008D750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80090814 0008D754  7C 08 02 A6 */	mflr r0
/* 80090818 0008D758  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009081C 0008D75C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80090820 0008D760  7C 7F 1B 78 */	mr r31, r3
/* 80090824 0008D764  7F E4 FB 78 */	mr r4, r31
/* 80090828 0008D768  38 7F 00 58 */	addi r3, r31, 0x58
/* 8009082C 0008D76C  4B F9 5F 8D */	bl __ct__10JSUPtrLinkFPv
/* 80090830 0008D770  38 00 00 00 */	li r0, 0
/* 80090834 0008D774  7F E3 FB 78 */	mr r3, r31
/* 80090838 0008D778  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 8009083C 0008D77C  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80090840 0008D780  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 80090844 0008D784  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 80090848 0008D788  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 8009084C 0008D78C  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 80090850 0008D790  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 80090854 0008D794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80090858 0008D798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009085C 0008D79C  7C 08 03 A6 */	mtlr r0
/* 80090860 0008D7A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80090864 0008D7A4  4E 80 00 20 */	blr 

.global __dt__25JSUList$$014JPABaseEmitter$$1Fv
__dt__25JSUList$$014JPABaseEmitter$$1Fv:
/* 80090868 0008D7A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009086C 0008D7AC  7C 08 02 A6 */	mflr r0
/* 80090870 0008D7B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80090874 0008D7B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80090878 0008D7B8  7C 9F 23 78 */	mr r31, r4
/* 8009087C 0008D7BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80090880 0008D7C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80090884 0008D7C4  41 82 00 1C */	beq lbl_800908A0
/* 80090888 0008D7C8  38 80 00 00 */	li r4, 0
/* 8009088C 0008D7CC  4B F9 5F DD */	bl __dt__10JSUPtrListFv
/* 80090890 0008D7D0  7F E0 07 35 */	extsh. r0, r31
/* 80090894 0008D7D4  40 81 00 0C */	ble lbl_800908A0
/* 80090898 0008D7D8  7F C3 F3 78 */	mr r3, r30
/* 8009089C 0008D7DC  4B F9 38 19 */	bl __dl__FPv
lbl_800908A0:
/* 800908A0 0008D7E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800908A4 0008D7E4  7F C3 F3 78 */	mr r3, r30
/* 800908A8 0008D7E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800908AC 0008D7EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800908B0 0008D7F0  7C 08 03 A6 */	mtlr r0
/* 800908B4 0008D7F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800908B8 0008D7F8  4E 80 00 20 */	blr 

.global createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3$$0f$$1UsUcUcP18JPAEmitterCallBackP19JPAParticleCallBack
createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3$$0f$$1UsUcUcP18JPAEmitterCallBackP19JPAParticleCallBack:
/* 800908BC 0008D7FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800908C0 0008D800  7C 08 02 A6 */	mflr r0
/* 800908C4 0008D804  90 01 00 34 */	stw r0, 0x34(r1)
/* 800908C8 0008D808  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 800908CC 0008D80C  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 800908D0 0008D810  7C 78 1B 78 */	mr r24, r3
/* 800908D4 0008D814  7C 99 23 78 */	mr r25, r4
/* 800908D8 0008D818  7C FB 3B 78 */	mr r27, r7
/* 800908DC 0008D81C  7C DA 33 78 */	mr r26, r6
/* 800908E0 0008D820  7D 1C 43 78 */	mr r28, r8
/* 800908E4 0008D824  7D 3D 4B 78 */	mr r29, r9
/* 800908E8 0008D828  7C A4 2B 78 */	mr r4, r5
/* 800908EC 0008D82C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 800908F0 0008D830  7C 63 00 2E */	lwzx r3, r3, r0
/* 800908F4 0008D834  48 00 7C 35 */	bl getResource__18JPAResourceManagerCFUs
/* 800908F8 0008D838  7C 7E 1B 79 */	or. r30, r3, r3
/* 800908FC 0008D83C  41 82 00 84 */	beq lbl_80090980
/* 80090900 0008D840  80 18 00 0C */	lwz r0, 0xc(r24)
/* 80090904 0008D844  28 00 00 00 */	cmplwi r0, 0
/* 80090908 0008D848  41 82 00 78 */	beq lbl_80090980
/* 8009090C 0008D84C  83 F8 00 04 */	lwz r31, 4(r24)
/* 80090910 0008D850  38 78 00 04 */	addi r3, r24, 4
/* 80090914 0008D854  7F E4 FB 78 */	mr r4, r31
/* 80090918 0008D858  4B F9 63 0D */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8009091C 0008D85C  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 80090920 0008D860  80 78 00 00 */	lwz r3, 0(r24)
/* 80090924 0008D864  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80090928 0008D868  7F E4 FB 78 */	mr r4, r31
/* 8009092C 0008D86C  7C 63 02 14 */	add r3, r3, r0
/* 80090930 0008D870  4B F9 5F B5 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 80090934 0008D874  83 FF 00 00 */	lwz r31, 0(r31)
/* 80090938 0008D878  7F 04 C3 78 */	mr r4, r24
/* 8009093C 0008D87C  7F C5 F3 78 */	mr r5, r30
/* 80090940 0008D880  7F E3 FB 78 */	mr r3, r31
/* 80090944 0008D884  4B FF F3 A1 */	bl init__14JPABaseEmitterFP17JPAEmitterManagerP11JPAResource
/* 80090948 0008D888  38 18 00 10 */	addi r0, r24, 0x10
/* 8009094C 0008D88C  C0 59 00 00 */	lfs f2, 0(r25)
/* 80090950 0008D890  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 80090954 0008D894  7F E3 FB 78 */	mr r3, r31
/* 80090958 0008D898  C0 39 00 04 */	lfs f1, 4(r25)
/* 8009095C 0008D89C  93 9F 00 EC */	stw r28, 0xec(r31)
/* 80090960 0008D8A0  C0 19 00 08 */	lfs f0, 8(r25)
/* 80090964 0008D8A4  93 BF 00 F0 */	stw r29, 0xf0(r31)
/* 80090968 0008D8A8  9B 5F 01 12 */	stb r26, 0x112(r31)
/* 8009096C 0008D8AC  9B 7F 01 13 */	stb r27, 0x113(r31)
/* 80090970 0008D8B0  D0 5F 00 A4 */	stfs f2, 0xa4(r31)
/* 80090974 0008D8B4  D0 3F 00 A8 */	stfs f1, 0xa8(r31)
/* 80090978 0008D8B8  D0 1F 00 AC */	stfs f0, 0xac(r31)
/* 8009097C 0008D8BC  48 00 00 08 */	b lbl_80090984
lbl_80090980:
/* 80090980 0008D8C0  38 60 00 00 */	li r3, 0
lbl_80090984:
/* 80090984 0008D8C4  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 80090988 0008D8C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8009098C 0008D8CC  7C 08 03 A6 */	mtlr r0
/* 80090990 0008D8D0  38 21 00 30 */	addi r1, r1, 0x30
/* 80090994 0008D8D4  4E 80 00 20 */	blr 

.global calc__17JPAEmitterManagerFv
calc__17JPAEmitterManagerFv:
/* 80090998 0008D8D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009099C 0008D8DC  7C 08 02 A6 */	mflr r0
/* 800909A0 0008D8E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800909A4 0008D8E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800909A8 0008D8E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800909AC 0008D8EC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800909B0 0008D8F0  3B A0 00 00 */	li r29, 0
/* 800909B4 0008D8F4  93 81 00 10 */	stw r28, 0x10(r1)
/* 800909B8 0008D8F8  7C 7C 1B 78 */	mr r28, r3
/* 800909BC 0008D8FC  48 00 00 5C */	b lbl_80090A18
lbl_800909C0:
/* 800909C0 0008D900  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800909C4 0008D904  80 7C 00 00 */	lwz r3, 0(r28)
/* 800909C8 0008D908  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800909CC 0008D90C  7F E3 00 2E */	lwzx r31, r3, r0
/* 800909D0 0008D910  48 00 00 3C */	b lbl_80090A0C
lbl_800909D4:
/* 800909D4 0008D914  83 DF 00 00 */	lwz r30, 0(r31)
/* 800909D8 0008D918  83 FF 00 0C */	lwz r31, 0xc(r31)
/* 800909DC 0008D91C  80 7E 00 E8 */	lwz r3, 0xe8(r30)
/* 800909E0 0008D920  7F C5 F3 78 */	mr r5, r30
/* 800909E4 0008D924  80 9C 00 20 */	lwz r4, 0x20(r28)
/* 800909E8 0008D928  48 00 61 B5 */	bl calc__11JPAResourceFP18JPAEmitterWorkDataP14JPABaseEmitter
/* 800909EC 0008D92C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800909F0 0008D930  41 82 00 1C */	beq lbl_80090A0C
/* 800909F4 0008D934  80 1E 00 F4 */	lwz r0, 0xf4(r30)
/* 800909F8 0008D938  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800909FC 0008D93C  40 82 00 10 */	bne lbl_80090A0C
/* 80090A00 0008D940  7F 83 E3 78 */	mr r3, r28
/* 80090A04 0008D944  7F C4 F3 78 */	mr r4, r30
/* 80090A08 0008D948  48 00 02 F9 */	bl forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
lbl_80090A0C:
/* 80090A0C 0008D94C  28 1F 00 00 */	cmplwi r31, 0
/* 80090A10 0008D950  40 82 FF C4 */	bne lbl_800909D4
/* 80090A14 0008D954  3B BD 00 01 */	addi r29, r29, 1
lbl_80090A18:
/* 80090A18 0008D958  88 1C 00 2C */	lbz r0, 0x2c(r28)
/* 80090A1C 0008D95C  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 80090A20 0008D960  7C 03 00 40 */	cmplw r3, r0
/* 80090A24 0008D964  41 80 FF 9C */	blt lbl_800909C0
/* 80090A28 0008D968  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80090A2C 0008D96C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80090A30 0008D970  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80090A34 0008D974  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80090A38 0008D978  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80090A3C 0008D97C  7C 08 03 A6 */	mtlr r0
/* 80090A40 0008D980  38 21 00 20 */	addi r1, r1, 0x20
/* 80090A44 0008D984  4E 80 00 20 */	blr 

.global draw__17JPAEmitterManagerFPC11JPADrawInfoUc
draw__17JPAEmitterManagerFPC11JPADrawInfoUc:
/* 80090A48 0008D988  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80090A4C 0008D98C  7C 08 02 A6 */	mflr r0
/* 80090A50 0008D990  90 01 00 24 */	stw r0, 0x24(r1)
/* 80090A54 0008D994  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80090A58 0008D998  7C BF 2B 78 */	mr r31, r5
/* 80090A5C 0008D99C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80090A60 0008D9A0  7C 9E 23 78 */	mr r30, r4
/* 80090A64 0008D9A4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80090A68 0008D9A8  7C 7D 1B 78 */	mr r29, r3
/* 80090A6C 0008D9AC  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80090A70 0008D9B0  7F C3 F3 78 */	mr r3, r30
/* 80090A74 0008D9B4  38 84 01 84 */	addi r4, r4, 0x184
/* 80090A78 0008D9B8  48 05 98 55 */	bl PSMTXCopy
/* 80090A7C 0008D9BC  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 80090A80 0008D9C0  38 7E 00 30 */	addi r3, r30, 0x30
/* 80090A84 0008D9C4  38 84 01 B4 */	addi r4, r4, 0x1b4
/* 80090A88 0008D9C8  48 05 98 45 */	bl PSMTXCopy
/* 80090A8C 0008D9CC  7F A3 EB 78 */	mr r3, r29
/* 80090A90 0008D9D0  48 00 03 B5 */	bl calcYBBCam__17JPAEmitterManagerFv
/* 80090A94 0008D9D4  38 60 00 00 */	li r3, 0
/* 80090A98 0008D9D8  38 80 00 00 */	li r4, 0
/* 80090A9C 0008D9DC  38 A0 00 00 */	li r5, 0
/* 80090AA0 0008D9E0  38 C0 00 00 */	li r6, 0
/* 80090AA4 0008D9E4  38 E0 00 01 */	li r7, 1
/* 80090AA8 0008D9E8  39 00 00 00 */	li r8, 0
/* 80090AAC 0008D9EC  48 05 7A E5 */	bl GXSetTevColorOp
/* 80090AB0 0008D9F0  38 60 00 00 */	li r3, 0
/* 80090AB4 0008D9F4  38 80 00 00 */	li r4, 0
/* 80090AB8 0008D9F8  38 A0 00 00 */	li r5, 0
/* 80090ABC 0008D9FC  38 C0 00 00 */	li r6, 0
/* 80090AC0 0008DA00  38 E0 00 01 */	li r7, 1
/* 80090AC4 0008DA04  39 00 00 00 */	li r8, 0
/* 80090AC8 0008DA08  48 05 7B 31 */	bl GXSetTevAlphaOp
/* 80090ACC 0008DA0C  38 60 00 00 */	li r3, 0
/* 80090AD0 0008DA10  38 80 00 01 */	li r4, 1
/* 80090AD4 0008DA14  38 A0 00 01 */	li r5, 1
/* 80090AD8 0008DA18  48 05 50 89 */	bl GXEnableTexOffsets
/* 80090ADC 0008DA1C  38 60 00 01 */	li r3, 1
/* 80090AE0 0008DA20  38 80 00 01 */	li r4, 1
/* 80090AE4 0008DA24  38 A0 00 01 */	li r5, 1
/* 80090AE8 0008DA28  48 05 50 79 */	bl GXEnableTexOffsets
/* 80090AEC 0008DA2C  38 60 00 02 */	li r3, 2
/* 80090AF0 0008DA30  38 80 00 01 */	li r4, 1
/* 80090AF4 0008DA34  38 A0 00 01 */	li r5, 1
/* 80090AF8 0008DA38  48 05 50 69 */	bl GXEnableTexOffsets
/* 80090AFC 0008DA3C  38 60 00 00 */	li r3, 0
/* 80090B00 0008DA40  48 05 50 A9 */	bl GXSetCullMode
/* 80090B04 0008DA44  38 60 00 00 */	li r3, 0
/* 80090B08 0008DA48  48 05 50 E5 */	bl GXSetCoPlanar
/* 80090B0C 0008DA4C  48 05 3B C5 */	bl GXClearVtxDesc
/* 80090B10 0008DA50  38 60 00 09 */	li r3, 9
/* 80090B14 0008DA54  38 80 00 02 */	li r4, 2
/* 80090B18 0008DA58  48 05 37 6D */	bl GXSetVtxDesc
/* 80090B1C 0008DA5C  38 60 00 0D */	li r3, 0xd
/* 80090B20 0008DA60  38 80 00 02 */	li r4, 2
/* 80090B24 0008DA64  48 05 37 61 */	bl GXSetVtxDesc
/* 80090B28 0008DA68  38 60 00 00 */	li r3, 0
/* 80090B2C 0008DA6C  38 80 00 09 */	li r4, 9
/* 80090B30 0008DA70  38 A0 00 01 */	li r5, 1
/* 80090B34 0008DA74  38 C0 00 01 */	li r6, 1
/* 80090B38 0008DA78  38 E0 00 00 */	li r7, 0
/* 80090B3C 0008DA7C  48 05 3B CD */	bl GXSetVtxAttrFmt
/* 80090B40 0008DA80  38 60 00 00 */	li r3, 0
/* 80090B44 0008DA84  38 80 00 0D */	li r4, 0xd
/* 80090B48 0008DA88  38 A0 00 01 */	li r5, 1
/* 80090B4C 0008DA8C  38 C0 00 01 */	li r6, 1
/* 80090B50 0008DA90  38 E0 00 00 */	li r7, 0
/* 80090B54 0008DA94  48 05 3B B5 */	bl GXSetVtxAttrFmt
/* 80090B58 0008DA98  38 60 00 01 */	li r3, 1
/* 80090B5C 0008DA9C  38 80 00 09 */	li r4, 9
/* 80090B60 0008DAA0  38 A0 00 01 */	li r5, 1
/* 80090B64 0008DAA4  38 C0 00 04 */	li r6, 4
/* 80090B68 0008DAA8  38 E0 00 00 */	li r7, 0
/* 80090B6C 0008DAAC  48 05 3B 9D */	bl GXSetVtxAttrFmt
/* 80090B70 0008DAB0  38 60 00 01 */	li r3, 1
/* 80090B74 0008DAB4  38 80 00 0D */	li r4, 0xd
/* 80090B78 0008DAB8  38 A0 00 01 */	li r5, 1
/* 80090B7C 0008DABC  38 C0 00 04 */	li r6, 4
/* 80090B80 0008DAC0  38 E0 00 00 */	li r7, 0
/* 80090B84 0008DAC4  48 05 3B 85 */	bl GXSetVtxAttrFmt
/* 80090B88 0008DAC8  38 60 00 00 */	li r3, 0
/* 80090B8C 0008DACC  48 05 8A 8D */	bl GXSetCurrentMtx
/* 80090B90 0008DAD0  38 60 00 04 */	li r3, 4
/* 80090B94 0008DAD4  38 80 00 00 */	li r4, 0
/* 80090B98 0008DAD8  38 A0 00 00 */	li r5, 0
/* 80090B9C 0008DADC  38 C0 00 01 */	li r6, 1
/* 80090BA0 0008DAE0  38 E0 00 00 */	li r7, 0
/* 80090BA4 0008DAE4  39 00 00 00 */	li r8, 0
/* 80090BA8 0008DAE8  39 20 00 02 */	li r9, 2
/* 80090BAC 0008DAEC  48 05 62 F5 */	bl GXSetChanCtrl
/* 80090BB0 0008DAF0  38 60 00 05 */	li r3, 5
/* 80090BB4 0008DAF4  38 80 00 00 */	li r4, 0
/* 80090BB8 0008DAF8  38 A0 00 00 */	li r5, 0
/* 80090BBC 0008DAFC  38 C0 00 01 */	li r6, 1
/* 80090BC0 0008DB00  38 E0 00 00 */	li r7, 0
/* 80090BC4 0008DB04  39 00 00 00 */	li r8, 0
/* 80090BC8 0008DB08  39 20 00 02 */	li r9, 2
/* 80090BCC 0008DB0C  48 05 62 D5 */	bl GXSetChanCtrl
/* 80090BD0 0008DB10  38 60 00 00 */	li r3, 0
/* 80090BD4 0008DB14  48 05 62 91 */	bl GXSetNumChans
/* 80090BD8 0008DB18  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80090BDC 0008DB1C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80090BE0 0008DB20  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80090BE4 0008DB24  7F E3 00 2E */	lwzx r31, r3, r0
/* 80090BE8 0008DB28  48 00 00 3C */	b lbl_80090C24
lbl_80090BEC:
/* 80090BEC 0008DB2C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80090BF0 0008DB30  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80090BF4 0008DB34  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80090BF8 0008DB38  40 82 00 28 */	bne lbl_80090C20
/* 80090BFC 0008DB3C  88 05 01 13 */	lbz r0, 0x113(r5)
/* 80090C00 0008DB40  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 80090C04 0008DB44  54 00 10 3A */	slwi r0, r0, 2
/* 80090C08 0008DB48  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 80090C0C 0008DB4C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80090C10 0008DB50  90 03 00 08 */	stw r0, 8(r3)
/* 80090C14 0008DB54  80 65 00 E8 */	lwz r3, 0xe8(r5)
/* 80090C18 0008DB58  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 80090C1C 0008DB5C  48 00 64 DD */	bl draw__11JPAResourceFP18JPAEmitterWorkDataP14JPABaseEmitter
lbl_80090C20:
/* 80090C20 0008DB60  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_80090C24:
/* 80090C24 0008DB64  28 1F 00 00 */	cmplwi r31, 0
/* 80090C28 0008DB68  40 82 FF C4 */	bne lbl_80090BEC
/* 80090C2C 0008DB6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80090C30 0008DB70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80090C34 0008DB74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80090C38 0008DB78  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80090C3C 0008DB7C  7C 08 03 A6 */	mtlr r0
/* 80090C40 0008DB80  38 21 00 20 */	addi r1, r1, 0x20
/* 80090C44 0008DB84  4E 80 00 20 */	blr 

.global forceDeleteAllEmitter__17JPAEmitterManagerFv
forceDeleteAllEmitter__17JPAEmitterManagerFv:
/* 80090C48 0008DB88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80090C4C 0008DB8C  7C 08 02 A6 */	mflr r0
/* 80090C50 0008DB90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80090C54 0008DB94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80090C58 0008DB98  3B E0 00 00 */	li r31, 0
/* 80090C5C 0008DB9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80090C60 0008DBA0  7C 7E 1B 78 */	mr r30, r3
/* 80090C64 0008DBA4  48 00 00 14 */	b lbl_80090C78
lbl_80090C68:
/* 80090C68 0008DBA8  7F C3 F3 78 */	mr r3, r30
/* 80090C6C 0008DBAC  7F E4 FB 78 */	mr r4, r31
/* 80090C70 0008DBB0  48 00 00 31 */	bl forceDeleteGroupEmitter__17JPAEmitterManagerFUc
/* 80090C74 0008DBB4  3B FF 00 01 */	addi r31, r31, 1
lbl_80090C78:
/* 80090C78 0008DBB8  88 1E 00 2C */	lbz r0, 0x2c(r30)
/* 80090C7C 0008DBBC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80090C80 0008DBC0  7C 03 00 40 */	cmplw r3, r0
/* 80090C84 0008DBC4  41 80 FF E4 */	blt lbl_80090C68
/* 80090C88 0008DBC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80090C8C 0008DBCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80090C90 0008DBD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80090C94 0008DBD4  7C 08 03 A6 */	mtlr r0
/* 80090C98 0008DBD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80090C9C 0008DBDC  4E 80 00 20 */	blr 

.global forceDeleteGroupEmitter__17JPAEmitterManagerFUc
forceDeleteGroupEmitter__17JPAEmitterManagerFUc:
/* 80090CA0 0008DBE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80090CA4 0008DBE4  7C 08 02 A6 */	mflr r0
/* 80090CA8 0008DBE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80090CAC 0008DBEC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80090CB0 0008DBF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80090CB4 0008DBF4  1F E0 00 0C */	mulli r31, r0, 0xc
/* 80090CB8 0008DBF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80090CBC 0008DBFC  7C 7E 1B 78 */	mr r30, r3
/* 80090CC0 0008DC00  48 00 00 14 */	b lbl_80090CD4
lbl_80090CC4:
/* 80090CC4 0008DC04  80 83 00 04 */	lwz r4, 4(r3)
/* 80090CC8 0008DC08  7F C3 F3 78 */	mr r3, r30
/* 80090CCC 0008DC0C  80 84 00 00 */	lwz r4, 0(r4)
/* 80090CD0 0008DC10  48 00 00 31 */	bl forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
lbl_80090CD4:
/* 80090CD4 0008DC14  80 1E 00 00 */	lwz r0, 0(r30)
/* 80090CD8 0008DC18  7C 7F 02 14 */	add r3, r31, r0
/* 80090CDC 0008DC1C  80 03 00 08 */	lwz r0, 8(r3)
/* 80090CE0 0008DC20  28 00 00 00 */	cmplwi r0, 0
/* 80090CE4 0008DC24  40 82 FF E0 */	bne lbl_80090CC4
/* 80090CE8 0008DC28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80090CEC 0008DC2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80090CF0 0008DC30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80090CF4 0008DC34  7C 08 03 A6 */	mtlr r0
/* 80090CF8 0008DC38  38 21 00 10 */	addi r1, r1, 0x10
/* 80090CFC 0008DC3C  4E 80 00 20 */	blr 

.global forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter:
/* 80090D00 0008DC40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80090D04 0008DC44  7C 08 02 A6 */	mflr r0
/* 80090D08 0008DC48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80090D0C 0008DC4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80090D10 0008DC50  7C 9F 23 78 */	mr r31, r4
/* 80090D14 0008DC54  93 C1 00 08 */	stw r30, 8(r1)
/* 80090D18 0008DC58  7C 7E 1B 78 */	mr r30, r3
/* 80090D1C 0008DC5C  7F E3 FB 78 */	mr r3, r31
/* 80090D20 0008DC60  4B FF F5 39 */	bl deleteAllParticle__14JPABaseEmitterFv
/* 80090D24 0008DC64  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 80090D28 0008DC68  38 9F 00 58 */	addi r4, r31, 0x58
/* 80090D2C 0008DC6C  60 00 03 00 */	ori r0, r0, 0x300
/* 80090D30 0008DC70  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 80090D34 0008DC74  88 1F 01 12 */	lbz r0, 0x112(r31)
/* 80090D38 0008DC78  80 7E 00 00 */	lwz r3, 0(r30)
/* 80090D3C 0008DC7C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80090D40 0008DC80  7C 63 02 14 */	add r3, r3, r0
/* 80090D44 0008DC84  4B F9 5E E1 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 80090D48 0008DC88  38 7E 00 04 */	addi r3, r30, 4
/* 80090D4C 0008DC8C  38 9F 00 58 */	addi r4, r31, 0x58
/* 80090D50 0008DC90  4B F9 5C 4D */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 80090D54 0008DC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80090D58 0008DC98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80090D5C 0008DC9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80090D60 0008DCA0  7C 08 03 A6 */	mtlr r0
/* 80090D64 0008DCA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80090D68 0008DCA8  4E 80 00 20 */	blr 

.global entryResourceManager__17JPAEmitterManagerFP18JPAResourceManagerUc
entryResourceManager__17JPAEmitterManagerFP18JPAResourceManagerUc:
/* 80090D6C 0008DCAC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80090D70 0008DCB0  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 80090D74 0008DCB4  7C 83 01 2E */	stwx r4, r3, r0
/* 80090D78 0008DCB8  4E 80 00 20 */	blr 

.global clearResourceManager__17JPAEmitterManagerFUc
clearResourceManager__17JPAEmitterManagerFUc:
/* 80090D7C 0008DCBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80090D80 0008DCC0  7C 08 02 A6 */	mflr r0
/* 80090D84 0008DCC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80090D88 0008DCC8  BF 41 00 08 */	stmw r26, 8(r1)
/* 80090D8C 0008DCCC  7C 9B 23 78 */	mr r27, r4
/* 80090D90 0008DCD0  7C 7A 1B 78 */	mr r26, r3
/* 80090D94 0008DCD4  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 80090D98 0008DCD8  3B 80 00 00 */	li r28, 0
/* 80090D9C 0008DCDC  48 00 00 74 */	b lbl_80090E10
lbl_80090DA0:
/* 80090DA0 0008DCE0  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80090DA4 0008DCE4  80 7A 00 00 */	lwz r3, 0(r26)
/* 80090DA8 0008DCE8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80090DAC 0008DCEC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80090DB0 0008DCF0  48 00 00 54 */	b lbl_80090E04
lbl_80090DB4:
/* 80090DB4 0008DCF4  83 A3 00 00 */	lwz r29, 0(r3)
/* 80090DB8 0008DCF8  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 80090DBC 0008DCFC  88 1D 01 13 */	lbz r0, 0x113(r29)
/* 80090DC0 0008DD00  7C 1F 00 40 */	cmplw r31, r0
/* 80090DC4 0008DD04  40 82 00 3C */	bne lbl_80090E00
/* 80090DC8 0008DD08  7F A3 EB 78 */	mr r3, r29
/* 80090DCC 0008DD0C  4B FF F4 8D */	bl deleteAllParticle__14JPABaseEmitterFv
/* 80090DD0 0008DD10  80 1D 00 F4 */	lwz r0, 0xf4(r29)
/* 80090DD4 0008DD14  38 9D 00 58 */	addi r4, r29, 0x58
/* 80090DD8 0008DD18  60 00 03 00 */	ori r0, r0, 0x300
/* 80090DDC 0008DD1C  90 1D 00 F4 */	stw r0, 0xf4(r29)
/* 80090DE0 0008DD20  88 1D 01 12 */	lbz r0, 0x112(r29)
/* 80090DE4 0008DD24  80 7A 00 00 */	lwz r3, 0(r26)
/* 80090DE8 0008DD28  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80090DEC 0008DD2C  7C 63 02 14 */	add r3, r3, r0
/* 80090DF0 0008DD30  4B F9 5E 35 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 80090DF4 0008DD34  38 7A 00 04 */	addi r3, r26, 4
/* 80090DF8 0008DD38  38 9D 00 58 */	addi r4, r29, 0x58
/* 80090DFC 0008DD3C  4B F9 5B A1 */	bl prepend__10JSUPtrListFP10JSUPtrLink
lbl_80090E00:
/* 80090E00 0008DD40  7F C3 F3 78 */	mr r3, r30
lbl_80090E04:
/* 80090E04 0008DD44  28 03 00 00 */	cmplwi r3, 0
/* 80090E08 0008DD48  40 82 FF AC */	bne lbl_80090DB4
/* 80090E0C 0008DD4C  3B 9C 00 01 */	addi r28, r28, 1
lbl_80090E10:
/* 80090E10 0008DD50  88 1A 00 2C */	lbz r0, 0x2c(r26)
/* 80090E14 0008DD54  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 80090E18 0008DD58  7C 03 00 40 */	cmplw r3, r0
/* 80090E1C 0008DD5C  41 80 FF 84 */	blt lbl_80090DA0
/* 80090E20 0008DD60  80 7A 00 1C */	lwz r3, 0x1c(r26)
/* 80090E24 0008DD64  57 60 15 BA */	rlwinm r0, r27, 2, 0x16, 0x1d
/* 80090E28 0008DD68  38 80 00 00 */	li r4, 0
/* 80090E2C 0008DD6C  7C 83 01 2E */	stwx r4, r3, r0
/* 80090E30 0008DD70  BB 41 00 08 */	lmw r26, 8(r1)
/* 80090E34 0008DD74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80090E38 0008DD78  7C 08 03 A6 */	mtlr r0
/* 80090E3C 0008DD7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80090E40 0008DD80  4E 80 00 20 */	blr 

.global calcYBBCam__17JPAEmitterManagerFv
calcYBBCam__17JPAEmitterManagerFv:
/* 80090E44 0008DD84  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 80090E48 0008DD88  3C 80 80 51 */	lis r4, __float_epsilon@ha
/* 80090E4C 0008DD8C  C0 62 88 58 */	lfs f3, lbl_80516BB8@sda21(r2)
/* 80090E50 0008DD90  C0 85 01 98 */	lfs f4, 0x198(r5)
/* 80090E54 0008DD94  C0 A5 01 A8 */	lfs f5, 0x1a8(r5)
/* 80090E58 0008DD98  EC 44 19 3A */	fmadds f2, f4, f4, f3
/* 80090E5C 0008DD9C  C0 22 88 5C */	lfs f1, lbl_80516BBC@sda21(r2)
/* 80090E60 0008DDA0  C0 04 48 DC */	lfs f0, __float_epsilon@l(r4)
/* 80090E64 0008DDA4  EC C5 11 7A */	fmadds f6, f5, f5, f2
/* 80090E68 0008DDA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80090E6C 0008DDAC  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80090E70 0008DDB0  4C 40 13 82 */	cror 2, 0, 2
/* 80090E74 0008DDB4  41 82 00 3C */	beq lbl_80090EB0
/* 80090E78 0008DDB8  FC 06 18 40 */	fcmpo cr0, f6, f3
/* 80090E7C 0008DDBC  4C 40 13 82 */	cror 2, 0, 2
/* 80090E80 0008DDC0  40 82 00 08 */	bne lbl_80090E88
/* 80090E84 0008DDC4  48 00 00 24 */	b lbl_80090EA8
lbl_80090E88:
/* 80090E88 0008DDC8  FC 60 30 34 */	frsqrte f3, f6
/* 80090E8C 0008DDCC  C0 42 88 60 */	lfs f2, lbl_80516BC0@sda21(r2)
/* 80090E90 0008DDD0  C0 02 88 64 */	lfs f0, lbl_80516BC4@sda21(r2)
/* 80090E94 0008DDD4  FC 60 18 18 */	frsp f3, f3
/* 80090E98 0008DDD8  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80090E9C 0008DDDC  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80090EA0 0008DDE0  EC 06 00 7C */	fnmsubs f0, f6, f1, f0
/* 80090EA4 0008DDE4  EC C2 00 32 */	fmuls f6, f2, f0
lbl_80090EA8:
/* 80090EA8 0008DDE8  EC 84 01 B2 */	fmuls f4, f4, f6
/* 80090EAC 0008DDEC  EC A5 01 B2 */	fmuls f5, f5, f6
lbl_80090EB0:
/* 80090EB0 0008DDF0  C0 22 88 68 */	lfs f1, lbl_80516BC8@sda21(r2)
/* 80090EB4 0008DDF4  FC 00 28 50 */	fneg f0, f5
/* 80090EB8 0008DDF8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80090EBC 0008DDFC  C0 42 88 58 */	lfs f2, lbl_80516BB8@sda21(r2)
/* 80090EC0 0008DE00  D0 24 01 54 */	stfs f1, 0x154(r4)
/* 80090EC4 0008DE04  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80090EC8 0008DE08  D0 44 01 58 */	stfs f2, 0x158(r4)
/* 80090ECC 0008DE0C  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80090ED0 0008DE10  D0 44 01 5C */	stfs f2, 0x15c(r4)
/* 80090ED4 0008DE14  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80090ED8 0008DE18  C0 24 01 90 */	lfs f1, 0x190(r4)
/* 80090EDC 0008DE1C  D0 24 01 60 */	stfs f1, 0x160(r4)
/* 80090EE0 0008DE20  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80090EE4 0008DE24  D0 44 01 64 */	stfs f2, 0x164(r4)
/* 80090EE8 0008DE28  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80090EEC 0008DE2C  D0 84 01 68 */	stfs f4, 0x168(r4)
/* 80090EF0 0008DE30  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80090EF4 0008DE34  D0 04 01 6C */	stfs f0, 0x16c(r4)
/* 80090EF8 0008DE38  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80090EFC 0008DE3C  C0 04 01 A0 */	lfs f0, 0x1a0(r4)
/* 80090F00 0008DE40  D0 04 01 70 */	stfs f0, 0x170(r4)
/* 80090F04 0008DE44  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80090F08 0008DE48  D0 44 01 74 */	stfs f2, 0x174(r4)
/* 80090F0C 0008DE4C  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80090F10 0008DE50  D0 A4 01 78 */	stfs f5, 0x178(r4)
/* 80090F14 0008DE54  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80090F18 0008DE58  D0 84 01 7C */	stfs f4, 0x17c(r4)
/* 80090F1C 0008DE5C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80090F20 0008DE60  C0 03 01 B0 */	lfs f0, 0x1b0(r3)
/* 80090F24 0008DE64  D0 03 01 80 */	stfs f0, 0x180(r3)
/* 80090F28 0008DE68  4E 80 00 20 */	blr 
