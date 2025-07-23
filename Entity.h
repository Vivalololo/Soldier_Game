#pragma once
#include <iostream>
#include "Application.h"
#include <vector>


enum class EntityState {
    IDLE,
    RWALK,
    RSPRINT,
    LWALK,
    LSPRINT,
    JUMP,
    RELOAD,
    SHOT,
    HIT,
    THROW,
    HURT,
    DEAD
};

struct textures_coord {
    std::string name;
    std::vector<int> coord;
};

class Entity : public Application
{
    friend class Player;
   // friend class Zombee;
public:
    Entity(std::string, int, int);
    ~Entity();
    virtual void Update(float);
    virtual void Animation();
    int getHealth();
    int getDamage(int);
    sf::Sprite* getSpritePtr();
    sf::Sprite getSprite();
    void setRectSprite(int, int, int, int); // не надо
    void setPosSprite(int, int); // не надо
    int getSpeed();
    void setSpeed(int);
    bool isSprint();
    std::vector<int> getNewRect(EntityState, int&);
private:
    const std::string _name;
    EntityState state;
    //std::string _currState; //IDLE RWALK RSPRINT LWALK LSPRINT SHOT RELOAD DEAD
    int dir = 0;
    int _health = 0;
    int _currSpeed = 0;
    int _walkSpeed = 0;
    int _sprintSpeed = 0;
    int indexRect = 0;
    int _dSpeed = 5;
    sf::Texture _TextureIdle;
    sf::Texture _TextureWalk;
    sf::Texture _TextureSprint;
    sf::Texture _TextureShot;
    sf::Texture _TextureDead;
    std::vector<textures_coord> _texturesArray;
    sf::Sprite* _Sprite = new sf::Sprite();
};