#ifndef _JSYSTEM_J3D_J3DGD_H
#define _JSYSTEM_J3D_J3DGD_H

#include "Dolphin/gx.h"
#include "Dolphin/gd.h"

void J3DGDSetGenMode(u8, u8, u8, u8, GXCullMode);
void J3DGDSetGenMode_3Param(u8, u8, u8);
void J3DGDSetLightAttn(GXLightID, f32, f32, f32, f32, f32, f32);
void J3DGDSetLightColor(GXLightID, GXColor);
void J3DGDSetLightPos(GXLightID, f32, f32, f32);
void J3DGDSetLightDir(GXLightID, f32, f32, f32);
void J3DGDSetVtxAttrFmtv(GXVtxFmt, const GXVtxAttrFmtList*, bool);
void J3DGDSetTexCoordGen(GXTexGenType, GXTexGenSrc);
void J3DGDSetTexCoordScale2(GXTexCoordID, u16, u8, u8, u16, u8, u8);
void J3DGDSetTexLookupMode(GXTexMapID, GXTexWrapMode, GXTexWrapMode, GXTexFilter, GXTexFilter, f32, f32, f32, u8, u8, GXAnisotropy);
void J3DGDSetTexImgAttr(GXTexMapID, u16, u16, GXTexFmt);
void J3DGDSetTexImgPtr(GXTexMapID, void*);
void J3DGDSetTexImgPtrRaw(GXTexMapID, u32);
void J3DGDSetTexTlut(GXTexMapID, u32, GXTlutFmt);
void J3DGDSetIndTexCoordScale(GXIndTexStageID, GXIndTexScale, GXIndTexScale, GXIndTexScale, GXIndTexScale);
void J3DGDSetIndTexOrder(u32, GXTexCoordID, GXTexMapID, GXTexCoordID, GXTexMapID, GXTexCoordID, GXTexMapID, GXTexCoordID, GXTexMapID);
void J3DGDSetTevOrder(GXTevStageID, GXTexCoordID, GXTexMapID, GXChannelID, GXTexCoordID, GXTexMapID, GXChannelID);
void J3DGDSetTevKColor(GXTevKColorID, GXColor);
void J3DGDSetTevColorS10(GXTevRegID, GXColorS10);
void J3DGDSetFog(GXFogType, f32, f32, f32, f32, GXColor);
void J3DGDSetFogRangeAdj(u8, u16, GXFogAdjTable*);

void J3DGDLoadTlut(void*, u32, GXTlutSize);
void J3DGDLoadTexMtxImm(Mtx, u32, GXTexMtxType);
void J3DGDLoadPostTexMtxImm(Mtx, u32);

void J3DGDSetIndTexMtx(GXIndTexMtxID, Mtx33, char);
void J3DFifoLoadTexCached(GXTexMapID, u32, GXTexCacheSize, u32, GXTexCacheSize);
void J3DFifoLoadPosMtxImm(Mtx, u32);
void J3DFifoLoadNrmMtxImm(Mtx, u32);
void J3DFifoLoadNrmMtxImm3x3(Mtx33, u32);
void J3DFifoLoadNrmMtxToTexMtx(Mtx, u32);
void J3DFifoLoadNrmMtxToTexMtx3x3(Mtx33, u32);

inline void J3DGDWrite_u8(u8 param) { __GDWrite(param); }

inline void J3DGDWrite_u16(u16 param)
{
	__GDWrite((param & 0xffff) >> 8);
	__GDWrite(param & 0xff);
}

inline void J3DGDWrite_u32(u32 param)
{
	__GDWrite((param >> 24) & 0xff);
	__GDWrite((param >> 16) & 0xff);
	__GDWrite((param >> 8) & 0xff);
	__GDWrite(param & 0xff);
}

inline void J3DGDWrite_f32(f32 param)
{
	u32 tmp = *(u32*)&param;
	J3DGDWrite_u32(tmp);
}

inline void J3DGDWriteXFCmd(u16 param_1, u32 param_2)
{
	J3DGDWrite_u8(0x10);
	J3DGDWrite_u16(0);
	J3DGDWrite_u16(param_1);
	J3DGDWrite_u32(param_2);
}

inline void J3DGDSetNumChans(u8 numChans) { J3DGDWriteXFCmd(0x1009, numChans); }

inline void J3DGDSetNumTexGens(u8 numTexGens) { J3DGDWriteXFCmd(0x103f, numTexGens); }

#endif
