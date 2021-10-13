.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x4
.global lbl_8049A6A0
lbl_8049A6A0:
	.4byte 0x7379734D
	.4byte 0x61746572
	.4byte 0x69616C41
	.4byte 0x6E696D2E
	.4byte 0x63707000
.global lbl_8049A6B4
lbl_8049A6B4:
	.4byte 0x50324173
	.4byte 0x73657274
	.4byte 0x00000000

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 0x8
.global lbl_80520780
lbl_80520780:
	.4byte 0x43300000
	.4byte 0x80000000
.global lbl_80520788
lbl_80520788:
	.4byte 0x00000000
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global attachResource__Q23Sys16MatBaseAnimationFPvP12J3DModelData
attachResource__Q23Sys16MatBaseAnimationFPvP12J3DModelData:
/* 80434020 00430F60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80434024 00430F64  7C 08 02 A6 */	mflr r0
/* 80434028 00430F68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043402C 00430F6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80434030 00430F70  7C BF 2B 78 */	mr r31, r5
/* 80434034 00430F74  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80434038 00430F78  7C 9E 23 78 */	mr r30, r4
/* 8043403C 00430F7C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80434040 00430F80  7C 7D 1B 78 */	mr r29, r3
/* 80434044 00430F84  80 03 00 04 */	lwz r0, 4(r3)
/* 80434048 00430F88  28 00 00 00 */	cmplwi r0, 0
/* 8043404C 00430F8C  41 82 00 20 */	beq lbl_8043406C
/* 80434050 00430F90  3C 60 80 4A */	lis r3, lbl_8049A6A0@ha
/* 80434054 00430F94  3C A0 80 4A */	lis r5, lbl_8049A6B4@ha
/* 80434058 00430F98  38 63 A6 A0 */	addi r3, r3, lbl_8049A6A0@l
/* 8043405C 00430F9C  38 80 00 31 */	li r4, 0x31
/* 80434060 00430FA0  38 A5 A6 B4 */	addi r5, r5, lbl_8049A6B4@l
/* 80434064 00430FA4  4C C6 31 82 */	crclr 6
/* 80434068 00430FA8  4B BF 65 D9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8043406C:
/* 8043406C 00430FAC  93 FD 00 04 */	stw r31, 4(r29)
/* 80434070 00430FB0  7F A3 EB 78 */	mr r3, r29
/* 80434074 00430FB4  7F C4 F3 78 */	mr r4, r30
/* 80434078 00430FB8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8043407C 00430FBC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80434080 00430FC0  7D 89 03 A6 */	mtctr r12
/* 80434084 00430FC4  4E 80 04 21 */	bctrl 
/* 80434088 00430FC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043408C 00430FCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80434090 00430FD0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80434094 00430FD4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80434098 00430FD8  7C 08 03 A6 */	mtlr r0
/* 8043409C 00430FDC  38 21 00 20 */	addi r1, r1, 0x20
/* 804340A0 00430FE0  4E 80 00 20 */	blr 

.global getFrameMax__Q23Sys16MatBaseAnimationFv
getFrameMax__Q23Sys16MatBaseAnimationFv:
/* 804340A4 00430FE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804340A8 00430FE8  7C 08 02 A6 */	mflr r0
/* 804340AC 00430FEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804340B0 00430FF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804340B4 00430FF4  7C 7F 1B 78 */	mr r31, r3
/* 804340B8 00430FF8  81 83 00 00 */	lwz r12, 0(r3)
/* 804340BC 00430FFC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 804340C0 00431000  7D 89 03 A6 */	mtctr r12
/* 804340C4 00431004  4E 80 04 21 */	bctrl 
/* 804340C8 00431008  28 03 00 00 */	cmplwi r3, 0
/* 804340CC 0043100C  40 82 00 20 */	bne lbl_804340EC
/* 804340D0 00431010  3C 60 80 4A */	lis r3, lbl_8049A6A0@ha
/* 804340D4 00431014  3C A0 80 4A */	lis r5, lbl_8049A6B4@ha
/* 804340D8 00431018  38 63 A6 A0 */	addi r3, r3, lbl_8049A6A0@l
/* 804340DC 0043101C  38 80 00 39 */	li r4, 0x39
/* 804340E0 00431020  38 A5 A6 B4 */	addi r5, r5, lbl_8049A6B4@l
/* 804340E4 00431024  4C C6 31 82 */	crclr 6
/* 804340E8 00431028  4B BF 65 59 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_804340EC:
/* 804340EC 0043102C  7F E3 FB 78 */	mr r3, r31
/* 804340F0 00431030  81 9F 00 00 */	lwz r12, 0(r31)
/* 804340F4 00431034  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 804340F8 00431038  7D 89 03 A6 */	mtctr r12
/* 804340FC 0043103C  4E 80 04 21 */	bctrl 
/* 80434100 00431040  A8 63 00 06 */	lha r3, 6(r3)
/* 80434104 00431044  3C 00 43 30 */	lis r0, 0x4330
/* 80434108 00431048  90 01 00 08 */	stw r0, 8(r1)
/* 8043410C 0043104C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80434110 00431050  C8 22 24 20 */	lfd f1, lbl_80520780@sda21(r2)
/* 80434114 00431054  90 01 00 0C */	stw r0, 0xc(r1)
/* 80434118 00431058  C8 01 00 08 */	lfd f0, 8(r1)
/* 8043411C 0043105C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80434120 00431060  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80434124 00431064  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80434128 00431068  7C 08 03 A6 */	mtlr r0
/* 8043412C 0043106C  38 21 00 20 */	addi r1, r1, 0x20
/* 80434130 00431070  4E 80 00 20 */	blr 

.global __ct__Q23Sys15MatTexAnimationFv
__ct__Q23Sys15MatTexAnimationFv:
/* 80434134 00431074  3C A0 80 4F */	lis r5, __vt__Q23Sys16MatBaseAnimation@ha
/* 80434138 00431078  3C 80 80 4F */	lis r4, __vt__Q23Sys15MatTexAnimation@ha
/* 8043413C 0043107C  38 05 C4 E4 */	addi r0, r5, __vt__Q23Sys16MatBaseAnimation@l
/* 80434140 00431080  38 A0 00 00 */	li r5, 0
/* 80434144 00431084  90 03 00 00 */	stw r0, 0(r3)
/* 80434148 00431088  38 04 C4 CC */	addi r0, r4, __vt__Q23Sys15MatTexAnimation@l
/* 8043414C 0043108C  90 A3 00 04 */	stw r5, 4(r3)
/* 80434150 00431090  90 03 00 00 */	stw r0, 0(r3)
/* 80434154 00431094  90 A3 00 08 */	stw r5, 8(r3)
/* 80434158 00431098  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8043415C 0043109C  4E 80 00 20 */	blr 

