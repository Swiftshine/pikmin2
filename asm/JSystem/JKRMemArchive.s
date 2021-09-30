.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
__ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection:
/* 80024644 00021584  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80024648 00021588  7C 08 02 A6 */	mflr r0
/* 8002464C 0002158C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80024650 00021590  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80024654 00021594  7C BF 2B 78 */	mr r31, r5
/* 80024658 00021598  38 A0 00 01 */	li r5, 1
/* 8002465C 0002159C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80024660 000215A0  7C 9E 23 78 */	mr r30, r4
/* 80024664 000215A4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80024668 000215A8  7C 7D 1B 78 */	mr r29, r3
/* 8002466C 000215AC  4B FF 5E 51 */	bl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
/* 80024670 000215B0  3C 60 80 4A */	lis r3, __vt__13JKRMemArchive@ha
/* 80024674 000215B4  38 00 00 00 */	li r0, 0
/* 80024678 000215B8  38 83 FF 60 */	addi r4, r3, __vt__13JKRMemArchive@l
/* 8002467C 000215BC  7F A3 EB 78 */	mr r3, r29
/* 80024680 000215C0  90 9D 00 00 */	stw r4, 0(r29)
/* 80024684 000215C4  7F C4 F3 78 */	mr r4, r30
/* 80024688 000215C8  98 1D 00 30 */	stb r0, 0x30(r29)
/* 8002468C 000215CC  93 FD 00 60 */	stw r31, 0x60(r29)
/* 80024690 000215D0  80 BD 00 60 */	lwz r5, 0x60(r29)
/* 80024694 000215D4  48 00 01 DD */	bl open__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
/* 80024698 000215D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8002469C 000215DC  40 82 00 0C */	bne lbl_800246A8
/* 800246A0 000215E0  7F A3 EB 78 */	mr r3, r29
/* 800246A4 000215E4  48 00 00 40 */	b lbl_800246E4
lbl_800246A8:
/* 800246A8 000215E8  3C 80 52 41 */	lis r4, 0x52415243@ha
/* 800246AC 000215EC  3C 60 80 50 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 800246B0 000215F0  38 04 52 43 */	addi r0, r4, 0x52415243@l
/* 800246B4 000215F4  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 800246B8 000215F8  38 9D 00 18 */	addi r4, r29, 0x18
/* 800246BC 000215FC  38 63 6E 24 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 800246C0 00021600  80 BD 00 48 */	lwz r5, 0x48(r29)
/* 800246C4 00021604  80 DD 00 54 */	lwz r6, 0x54(r29)
/* 800246C8 00021608  80 05 00 04 */	lwz r0, 4(r5)
/* 800246CC 0002160C  7C 06 02 14 */	add r0, r6, r0
/* 800246D0 00021610  90 1D 00 28 */	stw r0, 0x28(r29)
/* 800246D4 00021614  48 00 22 C9 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 800246D8 00021618  38 00 00 01 */	li r0, 1
/* 800246DC 0002161C  7F A3 EB 78 */	mr r3, r29
/* 800246E0 00021620  98 1D 00 30 */	stb r0, 0x30(r29)
lbl_800246E4:
/* 800246E4 00021624  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800246E8 00021628  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800246EC 0002162C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800246F0 00021630  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800246F4 00021634  7C 08 03 A6 */	mtlr r0
/* 800246F8 00021638  38 21 00 20 */	addi r1, r1, 0x20
/* 800246FC 0002163C  4E 80 00 20 */	blr 

