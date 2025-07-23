#include "Bullet.h"
#include <SFML/Graphics.hpp>
#include <iostream>

Bullet::Bullet(int a, int b, int x, int y, int dir) : Utility(a, b)
{
    rectangle.setSize(sf::Vector2f(sizeX, sizeY));
    rectangle.setFillColor(sf::Color::Green);
    if (dir == 2) {
        setSpeed(-b);
        rectangle.setPosition(x-80, y);
    }
    else
        rectangle.setPosition(x+80, y);
        
}

void Bullet::Update(float tick)
{
    rectangle.move(getUtSpeed()*tick, 0);
    //std::cout << "\n " << getUtSpeed() << " " << getUtSpeed()*tick << "\n";
    if (rectangle.getPosition().x > getWidth() - sizeX || rectangle.getPosition().x < 0) {
        needToDel = true;
    }
}

sf::RectangleShape Bullet::getShape()
{
    return rectangle;
}