.global onAttachResource__Q23Sys15MatTexAnimationFPv
onAttachResource__Q23Sys15MatTexAnimationFPv:
/* 80434160 004310A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80434164 004310A4  7C 08 02 A6 */	mflr r0
/* 80434168 004310A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043416C 004310AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80434170 004310B0  7C 9F 23 78 */	mr r31, r4
/* 80434174 004310B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80434178 004310B8  7C 7E 1B 78 */	mr r30, r3
/* 8043417C 004310BC  80 03 00 08 */	lwz r0, 8(r3)
/* 80434180 004310C0  28 00 00 00 */	cmplwi r0, 0
/* 80434184 004310C4  41 82 00 20 */	beq lbl_804341A4
/* 80434188 004310C8  3C 60 80 4A */	lis r3, lbl_8049A6A0@ha
/* 8043418C 004310CC  3C A0 80 4A */	lis r5, lbl_8049A6B4@ha
/* 80434190 004310D0  38 63 A6 A0 */	addi r3, r3, lbl_8049A6A0@l
/* 80434194 004310D4  38 80 00 4B */	li r4, 0x4b
/* 80434198 004310D8  38 A5 A6 B4 */	addi r5, r5, lbl_8049A6B4@l
/* 8043419C 004310DC  4C C6 31 82 */	crclr 6
/* 804341A0 004310E0  4B BF 64 A1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_804341A4:
/* 804341A4 004310E4  7F E3 FB 78 */	mr r3, r31
/* 804341A8 004310E8  4B C3 E3 F9 */	bl load__20J3DAnmLoaderDataBaseFPCv
/* 804341AC 004310EC  90 7E 00 08 */	stw r3, 8(r30)
/* 804341B0 004310F0  83 FE 00 04 */	lwz r31, 4(r30)
/* 804341B4 004310F4  80 7E 00 08 */	lwz r3, 8(r30)
/* 804341B8 004310F8  7F E4 FB 78 */	mr r4, r31
/* 804341BC 004310FC  4B C3 4E 65 */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 804341C0 00431100  80 9E 00 08 */	lwz r4, 8(r30)
/* 804341C4 00431104  38 7F 00 58 */	addi r3, r31, 0x58
/* 804341C8 00431108  38 BE 00 0C */	addi r5, r30, 0xc
/* 804341CC 0043110C  4B C4 FB 61 */	bl allocTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKeyPP12J3DTexMtxAnm
/* 804341D0 00431110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804341D4 00431114  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804341D8 00431118  83 C1 00 08 */	lwz r30, 8(r1)
/* 804341DC 0043111C  7C 08 03 A6 */	mtlr r0
/* 804341E0 00431120  38 21 00 10 */	addi r1, r1, 0x10
/* 804341E4 00431124  4E 80 00 20 */	blr 

.global set__Q23Sys15MatTexAnimationFv
set__Q23Sys15MatTexAnimationFv:
/* 804341E8 00431128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804341EC 0043112C  7C 08 02 A6 */	mflr r0
/* 804341F0 00431130  90 01 00 14 */	stw r0, 0x14(r1)
/* 804341F4 00431134  80 A3 00 04 */	lwz r5, 4(r3)
/* 804341F8 00431138  80 83 00 08 */	lwz r4, 8(r3)
/* 804341FC 0043113C  38 65 00 58 */	addi r3, r5, 0x58
/* 80434200 00431140  4B C5 02 E9 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80434204 00431144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80434208 00431148  7C 08 03 A6 */	mtlr r0
/* 8043420C 0043114C  38 21 00 10 */	addi r1, r1, 0x10
/* 80434210 00431150  4E 80 00 20 */	blr 

.global remove__Q23Sys15MatTexAnimationFv
remove__Q23Sys15MatTexAnimationFv:
/* 80434214 00431154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80434218 00431158  7C 08 02 A6 */	mflr r0
/* 8043421C 0043115C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80434220 00431160  80 A3 00 04 */	lwz r5, 4(r3)
/* 80434224 00431164  80 83 00 08 */	lwz r4, 8(r3)
/* 80434228 00431168  38 65 00 58 */	addi r3, r5, 0x58
/* 8043422C 0043116C  4B C5 00 39 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80434230 00431170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80434234 00431174  7C 08 03 A6 */	mtlr r0
/* 80434238 00431178  38 21 00 10 */	addi r1, r1, 0x10
/* 8043423C 0043117C  4E 80 00 20 */	blr 

.global __ct__Q23Sys18MatTevRegAnimationFv
__ct__Q23Sys18MatTevRegAnimationFv:
/* 80434240 00431180  3C A0 80 4F */	lis r5, __vt__Q23Sys16MatBaseAnimation@ha
/* 80434244 00431184  3C 80 80 4F */	lis r4, __vt__Q23Sys18MatTevRegAnimation@ha
/* 80434248 00431188  38 05 C4 E4 */	addi r0, r5, __vt__Q23Sys16MatBaseAnimation@l
/* 8043424C 0043118C  38 A0 00 00 */	li r5, 0
/* 80434250 00431190  90 03 00 00 */	stw r0, 0(r3)
/* 80434254 00431194  38 04 C4 B4 */	addi r0, r4, __vt__Q23Sys18MatTevRegAnimation@l
/* 80434258 00431198  90 A3 00 04 */	stw r5, 4(r3)
/* 8043425C 0043119C  90 03 00 00 */	stw r0, 0(r3)
/* 80434260 004311A0  90 A3 00 08 */	stw r5, 8(r3)
/* 80434264 004311A4  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80434268 004311A8  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8043426C 004311AC  4E 80 00 20 */	blr 

