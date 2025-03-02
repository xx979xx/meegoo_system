/*
    File:       SessionAssistiveTouch.cpp
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

#include <errno.h>
#include <sys/types.h>
#include <sys/stat.h>
//#include <fcntl.h>
#include <vector>
#include <algorithm>
#include <sys/socket.h>
#include <sys/un.h>
#include <sys/time.h>
#include <unistd.h>
#include <stdlib.h>


#include "SessionAssistiveTouch.h"
#include "iAp2ServiceLog.h"
#include "utils.h"
#include "ByteArray.h"
#include "SessionDefine.h"

namespace IAP2
{

SessionAssistiveTouch::SessionAssistiveTouch()
{
    LOGD("SessionAssistiveTouch()");
}

SessionAssistiveTouch::~SessionAssistiveTouch()
{
    LOGD("~SessionAssistiveTouch()");
}

int SessionAssistiveTouch::handleAssistiveTouchCmd(unsigned int cmd, unsigned int handle, unsigned char* pRxData, LinkController* pLnkCtrler)
{
    int result = kIap2NoErr;
    LOGD("handleAssistiveTouchCmd() cmd[%u] handle[0x%x] pRxData[%p] pLnkCtrler[%p]", cmd, handle, pRxData, pLnkCtrler);

    if (pRxData == NULL) {
        LOGE("    ERROR : pRxData is NULL");
        return kIap2ParamErr;
    }

    if (pLnkCtrler == NULL) {
        LOGE("    ERROR : pLnkCtrler is NULL");
        return kIap2ParamErr;
    }

    switch(cmd) {
        case kCmdStartAssistiveTouch : {
            uint32_t dummyValue = 0;
            MarshalIo iAp2Marshal = {NULL, 0, 0, NULL, 0};
                
            iAp2MarshalInitFromTxn(&iAp2Marshal, (CommandHeader*)pRxData);

            dummyValue = iAp2MarshalGetUint32(&iAp2Marshal);
            LOGD("    rcv kCmdStartAssistiveTouch dummyValue[0x%x]", dummyValue);

            sendStartAssistiveTouch(pLnkCtrler);
            break;
        }
        
    case kCmdStopAssistiveTouch : {
            uint32_t dummyValue = 0;
            MarshalIo iAp2Marshal = {NULL, 0, 0, NULL, 0};
                        
            iAp2MarshalInitFromTxn(&iAp2Marshal, (CommandHeader*)pRxData);

            dummyValue = iAp2MarshalGetUint32(&iAp2Marshal);
            LOGD("    rcv kCmdStopAssistiveTouch dummyValue[0x%x]", dummyValue);

            sendStopAssistiveTouch(pLnkCtrler);
            break;
        }
    
    case kCmdStartAssistiveTouchInformation : {
            uint32_t dummyValue = 0;
            MarshalIo iAp2Marshal = {NULL, 0, 0, NULL, 0};
                        
            iAp2MarshalInitFromTxn(&iAp2Marshal, (CommandHeader*)pRxData);

            dummyValue = iAp2MarshalGetUint32(&iAp2Marshal);
            LOGD("    rcv kCmdStartAssistiveTouchInformation dummyValue[0x%x]", dummyValue);

            sendStartAssistiveTouchInformation (pLnkCtrler);
            break;
        }
        
    case kCmdStopAssistiveTouchInformation : {
            uint32_t dummyValue = 0;
            MarshalIo iAp2Marshal = {NULL, 0, 0, NULL, 0};
                        
            iAp2MarshalInitFromTxn(&iAp2Marshal, (CommandHeader*)pRxData);

            dummyValue = iAp2MarshalGetUint32(&iAp2Marshal);
            LOGD("    rcv kCmdStopAssistiveTouchInformation dummyValue[0x%x]", dummyValue);

            sendStopAssistiveTouchInformation (pLnkCtrler);
            break;
        }
        

        default :
            LOGE("    ERROR : unknown cmd[%d]", kIap2ParamErr);
            result = kIap2ParamErr;
            break;
    }
    
    return result;
}

void SessionAssistiveTouch::sendStartAssistiveTouch(LinkController* pLnkCtrler)
{
    LOGD("sendStartAssistiveTouch()");

    struct iAP2Link_st* link;
        
    if (pLnkCtrler->m_piAP2LinkRunLoop)
        link = pLnkCtrler->m_piAP2LinkRunLoop->link;
    else {
        LOGE("    ERROR :  m_piAP2LinkRunLoop is NULL");
        return;
    }

    uint32_t nEncodedDataLength;
    uint8_t* encodedData = NULL;

    std::vector<int> nParamIdList;
    std::vector<const uint8_t*> paramDataList;
    std::vector<uint32_t> nParamDataLenList;

    nEncodedDataLength = DataEncoder::encodeMsg(kIAP2PacketServiceTypeControl, kMsgIdStartAssistiveTouch, nParamIdList, paramDataList, nParamDataLenList, &encodedData);

    ByteArray encodedDataArr((char*)encodedData, nEncodedDataLength);

    int8_t session = pLnkCtrler->getSessionId(kIAP2PacketServiceTypeControl);
    if (session == 0) {
        LOGE("    ERROR : sessionId is 0");
        return;
    }        
    pLnkCtrler->processOutBoundTraffic(link, session, encodedDataArr);
  
    DataEncoder::deleteParamList(nParamIdList, paramDataList, nParamDataLenList);
    delete [] encodedData;
}

void SessionAssistiveTouch::sendStopAssistiveTouch(LinkController* pLnkCtrler)
{
    LOGD("sendStopAssistiveTouch()");

    struct iAP2Link_st* link;

    if (pLnkCtrler->m_piAP2LinkRunLoop)
        link = pLnkCtrler->m_piAP2LinkRunLoop->link;
    else {
        LOGE("    ERROR :  m_piAP2LinkRunLoop is NULL");
        return;
    }

    uint32_t nEncodedDataLength;
    uint8_t* encodedData = NULL;

    std::vector<int> nParamIdList;
    std::vector<const uint8_t*> paramDataList;
    std::vector<uint32_t> nParamDataLenList;

    nEncodedDataLength = DataEncoder::encodeMsg(kIAP2PacketServiceTypeControl, kMsgIdStopAssistiveTouch, nParamIdList, paramDataList, nParamDataLenList, &encodedData);

    ByteArray encodedDataArr((char*)encodedData, nEncodedDataLength);

    int8_t session = pLnkCtrler->getSessionId(kIAP2PacketServiceTypeControl);
    if (session == 0) {
        LOGE("    ERROR : sessionId is 0");
        return;
    }        
    pLnkCtrler->processOutBoundTraffic(link, session, encodedDataArr);
  
    DataEncoder::deleteParamList(nParamIdList, paramDataList, nParamDataLenList);
    delete [] encodedData;
}

void SessionAssistiveTouch::sendStartAssistiveTouchInformation(LinkController* pLnkCtrler)
{
    LOGD("sendStartAssistiveTouchInformation()");

    struct iAP2Link_st* link;

    if (pLnkCtrler->m_piAP2LinkRunLoop)
        link = pLnkCtrler->m_piAP2LinkRunLoop->link;
    else {
        LOGE("    ERROR :  m_piAP2LinkRunLoop is NULL");
        return;
    }

    uint32_t nEncodedDataLength;
    uint8_t* encodedData = NULL;

    std::vector<int> nParamIdList;
    std::vector<const uint8_t*> paramDataList;
    std::vector<uint32_t> nParamDataLenList;

    nEncodedDataLength = DataEncoder::encodeMsg(kIAP2PacketServiceTypeControl, kMsgIdStartAssistiveTouchInformation, nParamIdList, paramDataList, nParamDataLenList, &encodedData);

    ByteArray encodedDataArr((char*)encodedData, nEncodedDataLength);

    int8_t session = pLnkCtrler->getSessionId(kIAP2PacketServiceTypeControl);
    if (session == 0) {
        LOGE("    ERROR : sessionId is 0");
        return;
    }        
    pLnkCtrler->processOutBoundTraffic(link, session, encodedDataArr);
 
    DataEncoder::deleteParamList(nParamIdList, paramDataList, nParamDataLenList);
    delete [] encodedData;
}

void SessionAssistiveTouch::sendStopAssistiveTouchInformation(LinkController* pLnkCtrler)
{
    LOGD("sendStopAssistiveTouch()");

    struct iAP2Link_st* link;
        
    if (pLnkCtrler->m_piAP2LinkRunLoop)
        link = pLnkCtrler->m_piAP2LinkRunLoop->link;
    else {
        LOGE("    ERROR :  m_piAP2LinkRunLoop is NULL");
        return;
    }

    uint32_t nEncodedDataLength;
    uint8_t* encodedData = NULL;

    std::vector<int> nParamIdList;
    std::vector<const uint8_t*> paramDataList;
    std::vector<uint32_t> nParamDataLenList;

    nEncodedDataLength = DataEncoder::encodeMsg(kIAP2PacketServiceTypeControl, kMsgIdStopAssistiveTouchInformation, nParamIdList, paramDataList, nParamDataLenList, &encodedData);

    ByteArray encodedDataArr((char*)encodedData, nEncodedDataLength);

    int8_t session = pLnkCtrler->getSessionId(kIAP2PacketServiceTypeControl);
    if (session == 0) {
        LOGE("    ERROR : sessionId is 0");
        return;
    }        
    pLnkCtrler->processOutBoundTraffic(link, session, encodedDataArr);

    DataEncoder::deleteParamList(nParamIdList, paramDataList, nParamDataLenList);
    delete [] encodedData;
}


}// namespace IAP2

