#include "gmock/gmock.h"
#include "FdCore.h"


class AFdCore : public testing::Test{
public:
    FdCore fdCore;
};

TEST_F(AFdCore, CanSendNopData2Pfd){
    auto sndRet = fdCore.sndPfd1Data("");
    ASSERT_THAT(sndRet, testing::Eq(0));
}

TEST_F(AFdCore, CanSendValidData2Pfd){
    auto sndRet = fdCore.sndPfd1Data("123");
    ASSERT_THAT(sndRet, testing::Eq(3));
}

TEST_F(AFdCore, CanSendLargeData2Pfd){
    std::string data(8001, 'a');
    auto sndRet = fdCore.sndPfd1Data(data);
    ASSERT_THAT(sndRet, testing::Eq(-1));
}
