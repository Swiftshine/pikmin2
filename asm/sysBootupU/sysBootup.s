.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global main
main:
/* 804111B4 0040E0F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804111B8 0040E0F8  7C 08 02 A6 */	mflr r0
/* 804111BC 0040E0FC  3C 60 80 4A */	lis r3, lbl_804995D0@ha
/* 804111C0 0040E100  90 01 00 14 */	stw r0, 0x14(r1)
/* 804111C4 0040E104  38 63 95 D0 */	addi r3, r3, lbl_804995D0@l
/* 804111C8 0040E108  4C C6 31 82 */	crclr 6
/* 804111CC 0040E10C  4B CD C5 21 */	bl OSReport
/* 804111D0 0040E110  48 01 1A 95 */	bl initialize__6SystemFv
/* 804111D4 0040E114  38 60 00 E0 */	li r3, 0xe0
/* 804111D8 0040E118  4B C1 2C CD */	bl __nw__FUl
/* 804111DC 0040E11C  7C 60 1B 79 */	or. r0, r3, r3
/* 804111E0 0040E120  41 82 00 0C */	beq lbl_804111EC
/* 804111E4 0040E124  48 01 12 05 */	bl __ct__6SystemFv
/* 804111E8 0040E128  7C 60 1B 78 */	mr r0, r3
lbl_804111EC:
/* 804111EC 0040E12C  7C 03 03 78 */	mr r3, r0
/* 804111F0 0040E130  48 01 1C 95 */	bl run__6SystemFv
/* 804111F4 0040E134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804111F8 0040E138  7C 08 03 A6 */	mtlr r0
/* 804111FC 0040E13C  38 21 00 10 */	addi r1, r1, 0x10
/* 80411200 0040E140  4E 80 00 20 */	blr 
