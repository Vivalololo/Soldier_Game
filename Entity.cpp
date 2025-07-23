#include "Entity.h"
#include <SFML/Graphics.hpp> 


Entity::Entity(std::string name, int hp, int speed) : Application(), _name(name), _health(hp), _walkSpeed(speed), _sprintSpeed(3*speed)
{
    _currSpeed = _walkSpeed;
    // _File = file;
    // _Image.loadFromFile("src/entity/" + file);
    // //_Image.createMaskFromColor();
    // _Texture.loadFromImage(_Image);
    // _Sprite -> setTexture(_Texture);
    // _Sprite -> setScale(2, 2);
}

Entity::~Entity()
{
    delete _Sprite;
}

void Entity::Update(float)
{
}

void Entity::Animation()
{
}

int Entity::getHealth()
{
    return _health;
}

int Entity::getDamage(int damage)
{
    this -> _health -= damage;
    if (_health <= 0)
        return 0;
    else
        return _health;
}

sf::Sprite* Entity::getSpritePtr()
{
    return _Sprite;
}

sf::Sprite Entity::getSprite()
{
    return *_Sprite;
}

void Entity::setRectSprite(int a, int b, int c, int d)
{
    _Sprite -> setTextureRect(sf::IntRect(a, b, c, d));
}

void Entity::setPosSprite(int a, int b)
{
    _Sprite -> setPosition(a, b);
}

int Entity::getSpeed()
{
    return _currSpeed;
}

void Entity::setSpeed(int a)
{
    if (a == 1)
        _currSpeed = _walkSpeed;
    else if (a == 2)
        _currSpeed = _sprintSpeed;
}

bool Entity::isSprint()
{   
    if (_currSpeed == _walkSpeed)
        return false;
    else
        return true;
}

std::vector<int> Entity::getNewRect(EntityState state, int& ind)
{   
    std::string strName;
    switch (state) {
        case EntityState::IDLE:
            strName = "idle";
            break;
        case EntityState::RWALK:
            strName = "walk";
            break;
        case EntityState::RSPRINT:
            strName = "sprint";
            break;
        case EntityState::LWALK:
            strName = "walk";
            break;
        case EntityState::LSPRINT:
            strName = "sprint";
            break;
        case EntityState::JUMP:
            strName = "jump";
            break;
        case EntityState::SHOT:
            strName = "shot";
            break;
        case EntityState::RELOAD:
            strName = "reload";
            break;
        case EntityState::THROW:
            strName = "throw";
            break;
        case EntityState::HURT:
            strName = "hurt";
            break;
        case EntityState::DEAD:
            strName = "dead";
            break;
    }
    std::vector<int> out;
    for (auto elem : _texturesArray) {
        if (elem.name == strName) {
            for (int i = ind*4; i < elem.coord.size(); i++) {
                out.push_back(elem.coord[i]);
            }
            if (ind*4+4 < elem.coord.size()-1)
                ind++;
            else
                ind = 0;
        }
    }
    return out;
}
