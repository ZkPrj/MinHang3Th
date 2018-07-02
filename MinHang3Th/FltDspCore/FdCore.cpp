#include "FdCore.h"

FdCore::FdCore()
{

}

int FdCore::sndPfd1Data(std::string data)
{
    if (data.length() > 8000) return -1;
    return _pfd1Socket.writeDatagram(data.c_str(), data.size(), QHostAddress("127.0.0.1"), 2000);
}
