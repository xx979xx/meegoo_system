/*
    File:       USBDeviceModeAudio.cpp
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

#include <vector>

#include "USBDeviceModeAudio.h"
#include "iAp2ServiceLog.h"
#include "LinkController.h"
#include "SendEventToApp.h"
#include <stdlib.h>

namespace IAP2
{

USBDeviceModeAudio::USBDeviceModeAudio()
{
    LOGD("USBDeviceModeAudio()");
}

USBDeviceModeAudio::~USBDeviceModeAudio()
{
    LOGD("~USBDeviceModeAudio()");
}

void USBDeviceModeAudio::handleUSBDeviceModeAudioInforamation(LinkController* pLnkCtrler, int8_t session, uint8_t* pData)
{
    int result = kIap2NoErr;
    USBDeviceModeAudioInformationEvt event;

    LOGD("handleUSBDeviceModeAudioInforamation() session[%d]", session);
    if (pLnkCtrler == NULL) {
        LOGE("    Error : pLnkCtrler is NULL");
        return;
    }

    if (pData == NULL) {
        LOGE("    Error : pData is NULL");
        return;
    }

    memset(&event, 0x00, sizeof(event));
    decodeUSBDeviceModeAudioInforamation(pData, &event);
    
    result = handleUSBDeviceModeAudioInformationEvent(pLnkCtrler, session, &event);

    if (result != kIap2NoErr)
        LOGE("    ERROR : handlePowerUpdate(). result[%d]", result);
}


void USBDeviceModeAudio::decodeUSBDeviceModeAudioInforamation(uint8_t* pData, USBDeviceModeAudioInformationEvt* pEvt)
{
    int msgLen;

    if (pData == NULL) {
        LOGE("    Error : pData is NULL");
        return;
    }

    if (pEvt == NULL) {
        LOGE("    Error : pEvt is NULL");
        return;
    }

    msgLen = DataDecoder::getUintFromBytes(pData, kIndexControlMsgLenMsb, 2);

    LOGD("decodeUSBDeviceModeAudioInforamation() nMsgLen[%d]", msgLen);

    int paramStartIdx = 6;
    int paramId, paramLength;

    while (msgLen > paramStartIdx) {
        paramLength = DataDecoder::getUintFromBytes(pData, paramStartIdx, 2); ///???
        paramId = DataDecoder::getUintFromBytes(pData, paramStartIdx + 2, 2); ///???

        switch (paramId) {
            case kParamIDUSBDeviceModeAudioInformation : {
                pEvt->SampleRate = DataDecoder::getUintFromBytes(pData, paramStartIdx, 1);
                paramStartIdx += paramLength;
            }
        }
    }
}

int USBDeviceModeAudio::handleUSBDeviceModeAudioInformationEvent(LinkController* pLnkCtrler, int8_t session, USBDeviceModeAudioInformationEvt* pEvent)
{
    int result = kIap2NoErr;

    LOGD("handleUSBDeviceModeAudioInformationEvent() session[%d]", session);

    if (pEvent == NULL) {
        LOGE("ERROR : pEvent is NULL");
        return kIap2ParamErr;
    }

    uint32_t byteNum = 0;
    uint32_t* pIpcData = (uint32_t*) malloc(sizeof(EventHeader) + sizeof(uint32_t)*1);
    if (pIpcData == NULL) {
        LOGE("ERROR : pIpcData is NULL");
        return kIap2NoMemoryErr;
    }
    EventHeader* mEventHeader = (EventHeader*)pIpcData;
    MarshalIo iAp2Marshal = {NULL, 0, 0, NULL, 0};

    iAp2MarshalInit(&iAp2Marshal, pIpcData, sizeof(EventHeader) + sizeof(uint32_t)*1, sizeof(EventHeader)); 
    

    iAp2MarshalPutUint32(&iAp2Marshal, pEvent->SampleRate);

    byteNum = iAp2MarshalGetUsedSize(&iAp2Marshal);

    mEventHeader->evt = kEvtUSBDeviceModeAudioInformation;
    mEventHeader->dataSize = byteNum;

    if (pLnkCtrler->mpSendEventToApp != NULL) {
        result = pLnkCtrler->mpSendEventToApp->sendEvent(session, pIpcData, byteNum);
    }
    else {
        LOGE("    ERROR : mpSessionServer is NULL");
    }

    if (result != kIap2NoErr) {
        LOGE("    ERROR : send event fail. result[%d]", result);
    }

    free(pIpcData);
    return result;
}



} // namespace IAP2