.global onAttachResource__Q23Sys18MatTevRegAnimationFPv
onAttachResource__Q23Sys18MatTevRegAnimationFPv:
/* 80434270 004311B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80434274 004311B4  7C 08 02 A6 */	mflr r0
/* 80434278 004311B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043427C 004311BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80434280 004311C0  7C 9F 23 78 */	mr r31, r4
/* 80434284 004311C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80434288 004311C8  7C 7E 1B 78 */	mr r30, r3
/* 8043428C 004311CC  80 03 00 08 */	lwz r0, 8(r3)
/* 80434290 004311D0  28 00 00 00 */	cmplwi r0, 0
/* 80434294 004311D4  41 82 00 20 */	beq lbl_804342B4
/* 80434298 004311D8  3C 60 80 4A */	lis r3, lbl_8049A6A0@ha
/* 8043429C 004311DC  3C A0 80 4A */	lis r5, lbl_8049A6B4@ha
/* 804342A0 004311E0  38 63 A6 A0 */	addi r3, r3, lbl_8049A6A0@l
/* 804342A4 004311E4  38 80 00 6F */	li r4, 0x6f
/* 804342A8 004311E8  38 A5 A6 B4 */	addi r5, r5, lbl_8049A6B4@l
/* 804342AC 004311EC  4C C6 31 82 */	crclr 6
/* 804342B0 004311F0  4B BF 63 91 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_804342B4:
/* 804342B4 004311F4  7F E3 FB 78 */	mr r3, r31
/* 804342B8 004311F8  4B C3 E2 E9 */	bl load__20J3DAnmLoaderDataBaseFPCv
/* 804342BC 004311FC  90 7E 00 08 */	stw r3, 8(r30)
/* 804342C0 00431200  83 FE 00 04 */	lwz r31, 4(r30)
/* 804342C4 00431204  80 7E 00 08 */	lwz r3, 8(r30)
/* 804342C8 00431208  7F E4 FB 78 */	mr r4, r31
/* 804342CC 0043120C  4B C3 54 11 */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 804342D0 00431210  80 9E 00 08 */	lwz r4, 8(r30)
/* 804342D4 00431214  38 7F 00 58 */	addi r3, r31, 0x58
/* 804342D8 00431218  38 BE 00 0C */	addi r5, r30, 0xc
/* 804342DC 0043121C  38 DE 00 10 */	addi r6, r30, 0x10
/* 804342E0 00431220  4B C4 FC 29 */	bl allocTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKeyPP14J3DTevColorAnmPP15J3DTevKColorAnm
/* 804342E4 00431224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804342E8 00431228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804342EC 0043122C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804342F0 00431230  7C 08 03 A6 */	mtlr r0
/* 804342F4 00431234  38 21 00 10 */	addi r1, r1, 0x10
/* 804342F8 00431238  4E 80 00 20 */	blr 

.global set__Q23Sys18MatTevRegAnimationFv
set__Q23Sys18MatTevRegAnimationFv:
/* 804342FC 0043123C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80434300 00431240  7C 08 02 A6 */	mflr r0
/* 80434304 00431244  90 01 00 14 */	stw r0, 0x14(r1)
/* 80434308 00431248  80 A3 00 04 */	lwz r5, 4(r3)
/* 8043430C 0043124C  80 83 00 08 */	lwz r4, 8(r3)
/* 80434310 00431250  38 65 00 58 */	addi r3, r5, 0x58
/* 80434314 00431254  4B C5 05 55 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80434318 00431258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043431C 0043125C  7C 08 03 A6 */	mtlr r0
/* 80434320 00431260  38 21 00 10 */	addi r1, r1, 0x10
/* 80434324 00431264  4E 80 00 20 */	blr 

.global remove__Q23Sys18MatTevRegAnimationFv
remove__Q23Sys18MatTevRegAnimationFv:
/* 80434328 00431268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043432C 0043126C  7C 08 02 A6 */	mflr r0
/* 80434330 00431270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80434334 00431274  80 A3 00 04 */	lwz r5, 4(r3)
/* 80434338 00431278  80 83 00 08 */	lwz r4, 8(r3)
/* 8043433C 0043127C  38 65 00 58 */	addi r3, r5, 0x58
/* 80434340 00431280  4B C4 FF D1 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80434344 00431284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80434348 00431288  7C 08 03 A6 */	mtlr r0
/* 8043434C 0043128C  38 21 00 10 */	addi r1, r1, 0x10
/* 80434350 00431290  4E 80 00 20 */	blr 

.global __ct__Q23Sys15MatBaseAnimatorFv
__ct__Q23Sys15MatBaseAnimatorFv:
/* 80434354 00431294  3C 80 80 4F */	lis r4, __vt__Q23Sys15MatBaseAnimator@ha
/* 80434358 00431298  38 00 00 00 */	li r0, 0
/* 8043435C 0043129C  38 84 C4 A0 */	addi r4, r4, __vt__Q23Sys15MatBaseAnimator@l
/* 80434360 004312A0  90 83 00 00 */	stw r4, 0(r3)
/* 80434364 004312A4  90 03 00 04 */	stw r0, 4(r3)
/* 80434368 004312A8  4E 80 00 20 */	blr 

.global start__Q23Sys15MatBaseAnimatorFPQ23Sys16MatBaseAnimation
start__Q23Sys15MatBaseAnimatorFPQ23Sys16MatBaseAnimation:
/* 8043436C 004312AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80434370 004312B0  7C 08 02 A6 */	mflr r0
/* 80434374 004312B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80434378 004312B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043437C 004312BC  7C 9F 23 78 */	mr r31, r4
/* 80434380 004312C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80434384 004312C4  7C 7E 1B 78 */	mr r30, r3
/* 80434388 004312C8  80 63 00 04 */	lwz r3, 4(r3)
/* 8043438C 004312CC  28 03 00 00 */	cmplwi r3, 0
/* 80434390 004312D0  41 82 00 14 */	beq lbl_804343A4
/* 80434394 004312D4  81 83 00 00 */	lwz r12, 0(r3)
/* 80434398 004312D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8043439C 004312DC  7D 89 03 A6 */	mtctr r12
/* 804343A0 004312E0  4E 80 04 21 */	bctrl 
lbl_804343A4:
/* 804343A4 004312E4  93 FE 00 04 */	stw r31, 4(r30)
/* 804343A8 004312E8  80 7E 00 04 */	lwz r3, 4(r30)
/* 804343AC 004312EC  81 83 00 00 */	lwz r12, 0(r3)
/* 804343B0 004312F0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804343B4 004312F4  7D 89 03 A6 */	mtctr r12
/* 804343B8 004312F8  4E 80 04 21 */	bctrl 
/* 804343BC 004312FC  C0 02 24 28 */	lfs f0, lbl_80520788@sda21(r2)
/* 804343C0 00431300  D0 1E 00 08 */	stfs f0, 8(r30)
/* 804343C4 00431304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804343C8 00431308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804343CC 0043130C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804343D0 00431310  7C 08 03 A6 */	mtlr r0
/* 804343D4 00431314  38 21 00 10 */	addi r1, r1, 0x10
/* 804343D8 00431318  4E 80 00 20 */	blr 

