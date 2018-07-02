#ifndef FDCORE_H
#define FDCORE_H

#include <string>
#include <QUdpSocket>

class FdCore
{
public:
    FdCore();

    int sndPfd1Data(std::string data);
private:
    QUdpSocket _pfd1Socket;
};

#endif // FDCORE_H
