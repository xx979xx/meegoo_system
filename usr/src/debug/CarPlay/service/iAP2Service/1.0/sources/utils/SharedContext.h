/*
    File:       SharedContext.h
    Package:    LG iAP2 Service
    Author:     Yongil Park (yongil.park@lge.com)
    Copyright � [2014-2016] by LG Electronics Inc.


    This program or software including the accompanying associated documentation
    (�Software�) is the proprietary software of LG Electronics Inc. and or its
    licensors, and may only be used, duplicated, modified or distributed pursuant
    to the terms and conditions of a separate written license agreement between you
    and LG Electronics Inc. (�Authorized License�). Except as set forth in an
    Authorized License, LG Electronics Inc. grants no license (express or implied),
    rights to use, or waiver of any kind with respect to the Software, and LG
    Electronics Inc. expressly reserves all rights in and to the Software and all
    intellectual property therein. If you have no Authorized License, then you have
    no rights to use the Software in any ways, and should immediately notify LG
    Electronics Inc. and discontinue all use of the Software.
*/

#ifndef SHAREDCONTEXT_H_
#define SHAREDCONTEXT_H_

#include <pthread.h>
//#include <stdio.h>
//#include <time.h>
//#include <sys/time.h>

namespace IAP2
{
    class SharedContext
	{
	public : 
		pthread_cond_t mCondRs;		// This condition and mutex is used for Role Switching 
		pthread_mutex_t mMutexRs;
		bool mbRsSuccess;
		int retVal;

	public :
		static SharedContext* getInstance();

	protected :
		SharedContext();
		~SharedContext();

    private :
		static SharedContext* mInstance;

	};

} // namespace IAP2


#endif // #ifndef SHAREDCONTEXT_H_

