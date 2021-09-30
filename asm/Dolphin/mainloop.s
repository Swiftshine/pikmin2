.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global TRKNubMainLoop
TRKNubMainLoop:
/* 800BB390 000B82D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BB394 000B82D4  7C 08 02 A6 */	mflr r0
/* 800BB398 000B82D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BB39C 000B82DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800BB3A0 000B82E0  3B E0 00 00 */	li r31, 0
/* 800BB3A4 000B82E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800BB3A8 000B82E8  3B C0 00 00 */	li r30, 0
/* 800BB3AC 000B82EC  48 00 00 BC */	b lbl_800BB468
lbl_800BB3B0:
/* 800BB3B0 000B82F0  38 61 00 08 */	addi r3, r1, 8
/* 800BB3B4 000B82F4  48 00 01 F1 */	bl TRKGetNextEvent
/* 800BB3B8 000B82F8  2C 03 00 00 */	cmpwi r3, 0
/* 800BB3BC 000B82FC  41 82 00 6C */	beq lbl_800BB428
/* 800BB3C0 000B8300  80 01 00 08 */	lwz r0, 8(r1)
/* 800BB3C4 000B8304  3B C0 00 00 */	li r30, 0
/* 800BB3C8 000B8308  2C 00 00 02 */	cmpwi r0, 2
/* 800BB3CC 000B830C  41 82 00 28 */	beq lbl_800BB3F4
/* 800BB3D0 000B8310  40 80 00 14 */	bge lbl_800BB3E4
/* 800BB3D4 000B8314  2C 00 00 00 */	cmpwi r0, 0
/* 800BB3D8 000B8318  41 82 00 44 */	beq lbl_800BB41C
/* 800BB3DC 000B831C  40 80 00 28 */	bge lbl_800BB404
/* 800BB3E0 000B8320  48 00 00 3C */	b lbl_800BB41C
lbl_800BB3E4:
/* 800BB3E4 000B8324  2C 00 00 05 */	cmpwi r0, 5
/* 800BB3E8 000B8328  41 82 00 30 */	beq lbl_800BB418
/* 800BB3EC 000B832C  40 80 00 30 */	bge lbl_800BB41C
/* 800BB3F0 000B8330  48 00 00 1C */	b lbl_800BB40C
lbl_800BB3F4:
/* 800BB3F4 000B8334  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800BB3F8 000B8338  48 00 0B 69 */	bl TRKGetBuffer
/* 800BB3FC 000B833C  48 00 10 11 */	bl TRKDispatchMessage
/* 800BB400 000B8340  48 00 00 1C */	b lbl_800BB41C
lbl_800BB404:
/* 800BB404 000B8344  3B E0 00 01 */	li r31, 1
/* 800BB408 000B8348  48 00 00 14 */	b lbl_800BB41C
lbl_800BB40C:
/* 800BB40C 000B834C  38 61 00 08 */	addi r3, r1, 8
/* 800BB410 000B8350  48 00 34 05 */	bl TRKTargetInterrupt
/* 800BB414 000B8354  48 00 00 08 */	b lbl_800BB41C
lbl_800BB418:
/* 800BB418 000B8358  48 00 2F 79 */	bl TRKTargetSupportRequest
lbl_800BB41C:
/* 800BB41C 000B835C  38 61 00 08 */	addi r3, r1, 8
/* 800BB420 000B8360  48 00 00 69 */	bl TRKDestructEvent
/* 800BB424 000B8364  48 00 00 44 */	b lbl_800BB468
lbl_800BB428:
/* 800BB428 000B8368  2C 1E 00 00 */	cmpwi r30, 0
/* 800BB42C 000B836C  41 82 00 1C */	beq lbl_800BB448
/* 800BB430 000B8370  3C 60 80 51 */	lis r3, gTRKInputPendingPtr@ha
/* 800BB434 000B8374  38 63 53 08 */	addi r3, r3, gTRKInputPendingPtr@l
/* 800BB438 000B8378  80 63 00 00 */	lwz r3, 0(r3)
/* 800BB43C 000B837C  88 03 00 00 */	lbz r0, 0(r3)
/* 800BB440 000B8380  28 00 00 00 */	cmplwi r0, 0
/* 800BB444 000B8384  41 82 00 10 */	beq lbl_800BB454
lbl_800BB448:
/* 800BB448 000B8388  3B C0 00 01 */	li r30, 1
/* 800BB44C 000B838C  48 00 0D 99 */	bl TRKGetInput
/* 800BB450 000B8390  48 00 00 18 */	b lbl_800BB468
lbl_800BB454:
/* 800BB454 000B8394  48 00 2F 2D */	bl TRKTargetStopped
/* 800BB458 000B8398  2C 03 00 00 */	cmpwi r3, 0
/* 800BB45C 000B839C  40 82 00 08 */	bne lbl_800BB464
/* 800BB460 000B83A0  48 00 55 5D */	bl TRKTargetContinue
lbl_800BB464:
/* 800BB464 000B83A4  3B C0 00 00 */	li r30, 0
lbl_800BB468:
/* 800BB468 000B83A8  2C 1F 00 00 */	cmpwi r31, 0
/* 800BB46C 000B83AC  41 82 FF 44 */	beq lbl_800BB3B0
/* 800BB470 000B83B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BB474 000B83B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800BB478 000B83B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800BB47C 000B83BC  7C 08 03 A6 */	mtlr r0
/* 800BB480 000B83C0  38 21 00 20 */	addi r1, r1, 0x20
/* 800BB484 000B83C4  4E 80 00 20 */	blr 