.global setCurrentFrame__Q23Sys15MatBaseAnimatorFf
setCurrentFrame__Q23Sys15MatBaseAnimatorFf:
/* 804343DC 0043131C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804343E0 00431320  7C 08 02 A6 */	mflr r0
/* 804343E4 00431324  90 01 00 34 */	stw r0, 0x34(r1)
/* 804343E8 00431328  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804343EC 0043132C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 804343F0 00431330  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804343F4 00431334  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804343F8 00431338  7C 7F 1B 78 */	mr r31, r3
/* 804343FC 0043133C  FF E0 08 90 */	fmr f31, f1
/* 80434400 00431340  80 03 00 04 */	lwz r0, 4(r3)
/* 80434404 00431344  28 00 00 00 */	cmplwi r0, 0
/* 80434408 00431348  40 82 00 20 */	bne lbl_80434428
/* 8043440C 0043134C  3C 60 80 4A */	lis r3, lbl_8049A6A0@ha
/* 80434410 00431350  3C A0 80 4A */	lis r5, lbl_8049A6B4@ha
/* 80434414 00431354  38 63 A6 A0 */	addi r3, r3, lbl_8049A6A0@l
/* 80434418 00431358  38 80 00 C9 */	li r4, 0xc9
/* 8043441C 0043135C  38 A5 A6 B4 */	addi r5, r5, lbl_8049A6B4@l
/* 80434420 00431360  4C C6 31 82 */	crclr 6
/* 80434424 00431364  4B BF 62 1D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80434428:
/* 80434428 00431368  C0 02 24 28 */	lfs f0, lbl_80520788@sda21(r2)
/* 8043442C 0043136C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80434430 00431370  40 80 00 0C */	bge lbl_8043443C
/* 80434434 00431374  FF E0 00 90 */	fmr f31, f0
/* 80434438 00431378  48 00 00 F0 */	b lbl_80434528
lbl_8043443C:
/* 8043443C 0043137C  83 DF 00 04 */	lwz r30, 4(r31)
/* 80434440 00431380  7F C3 F3 78 */	mr r3, r30
/* 80434444 00431384  81 9E 00 00 */	lwz r12, 0(r30)
/* 80434448 00431388  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8043444C 0043138C  7D 89 03 A6 */	mtctr r12
/* 80434450 00431390  4E 80 04 21 */	bctrl 
/* 80434454 00431394  28 03 00 00 */	cmplwi r3, 0
/* 80434458 00431398  40 82 00 20 */	bne lbl_80434478
/* 8043445C 0043139C  3C 60 80 4A */	lis r3, lbl_8049A6A0@ha
/* 80434460 004313A0  3C A0 80 4A */	lis r5, lbl_8049A6B4@ha
/* 80434464 004313A4  38 63 A6 A0 */	addi r3, r3, lbl_8049A6A0@l
/* 80434468 004313A8  38 80 00 39 */	li r4, 0x39
/* 8043446C 004313AC  38 A5 A6 B4 */	addi r5, r5, lbl_8049A6B4@l
/* 80434470 004313B0  4C C6 31 82 */	crclr 6
/* 80434474 004313B4  4B BF 61 CD */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80434478:
/* 80434478 004313B8  7F C3 F3 78 */	mr r3, r30
/* 8043447C 004313BC  81 9E 00 00 */	lwz r12, 0(r30)
/* 80434480 004313C0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80434484 004313C4  7D 89 03 A6 */	mtctr r12
/* 80434488 004313C8  4E 80 04 21 */	bctrl 
/* 8043448C 004313CC  A8 63 00 06 */	lha r3, 6(r3)
/* 80434490 004313D0  3C 00 43 30 */	lis r0, 0x4330
/* 80434494 004313D4  90 01 00 08 */	stw r0, 8(r1)
/* 80434498 004313D8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8043449C 004313DC  C8 22 24 20 */	lfd f1, lbl_80520780@sda21(r2)
/* 804344A0 004313E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804344A4 004313E4  C8 01 00 08 */	lfd f0, 8(r1)
/* 804344A8 004313E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804344AC 004313EC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804344B0 004313F0  4C 41 13 82 */	cror 2, 1, 2
/* 804344B4 004313F4  40 82 00 74 */	bne lbl_80434528
/* 804344B8 004313F8  83 DF 00 04 */	lwz r30, 4(r31)
/* 804344BC 004313FC  7F C3 F3 78 */	mr r3, r30
/* 804344C0 00431400  81 9E 00 00 */	lwz r12, 0(r30)
/* 804344C4 00431404  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 804344C8 00431408  7D 89 03 A6 */	mtctr r12
/* 804344CC 0043140C  4E 80 04 21 */	bctrl 
/* 804344D0 00431410  28 03 00 00 */	cmplwi r3, 0
/* 804344D4 00431414  40 82 00 20 */	bne lbl_804344F4
/* 804344D8 00431418  3C 60 80 4A */	lis r3, lbl_8049A6A0@ha
/* 804344DC 0043141C  3C A0 80 4A */	lis r5, lbl_8049A6B4@ha
/* 804344E0 00431420  38 63 A6 A0 */	addi r3, r3, lbl_8049A6A0@l
/* 804344E4 00431424  38 80 00 39 */	li r4, 0x39
/* 804344E8 00431428  38 A5 A6 B4 */	addi r5, r5, lbl_8049A6B4@l
/* 804344EC 0043142C  4C C6 31 82 */	crclr 6
/* 804344F0 00431430  4B BF 61 51 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_804344F4:
/* 804344F4 00431434  7F C3 F3 78 */	mr r3, r30
/* 804344F8 00431438  81 9E 00 00 */	lwz r12, 0(r30)
/* 804344FC 0043143C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80434500 00431440  7D 89 03 A6 */	mtctr r12
/* 80434504 00431444  4E 80 04 21 */	bctrl 
/* 80434508 00431448  A8 63 00 06 */	lha r3, 6(r3)
/* 8043450C 0043144C  3C 00 43 30 */	lis r0, 0x4330
/* 80434510 00431450  90 01 00 08 */	stw r0, 8(r1)
/* 80434514 00431454  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80434518 00431458  C8 22 24 20 */	lfd f1, lbl_80520780@sda21(r2)
/* 8043451C 0043145C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80434520 00431460  C8 01 00 08 */	lfd f0, 8(r1)
/* 80434524 00431464  EF E0 08 28 */	fsubs f31, f0, f1
lbl_80434528:
/* 80434528 00431468  D3 FF 00 08 */	stfs f31, 8(r31)
/* 8043452C 0043146C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80434530 00431470  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80434534 00431474  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80434538 00431478  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043453C 0043147C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80434540 00431480  7C 08 03 A6 */	mtlr r0
/* 80434544 00431484  38 21 00 30 */	addi r1, r1, 0x30
/* 80434548 00431488  4E 80 00 20 */	blr 

