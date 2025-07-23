#pragma once
#include <iostream>
#include "Application.h"


class Utility : public Application
{
public:
    Utility(int, int);
    virtual void Update(float);
    int getUtdamage();
    int getUtSpeed();
    void setSpeed(int);
private:
    int _damage;
    int _speed;
};