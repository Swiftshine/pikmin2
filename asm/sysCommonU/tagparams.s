.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global doRead__7TagParmFR6Stream
doRead__7TagParmFR6Stream:
/* 8041BD2C 00418C6C  4E 80 00 20 */	blr 

.global doWrite__7TagParmFR6Stream
doWrite__7TagParmFR6Stream:
/* 8041BD30 00418C70  4E 80 00 20 */	blr 

.global doDump__7TagParmFv
doDump__7TagParmFv:
/* 8041BD34 00418C74  4E 80 00 20 */	blr 

.global doRead__14PrimTagParm$$0i$$1FR6Stream
doRead__14PrimTagParm$$0i$$1FR6Stream:
/* 8041BD38 00418C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BD3C 00418C7C  7C 08 02 A6 */	mflr r0
/* 8041BD40 00418C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BD44 00418C84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041BD48 00418C88  7C 7F 1B 78 */	mr r31, r3
/* 8041BD4C 00418C8C  7C 83 23 78 */	mr r3, r4
/* 8041BD50 00418C90  4B FF 8D 41 */	bl readInt__6StreamFv
/* 8041BD54 00418C94  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8041BD58 00418C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BD5C 00418C9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041BD60 00418CA0  7C 08 03 A6 */	mtlr r0
/* 8041BD64 00418CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BD68 00418CA8  4E 80 00 20 */	blr 

.global doWrite__14PrimTagParm$$0i$$1FR6Stream
doWrite__14PrimTagParm$$0i$$1FR6Stream:
/* 8041BD6C 00418CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BD70 00418CB0  7C 08 02 A6 */	mflr r0
/* 8041BD74 00418CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BD78 00418CB8  7C 80 23 78 */	mr r0, r4
/* 8041BD7C 00418CBC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8041BD80 00418CC0  7C 03 03 78 */	mr r3, r0
/* 8041BD84 00418CC4  4B FF 9A 3D */	bl writeInt__6StreamFi
/* 8041BD88 00418CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BD8C 00418CCC  7C 08 03 A6 */	mtlr r0
/* 8041BD90 00418CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BD94 00418CD4  4E 80 00 20 */	blr 

.global doDump__14PrimTagParm$$0i$$1Fv
doDump__14PrimTagParm$$0i$$1Fv:
/* 8041BD98 00418CD8  4E 80 00 20 */	blr 

.global doRead__15PrimTagParm$$0Us$$1FR6Stream
doRead__15PrimTagParm$$0Us$$1FR6Stream:
/* 8041BD9C 00418CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BDA0 00418CE0  7C 08 02 A6 */	mflr r0
/* 8041BDA4 00418CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BDA8 00418CE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041BDAC 00418CEC  7C 7F 1B 78 */	mr r31, r3
/* 8041BDB0 00418CF0  7C 83 23 78 */	mr r3, r4
/* 8041BDB4 00418CF4  4B FF 89 B1 */	bl readShort__6StreamFv
/* 8041BDB8 00418CF8  B0 7F 00 0C */	sth r3, 0xc(r31)
/* 8041BDBC 00418CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BDC0 00418D00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041BDC4 00418D04  7C 08 03 A6 */	mtlr r0
/* 8041BDC8 00418D08  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BDCC 00418D0C  4E 80 00 20 */	blr 

.global doWrite__15PrimTagParm$$0Us$$1FR6Stream
doWrite__15PrimTagParm$$0Us$$1FR6Stream:
/* 8041BDD0 00418D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BDD4 00418D14  7C 08 02 A6 */	mflr r0
/* 8041BDD8 00418D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BDDC 00418D1C  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 8041BDE0 00418D20  7C 83 23 78 */	mr r3, r4
/* 8041BDE4 00418D24  7C 04 07 34 */	extsh r4, r0
/* 8041BDE8 00418D28  4B FF 99 49 */	bl writeShort__6StreamFs
/* 8041BDEC 00418D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BDF0 00418D30  7C 08 03 A6 */	mtlr r0
/* 8041BDF4 00418D34  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BDF8 00418D38  4E 80 00 20 */	blr 

.global doDump__15PrimTagParm$$0Us$$1Fv
doDump__15PrimTagParm$$0Us$$1Fv:
/* 8041BDFC 00418D3C  4E 80 00 20 */	blr 

