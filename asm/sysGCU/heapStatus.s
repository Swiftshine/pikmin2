.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x4
.global lbl_80499EE8
lbl_80499EE8:
	.4byte 0x68656170
	.4byte 0x53746174
	.4byte 0x75732E63
	.4byte 0x70700000

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 0x8
.global lbl_80520598
lbl_80520598:
	.4byte 0x726F6F74
	.4byte 0x00000000
.global lbl_805205A0
lbl_805205A0:
	.4byte 0x45584954
	.4byte 0x0A000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__10HeapStatusFv
__ct__10HeapStatusFv:
/* 8042AFC4 00427F04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042AFC8 00427F08  7C 08 02 A6 */	mflr r0
/* 8042AFCC 00427F0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042AFD0 00427F10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042AFD4 00427F14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8042AFD8 00427F18  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8042AFDC 00427F1C  7C 7D 1B 78 */	mr r29, r3
/* 8042AFE0 00427F20  3B FD 00 04 */	addi r31, r29, 4
/* 8042AFE4 00427F24  7F BE EB 78 */	mr r30, r29
/* 8042AFE8 00427F28  7F E3 FB 78 */	mr r3, r31
/* 8042AFEC 00427F2C  4B BF B8 E5 */	bl initiate__10JSUPtrListFv
/* 8042AFF0 00427F30  7F A4 EB 78 */	mr r4, r29
/* 8042AFF4 00427F34  38 7F 00 0C */	addi r3, r31, 0xc
/* 8042AFF8 00427F38  4B BF B7 C1 */	bl __ct__10JSUPtrLinkFPv
/* 8042AFFC 00427F3C  38 02 22 38 */	addi r0, r2, lbl_80520598@sda21
/* 8042B000 00427F40  3C 60 80 4F */	lis r3, __vt__4Node@ha
/* 8042B004 00427F44  90 1D 00 00 */	stw r0, 0(r29)
/* 8042B008 00427F48  38 03 B5 38 */	addi r0, r3, __vt__4Node@l
/* 8042B00C 00427F4C  7F C3 F3 78 */	mr r3, r30
/* 8042B010 00427F50  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8042B014 00427F54  4B FE 61 F1 */	bl init__4NodeFv
/* 8042B018 00427F58  38 7D 00 24 */	addi r3, r29, 0x24
/* 8042B01C 00427F5C  4B BF 1F B1 */	bl __ct__11JKRDisposerFv
/* 8042B020 00427F60  3C 60 80 4F */	lis r3, __vt__8HeapInfo@ha
/* 8042B024 00427F64  38 80 00 00 */	li r4, 0
/* 8042B028 00427F68  38 63 BE 60 */	addi r3, r3, __vt__8HeapInfo@l
/* 8042B02C 00427F6C  38 00 FF FF */	li r0, -1
/* 8042B030 00427F70  90 7D 00 20 */	stw r3, 0x20(r29)
/* 8042B034 00427F74  38 A3 00 14 */	addi r5, r3, 0x14
/* 8042B038 00427F78  7F A3 EB 78 */	mr r3, r29
/* 8042B03C 00427F7C  90 BD 00 24 */	stw r5, 0x24(r29)
/* 8042B040 00427F80  90 9D 00 3C */	stw r4, 0x3c(r29)
/* 8042B044 00427F84  90 1D 00 40 */	stw r0, 0x40(r29)
/* 8042B048 00427F88  90 9D 00 44 */	stw r4, 0x44(r29)
/* 8042B04C 00427F8C  93 BD 00 48 */	stw r29, 0x48(r29)
/* 8042B050 00427F90  98 9D 00 50 */	stb r4, 0x50(r29)
/* 8042B054 00427F94  93 BD 00 4C */	stw r29, 0x4c(r29)
/* 8042B058 00427F98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042B05C 00427F9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8042B060 00427FA0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8042B064 00427FA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042B068 00427FA8  7C 08 03 A6 */	mtlr r0
/* 8042B06C 00427FAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8042B070 00427FB0  4E 80 00 20 */	blr 

