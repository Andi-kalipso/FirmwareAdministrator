#ifndef USER_H
#define USER_H

#include <QObject>
#include <QPointer>
#include <QTcpSocket>
#include <QTimer>


class User : public QObject
{
    Q_OBJECT




public:
    Q_PROPERTY(bool isAutorize READ isAutorize WRITE setIsAutorize NOTIFY isAutorizeChanged FINAL)
    Q_PROPERTY(bool isProgrammer READ isProgrammer WRITE setIsProgrammer NOTIFY isProgrammerChanged FINAL)
    Q_PROPERTY(bool isSimpleUser READ isSimpleUser WRITE setIsSimpleUser NOTIFY isSimpleUserChanged FINAL)



    User();
    bool isAutorize() const;
    void setIsAutorize(bool newIsAutorize);
    bool isProgrammer() const;
    void setIsProgrammer(bool newIsProgremmer);

    bool isSimpleUser() const;
    void setIsSimpleUser(bool newIsSimpleUser);

signals:
    void isAutorizeChanged();
    void isProgrammerChanged();

    void isSimpleUserChanged();

private:
    bool m_isAutorize;
    bool m_isProgrammer;
    bool m_isSimpleUser;
};

#endif // USER_H
