.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global actEnemy__Q24Game18InteractFarmKareroFPQ24Game9EnemyBase
actEnemy__Q24Game18InteractFarmKareroFPQ24Game9EnemyBase:
/* 80127884 001247C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80127888 001247C8  7C 08 02 A6 */	mflr r0
/* 8012788C 001247CC  C8 22 9C 30 */	lfd f1, lbl_80517F90@sda21(r2)
/* 80127890 001247D0  7C 66 1B 78 */	mr r6, r3
/* 80127894 001247D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80127898 001247D8  3C 00 43 30 */	lis r0, 0x4330
/* 8012789C 001247DC  80 A3 00 08 */	lwz r5, 8(r3)
/* 801278A0 001247E0  7C 83 23 78 */	mr r3, r4
/* 801278A4 001247E4  81 84 00 00 */	lwz r12, 0(r4)
/* 801278A8 001247E8  90 01 00 08 */	stw r0, 8(r1)
/* 801278AC 001247EC  7C 05 00 D0 */	neg r0, r5
/* 801278B0 001247F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801278B4 001247F4  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 801278B8 001247F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801278BC 001247FC  80 86 00 04 */	lwz r4, 4(r6)
/* 801278C0 00124800  C8 01 00 08 */	lfd f0, 8(r1)
/* 801278C4 00124804  EC 20 08 28 */	fsubs f1, f0, f1
/* 801278C8 00124808  7D 89 03 A6 */	mtctr r12
/* 801278CC 0012480C  4E 80 04 21 */	bctrl 
/* 801278D0 00124810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801278D4 00124814  7C 08 03 A6 */	mtlr r0
/* 801278D8 00124818  38 21 00 10 */	addi r1, r1, 0x10
/* 801278DC 0012481C  4E 80 00 20 */	blr 

.global actEnemy__Q24Game17InteractFarmHaeroFPQ24Game9EnemyBase
actEnemy__Q24Game17InteractFarmHaeroFPQ24Game9EnemyBase:
/* 801278E0 00124820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801278E4 00124824  7C 08 02 A6 */	mflr r0
/* 801278E8 00124828  C8 22 9C 30 */	lfd f1, lbl_80517F90@sda21(r2)
/* 801278EC 0012482C  7C 66 1B 78 */	mr r6, r3
/* 801278F0 00124830  90 01 00 14 */	stw r0, 0x14(r1)
/* 801278F4 00124834  3C 00 43 30 */	lis r0, 0x4330
/* 801278F8 00124838  80 A3 00 08 */	lwz r5, 8(r3)
/* 801278FC 0012483C  7C 83 23 78 */	mr r3, r4
/* 80127900 00124840  81 84 00 00 */	lwz r12, 0(r4)
/* 80127904 00124844  90 01 00 08 */	stw r0, 8(r1)
/* 80127908 00124848  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8012790C 0012484C  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 80127910 00124850  90 01 00 0C */	stw r0, 0xc(r1)
/* 80127914 00124854  80 86 00 04 */	lwz r4, 4(r6)
/* 80127918 00124858  C8 01 00 08 */	lfd f0, 8(r1)
/* 8012791C 0012485C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80127920 00124860  7D 89 03 A6 */	mtctr r12
/* 80127924 00124864  4E 80 04 21 */	bctrl 
/* 80127928 00124868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012792C 0012486C  7C 08 03 A6 */	mtlr r0
/* 80127930 00124870  38 21 00 10 */	addi r1, r1, 0x10
/* 80127934 00124874  4E 80 00 20 */	blr 

.global actEnemy__Q24Game12InteractDopeFPQ24Game9EnemyBase
actEnemy__Q24Game12InteractDopeFPQ24Game9EnemyBase:
/* 80127938 00124878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012793C 0012487C  7C 08 02 A6 */	mflr r0
/* 80127940 00124880  7C 65 1B 78 */	mr r5, r3
/* 80127944 00124884  7C 83 23 78 */	mr r3, r4
/* 80127948 00124888  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012794C 0012488C  81 83 00 00 */	lwz r12, 0(r3)
/* 80127950 00124890  80 85 00 04 */	lwz r4, 4(r5)
/* 80127954 00124894  81 8C 02 9C */	lwz r12, 0x29c(r12)
/* 80127958 00124898  80 A5 00 08 */	lwz r5, 8(r5)
/* 8012795C 0012489C  7D 89 03 A6 */	mtctr r12
/* 80127960 001248A0  4E 80 04 21 */	bctrl 
/* 80127964 001248A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80127968 001248A8  7C 08 03 A6 */	mtlr r0
/* 8012796C 001248AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80127970 001248B0  4E 80 00 20 */	blr 