.global doRead__15PrimTagParm$$0Ux$$1FR6Stream
doRead__15PrimTagParm$$0Ux$$1FR6Stream:
/* 8041BE00 00418D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BE04 00418D44  7C 08 02 A6 */	mflr r0
/* 8041BE08 00418D48  38 A0 00 00 */	li r5, 0
/* 8041BE0C 00418D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BE10 00418D50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041BE14 00418D54  7C 7F 1B 78 */	mr r31, r3
/* 8041BE18 00418D58  7C 83 23 78 */	mr r3, r4
/* 8041BE1C 00418D5C  38 80 00 00 */	li r4, 0
/* 8041BE20 00418D60  4B FF 92 B5 */	bl readString__6StreamFPci
/* 8041BE24 00418D64  88 03 00 00 */	lbz r0, 0(r3)
/* 8041BE28 00418D68  98 1F 00 10 */	stb r0, 0x10(r31)
/* 8041BE2C 00418D6C  88 03 00 01 */	lbz r0, 1(r3)
/* 8041BE30 00418D70  98 1F 00 11 */	stb r0, 0x11(r31)
/* 8041BE34 00418D74  88 03 00 02 */	lbz r0, 2(r3)
/* 8041BE38 00418D78  98 1F 00 12 */	stb r0, 0x12(r31)
/* 8041BE3C 00418D7C  88 03 00 03 */	lbz r0, 3(r3)
/* 8041BE40 00418D80  98 1F 00 13 */	stb r0, 0x13(r31)
/* 8041BE44 00418D84  88 03 00 04 */	lbz r0, 4(r3)
/* 8041BE48 00418D88  98 1F 00 14 */	stb r0, 0x14(r31)
/* 8041BE4C 00418D8C  88 03 00 05 */	lbz r0, 5(r3)
/* 8041BE50 00418D90  98 1F 00 15 */	stb r0, 0x15(r31)
/* 8041BE54 00418D94  88 03 00 06 */	lbz r0, 6(r3)
/* 8041BE58 00418D98  98 1F 00 16 */	stb r0, 0x16(r31)
/* 8041BE5C 00418D9C  88 03 00 07 */	lbz r0, 7(r3)
/* 8041BE60 00418DA0  98 1F 00 17 */	stb r0, 0x17(r31)
/* 8041BE64 00418DA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041BE68 00418DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BE6C 00418DAC  7C 08 03 A6 */	mtlr r0
/* 8041BE70 00418DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BE74 00418DB4  4E 80 00 20 */	blr 

.global doWrite__15PrimTagParm$$0Ux$$1FR6Stream
doWrite__15PrimTagParm$$0Ux$$1FR6Stream:
/* 8041BE78 00418DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BE7C 00418DBC  7C 08 02 A6 */	mflr r0
/* 8041BE80 00418DC0  7C 85 23 78 */	mr r5, r4
/* 8041BE84 00418DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BE88 00418DC8  38 81 00 08 */	addi r4, r1, 8
/* 8041BE8C 00418DCC  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8041BE90 00418DD0  98 01 00 08 */	stb r0, 8(r1)
/* 8041BE94 00418DD4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8041BE98 00418DD8  98 01 00 09 */	stb r0, 9(r1)
/* 8041BE9C 00418DDC  88 03 00 12 */	lbz r0, 0x12(r3)
/* 8041BEA0 00418DE0  98 01 00 0A */	stb r0, 0xa(r1)
/* 8041BEA4 00418DE4  88 03 00 13 */	lbz r0, 0x13(r3)
/* 8041BEA8 00418DE8  98 01 00 0B */	stb r0, 0xb(r1)
/* 8041BEAC 00418DEC  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8041BEB0 00418DF0  98 01 00 0C */	stb r0, 0xc(r1)
/* 8041BEB4 00418DF4  88 03 00 15 */	lbz r0, 0x15(r3)
/* 8041BEB8 00418DF8  98 01 00 0D */	stb r0, 0xd(r1)
/* 8041BEBC 00418DFC  88 03 00 16 */	lbz r0, 0x16(r3)
/* 8041BEC0 00418E00  98 01 00 0E */	stb r0, 0xe(r1)
/* 8041BEC4 00418E04  88 03 00 17 */	lbz r0, 0x17(r3)
/* 8041BEC8 00418E08  7C A3 2B 78 */	mr r3, r5
/* 8041BECC 00418E0C  98 01 00 0F */	stb r0, 0xf(r1)
/* 8041BED0 00418E10  4B FF 96 FD */	bl writeString__6StreamFPc
/* 8041BED4 00418E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BED8 00418E18  7C 08 03 A6 */	mtlr r0
/* 8041BEDC 00418E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BEE0 00418E20  4E 80 00 20 */	blr 

.global doDump__15PrimTagParm$$0Ux$$1Fv
doDump__15PrimTagParm$$0Ux$$1Fv:
/* 8041BEE4 00418E24  4E 80 00 20 */	blr 