.global __ct__13JKRMemArchiveFPvUl15JKRMemBreakFlag
__ct__13JKRMemArchiveFPvUl15JKRMemBreakFlag:
/* 80024700 00021640  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80024704 00021644  7C 08 02 A6 */	mflr r0
/* 80024708 00021648  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002470C 0002164C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80024710 00021650  7C DF 33 78 */	mr r31, r6
/* 80024714 00021654  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80024718 00021658  7C BE 2B 78 */	mr r30, r5
/* 8002471C 0002165C  38 A0 00 01 */	li r5, 1
/* 80024720 00021660  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80024724 00021664  7C 9D 23 78 */	mr r29, r4
/* 80024728 00021668  93 81 00 10 */	stw r28, 0x10(r1)
/* 8002472C 0002166C  7C 7C 1B 78 */	mr r28, r3
/* 80024730 00021670  4B FF 5D 8D */	bl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
/* 80024734 00021674  3C 60 80 4A */	lis r3, __vt__13JKRMemArchive@ha
/* 80024738 00021678  38 00 00 00 */	li r0, 0
/* 8002473C 0002167C  38 83 FF 60 */	addi r4, r3, __vt__13JKRMemArchive@l
/* 80024740 00021680  7F 83 E3 78 */	mr r3, r28
/* 80024744 00021684  90 9C 00 00 */	stw r4, 0(r28)
/* 80024748 00021688  7F A4 EB 78 */	mr r4, r29
/* 8002474C 0002168C  7F C5 F3 78 */	mr r5, r30
/* 80024750 00021690  7F E6 FB 78 */	mr r6, r31
/* 80024754 00021694  98 1C 00 30 */	stb r0, 0x30(r28)
/* 80024758 00021698  48 00 02 81 */	bl open__13JKRMemArchiveFPvUl15JKRMemBreakFlag
/* 8002475C 0002169C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80024760 000216A0  40 82 00 0C */	bne lbl_8002476C
/* 80024764 000216A4  7F 83 E3 78 */	mr r3, r28
/* 80024768 000216A8  48 00 00 40 */	b lbl_800247A8
lbl_8002476C:
/* 8002476C 000216AC  3C 80 52 41 */	lis r4, 0x52415243@ha
/* 80024770 000216B0  3C 60 80 50 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 80024774 000216B4  38 04 52 43 */	addi r0, r4, 0x52415243@l
/* 80024778 000216B8  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 8002477C 000216BC  38 9C 00 18 */	addi r4, r28, 0x18
/* 80024780 000216C0  38 63 6E 24 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 80024784 000216C4  80 BC 00 48 */	lwz r5, 0x48(r28)
/* 80024788 000216C8  80 DC 00 54 */	lwz r6, 0x54(r28)
/* 8002478C 000216CC  80 05 00 04 */	lwz r0, 4(r5)
/* 80024790 000216D0  7C 06 02 14 */	add r0, r6, r0
/* 80024794 000216D4  90 1C 00 28 */	stw r0, 0x28(r28)
/* 80024798 000216D8  48 00 22 05 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 8002479C 000216DC  38 00 00 01 */	li r0, 1
/* 800247A0 000216E0  7F 83 E3 78 */	mr r3, r28
/* 800247A4 000216E4  98 1C 00 30 */	stb r0, 0x30(r28)
lbl_800247A8:
/* 800247A8 000216E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800247AC 000216EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800247B0 000216F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800247B4 000216F4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800247B8 000216F8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800247BC 000216FC  7C 08 03 A6 */	mtlr r0
/* 800247C0 00021700  38 21 00 20 */	addi r1, r1, 0x20
/* 800247C4 00021704  4E 80 00 20 */	blr 

.global __dt__13JKRMemArchiveFv
__dt__13JKRMemArchiveFv:
/* 800247C8 00021708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800247CC 0002170C  7C 08 02 A6 */	mflr r0
/* 800247D0 00021710  90 01 00 14 */	stw r0, 0x14(r1)
/* 800247D4 00021714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800247D8 00021718  7C 9F 23 78 */	mr r31, r4
/* 800247DC 0002171C  93 C1 00 08 */	stw r30, 8(r1)
/* 800247E0 00021720  7C 7E 1B 79 */	or. r30, r3, r3
/* 800247E4 00021724  41 82 00 70 */	beq lbl_80024854
/* 800247E8 00021728  3C 60 80 4A */	lis r3, __vt__13JKRMemArchive@ha
/* 800247EC 0002172C  38 03 FF 60 */	addi r0, r3, __vt__13JKRMemArchive@l
/* 800247F0 00021730  90 1E 00 00 */	stw r0, 0(r30)
/* 800247F4 00021734  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 800247F8 00021738  28 00 00 01 */	cmplwi r0, 1
/* 800247FC 0002173C  40 82 00 3C */	bne lbl_80024838
/* 80024800 00021740  88 1E 00 6C */	lbz r0, 0x6c(r30)
/* 80024804 00021744  28 00 00 00 */	cmplwi r0, 0
/* 80024808 00021748  41 82 00 18 */	beq lbl_80024820
/* 8002480C 0002174C  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80024810 00021750  28 03 00 00 */	cmplwi r3, 0
/* 80024814 00021754  41 82 00 0C */	beq lbl_80024820
/* 80024818 00021758  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 8002481C 0002175C  4B FF EE 51 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_80024820:
/* 80024820 00021760  3C 60 80 50 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 80024824 00021764  38 9E 00 18 */	addi r4, r30, 0x18
/* 80024828 00021768  38 63 6E 24 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 8002482C 0002176C  48 00 23 F9 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 80024830 00021770  38 00 00 00 */	li r0, 0
/* 80024834 00021774  98 1E 00 30 */	stb r0, 0x30(r30)
lbl_80024838:
/* 80024838 00021778  7F C3 F3 78 */	mr r3, r30
/* 8002483C 0002177C  38 80 00 00 */	li r4, 0
/* 80024840 00021780  4B FF 5D 25 */	bl __dt__10JKRArchiveFv
/* 80024844 00021784  7F E0 07 35 */	extsh. r0, r31
/* 80024848 00021788  40 81 00 0C */	ble lbl_80024854
/* 8002484C 0002178C  7F C3 F3 78 */	mr r3, r30
/* 80024850 00021790  4B FF F8 65 */	bl __dl__FPv
lbl_80024854:
/* 80024854 00021794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024858 00021798  7F C3 F3 78 */	mr r3, r30
/* 8002485C 0002179C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80024860 000217A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80024864 000217A4  7C 08 03 A6 */	mtlr r0
/* 80024868 000217A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8002486C 000217AC  4E 80 00 20 */	blr 