.global __dt__8HeapInfoFv
__dt__8HeapInfoFv:
/* 8042B074 00427FB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042B078 00427FB8  7C 08 02 A6 */	mflr r0
/* 8042B07C 00427FBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042B080 00427FC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042B084 00427FC4  7C 9F 23 78 */	mr r31, r4
/* 8042B088 00427FC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8042B08C 00427FCC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8042B090 00427FD0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8042B094 00427FD4  93 81 00 10 */	stw r28, 0x10(r1)
/* 8042B098 00427FD8  41 82 01 58 */	beq lbl_8042B1F0
/* 8042B09C 00427FDC  3C 80 80 4F */	lis r4, __vt__8HeapInfo@ha
/* 8042B0A0 00427FE0  38 84 BE 60 */	addi r4, r4, __vt__8HeapInfo@l
/* 8042B0A4 00427FE4  90 9E 00 20 */	stw r4, 0x20(r30)
/* 8042B0A8 00427FE8  38 04 00 14 */	addi r0, r4, 0x14
/* 8042B0AC 00427FEC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8042B0B0 00427FF0  83 BE 00 48 */	lwz r29, 0x48(r30)
/* 8042B0B4 00427FF4  80 9D 00 4C */	lwz r4, 0x4c(r29)
/* 8042B0B8 00427FF8  7C 04 F0 40 */	cmplw r4, r30
/* 8042B0BC 00427FFC  40 82 00 54 */	bne lbl_8042B110
/* 8042B0C0 00428000  80 64 00 14 */	lwz r3, 0x14(r4)
/* 8042B0C4 00428004  28 03 00 00 */	cmplwi r3, 0
/* 8042B0C8 00428008  41 82 00 B0 */	beq lbl_8042B178
/* 8042B0CC 0042800C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8042B0D0 00428010  7F A3 EB 78 */	mr r3, r29
/* 8042B0D4 00428014  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 8042B0D8 00428018  83 9D 00 4C */	lwz r28, 0x4c(r29)
/* 8042B0DC 0042801C  7F 84 E3 78 */	mr r4, r28
/* 8042B0E0 00428020  48 00 01 AD */	bl search__8HeapInfoFP8HeapInfo
/* 8042B0E4 00428024  90 7D 00 4C */	stw r3, 0x4c(r29)
/* 8042B0E8 00428028  80 1D 00 4C */	lwz r0, 0x4c(r29)
/* 8042B0EC 0042802C  7C 1C 00 40 */	cmplw r28, r0
/* 8042B0F0 00428030  41 82 00 88 */	beq lbl_8042B178
/* 8042B0F4 00428034  3C 60 80 4A */	lis r3, lbl_80499EE8@ha
/* 8042B0F8 00428038  38 80 01 15 */	li r4, 0x115
/* 8042B0FC 0042803C  38 63 9E E8 */	addi r3, r3, lbl_80499EE8@l
/* 8042B100 00428040  38 A2 22 40 */	addi r5, r2, lbl_805205A0@sda21
/* 8042B104 00428044  4C C6 31 82 */	crclr 6
/* 8042B108 00428048  4B BF F5 39 */	bl panic_f__12JUTExceptionFPCciPCce
/* 8042B10C 0042804C  48 00 00 6C */	b lbl_8042B178
lbl_8042B110:
/* 8042B110 00428050  48 00 01 7D */	bl search__8HeapInfoFP8HeapInfo
/* 8042B114 00428054  28 03 00 00 */	cmplwi r3, 0
/* 8042B118 00428058  41 82 00 60 */	beq lbl_8042B178
/* 8042B11C 0042805C  80 7E 00 48 */	lwz r3, 0x48(r30)
/* 8042B120 00428060  93 C3 00 4C */	stw r30, 0x4c(r3)
/* 8042B124 00428064  83 BE 00 48 */	lwz r29, 0x48(r30)
/* 8042B128 00428068  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 8042B12C 0042806C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8042B130 00428070  28 03 00 00 */	cmplwi r3, 0
/* 8042B134 00428074  41 82 00 44 */	beq lbl_8042B178
/* 8042B138 00428078  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8042B13C 0042807C  7F A3 EB 78 */	mr r3, r29
/* 8042B140 00428080  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 8042B144 00428084  83 9D 00 4C */	lwz r28, 0x4c(r29)
/* 8042B148 00428088  7F 84 E3 78 */	mr r4, r28
/* 8042B14C 0042808C  48 00 01 41 */	bl search__8HeapInfoFP8HeapInfo
/* 8042B150 00428090  90 7D 00 4C */	stw r3, 0x4c(r29)
/* 8042B154 00428094  80 1D 00 4C */	lwz r0, 0x4c(r29)
/* 8042B158 00428098  7C 1C 00 40 */	cmplw r28, r0
/* 8042B15C 0042809C  41 82 00 1C */	beq lbl_8042B178
/* 8042B160 004280A0  3C 60 80 4A */	lis r3, lbl_80499EE8@ha
/* 8042B164 004280A4  38 80 01 15 */	li r4, 0x115
/* 8042B168 004280A8  38 63 9E E8 */	addi r3, r3, lbl_80499EE8@l
/* 8042B16C 004280AC  38 A2 22 40 */	addi r5, r2, lbl_805205A0@sda21
/* 8042B170 004280B0  4C C6 31 82 */	crclr 6
/* 8042B174 004280B4  4B BF F4 CD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8042B178:
/* 8042B178 004280B8  34 9E 00 04 */	addic. r4, r30, 4
/* 8042B17C 004280BC  41 82 00 08 */	beq lbl_8042B184
/* 8042B180 004280C0  38 84 00 0C */	addi r4, r4, 0xc
lbl_8042B184:
/* 8042B184 004280C4  38 7E 00 04 */	addi r3, r30, 4
/* 8042B188 004280C8  4B BF BA 9D */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8042B18C 004280CC  38 7E 00 24 */	addi r3, r30, 0x24
/* 8042B190 004280D0  38 80 00 00 */	li r4, 0
/* 8042B194 004280D4  4B BF 1E A1 */	bl __dt__11JKRDisposerFv
/* 8042B198 004280D8  28 1E 00 00 */	cmplwi r30, 0
/* 8042B19C 004280DC  41 82 00 44 */	beq lbl_8042B1E0
/* 8042B1A0 004280E0  3C 60 80 4F */	lis r3, __vt__4Node@ha
/* 8042B1A4 004280E4  38 03 B5 38 */	addi r0, r3, __vt__4Node@l
/* 8042B1A8 004280E8  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8042B1AC 004280EC  41 82 00 34 */	beq lbl_8042B1E0
/* 8042B1B0 004280F0  34 1E 00 04 */	addic. r0, r30, 4
/* 8042B1B4 004280F4  41 82 00 2C */	beq lbl_8042B1E0
/* 8042B1B8 004280F8  34 1E 00 10 */	addic. r0, r30, 0x10
/* 8042B1BC 004280FC  41 82 00 10 */	beq lbl_8042B1CC
/* 8042B1C0 00428100  38 7E 00 10 */	addi r3, r30, 0x10
/* 8042B1C4 00428104  38 80 00 00 */	li r4, 0
/* 8042B1C8 00428108  4B BF B6 09 */	bl __dt__10JSUPtrLinkFv
lbl_8042B1CC:
/* 8042B1CC 0042810C  34 1E 00 04 */	addic. r0, r30, 4
/* 8042B1D0 00428110  41 82 00 10 */	beq lbl_8042B1E0
/* 8042B1D4 00428114  38 7E 00 04 */	addi r3, r30, 4
/* 8042B1D8 00428118  38 80 00 00 */	li r4, 0
/* 8042B1DC 0042811C  4B BF B6 8D */	bl __dt__10JSUPtrListFv
lbl_8042B1E0:
/* 8042B1E0 00428120  7F E0 07 35 */	extsh. r0, r31
/* 8042B1E4 00428124  40 81 00 0C */	ble lbl_8042B1F0
/* 8042B1E8 00428128  7F C3 F3 78 */	mr r3, r30
/* 8042B1EC 0042812C  4B BF 8E C9 */	bl __dl__FPv
lbl_8042B1F0:
/* 8042B1F0 00428130  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042B1F4 00428134  7F C3 F3 78 */	mr r3, r30
/* 8042B1F8 00428138  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042B1FC 0042813C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8042B200 00428140  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8042B204 00428144  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8042B208 00428148  7C 08 03 A6 */	mtlr r0
/* 8042B20C 0042814C  38 21 00 20 */	addi r1, r1, 0x20
/* 8042B210 00428150  4E 80 00 20 */	blr 

