#ifndef _GAME_STATEMACHINE_H
#define _GAME_STATEMACHINE_H

#include "types.h"

namespace Game {
template <typename T>
struct StateMachine;

// if it gets used, it's a derived struct.
struct StateArg {
};

template <typename T>
struct FSMState {
	inline FSMState(int id)
	    : mId(id)
	    , mStateMachine(nullptr)
	{
	}

	virtual void init(T*, StateArg*) { }                          // _08
	virtual void exec(T*) { }                                     // _0C
	virtual void cleanup(T*) { }                                  // _10
	virtual void resume(T*) { }                                   // _14
	virtual void restart(T*) { }                                  // _18
	virtual void transit(T* obj, int stateID, StateArg* stateArg) // _1C
	{
		mStateMachine->transit(obj, stateID, stateArg);
	}

	// _00 VTBL
	int mId;                        // _04
	StateMachine<T>* mStateMachine; // _08
};

template <typename T>
struct StateMachine {
	inline StateMachine()
	    : mCurrentID(-1)
	{
	}

	virtual void init(T*);                                 // _08
	virtual void start(T* obj, int stateID, StateArg* arg) // _0C
	{
		// obj->setCurrState(nullptr); // should be this but this breaks ebiFileSelectMgr for some goddamn reason
		obj->mCurrentState = nullptr; // this can't be right because of itemHole.cpp smh
		transit(obj, stateID, arg);
	}
	virtual void exec(T* obj);                                // _10
	void create(int limit);                                   // must be placed above transit
	virtual void transit(T* obj, int stateID, StateArg* arg); // _14

	void registerState(FSMState<T>* state);

	int getCurrID(T*);

	// _00	= VTBL
	FSMState<T>** mStates; // _04
	int mCount;            // _08, count of registered states
	int mLimit;            // _0C, max states that can be registered
	int* mIndexToIDArray;  // _10, state ID array, indexed by index in mStates
	int* mIdToIndexArray;  // _14, state indices array, indexed by state ID
	int mCurrentID;        // _18, ID of current/active state
};

template <typename T>
void StateMachine<T>::init(T*)
{
}
template <typename T>
void StateMachine<T>::create(int limit)
{
	mLimit          = limit;
	mCount          = 0;
	mStates         = new FSMState<T>*[mLimit];
	mIndexToIDArray = new int[mLimit];
	mIdToIndexArray = new int[mLimit];
}
template <typename T>
void StateMachine<T>::transit(T* obj, int stateID, StateArg* arg)
{
	int index           = mIdToIndexArray[stateID];
	T::StateType* state = obj->mCurrentState;
	if (state) {
		state->cleanup(obj);
		mCurrentID = state->mId;
	}

	ASSERT_HANG(index < mLimit);

	state              = static_cast<T::StateType*>(mStates[index]);
	obj->mCurrentState = state;
	state->init(obj, arg);
}
template <typename T>
void StateMachine<T>::registerState(FSMState<T>* state)
{
	if (mCount >= mLimit) {
		return;
	}
	mStates[mCount] = state;
	bool inBounds;
	if (state->mId < 0 || state->mId >= mLimit) {
		inBounds = false;
	} else {
		inBounds = true;
	}

	if (!inBounds) {
		return;
	}

	state->mStateMachine        = this;
	mIndexToIDArray[mCount]     = state->mId;
	mIdToIndexArray[state->mId] = mCount;
	mCount++;
}
template <typename T>
void StateMachine<T>::exec(T* obj)
{
	if (obj->mCurrentState != nullptr) {
		obj->mCurrentState->exec(obj);
	}
}

template <typename T>
int StateMachine<T>::getCurrID(T* obj)
{
	if (obj->getCurrState()) {
		return obj->getCurrState()->mId;
	}

	return -1;
}

} // namespace Game
#endif