.global doRead__14PrimTagParm$$0f$$1FR6Stream
doRead__14PrimTagParm$$0f$$1FR6Stream:
/* 8041BEE8 00418E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BEEC 00418E2C  7C 08 02 A6 */	mflr r0
/* 8041BEF0 00418E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BEF4 00418E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041BEF8 00418E38  7C 7F 1B 78 */	mr r31, r3
/* 8041BEFC 00418E3C  7C 83 23 78 */	mr r3, r4
/* 8041BF00 00418E40  4B FF 8E AD */	bl readFloat__6StreamFv
/* 8041BF04 00418E44  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 8041BF08 00418E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BF0C 00418E4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041BF10 00418E50  7C 08 03 A6 */	mtlr r0
/* 8041BF14 00418E54  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BF18 00418E58  4E 80 00 20 */	blr 

.global doWrite__14PrimTagParm$$0f$$1FR6Stream
doWrite__14PrimTagParm$$0f$$1FR6Stream:
/* 8041BF1C 00418E5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BF20 00418E60  7C 08 02 A6 */	mflr r0
/* 8041BF24 00418E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BF28 00418E68  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8041BF2C 00418E6C  7C 83 23 78 */	mr r3, r4
/* 8041BF30 00418E70  4B FF 99 19 */	bl writeFloat__6StreamFf
/* 8041BF34 00418E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BF38 00418E78  7C 08 03 A6 */	mtlr r0
/* 8041BF3C 00418E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BF40 00418E80  4E 80 00 20 */	blr 

.global doDump__14PrimTagParm$$0f$$1Fv
doDump__14PrimTagParm$$0f$$1Fv:
/* 8041BF44 00418E84  4E 80 00 20 */	blr 

.global doRead__25PrimTagParm$$010Vector3$$0f$$1$$1FR6Stream
doRead__25PrimTagParm$$010Vector3$$0f$$1$$1FR6Stream:
/* 8041BF48 00418E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BF4C 00418E8C  7C 08 02 A6 */	mflr r0
/* 8041BF50 00418E90  38 63 00 0C */	addi r3, r3, 0xc
/* 8041BF54 00418E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BF58 00418E98  4B FF 5A 39 */	bl read__10Vector3$$0f$$1FR6Stream
/* 8041BF5C 00418E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BF60 00418EA0  7C 08 03 A6 */	mtlr r0
/* 8041BF64 00418EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BF68 00418EA8  4E 80 00 20 */	blr 

.global doWrite__25PrimTagParm$$010Vector3$$0f$$1$$1FR6Stream
doWrite__25PrimTagParm$$010Vector3$$0f$$1$$1FR6Stream:
/* 8041BF6C 00418EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BF70 00418EB0  7C 08 02 A6 */	mflr r0
/* 8041BF74 00418EB4  38 63 00 0C */	addi r3, r3, 0xc
/* 8041BF78 00418EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BF7C 00418EBC  4B FF 5A 6D */	bl write__10Vector3$$0f$$1FR6Stream
/* 8041BF80 00418EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BF84 00418EC4  7C 08 03 A6 */	mtlr r0
/* 8041BF88 00418EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BF8C 00418ECC  4E 80 00 20 */	blr 

.global doDump__25PrimTagParm$$010Vector3$$0f$$1$$1Fv
doDump__25PrimTagParm$$010Vector3$$0f$$1$$1Fv:
/* 8041BF90 00418ED0  4E 80 00 20 */	blr 

.global __ct__13StringTagParmFP13TagParametersPc
__ct__13StringTagParmFP13TagParametersPc:
/* 8041BF94 00418ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BF98 00418ED8  7C 08 02 A6 */	mflr r0
/* 8041BF9C 00418EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BFA0 00418EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041BFA4 00418EE4  7C 7F 1B 78 */	mr r31, r3
/* 8041BFA8 00418EE8  48 00 00 F5 */	bl __ct__7TagParmFP13TagParametersPc
/* 8041BFAC 00418EEC  3C 60 80 4F */	lis r3, __vt__13StringTagParm@ha
/* 8041BFB0 00418EF0  38 00 00 00 */	li r0, 0
/* 8041BFB4 00418EF4  38 83 B9 08 */	addi r4, r3, __vt__13StringTagParm@l
/* 8041BFB8 00418EF8  7F E3 FB 78 */	mr r3, r31
/* 8041BFBC 00418EFC  90 9F 00 00 */	stw r4, 0(r31)
/* 8041BFC0 00418F00  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8041BFC4 00418F04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041BFC8 00418F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BFCC 00418F0C  7C 08 03 A6 */	mtlr r0
/* 8041BFD0 00418F10  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BFD4 00418F14  4E 80 00 20 */	blr 

