#ifndef DEVICESETTINGS_H
#define DEVICESETTINGS_H

#include <QObject>

class deviceSettings : public QObject
{
    Q_OBJECT

private:
    QString nameServer;
    QString serverID;
    QString port;


public:
    deviceSettings();

};

#endif // DEVICESETTINGS_H