.global animate__Q23Sys15MatBaseAnimatorFf
animate__Q23Sys15MatBaseAnimatorFf:
/* 8043454C 0043148C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80434550 00431490  7C 08 02 A6 */	mflr r0
/* 80434554 00431494  90 01 00 24 */	stw r0, 0x24(r1)
/* 80434558 00431498  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8043455C 0043149C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 80434560 004314A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80434564 004314A4  80 8D 9A EC */	lwz r4, sys@sda21(r13)
/* 80434568 004314A8  7C 7F 1B 78 */	mr r31, r3
/* 8043456C 004314AC  80 63 00 04 */	lwz r3, 4(r3)
/* 80434570 004314B0  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 80434574 004314B4  28 03 00 00 */	cmplwi r3, 0
/* 80434578 004314B8  EF E1 00 32 */	fmuls f31, f1, f0
/* 8043457C 004314BC  41 82 00 14 */	beq lbl_80434590
/* 80434580 004314C0  81 83 00 00 */	lwz r12, 0(r3)
/* 80434584 004314C4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80434588 004314C8  7D 89 03 A6 */	mtctr r12
/* 8043458C 004314CC  4E 80 04 21 */	bctrl 
lbl_80434590:
/* 80434590 004314D0  7F E3 FB 78 */	mr r3, r31
/* 80434594 004314D4  FC 20 F8 90 */	fmr f1, f31
/* 80434598 004314D8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8043459C 004314DC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804345A0 004314E0  7D 89 03 A6 */	mtctr r12
/* 804345A4 004314E4  4E 80 04 21 */	bctrl 
/* 804345A8 004314E8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 804345AC 004314EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804345B0 004314F0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 804345B4 004314F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804345B8 004314F8  7C 08 03 A6 */	mtlr r0
/* 804345BC 004314FC  38 21 00 20 */	addi r1, r1, 0x20
/* 804345C0 00431500  4E 80 00 20 */	blr 

.global do_animate__Q23Sys15MatBaseAnimatorFf
do_animate__Q23Sys15MatBaseAnimatorFf:
/* 804345C4 00431504  4E 80 00 20 */	blr 

.global do_animate__Q23Sys15MatLoopAnimatorFf
do_animate__Q23Sys15MatLoopAnimatorFf:
/* 804345C8 00431508  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804345CC 0043150C  7C 08 02 A6 */	mflr r0
/* 804345D0 00431510  90 01 00 34 */	stw r0, 0x34(r1)
/* 804345D4 00431514  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804345D8 00431518  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 804345DC 0043151C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804345E0 00431520  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804345E4 00431524  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804345E8 00431528  7C 7F 1B 78 */	mr r31, r3
/* 804345EC 0043152C  80 03 00 04 */	lwz r0, 4(r3)
/* 804345F0 00431530  28 00 00 00 */	cmplwi r0, 0
/* 804345F4 00431534  40 82 00 10 */	bne lbl_80434604
/* 804345F8 00431538  3C 60 00 01 */	lis r3, 0x00008000@ha
/* 804345FC 0043153C  3B C3 80 00 */	addi r30, r3, 0x00008000@l
/* 80434600 00431540  48 00 01 44 */	b lbl_80434744
lbl_80434604:
/* 80434604 00431544  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80434608 00431548  3B C0 00 00 */	li r30, 0
/* 8043460C 0043154C  C0 02 24 28 */	lfs f0, lbl_80520788@sda21(r2)
/* 80434610 00431550  EC 22 08 2A */	fadds f1, f2, f1
/* 80434614 00431554  D0 3F 00 08 */	stfs f1, 8(r31)
/* 80434618 00431558  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8043461C 0043155C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80434620 00431560  40 80 00 10 */	bge lbl_80434630
/* 80434624 00431564  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80434628 00431568  3B C0 00 01 */	li r30, 1
/* 8043462C 0043156C  48 00 00 FC */	b lbl_80434728
lbl_80434630:
/* 80434630 00431570  83 BF 00 04 */	lwz r29, 4(r31)
/* 80434634 00431574  7F A3 EB 78 */	mr r3, r29
/* 80434638 00431578  81 9D 00 00 */	lwz r12, 0(r29)
/* 8043463C 0043157C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80434640 00431580  7D 89 03 A6 */	mtctr r12
/* 80434644 00431584  4E 80 04 21 */	bctrl 
/* 80434648 00431588  28 03 00 00 */	cmplwi r3, 0
/* 8043464C 0043158C  40 82 00 20 */	bne lbl_8043466C
/* 80434650 00431590  3C 60 80 4A */	lis r3, lbl_8049A6A0@ha
/* 80434654 00431594  3C A0 80 4A */	lis r5, lbl_8049A6B4@ha
/* 80434658 00431598  38 63 A6 A0 */	addi r3, r3, lbl_8049A6A0@l
/* 8043465C 0043159C  38 80 00 39 */	li r4, 0x39
/* 80434660 004315A0  38 A5 A6 B4 */	addi r5, r5, lbl_8049A6B4@l
/* 80434664 004315A4  4C C6 31 82 */	crclr 6
/* 80434668 004315A8  4B BF 5F D9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8043466C:
/* 8043466C 004315AC  7F A3 EB 78 */	mr r3, r29
/* 80434670 004315B0  81 9D 00 00 */	lwz r12, 0(r29)
/* 80434674 004315B4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80434678 004315B8  7D 89 03 A6 */	mtctr r12
/* 8043467C 004315BC  4E 80 04 21 */	bctrl 
/* 80434680 004315C0  A8 63 00 06 */	lha r3, 6(r3)
/* 80434684 004315C4  3C 00 43 30 */	lis r0, 0x4330
/* 80434688 004315C8  90 01 00 08 */	stw r0, 8(r1)
/* 8043468C 004315CC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80434690 004315D0  C8 22 24 20 */	lfd f1, lbl_80520780@sda21(r2)
/* 80434694 004315D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80434698 004315D8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8043469C 004315DC  C8 01 00 08 */	lfd f0, 8(r1)
/* 804346A0 004315E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804346A4 004315E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804346A8 004315E8  4C 41 13 82 */	cror 2, 1, 2
/* 804346AC 004315EC  40 82 00 7C */	bne lbl_80434728
/* 804346B0 004315F0  83 BF 00 04 */	lwz r29, 4(r31)
/* 804346B4 004315F4  7F A3 EB 78 */	mr r3, r29
/* 804346B8 004315F8  81 9D 00 00 */	lwz r12, 0(r29)
/* 804346BC 004315FC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 804346C0 00431600  7D 89 03 A6 */	mtctr r12
/* 804346C4 00431604  4E 80 04 21 */	bctrl 
/* 804346C8 00431608  28 03 00 00 */	cmplwi r3, 0
/* 804346CC 0043160C  40 82 00 20 */	bne lbl_804346EC
/* 804346D0 00431610  3C 60 80 4A */	lis r3, lbl_8049A6A0@ha
/* 804346D4 00431614  3C A0 80 4A */	lis r5, lbl_8049A6B4@ha
/* 804346D8 00431618  38 63 A6 A0 */	addi r3, r3, lbl_8049A6A0@l
/* 804346DC 0043161C  38 80 00 39 */	li r4, 0x39
/* 804346E0 00431620  38 A5 A6 B4 */	addi r5, r5, lbl_8049A6B4@l
/* 804346E4 00431624  4C C6 31 82 */	crclr 6
/* 804346E8 00431628  4B BF 5F 59 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_804346EC:
/* 804346EC 0043162C  7F A3 EB 78 */	mr r3, r29
/* 804346F0 00431630  81 9D 00 00 */	lwz r12, 0(r29)
/* 804346F4 00431634  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 804346F8 00431638  7D 89 03 A6 */	mtctr r12
/* 804346FC 0043163C  4E 80 04 21 */	bctrl 
/* 80434700 00431640  A8 63 00 06 */	lha r3, 6(r3)
/* 80434704 00431644  3C 00 43 30 */	lis r0, 0x4330
/* 80434708 00431648  90 01 00 08 */	stw r0, 8(r1)
/* 8043470C 0043164C  3B C0 00 02 */	li r30, 2
/* 80434710 00431650  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80434714 00431654  C8 22 24 20 */	lfd f1, lbl_80520780@sda21(r2)
/* 80434718 00431658  90 01 00 0C */	stw r0, 0xc(r1)
/* 8043471C 0043165C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80434720 00431660  EC 00 08 28 */	fsubs f0, f0, f1
/* 80434724 00431664  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80434728:
/* 80434728 00431668  80 7F 00 04 */	lwz r3, 4(r31)
/* 8043472C 0043166C  C3 FF 00 08 */	lfs f31, 8(r31)
/* 80434730 00431670  81 83 00 00 */	lwz r12, 0(r3)
/* 80434734 00431674  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80434738 00431678  7D 89 03 A6 */	mtctr r12
/* 8043473C 0043167C  4E 80 04 21 */	bctrl 
/* 80434740 00431680  D3 E3 00 08 */	stfs f31, 8(r3)
lbl_80434744:
/* 80434744 00431684  28 1E 00 02 */	cmplwi r30, 2
/* 80434748 00431688  40 82 00 0C */	bne lbl_80434754
/* 8043474C 0043168C  C0 02 24 28 */	lfs f0, lbl_80520788@sda21(r2)
/* 80434750 00431690  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80434754:
/* 80434754 00431694  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80434758 00431698  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8043475C 0043169C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80434760 004316A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80434764 004316A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80434768 004316A8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8043476C 004316AC  7C 08 03 A6 */	mtlr r0
/* 80434770 004316B0  38 21 00 30 */	addi r1, r1, 0x30
/* 80434774 004316B4  4E 80 00 20 */	blr 