.global open__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
open__13JKRMemArchiveFlQ210JKRArchive15EMountDirection:
/* 80024870 000217B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80024874 000217B4  7C 08 02 A6 */	mflr r0
/* 80024878 000217B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002487C 000217BC  38 00 00 00 */	li r0, 0
/* 80024880 000217C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80024884 000217C4  7C 7F 1B 78 */	mr r31, r3
/* 80024888 000217C8  90 03 00 64 */	stw r0, 0x64(r3)
/* 8002488C 000217CC  90 03 00 44 */	stw r0, 0x44(r3)
/* 80024890 000217D0  90 03 00 68 */	stw r0, 0x68(r3)
/* 80024894 000217D4  90 03 00 48 */	stw r0, 0x48(r3)
/* 80024898 000217D8  90 03 00 4C */	stw r0, 0x4c(r3)
/* 8002489C 000217DC  90 03 00 54 */	stw r0, 0x54(r3)
/* 800248A0 000217E0  98 03 00 6C */	stb r0, 0x6c(r3)
/* 800248A4 000217E4  90 A3 00 60 */	stw r5, 0x60(r3)
/* 800248A8 000217E8  80 03 00 60 */	lwz r0, 0x60(r3)
/* 800248AC 000217EC  2C 00 00 01 */	cmpwi r0, 1
/* 800248B0 000217F0  40 82 00 4C */	bne lbl_800248FC
/* 800248B4 000217F4  38 01 00 14 */	addi r0, r1, 0x14
/* 800248B8 000217F8  7C 83 23 78 */	mr r3, r4
/* 800248BC 000217FC  90 01 00 08 */	stw r0, 8(r1)
/* 800248C0 00021800  39 5F 00 5C */	addi r10, r31, 0x5c
/* 800248C4 00021804  38 80 00 00 */	li r4, 0
/* 800248C8 00021808  38 A0 00 01 */	li r5, 1
/* 800248CC 0002180C  80 FF 00 38 */	lwz r7, 0x38(r31)
/* 800248D0 00021810  38 C0 00 00 */	li r6, 0
/* 800248D4 00021814  39 00 00 01 */	li r8, 1
/* 800248D8 00021818  39 20 00 00 */	li r9, 0
/* 800248DC 0002181C  4B FF A9 61 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 800248E0 00021820  90 7F 00 64 */	stw r3, 0x64(r31)
/* 800248E4 00021824  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 800248E8 00021828  28 03 00 00 */	cmplwi r3, 0
/* 800248EC 0002182C  41 82 00 54 */	beq lbl_80024940
/* 800248F0 00021830  80 81 00 14 */	lwz r4, 0x14(r1)
/* 800248F4 00021834  48 0C 7D F9 */	bl DCInvalidateRange
/* 800248F8 00021838  48 00 00 48 */	b lbl_80024940
lbl_800248FC:
/* 800248FC 0002183C  38 01 00 10 */	addi r0, r1, 0x10
/* 80024900 00021840  7C 83 23 78 */	mr r3, r4
/* 80024904 00021844  90 01 00 08 */	stw r0, 8(r1)
/* 80024908 00021848  39 5F 00 5C */	addi r10, r31, 0x5c
/* 8002490C 0002184C  38 80 00 00 */	li r4, 0
/* 80024910 00021850  38 A0 00 01 */	li r5, 1
/* 80024914 00021854  80 FF 00 38 */	lwz r7, 0x38(r31)
/* 80024918 00021858  38 C0 00 00 */	li r6, 0
/* 8002491C 0002185C  39 00 00 02 */	li r8, 2
/* 80024920 00021860  39 20 00 00 */	li r9, 0
/* 80024924 00021864  4B FF A9 19 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 80024928 00021868  90 7F 00 64 */	stw r3, 0x64(r31)
/* 8002492C 0002186C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80024930 00021870  28 03 00 00 */	cmplwi r3, 0
/* 80024934 00021874  41 82 00 0C */	beq lbl_80024940
/* 80024938 00021878  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8002493C 0002187C  48 0C 7D B1 */	bl DCInvalidateRange
lbl_80024940:
/* 80024940 00021880  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 80024944 00021884  28 04 00 00 */	cmplwi r4, 0
/* 80024948 00021888  40 82 00 10 */	bne lbl_80024958
/* 8002494C 0002188C  38 00 00 00 */	li r0, 0
/* 80024950 00021890  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 80024954 00021894  48 00 00 60 */	b lbl_800249B4
lbl_80024958:
/* 80024958 00021898  80 64 00 08 */	lwz r3, 8(r4)
/* 8002495C 0002189C  38 00 00 01 */	li r0, 1
/* 80024960 000218A0  7C 64 1A 14 */	add r3, r4, r3
/* 80024964 000218A4  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80024968 000218A8  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 8002496C 000218AC  80 64 00 04 */	lwz r3, 4(r4)
/* 80024970 000218B0  7C 64 1A 14 */	add r3, r4, r3
/* 80024974 000218B4  90 7F 00 48 */	stw r3, 0x48(r31)
/* 80024978 000218B8  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 8002497C 000218BC  80 64 00 0C */	lwz r3, 0xc(r4)
/* 80024980 000218C0  7C 64 1A 14 */	add r3, r4, r3
/* 80024984 000218C4  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 80024988 000218C8  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 8002498C 000218CC  80 64 00 14 */	lwz r3, 0x14(r4)
/* 80024990 000218D0  7C 64 1A 14 */	add r3, r4, r3
/* 80024994 000218D4  90 7F 00 54 */	stw r3, 0x54(r31)
/* 80024998 000218D8  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 8002499C 000218DC  80 85 00 0C */	lwz r4, 0xc(r5)
/* 800249A0 000218E0  80 65 00 08 */	lwz r3, 8(r5)
/* 800249A4 000218E4  7C 63 22 14 */	add r3, r3, r4
/* 800249A8 000218E8  7C 65 1A 14 */	add r3, r5, r3
/* 800249AC 000218EC  90 7F 00 68 */	stw r3, 0x68(r31)
/* 800249B0 000218F0  98 1F 00 6C */	stb r0, 0x6c(r31)
lbl_800249B4:
/* 800249B4 000218F4  88 7F 00 3C */	lbz r3, 0x3c(r31)
/* 800249B8 000218F8  7C 03 00 D0 */	neg r0, r3
/* 800249BC 000218FC  7C 00 1B 78 */	or r0, r0, r3
/* 800249C0 00021900  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800249C4 00021904  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800249C8 00021908  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800249CC 0002190C  7C 08 03 A6 */	mtlr r0
/* 800249D0 00021910  38 21 00 20 */	addi r1, r1, 0x20
/* 800249D4 00021914  4E 80 00 20 */	blr 