.global "getNextChild__18JSUTree<8CoreNode>CFv"
"getNextChild__18JSUTree<8CoreNode>CFv":
/* 8042B214 00428154  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8042B218 00428158  28 03 00 00 */	cmplwi r3, 0
/* 8042B21C 0042815C  4D 82 00 20 */	beqlr 
/* 8042B220 00428160  38 63 FF F4 */	addi r3, r3, -12
/* 8042B224 00428164  4E 80 00 20 */	blr 

.global "__ne__26JSUTreeIterator<8CoreNode>CFPC18JSUTree<8CoreNode>"
"__ne__26JSUTreeIterator<8CoreNode>CFPC18JSUTree<8CoreNode>":
/* 8042B228 00428168  80 03 00 00 */	lwz r0, 0(r3)
/* 8042B22C 0042816C  7C 60 20 50 */	subf r3, r0, r4
/* 8042B230 00428170  7C 04 00 50 */	subf r0, r4, r0
/* 8042B234 00428174  7C 60 03 78 */	or r0, r3, r0
/* 8042B238 00428178  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8042B23C 0042817C  4E 80 00 20 */	blr 

.global "getEndChild__18JSUTree<8CoreNode>CFv"
"getEndChild__18JSUTree<8CoreNode>CFv":
/* 8042B240 00428180  38 60 00 00 */	li r3, 0
/* 8042B244 00428184  4E 80 00 20 */	blr 

