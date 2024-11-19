#ifndef DEVICESETTINGS_H
#define DEVICESETTINGS_H

#include <QObject>

class DeviceSettings : public QObject
{
    Q_OBJECT

private:
    QString nameServer;
    QString serverID;
    QString port;


public:
    DeviceSettings();

};

#endif // DEVICESETTINGS_H
