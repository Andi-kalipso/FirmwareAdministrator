#include "user.h"

User::User() {
    m_isAutorize = false;
    m_isProgrammer = false;
    m_isSimpleUser = false;
    qDebug() << m_isAutorize << "  " << m_isProgrammer << "   " << m_isSimpleUser;
}






bool User::isAutorize() const
{
    return m_isAutorize;
}





void User::setIsAutorize(bool newIsAutorize)
{
    if (m_isAutorize == newIsAutorize)
        return;
    m_isAutorize = newIsAutorize;
    emit isAutorizeChanged();
}

bool User::isProgrammer() const
{
    return m_isProgrammer;
}

void User::setIsProgrammer(bool newIsProgremmer)
{
    if (m_isProgrammer == newIsProgremmer)
        return;
    m_isProgrammer = newIsProgremmer;
    emit isProgrammerChanged();
}

bool User::isSimpleUser() const
{
    return m_isSimpleUser;
}

void User::setIsSimpleUser(bool newIsSimpleUser)
{
    if (m_isSimpleUser == newIsSimpleUser)
        return;
    m_isSimpleUser = newIsSimpleUser;
    emit isSimpleUserChanged();
}