.global "__pp__26JSUTreeIterator<8CoreNode>Fv"
"__pp__26JSUTreeIterator<8CoreNode>Fv":
/* 8042B248 00428188  80 83 00 00 */	lwz r4, 0(r3)
/* 8042B24C 0042818C  80 84 00 18 */	lwz r4, 0x18(r4)
/* 8042B250 00428190  28 04 00 00 */	cmplwi r4, 0
/* 8042B254 00428194  41 82 00 08 */	beq lbl_8042B25C
/* 8042B258 00428198  38 84 FF F4 */	addi r4, r4, -12
lbl_8042B25C:
/* 8042B25C 0042819C  90 83 00 00 */	stw r4, 0(r3)
/* 8042B260 004281A0  4E 80 00 20 */	blr 

.global "getObject__26JSUTreeIterator<8CoreNode>CFv"
"getObject__26JSUTreeIterator<8CoreNode>CFv":
/* 8042B264 004281A4  80 63 00 00 */	lwz r3, 0(r3)
/* 8042B268 004281A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8042B26C 004281AC  4E 80 00 20 */	blr 

.global "__ct__26JSUTreeIterator<8CoreNode>FP18JSUTree<8CoreNode>"
"__ct__26JSUTreeIterator<8CoreNode>FP18JSUTree<8CoreNode>":
/* 8042B270 004281B0  90 83 00 00 */	stw r4, 0(r3)
/* 8042B274 004281B4  4E 80 00 20 */	blr 

