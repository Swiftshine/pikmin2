#ifndef _PSGAME_SOUNDTABLE_H
#define _PSGAME_SOUNDTABLE_H

#include "PSSystem/PSCommon.h"
#include "types.h"

namespace PSGame {
namespace SoundTable {
struct SePerspInfo {
	inline SePerspInfo()
	    : _00(1.0f)
	    , _04(0.0f)
	    , _08(0.0f)
	    , _0C(0.0f)
	    , _10(0.0f)
	    , mIsSpecialSound(false)
	    , mDisabled(false)
	{
	}

	void set(f32, f32, f32, f32, f32);
	f32 getDistVol(f32, u8);

	f32 _00;              // _00
	f32 _04;              // _04
	f32 _08;              // _08
	f32 _0C;              // _0C
	f32 _10;              // _10
	bool mIsSpecialSound; // _14
	bool mDisabled;       // _15
};

struct CategoryMgr : PSSystem::SingletonBase<CategoryMgr> {

	enum SoundCategory {
		SoundCat0_Navi,
		SoundCat1_System,
		SoundCat2_Piki,
		SoundCat3_Item,
		SoundCat4_Env,
		SoundCat5_Enemy,
		SoundCat_COUNT,
	};

	CategoryMgr();

	virtual ~CategoryMgr() { } // _08 (weak)

	void initiate(u8);

	// _00 = VTBL
	SePerspInfo* mPerspInfo[SoundCat_COUNT]; // _04
};
} // namespace SoundTable
} // namespace PSGame

#endif
