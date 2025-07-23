#pragma once
#include <iostream>
#include "Application.h"
#include <SFML/Graphics.hpp>
#include "Utility.h"


class Bullet : public Utility
{
public:
    Bullet(int, int, int, int, int);
    void Update(float) override;
    bool needToDel = false;
    sf::RectangleShape getShape();
private:
    int sizeX = 10;
    int sizeY = 5;
    sf::RectangleShape rectangle;
};