.global open__13JKRMemArchiveFPvUl15JKRMemBreakFlag
open__13JKRMemArchiveFPvUl15JKRMemBreakFlag:
/* 800249D8 00021918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800249DC 0002191C  7C 08 02 A6 */	mflr r0
/* 800249E0 00021920  90 01 00 14 */	stw r0, 0x14(r1)
/* 800249E4 00021924  20 06 00 01 */	subfic r0, r6, 1
/* 800249E8 00021928  7C 00 00 34 */	cntlzw r0, r0
/* 800249EC 0002192C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800249F0 00021930  7C 7F 1B 78 */	mr r31, r3
/* 800249F4 00021934  54 00 D9 7E */	srwi r0, r0, 5
/* 800249F8 00021938  90 83 00 64 */	stw r4, 0x64(r3)
/* 800249FC 0002193C  7C 83 23 78 */	mr r3, r4
/* 80024A00 00021940  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 80024A04 00021944  80 85 00 08 */	lwz r4, 8(r5)
/* 80024A08 00021948  7C 85 22 14 */	add r4, r5, r4
/* 80024A0C 0002194C  90 9F 00 44 */	stw r4, 0x44(r31)
/* 80024A10 00021950  80 BF 00 44 */	lwz r5, 0x44(r31)
/* 80024A14 00021954  80 85 00 04 */	lwz r4, 4(r5)
/* 80024A18 00021958  7C 85 22 14 */	add r4, r5, r4
/* 80024A1C 0002195C  90 9F 00 48 */	stw r4, 0x48(r31)
/* 80024A20 00021960  80 BF 00 44 */	lwz r5, 0x44(r31)
/* 80024A24 00021964  80 85 00 0C */	lwz r4, 0xc(r5)
/* 80024A28 00021968  7C 85 22 14 */	add r4, r5, r4
/* 80024A2C 0002196C  90 9F 00 4C */	stw r4, 0x4c(r31)
/* 80024A30 00021970  80 BF 00 44 */	lwz r5, 0x44(r31)
/* 80024A34 00021974  80 85 00 14 */	lwz r4, 0x14(r5)
/* 80024A38 00021978  7C 85 22 14 */	add r4, r5, r4
/* 80024A3C 0002197C  90 9F 00 54 */	stw r4, 0x54(r31)
/* 80024A40 00021980  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 80024A44 00021984  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 80024A48 00021988  80 86 00 08 */	lwz r4, 8(r6)
/* 80024A4C 0002198C  7C 84 2A 14 */	add r4, r4, r5
/* 80024A50 00021990  7C 86 22 14 */	add r4, r6, r4
/* 80024A54 00021994  90 9F 00 68 */	stw r4, 0x68(r31)
/* 80024A58 00021998  98 1F 00 6C */	stb r0, 0x6c(r31)
/* 80024A5C 0002199C  4B FF EE 99 */	bl findFromRoot__7JKRHeapFPv
/* 80024A60 000219A0  90 7F 00 38 */	stw r3, 0x38(r31)
/* 80024A64 000219A4  38 00 00 00 */	li r0, 0
/* 80024A68 000219A8  38 60 00 01 */	li r3, 1
/* 80024A6C 000219AC  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 80024A70 000219B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80024A74 000219B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024A78 000219B8  7C 08 03 A6 */	mtlr r0
/* 80024A7C 000219BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80024A80 000219C0  4E 80 00 20 */	blr 

