#pragma once
#include <iostream>
#include <vector>
#include <SFML/Graphics.hpp>
#include "Entity.h"
#include "Bullet.h"

class Player : public Entity
{
public:
    Player(std::string, int, int);
    void Update(float) override;
    void Animation() override;
    std::vector<Bullet*> getBullets();
private:
    bool isFire = false;
    std::vector<Bullet*> _bullets;
    float anim_time = 0;
};