.global "getFirstChild__18JSUTree<8CoreNode>CFv"
"getFirstChild__18JSUTree<8CoreNode>CFv":
/* 8042B278 004281B8  80 63 00 00 */	lwz r3, 0(r3)
/* 8042B27C 004281BC  28 03 00 00 */	cmplwi r3, 0
/* 8042B280 004281C0  4D 82 00 20 */	beqlr 
/* 8042B284 004281C4  38 63 FF F4 */	addi r3, r3, -12
/* 8042B288 004281C8  4E 80 00 20 */	blr 

.global search__8HeapInfoFP8HeapInfo
search__8HeapInfoFP8HeapInfo:
/* 8042B28C 004281CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8042B290 004281D0  7C 08 02 A6 */	mflr r0
/* 8042B294 004281D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8042B298 004281D8  38 00 00 00 */	li r0, 0
/* 8042B29C 004281DC  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 8042B2A0 004281E0  7C 9F 23 78 */	mr r31, r4
/* 8042B2A4 004281E4  7C 1F 18 40 */	cmplw r31, r3
/* 8042B2A8 004281E8  40 82 00 0C */	bne lbl_8042B2B4
/* 8042B2AC 004281EC  7C 60 1B 78 */	mr r0, r3
/* 8042B2B0 004281F0  48 00 01 9C */	b lbl_8042B44C
lbl_8042B2B4:
/* 8042B2B4 004281F4  83 C3 00 04 */	lwz r30, 4(r3)
/* 8042B2B8 004281F8  28 1E 00 00 */	cmplwi r30, 0
/* 8042B2BC 004281FC  41 82 01 88 */	beq lbl_8042B444
/* 8042B2C0 00428200  3B DE FF F4 */	addi r30, r30, -12
/* 8042B2C4 00428204  48 00 01 80 */	b lbl_8042B444
lbl_8042B2C8:
/* 8042B2C8 00428208  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8042B2CC 0042820C  3B 80 00 00 */	li r28, 0
/* 8042B2D0 00428210  7C 1F 18 40 */	cmplw r31, r3
/* 8042B2D4 00428214  40 82 00 0C */	bne lbl_8042B2E0
/* 8042B2D8 00428218  7C 7C 1B 78 */	mr r28, r3
/* 8042B2DC 0042821C  48 00 01 4C */	b lbl_8042B428
lbl_8042B2E0:
/* 8042B2E0 00428220  83 A3 00 04 */	lwz r29, 4(r3)
/* 8042B2E4 00428224  28 1D 00 00 */	cmplwi r29, 0
/* 8042B2E8 00428228  41 82 01 38 */	beq lbl_8042B420
/* 8042B2EC 0042822C  3B BD FF F4 */	addi r29, r29, -12
/* 8042B2F0 00428230  48 00 01 30 */	b lbl_8042B420
lbl_8042B2F4:
/* 8042B2F4 00428234  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8042B2F8 00428238  3B 80 00 00 */	li r28, 0
/* 8042B2FC 0042823C  7C 1F 18 40 */	cmplw r31, r3
/* 8042B300 00428240  40 82 00 0C */	bne lbl_8042B30C
/* 8042B304 00428244  7C 7C 1B 78 */	mr r28, r3
/* 8042B308 00428248  48 00 01 00 */	b lbl_8042B408
lbl_8042B30C:
/* 8042B30C 0042824C  38 63 00 04 */	addi r3, r3, 4
/* 8042B310 00428250  4B BF 89 11 */	bl getFirstLink__10JSUPtrListCFv
/* 8042B314 00428254  28 03 00 00 */	cmplwi r3, 0
/* 8042B318 00428258  41 82 00 08 */	beq lbl_8042B320
/* 8042B31C 0042825C  38 63 FF F4 */	addi r3, r3, -12
lbl_8042B320:
/* 8042B320 00428260  7C 7B 1B 78 */	mr r27, r3
/* 8042B324 00428264  48 00 00 DC */	b lbl_8042B400
lbl_8042B328:
/* 8042B328 00428268  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8042B32C 0042826C  3B 80 00 00 */	li r28, 0
/* 8042B330 00428270  7C 1F 18 40 */	cmplw r31, r3
/* 8042B334 00428274  40 82 00 0C */	bne lbl_8042B340
/* 8042B338 00428278  7C 7C 1B 78 */	mr r28, r3
/* 8042B33C 0042827C  48 00 00 AC */	b lbl_8042B3E8
lbl_8042B340:
/* 8042B340 00428280  3B 23 00 04 */	addi r25, r3, 4
/* 8042B344 00428284  7F 23 CB 78 */	mr r3, r25
/* 8042B348 00428288  4B FF FF 31 */	bl "getFirstChild__18JSUTree<8CoreNode>CFv"
/* 8042B34C 0042828C  7C 7A 1B 78 */	mr r26, r3
/* 8042B350 00428290  48 00 00 88 */	b lbl_8042B3D8
lbl_8042B354:
/* 8042B354 00428294  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 8042B358 00428298  3B 80 00 00 */	li r28, 0
/* 8042B35C 0042829C  7C 1F 18 40 */	cmplw r31, r3
/* 8042B360 004282A0  40 82 00 0C */	bne lbl_8042B36C
/* 8042B364 004282A4  7C 7C 1B 78 */	mr r28, r3
/* 8042B368 004282A8  48 00 00 5C */	b lbl_8042B3C4
lbl_8042B36C:
/* 8042B36C 004282AC  3B 03 00 04 */	addi r24, r3, 4
/* 8042B370 004282B0  7F 03 C3 78 */	mr r3, r24
/* 8042B374 004282B4  4B FF FF 05 */	bl "getFirstChild__18JSUTree<8CoreNode>CFv"
/* 8042B378 004282B8  7C 64 1B 78 */	mr r4, r3
/* 8042B37C 004282BC  38 61 00 08 */	addi r3, r1, 8
/* 8042B380 004282C0  4B FF FE F1 */	bl "__ct__26JSUTreeIterator<8CoreNode>FP18JSUTree<8CoreNode>"
/* 8042B384 004282C4  48 00 00 24 */	b lbl_8042B3A8
lbl_8042B388:
/* 8042B388 004282C8  38 61 00 08 */	addi r3, r1, 8
/* 8042B38C 004282CC  4B FF FE D9 */	bl "getObject__26JSUTreeIterator<8CoreNode>CFv"
/* 8042B390 004282D0  7F E4 FB 78 */	mr r4, r31
/* 8042B394 004282D4  4B FF FE F9 */	bl search__8HeapInfoFP8HeapInfo
/* 8042B398 004282D8  7C 7C 1B 79 */	or. r28, r3, r3
/* 8042B39C 004282DC  40 82 00 28 */	bne lbl_8042B3C4
/* 8042B3A0 004282E0  38 61 00 08 */	addi r3, r1, 8
/* 8042B3A4 004282E4  4B FF FE A5 */	bl "__pp__26JSUTreeIterator<8CoreNode>Fv"
lbl_8042B3A8:
/* 8042B3A8 004282E8  7F 03 C3 78 */	mr r3, r24
/* 8042B3AC 004282EC  4B FF FE 95 */	bl "getEndChild__18JSUTree<8CoreNode>CFv"
/* 8042B3B0 004282F0  7C 64 1B 78 */	mr r4, r3
/* 8042B3B4 004282F4  38 61 00 08 */	addi r3, r1, 8
/* 8042B3B8 004282F8  4B FF FE 71 */	bl "__ne__26JSUTreeIterator<8CoreNode>CFPC18JSUTree<8CoreNode>"
/* 8042B3BC 004282FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8042B3C0 00428300  40 82 FF C8 */	bne lbl_8042B388
lbl_8042B3C4:
/* 8042B3C4 00428304  28 1C 00 00 */	cmplwi r28, 0
/* 8042B3C8 00428308  40 82 00 20 */	bne lbl_8042B3E8
/* 8042B3CC 0042830C  7F 43 D3 78 */	mr r3, r26
/* 8042B3D0 00428310  4B FF FE 45 */	bl "getNextChild__18JSUTree<8CoreNode>CFv"
/* 8042B3D4 00428314  7C 7A 1B 78 */	mr r26, r3
lbl_8042B3D8:
/* 8042B3D8 00428318  7F 23 CB 78 */	mr r3, r25
/* 8042B3DC 0042831C  4B FF FE 65 */	bl "getEndChild__18JSUTree<8CoreNode>CFv"
/* 8042B3E0 00428320  7C 1A 18 40 */	cmplw r26, r3
/* 8042B3E4 00428324  40 82 FF 70 */	bne lbl_8042B354
lbl_8042B3E8:
/* 8042B3E8 00428328  28 1C 00 00 */	cmplwi r28, 0
/* 8042B3EC 0042832C  40 82 00 1C */	bne lbl_8042B408
/* 8042B3F0 00428330  83 7B 00 18 */	lwz r27, 0x18(r27)
/* 8042B3F4 00428334  28 1B 00 00 */	cmplwi r27, 0
/* 8042B3F8 00428338  41 82 00 08 */	beq lbl_8042B400
/* 8042B3FC 0042833C  3B 7B FF F4 */	addi r27, r27, -12
lbl_8042B400:
/* 8042B400 00428340  28 1B 00 00 */	cmplwi r27, 0
/* 8042B404 00428344  40 82 FF 24 */	bne lbl_8042B328
lbl_8042B408:
/* 8042B408 00428348  28 1C 00 00 */	cmplwi r28, 0
/* 8042B40C 0042834C  40 82 00 1C */	bne lbl_8042B428
/* 8042B410 00428350  83 BD 00 18 */	lwz r29, 0x18(r29)
/* 8042B414 00428354  28 1D 00 00 */	cmplwi r29, 0
/* 8042B418 00428358  41 82 00 08 */	beq lbl_8042B420
/* 8042B41C 0042835C  3B BD FF F4 */	addi r29, r29, -12
lbl_8042B420:
/* 8042B420 00428360  28 1D 00 00 */	cmplwi r29, 0
/* 8042B424 00428364  40 82 FE D0 */	bne lbl_8042B2F4
lbl_8042B428:
/* 8042B428 00428368  28 1C 00 00 */	cmplwi r28, 0
/* 8042B42C 0042836C  7F 80 E3 78 */	mr r0, r28
/* 8042B430 00428370  40 82 00 1C */	bne lbl_8042B44C
/* 8042B434 00428374  83 DE 00 18 */	lwz r30, 0x18(r30)
/* 8042B438 00428378  28 1E 00 00 */	cmplwi r30, 0
/* 8042B43C 0042837C  41 82 00 08 */	beq lbl_8042B444
/* 8042B440 00428380  3B DE FF F4 */	addi r30, r30, -12
lbl_8042B444:
/* 8042B444 00428384  28 1E 00 00 */	cmplwi r30, 0
/* 8042B448 00428388  40 82 FE 80 */	bne lbl_8042B2C8
lbl_8042B44C:
/* 8042B44C 0042838C  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 8042B450 00428390  7C 03 03 78 */	mr r3, r0
/* 8042B454 00428394  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8042B458 00428398  7C 08 03 A6 */	mtlr r0
/* 8042B45C 0042839C  38 21 00 30 */	addi r1, r1, 0x30
/* 8042B460 004283A0  4E 80 00 20 */	blr 

.global "@36@__dt__8HeapInfoFv"
"@36@__dt__8HeapInfoFv":
/* 8042B464 004283A4  38 63 FF DC */	addi r3, r3, -36
/* 8042B468 004283A8  4B FF FC 0C */	b __dt__8HeapInfoFv