.global fetchResource__13JKRMemArchiveFPQ210JKRArchive12SDIFileEntryPUl
fetchResource__13JKRMemArchiveFPQ210JKRArchive12SDIFileEntryPUl:
/* 80024A84 000219C4  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80024A88 000219C8  28 00 00 00 */	cmplwi r0, 0
/* 80024A8C 000219CC  40 82 00 14 */	bne lbl_80024AA0
/* 80024A90 000219D0  80 63 00 68 */	lwz r3, 0x68(r3)
/* 80024A94 000219D4  80 04 00 08 */	lwz r0, 8(r4)
/* 80024A98 000219D8  7C 03 02 14 */	add r0, r3, r0
/* 80024A9C 000219DC  90 04 00 10 */	stw r0, 0x10(r4)
lbl_80024AA0:
/* 80024AA0 000219E0  28 05 00 00 */	cmplwi r5, 0
/* 80024AA4 000219E4  41 82 00 0C */	beq lbl_80024AB0
/* 80024AA8 000219E8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80024AAC 000219EC  90 05 00 00 */	stw r0, 0(r5)
lbl_80024AB0:
/* 80024AB0 000219F0  80 64 00 10 */	lwz r3, 0x10(r4)
/* 80024AB4 000219F4  4E 80 00 20 */	blr 