.global onStart__Q23Sys17MatRepeatAnimatorFv
onStart__Q23Sys17MatRepeatAnimatorFv:
/* 80434778 004316B8  38 00 00 01 */	li r0, 1
/* 8043477C 004316BC  98 03 00 0C */	stb r0, 0xc(r3)
/* 80434780 004316C0  4E 80 00 20 */	blr 

.global do_animate__Q23Sys17MatRepeatAnimatorFf
do_animate__Q23Sys17MatRepeatAnimatorFf:
/* 80434784 004316C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80434788 004316C8  7C 08 02 A6 */	mflr r0
/* 8043478C 004316CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80434790 004316D0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80434794 004316D4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80434798 004316D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043479C 004316DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804347A0 004316E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804347A4 004316E4  7C 7F 1B 78 */	mr r31, r3
/* 804347A8 004316E8  88 03 00 0C */	lbz r0, 0xc(r3)
/* 804347AC 004316EC  28 00 00 00 */	cmplwi r0, 0
/* 804347B0 004316F0  41 82 01 70 */	beq lbl_80434920
/* 804347B4 004316F4  80 1F 00 04 */	lwz r0, 4(r31)
/* 804347B8 004316F8  28 00 00 00 */	cmplwi r0, 0
/* 804347BC 004316FC  40 82 00 10 */	bne lbl_804347CC
/* 804347C0 00431700  3C 60 00 01 */	lis r3, 0x00008000@ha
/* 804347C4 00431704  3B C3 80 00 */	addi r30, r3, 0x00008000@l
/* 804347C8 00431708  48 00 01 44 */	b lbl_8043490C
lbl_804347CC:
/* 804347CC 0043170C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804347D0 00431710  3B C0 00 00 */	li r30, 0
/* 804347D4 00431714  C0 02 24 28 */	lfs f0, lbl_80520788@sda21(r2)
/* 804347D8 00431718  EC 22 08 2A */	fadds f1, f2, f1
/* 804347DC 0043171C  D0 3F 00 08 */	stfs f1, 8(r31)
/* 804347E0 00431720  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804347E4 00431724  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804347E8 00431728  40 80 00 10 */	bge lbl_804347F8
/* 804347EC 0043172C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 804347F0 00431730  3B C0 00 01 */	li r30, 1
/* 804347F4 00431734  48 00 00 FC */	b lbl_804348F0
lbl_804347F8:
/* 804347F8 00431738  83 BF 00 04 */	lwz r29, 4(r31)
/* 804347FC 0043173C  7F A3 EB 78 */	mr r3, r29
/* 80434800 00431740  81 9D 00 00 */	lwz r12, 0(r29)
/* 80434804 00431744  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80434808 00431748  7D 89 03 A6 */	mtctr r12
/* 8043480C 0043174C  4E 80 04 21 */	bctrl 
/* 80434810 00431750  28 03 00 00 */	cmplwi r3, 0
/* 80434814 00431754  40 82 00 20 */	bne lbl_80434834
/* 80434818 00431758  3C 60 80 4A */	lis r3, lbl_8049A6A0@ha
/* 8043481C 0043175C  3C A0 80 4A */	lis r5, lbl_8049A6B4@ha
/* 80434820 00431760  38 63 A6 A0 */	addi r3, r3, lbl_8049A6A0@l
/* 80434824 00431764  38 80 00 39 */	li r4, 0x39
/* 80434828 00431768  38 A5 A6 B4 */	addi r5, r5, lbl_8049A6B4@l
/* 8043482C 0043176C  4C C6 31 82 */	crclr 6
/* 80434830 00431770  4B BF 5E 11 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80434834:
/* 80434834 00431774  7F A3 EB 78 */	mr r3, r29
/* 80434838 00431778  81 9D 00 00 */	lwz r12, 0(r29)
/* 8043483C 0043177C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80434840 00431780  7D 89 03 A6 */	mtctr r12
/* 80434844 00431784  4E 80 04 21 */	bctrl 
/* 80434848 00431788  A8 63 00 06 */	lha r3, 6(r3)
/* 8043484C 0043178C  3C 00 43 30 */	lis r0, 0x4330
/* 80434850 00431790  90 01 00 08 */	stw r0, 8(r1)
/* 80434854 00431794  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80434858 00431798  C8 22 24 20 */	lfd f1, lbl_80520780@sda21(r2)
/* 8043485C 0043179C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80434860 004317A0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80434864 004317A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80434868 004317A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8043486C 004317AC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80434870 004317B0  4C 41 13 82 */	cror 2, 1, 2
/* 80434874 004317B4  40 82 00 7C */	bne lbl_804348F0
/* 80434878 004317B8  83 BF 00 04 */	lwz r29, 4(r31)
/* 8043487C 004317BC  7F A3 EB 78 */	mr r3, r29
/* 80434880 004317C0  81 9D 00 00 */	lwz r12, 0(r29)
/* 80434884 004317C4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80434888 004317C8  7D 89 03 A6 */	mtctr r12
/* 8043488C 004317CC  4E 80 04 21 */	bctrl 
/* 80434890 004317D0  28 03 00 00 */	cmplwi r3, 0
/* 80434894 004317D4  40 82 00 20 */	bne lbl_804348B4
/* 80434898 004317D8  3C 60 80 4A */	lis r3, lbl_8049A6A0@ha
/* 8043489C 004317DC  3C A0 80 4A */	lis r5, lbl_8049A6B4@ha
/* 804348A0 004317E0  38 63 A6 A0 */	addi r3, r3, lbl_8049A6A0@l
/* 804348A4 004317E4  38 80 00 39 */	li r4, 0x39
/* 804348A8 004317E8  38 A5 A6 B4 */	addi r5, r5, lbl_8049A6B4@l
/* 804348AC 004317EC  4C C6 31 82 */	crclr 6
/* 804348B0 004317F0  4B BF 5D 91 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_804348B4:
/* 804348B4 004317F4  7F A3 EB 78 */	mr r3, r29
/* 804348B8 004317F8  81 9D 00 00 */	lwz r12, 0(r29)
/* 804348BC 004317FC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 804348C0 00431800  7D 89 03 A6 */	mtctr r12
/* 804348C4 00431804  4E 80 04 21 */	bctrl 
/* 804348C8 00431808  A8 63 00 06 */	lha r3, 6(r3)
/* 804348CC 0043180C  3C 00 43 30 */	lis r0, 0x4330
/* 804348D0 00431810  90 01 00 08 */	stw r0, 8(r1)
/* 804348D4 00431814  3B C0 00 02 */	li r30, 2
/* 804348D8 00431818  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804348DC 0043181C  C8 22 24 20 */	lfd f1, lbl_80520780@sda21(r2)
/* 804348E0 00431820  90 01 00 0C */	stw r0, 0xc(r1)
/* 804348E4 00431824  C8 01 00 08 */	lfd f0, 8(r1)
/* 804348E8 00431828  EC 00 08 28 */	fsubs f0, f0, f1
/* 804348EC 0043182C  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_804348F0:
/* 804348F0 00431830  80 7F 00 04 */	lwz r3, 4(r31)
/* 804348F4 00431834  C3 FF 00 08 */	lfs f31, 8(r31)
/* 804348F8 00431838  81 83 00 00 */	lwz r12, 0(r3)
/* 804348FC 0043183C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80434900 00431840  7D 89 03 A6 */	mtctr r12
/* 80434904 00431844  4E 80 04 21 */	bctrl 
/* 80434908 00431848  D3 E3 00 08 */	stfs f31, 8(r3)
lbl_8043490C:
/* 8043490C 0043184C  28 1E 00 02 */	cmplwi r30, 2
/* 80434910 00431850  40 82 01 78 */	bne lbl_80434A88
/* 80434914 00431854  38 00 00 00 */	li r0, 0
/* 80434918 00431858  98 1F 00 0C */	stb r0, 0xc(r31)
/* 8043491C 0043185C  48 00 01 6C */	b lbl_80434A88
lbl_80434920:
/* 80434920 00431860  80 1F 00 04 */	lwz r0, 4(r31)
/* 80434924 00431864  28 00 00 00 */	cmplwi r0, 0
/* 80434928 00431868  40 82 00 10 */	bne lbl_80434938
/* 8043492C 0043186C  3C 60 00 01 */	lis r3, 0x00008000@ha
/* 80434930 00431870  3B C3 80 00 */	addi r30, r3, 0x00008000@l
/* 80434934 00431874  48 00 01 44 */	b lbl_80434A78
lbl_80434938:
/* 80434938 00431878  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8043493C 0043187C  3B C0 00 00 */	li r30, 0
/* 80434940 00431880  C0 02 24 28 */	lfs f0, lbl_80520788@sda21(r2)
/* 80434944 00431884  EC 22 08 28 */	fsubs f1, f2, f1
/* 80434948 00431888  D0 3F 00 08 */	stfs f1, 8(r31)
/* 8043494C 0043188C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80434950 00431890  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80434954 00431894  40 80 00 10 */	bge lbl_80434964
/* 80434958 00431898  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8043495C 0043189C  3B C0 00 01 */	li r30, 1
/* 80434960 004318A0  48 00 00 FC */	b lbl_80434A5C
lbl_80434964:
/* 80434964 004318A4  83 BF 00 04 */	lwz r29, 4(r31)
/* 80434968 004318A8  7F A3 EB 78 */	mr r3, r29
/* 8043496C 004318AC  81 9D 00 00 */	lwz r12, 0(r29)
/* 80434970 004318B0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80434974 004318B4  7D 89 03 A6 */	mtctr r12
/* 80434978 004318B8  4E 80 04 21 */	bctrl 
/* 8043497C 004318BC  28 03 00 00 */	cmplwi r3, 0
/* 80434980 004318C0  40 82 00 20 */	bne lbl_804349A0
/* 80434984 004318C4  3C 60 80 4A */	lis r3, lbl_8049A6A0@ha
/* 80434988 004318C8  3C A0 80 4A */	lis r5, lbl_8049A6B4@ha
/* 8043498C 004318CC  38 63 A6 A0 */	addi r3, r3, lbl_8049A6A0@l
/* 80434990 004318D0  38 80 00 39 */	li r4, 0x39
/* 80434994 004318D4  38 A5 A6 B4 */	addi r5, r5, lbl_8049A6B4@l
/* 80434998 004318D8  4C C6 31 82 */	crclr 6
/* 8043499C 004318DC  4B BF 5C A5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_804349A0:
/* 804349A0 004318E0  7F A3 EB 78 */	mr r3, r29
/* 804349A4 004318E4  81 9D 00 00 */	lwz r12, 0(r29)
/* 804349A8 004318E8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 804349AC 004318EC  7D 89 03 A6 */	mtctr r12
/* 804349B0 004318F0  4E 80 04 21 */	bctrl 
/* 804349B4 004318F4  A8 63 00 06 */	lha r3, 6(r3)
/* 804349B8 004318F8  3C 00 43 30 */	lis r0, 0x4330
/* 804349BC 004318FC  90 01 00 08 */	stw r0, 8(r1)
/* 804349C0 00431900  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804349C4 00431904  C8 22 24 20 */	lfd f1, lbl_80520780@sda21(r2)
/* 804349C8 00431908  90 01 00 0C */	stw r0, 0xc(r1)
/* 804349CC 0043190C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804349D0 00431910  C8 01 00 08 */	lfd f0, 8(r1)
/* 804349D4 00431914  EC 00 08 28 */	fsubs f0, f0, f1
/* 804349D8 00431918  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804349DC 0043191C  4C 41 13 82 */	cror 2, 1, 2
/* 804349E0 00431920  40 82 00 7C */	bne lbl_80434A5C
/* 804349E4 00431924  83 BF 00 04 */	lwz r29, 4(r31)
/* 804349E8 00431928  7F A3 EB 78 */	mr r3, r29
/* 804349EC 0043192C  81 9D 00 00 */	lwz r12, 0(r29)
/* 804349F0 00431930  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 804349F4 00431934  7D 89 03 A6 */	mtctr r12
/* 804349F8 00431938  4E 80 04 21 */	bctrl 
/* 804349FC 0043193C  28 03 00 00 */	cmplwi r3, 0
/* 80434A00 00431940  40 82 00 20 */	bne lbl_80434A20
/* 80434A04 00431944  3C 60 80 4A */	lis r3, lbl_8049A6A0@ha
/* 80434A08 00431948  3C A0 80 4A */	lis r5, lbl_8049A6B4@ha
/* 80434A0C 0043194C  38 63 A6 A0 */	addi r3, r3, lbl_8049A6A0@l
/* 80434A10 00431950  38 80 00 39 */	li r4, 0x39
/* 80434A14 00431954  38 A5 A6 B4 */	addi r5, r5, lbl_8049A6B4@l
/* 80434A18 00431958  4C C6 31 82 */	crclr 6
/* 80434A1C 0043195C  4B BF 5C 25 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80434A20:
/* 80434A20 00431960  7F A3 EB 78 */	mr r3, r29
/* 80434A24 00431964  81 9D 00 00 */	lwz r12, 0(r29)
/* 80434A28 00431968  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80434A2C 0043196C  7D 89 03 A6 */	mtctr r12
/* 80434A30 00431970  4E 80 04 21 */	bctrl 
/* 80434A34 00431974  A8 63 00 06 */	lha r3, 6(r3)
/* 80434A38 00431978  3C 00 43 30 */	lis r0, 0x4330
/* 80434A3C 0043197C  90 01 00 08 */	stw r0, 8(r1)
/* 80434A40 00431980  3B C0 00 02 */	li r30, 2
/* 80434A44 00431984  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80434A48 00431988  C8 22 24 20 */	lfd f1, lbl_80520780@sda21(r2)
/* 80434A4C 0043198C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80434A50 00431990  C8 01 00 08 */	lfd f0, 8(r1)
/* 80434A54 00431994  EC 00 08 28 */	fsubs f0, f0, f1
/* 80434A58 00431998  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80434A5C:
/* 80434A5C 0043199C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80434A60 004319A0  C3 FF 00 08 */	lfs f31, 8(r31)
/* 80434A64 004319A4  81 83 00 00 */	lwz r12, 0(r3)
/* 80434A68 004319A8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80434A6C 004319AC  7D 89 03 A6 */	mtctr r12
/* 80434A70 004319B0  4E 80 04 21 */	bctrl 
/* 80434A74 004319B4  D3 E3 00 08 */	stfs f31, 8(r3)
lbl_80434A78:
/* 80434A78 004319B8  28 1E 00 01 */	cmplwi r30, 1
/* 80434A7C 004319BC  40 82 00 0C */	bne lbl_80434A88
/* 80434A80 004319C0  38 00 00 01 */	li r0, 1
/* 80434A84 004319C4  98 1F 00 0C */	stb r0, 0xc(r31)
lbl_80434A88:
/* 80434A88 004319C8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80434A8C 004319CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80434A90 004319D0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80434A94 004319D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80434A98 004319D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80434A9C 004319DC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80434AA0 004319E0  7C 08 03 A6 */	mtlr r0
/* 80434AA4 004319E4  38 21 00 30 */	addi r1, r1, 0x30
/* 80434AA8 004319E8  4E 80 00 20 */	blr 

.global onStart__Q23Sys15MatBaseAnimatorFv
onStart__Q23Sys15MatBaseAnimatorFv:
/* 80434AAC 004319EC  4E 80 00 20 */	blr 

.global getAnmBase__Q23Sys18MatTevRegAnimationFv
getAnmBase__Q23Sys18MatTevRegAnimationFv:
/* 80434AB0 004319F0  80 63 00 08 */	lwz r3, 8(r3)
/* 80434AB4 004319F4  4E 80 00 20 */	blr 

.global getAnmBase__Q23Sys15MatTexAnimationFv
getAnmBase__Q23Sys15MatTexAnimationFv:
/* 80434AB8 004319F8  80 63 00 08 */	lwz r3, 8(r3)
/* 80434ABC 004319FC  4E 80 00 20 */	blr 