.global flushValue__13StringTagParmFv
flushValue__13StringTagParmFv:
/* 8041BFD8 00418F18  4E 80 00 20 */	blr 

.global doRead__13StringTagParmFR6Stream
doRead__13StringTagParmFR6Stream:
/* 8041BFDC 00418F1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BFE0 00418F20  7C 08 02 A6 */	mflr r0
/* 8041BFE4 00418F24  38 A0 00 00 */	li r5, 0
/* 8041BFE8 00418F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BFEC 00418F2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041BFF0 00418F30  7C 7F 1B 78 */	mr r31, r3
/* 8041BFF4 00418F34  7C 83 23 78 */	mr r3, r4
/* 8041BFF8 00418F38  38 80 00 00 */	li r4, 0
/* 8041BFFC 00418F3C  4B FF 90 D9 */	bl readString__6StreamFPci
/* 8041C000 00418F40  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8041C004 00418F44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041C008 00418F48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041C00C 00418F4C  7C 08 03 A6 */	mtlr r0
/* 8041C010 00418F50  38 21 00 10 */	addi r1, r1, 0x10
/* 8041C014 00418F54  4E 80 00 20 */	blr 

.global doWrite__13StringTagParmFR6Stream
doWrite__13StringTagParmFR6Stream:
/* 8041C018 00418F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041C01C 00418F5C  7C 08 02 A6 */	mflr r0
/* 8041C020 00418F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041C024 00418F64  7C 80 23 78 */	mr r0, r4
/* 8041C028 00418F68  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8041C02C 00418F6C  7C 03 03 78 */	mr r3, r0
/* 8041C030 00418F70  4B FF 95 9D */	bl writeString__6StreamFPc
/* 8041C034 00418F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041C038 00418F78  7C 08 03 A6 */	mtlr r0
/* 8041C03C 00418F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8041C040 00418F80  4E 80 00 20 */	blr 

.global doDump__13StringTagParmFv
doDump__13StringTagParmFv:
/* 8041C044 00418F84  4E 80 00 20 */	blr 

.global __ct__13TagParametersFPc
__ct__13TagParametersFPc:
/* 8041C048 00418F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041C04C 00418F8C  7C 08 02 A6 */	mflr r0
/* 8041C050 00418F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041C054 00418F94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041C058 00418F98  7C 9F 23 78 */	mr r31, r4
/* 8041C05C 00418F9C  93 C1 00 08 */	stw r30, 8(r1)
/* 8041C060 00418FA0  7C 7E 1B 78 */	mr r30, r3
/* 8041C064 00418FA4  4B FF 53 2D */	bl __ct__5CNodeFv
/* 8041C068 00418FA8  3C 60 80 4B */	lis r3, __vt__13TagParameters@ha
/* 8041C06C 00418FAC  38 00 00 00 */	li r0, 0
/* 8041C070 00418FB0  38 83 5B 10 */	addi r4, r3, __vt__13TagParameters@l
/* 8041C074 00418FB4  7F C3 F3 78 */	mr r3, r30
/* 8041C078 00418FB8  90 9E 00 00 */	stw r4, 0(r30)
/* 8041C07C 00418FBC  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8041C080 00418FC0  93 FE 00 14 */	stw r31, 0x14(r30)
/* 8041C084 00418FC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041C088 00418FC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041C08C 00418FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041C090 00418FD0  7C 08 03 A6 */	mtlr r0
/* 8041C094 00418FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8041C098 00418FD8  4E 80 00 20 */	blr 

.global __ct__7TagParmFP13TagParametersPc
__ct__7TagParmFP13TagParametersPc:
/* 8041C09C 00418FDC  3C C0 80 4F */	lis r6, __vt__7TagParm@ha
/* 8041C0A0 00418FE0  38 00 00 00 */	li r0, 0
/* 8041C0A4 00418FE4  38 C6 B8 F0 */	addi r6, r6, __vt__7TagParm@l
/* 8041C0A8 00418FE8  90 C3 00 00 */	stw r6, 0(r3)
/* 8041C0AC 00418FEC  90 A3 00 04 */	stw r5, 4(r3)
/* 8041C0B0 00418FF0  90 03 00 08 */	stw r0, 8(r3)
/* 8041C0B4 00418FF4  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8041C0B8 00418FF8  28 00 00 00 */	cmplwi r0, 0
/* 8041C0BC 00418FFC  41 82 00 10 */	beq lbl_8041C0CC
/* 8041C0C0 00419000  90 03 00 08 */	stw r0, 8(r3)
/* 8041C0C4 00419004  90 64 00 18 */	stw r3, 0x18(r4)
/* 8041C0C8 00419008  4E 80 00 20 */	blr 
lbl_8041C0CC:
/* 8041C0CC 0041900C  90 64 00 18 */	stw r3, 0x18(r4)
/* 8041C0D0 00419010  4E 80 00 20 */	blr 