.global fetchResource__13JKRMemArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl
fetchResource__13JKRMemArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl:
/* 80024AB8 000219F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80024ABC 000219FC  7C 08 02 A6 */	mflr r0
/* 80024AC0 00021A00  7C A8 2B 78 */	mr r8, r5
/* 80024AC4 00021A04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80024AC8 00021A08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80024ACC 00021A0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80024AD0 00021A10  7C FE 3B 78 */	mr r30, r7
/* 80024AD4 00021A14  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80024AD8 00021A18  7C 9D 23 78 */	mr r29, r4
/* 80024ADC 00021A1C  83 E6 00 0C */	lwz r31, 0xc(r6)
/* 80024AE0 00021A20  7C 1F 40 40 */	cmplw r31, r8
/* 80024AE4 00021A24  40 81 00 08 */	ble lbl_80024AEC
/* 80024AE8 00021A28  7D 1F 43 78 */	mr r31, r8
lbl_80024AEC:
/* 80024AEC 00021A2C  80 86 00 10 */	lwz r4, 0x10(r6)
/* 80024AF0 00021A30  28 04 00 00 */	cmplwi r4, 0
/* 80024AF4 00021A34  41 82 00 14 */	beq lbl_80024B08
/* 80024AF8 00021A38  7F A3 EB 78 */	mr r3, r29
/* 80024AFC 00021A3C  7F E5 FB 78 */	mr r5, r31
/* 80024B00 00021A40  4B FE 06 9D */	bl memcpy
/* 80024B04 00021A44  48 00 00 50 */	b lbl_80024B54
lbl_80024B08:
/* 80024B08 00021A48  80 86 00 04 */	lwz r4, 4(r6)
/* 80024B0C 00021A4C  54 80 47 7B */	rlwinm. r0, r4, 8, 0x1d, 0x1d
/* 80024B10 00021A50  54 84 46 3E */	srwi r4, r4, 0x18
/* 80024B14 00021A54  40 82 00 0C */	bne lbl_80024B20
/* 80024B18 00021A58  38 E0 00 00 */	li r7, 0
/* 80024B1C 00021A5C  48 00 00 18 */	b lbl_80024B34
lbl_80024B20:
/* 80024B20 00021A60  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 80024B24 00021A64  41 82 00 0C */	beq lbl_80024B30
/* 80024B28 00021A68  38 E0 00 02 */	li r7, 2
/* 80024B2C 00021A6C  48 00 00 08 */	b lbl_80024B34
lbl_80024B30:
/* 80024B30 00021A70  38 E0 00 01 */	li r7, 1
lbl_80024B34:
/* 80024B34 00021A74  80 06 00 08 */	lwz r0, 8(r6)
/* 80024B38 00021A78  7F E4 FB 78 */	mr r4, r31
/* 80024B3C 00021A7C  80 63 00 68 */	lwz r3, 0x68(r3)
/* 80024B40 00021A80  7F A5 EB 78 */	mr r5, r29
/* 80024B44 00021A84  7D 06 43 78 */	mr r6, r8
/* 80024B48 00021A88  7C 63 02 14 */	add r3, r3, r0
/* 80024B4C 00021A8C  48 00 00 C1 */	bl fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli
/* 80024B50 00021A90  7C 7F 1B 78 */	mr r31, r3
lbl_80024B54:
/* 80024B54 00021A94  28 1E 00 00 */	cmplwi r30, 0
/* 80024B58 00021A98  41 82 00 08 */	beq lbl_80024B60
/* 80024B5C 00021A9C  93 FE 00 00 */	stw r31, 0(r30)
lbl_80024B60:
/* 80024B60 00021AA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80024B64 00021AA4  7F A3 EB 78 */	mr r3, r29
/* 80024B68 00021AA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80024B6C 00021AAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80024B70 00021AB0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80024B74 00021AB4  7C 08 03 A6 */	mtlr r0
/* 80024B78 00021AB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80024B7C 00021ABC  4E 80 00 20 */	blr 

.global removeResourceAll__13JKRMemArchiveFv
removeResourceAll__13JKRMemArchiveFv:
/* 80024B80 00021AC0  80 03 00 44 */	lwz r0, 0x44(r3)
/* 80024B84 00021AC4  28 00 00 00 */	cmplwi r0, 0
/* 80024B88 00021AC8  4D 82 00 20 */	beqlr 
/* 80024B8C 00021ACC  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 80024B90 00021AD0  28 00 00 01 */	cmplwi r0, 1
/* 80024B94 00021AD4  4D 82 00 20 */	beqlr 
/* 80024B98 00021AD8  80 C3 00 4C */	lwz r6, 0x4c(r3)
/* 80024B9C 00021ADC  38 E0 00 00 */	li r7, 0
/* 80024BA0 00021AE0  38 A0 00 00 */	li r5, 0
/* 80024BA4 00021AE4  48 00 00 18 */	b lbl_80024BBC
lbl_80024BA8:
/* 80024BA8 00021AE8  80 06 00 10 */	lwz r0, 0x10(r6)
/* 80024BAC 00021AEC  28 00 00 00 */	cmplwi r0, 0
/* 80024BB0 00021AF0  41 82 00 08 */	beq lbl_80024BB8
/* 80024BB4 00021AF4  90 A6 00 10 */	stw r5, 0x10(r6)
lbl_80024BB8:
/* 80024BB8 00021AF8  38 E7 00 01 */	addi r7, r7, 1
lbl_80024BBC:
/* 80024BBC 00021AFC  80 83 00 44 */	lwz r4, 0x44(r3)
/* 80024BC0 00021B00  80 04 00 08 */	lwz r0, 8(r4)
/* 80024BC4 00021B04  7C 07 00 40 */	cmplw r7, r0
/* 80024BC8 00021B08  41 80 FF E0 */	blt lbl_80024BA8
/* 80024BCC 00021B0C  4E 80 00 20 */	blr 

