#include "Utility.h"

Utility::Utility(int dam, int speed) : _damage(dam), _speed(speed)
{
}

void Utility::Update(float tick)
{

}

int Utility::getUtdamage()
{
    return _damage;
}

int Utility::getUtSpeed()
{
    return _speed;
}

void Utility::setSpeed(int a)
{
    _speed = a;
}