.global read__13TagParametersFR6Stream
read__13TagParametersFR6Stream:
/* 8041C0D4 00419014  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041C0D8 00419018  7C 08 02 A6 */	mflr r0
/* 8041C0DC 0041901C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041C0E0 00419020  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8041C0E4 00419024  7C 7B 1B 78 */	mr r27, r3
/* 8041C0E8 00419028  7C 9C 23 78 */	mr r28, r4
lbl_8041C0EC:
/* 8041C0EC 0041902C  7F 83 E3 78 */	mr r3, r28
/* 8041C0F0 00419030  38 80 00 00 */	li r4, 0
/* 8041C0F4 00419034  38 A0 00 00 */	li r5, 0
/* 8041C0F8 00419038  4B FF 8F DD */	bl readString__6StreamFPci
/* 8041C0FC 0041903C  7C 60 1B 78 */	mr r0, r3
/* 8041C100 00419040  38 62 20 40 */	addi r3, r2, lbl_805203A0@sda21
/* 8041C104 00419044  7C 1E 03 78 */	mr r30, r0
/* 8041C108 00419048  4B CA E8 09 */	bl strlen
/* 8041C10C 0041904C  7C 65 1B 78 */	mr r5, r3
/* 8041C110 00419050  7F C4 F3 78 */	mr r4, r30
/* 8041C114 00419054  38 62 20 40 */	addi r3, r2, lbl_805203A0@sda21
/* 8041C118 00419058  4B CA E5 69 */	bl strncmp
/* 8041C11C 0041905C  7C 60 00 34 */	cntlzw r0, r3
/* 8041C120 00419060  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 8041C124 00419064  40 82 00 70 */	bne lbl_8041C194
/* 8041C128 00419068  83 BB 00 18 */	lwz r29, 0x18(r27)
/* 8041C12C 0041906C  48 00 00 5C */	b lbl_8041C188
lbl_8041C130:
/* 8041C130 00419070  7F C3 F3 78 */	mr r3, r30
/* 8041C134 00419074  4B CA E7 DD */	bl strlen
/* 8041C138 00419078  7C 7F 1B 78 */	mr r31, r3
/* 8041C13C 0041907C  80 7D 00 04 */	lwz r3, 4(r29)
/* 8041C140 00419080  4B CA E7 D1 */	bl strlen
/* 8041C144 00419084  7C 1F 18 00 */	cmpw r31, r3
/* 8041C148 00419088  40 82 00 3C */	bne lbl_8041C184
/* 8041C14C 0041908C  7F C3 F3 78 */	mr r3, r30
/* 8041C150 00419090  4B CA E7 C1 */	bl strlen
/* 8041C154 00419094  7C 65 1B 78 */	mr r5, r3
/* 8041C158 00419098  80 7D 00 04 */	lwz r3, 4(r29)
/* 8041C15C 0041909C  7F C4 F3 78 */	mr r4, r30
/* 8041C160 004190A0  4B CA E5 21 */	bl strncmp
/* 8041C164 004190A4  2C 03 00 00 */	cmpwi r3, 0
/* 8041C168 004190A8  40 82 00 1C */	bne lbl_8041C184
/* 8041C16C 004190AC  7F A3 EB 78 */	mr r3, r29
/* 8041C170 004190B0  7F 84 E3 78 */	mr r4, r28
/* 8041C174 004190B4  81 9D 00 00 */	lwz r12, 0(r29)
/* 8041C178 004190B8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8041C17C 004190BC  7D 89 03 A6 */	mtctr r12
/* 8041C180 004190C0  4E 80 04 21 */	bctrl 
lbl_8041C184:
/* 8041C184 004190C4  83 BD 00 08 */	lwz r29, 8(r29)
lbl_8041C188:
/* 8041C188 004190C8  28 1D 00 00 */	cmplwi r29, 0
/* 8041C18C 004190CC  40 82 FF A4 */	bne lbl_8041C130
/* 8041C190 004190D0  4B FF FF 5C */	b lbl_8041C0EC
lbl_8041C194:
/* 8041C194 004190D4  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8041C198 004190D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041C19C 004190DC  7C 08 03 A6 */	mtlr r0
/* 8041C1A0 004190E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8041C1A4 004190E4  4E 80 00 20 */	blr 