.global removeResource__13JKRMemArchiveFPv
removeResource__13JKRMemArchiveFPv:
/* 80024BD0 00021B10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024BD4 00021B14  7C 08 02 A6 */	mflr r0
/* 80024BD8 00021B18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024BDC 00021B1C  4B FF 62 A5 */	bl findPtrResource__10JKRArchiveCFPCv
/* 80024BE0 00021B20  28 03 00 00 */	cmplwi r3, 0
/* 80024BE4 00021B24  40 82 00 0C */	bne lbl_80024BF0
/* 80024BE8 00021B28  38 60 00 00 */	li r3, 0
/* 80024BEC 00021B2C  48 00 00 10 */	b lbl_80024BFC
lbl_80024BF0:
/* 80024BF0 00021B30  38 00 00 00 */	li r0, 0
/* 80024BF4 00021B34  90 03 00 10 */	stw r0, 0x10(r3)
/* 80024BF8 00021B38  38 60 00 01 */	li r3, 1
lbl_80024BFC:
/* 80024BFC 00021B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024C00 00021B40  7C 08 03 A6 */	mtlr r0
/* 80024C04 00021B44  38 21 00 10 */	addi r1, r1, 0x10
/* 80024C08 00021B48  4E 80 00 20 */	blr 

.global fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli
fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli:
/* 80024C0C 00021B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024C10 00021B50  7C 08 02 A6 */	mflr r0
/* 80024C14 00021B54  2C 07 00 00 */	cmpwi r7, 0
/* 80024C18 00021B58  7C 68 1B 78 */	mr r8, r3
/* 80024C1C 00021B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024C20 00021B60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80024C24 00021B64  7C 9F 23 78 */	mr r31, r4
/* 80024C28 00021B68  41 82 00 14 */	beq lbl_80024C3C
/* 80024C2C 00021B6C  41 80 00 80 */	blt lbl_80024CAC
/* 80024C30 00021B70  2C 07 00 03 */	cmpwi r7, 3
/* 80024C34 00021B74  40 80 00 78 */	bge lbl_80024CAC
/* 80024C38 00021B78  48 00 00 28 */	b lbl_80024C60
lbl_80024C3C:
/* 80024C3C 00021B7C  7C 1F 30 40 */	cmplw r31, r6
/* 80024C40 00021B80  40 81 00 08 */	ble lbl_80024C48
/* 80024C44 00021B84  7C DF 33 78 */	mr r31, r6
lbl_80024C48:
/* 80024C48 00021B88  7C A3 2B 78 */	mr r3, r5
/* 80024C4C 00021B8C  7D 04 43 78 */	mr r4, r8
/* 80024C50 00021B90  7F E5 FB 78 */	mr r5, r31
/* 80024C54 00021B94  4B FE 05 49 */	bl memcpy
/* 80024C58 00021B98  7F E3 FB 78 */	mr r3, r31
/* 80024C5C 00021B9C  48 00 00 70 */	b lbl_80024CCC
lbl_80024C60:
/* 80024C60 00021BA0  88 08 00 05 */	lbz r0, 5(r8)
/* 80024C64 00021BA4  88 68 00 04 */	lbz r3, 4(r8)
/* 80024C68 00021BA8  54 00 80 1E */	slwi r0, r0, 0x10
/* 80024C6C 00021BAC  88 88 00 06 */	lbz r4, 6(r8)
/* 80024C70 00021BB0  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 80024C74 00021BB4  88 E8 00 07 */	lbz r7, 7(r8)
/* 80024C78 00021BB8  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 80024C7C 00021BBC  7C E0 03 78 */	or r0, r7, r0
/* 80024C80 00021BC0  7C 00 30 40 */	cmplw r0, r6
/* 80024C84 00021BC4  7C 1F 03 78 */	mr r31, r0
/* 80024C88 00021BC8  40 81 00 08 */	ble lbl_80024C90
/* 80024C8C 00021BCC  7C DF 33 78 */	mr r31, r6
lbl_80024C90:
/* 80024C90 00021BD0  7D 03 43 78 */	mr r3, r8
/* 80024C94 00021BD4  7C A4 2B 78 */	mr r4, r5
/* 80024C98 00021BD8  7F E5 FB 78 */	mr r5, r31
/* 80024C9C 00021BDC  38 C0 00 00 */	li r6, 0
/* 80024CA0 00021BE0  4B FF 7E 9D */	bl orderSync__9JKRDecompFPUcPUcUlUl
/* 80024CA4 00021BE4  7F E3 FB 78 */	mr r3, r31
/* 80024CA8 00021BE8  48 00 00 24 */	b lbl_80024CCC
lbl_80024CAC:
/* 80024CAC 00021BEC  3C 60 80 47 */	lis r3, lbl_80473A78@ha
/* 80024CB0 00021BF0  3C A0 80 47 */	lis r5, lbl_80473A8C@ha
/* 80024CB4 00021BF4  38 63 3A 78 */	addi r3, r3, lbl_80473A78@l
/* 80024CB8 00021BF8  38 80 02 D3 */	li r4, 0x2d3
/* 80024CBC 00021BFC  38 A5 3A 8C */	addi r5, r5, lbl_80473A8C@l
/* 80024CC0 00021C00  4C C6 31 82 */	crclr 6
/* 80024CC4 00021C04  48 0C 8A A9 */	bl OSPanic
/* 80024CC8 00021C08  38 60 00 00 */	li r3, 0
lbl_80024CCC:
/* 80024CCC 00021C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024CD0 00021C10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80024CD4 00021C14  7C 08 03 A6 */	mtlr r0
/* 80024CD8 00021C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80024CDC 00021C1C  4E 80 00 20 */	blr 

.global getExpandedResSize__13JKRMemArchiveCFPCv
getExpandedResSize__13JKRMemArchiveCFPCv:
/* 80024CE0 00021C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024CE4 00021C24  7C 08 02 A6 */	mflr r0
/* 80024CE8 00021C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024CEC 00021C2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80024CF0 00021C30  7C 9F 23 78 */	mr r31, r4
/* 80024CF4 00021C34  93 C1 00 08 */	stw r30, 8(r1)
/* 80024CF8 00021C38  7C 7E 1B 78 */	mr r30, r3
/* 80024CFC 00021C3C  4B FF 61 85 */	bl findPtrResource__10JKRArchiveCFPCv
/* 80024D00 00021C40  28 03 00 00 */	cmplwi r3, 0
/* 80024D04 00021C44  40 82 00 0C */	bne lbl_80024D10
/* 80024D08 00021C48  38 60 FF FF */	li r3, -1
/* 80024D0C 00021C4C  48 00 00 4C */	b lbl_80024D58
lbl_80024D10:
/* 80024D10 00021C50  80 03 00 04 */	lwz r0, 4(r3)
/* 80024D14 00021C54  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 80024D18 00021C58  40 82 00 20 */	bne lbl_80024D38
/* 80024D1C 00021C5C  7F C3 F3 78 */	mr r3, r30
/* 80024D20 00021C60  7F E4 FB 78 */	mr r4, r31
/* 80024D24 00021C64  81 9E 00 00 */	lwz r12, 0(r30)
/* 80024D28 00021C68  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80024D2C 00021C6C  7D 89 03 A6 */	mtctr r12
/* 80024D30 00021C70  4E 80 04 21 */	bctrl 
/* 80024D34 00021C74  48 00 00 24 */	b lbl_80024D58
lbl_80024D38:
/* 80024D38 00021C78  88 1F 00 05 */	lbz r0, 5(r31)
/* 80024D3C 00021C7C  88 7F 00 04 */	lbz r3, 4(r31)
/* 80024D40 00021C80  54 00 80 1E */	slwi r0, r0, 0x10
/* 80024D44 00021C84  88 9F 00 06 */	lbz r4, 6(r31)
/* 80024D48 00021C88  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 80024D4C 00021C8C  88 BF 00 07 */	lbz r5, 7(r31)
/* 80024D50 00021C90  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 80024D54 00021C94  7C A3 03 78 */	or r3, r5, r0
lbl_80024D58:
/* 80024D58 00021C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024D5C 00021C9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80024D60 00021CA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80024D64 00021CA4  7C 08 03 A6 */	mtlr r0
/* 80024D68 00021CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80024D6C 00021CAC  4E 80 00 20 */	blr 
