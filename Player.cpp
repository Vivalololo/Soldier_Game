#include "Player.h"
#include <SFML/Graphics.hpp>
#include <iostream>

Player::Player(std::string name, int hp, int speed) : Entity(name, hp, speed)
{
    _TextureIdle.loadFromFile("src/entity/player_idle.png");
    textures_coord idle {"idle", {45, 62, 47, 66}};

    _TextureWalk.loadFromFile("src/entity/player_walk.png");
    textures_coord walk {"walk", {49, 61, 35, 67, 171, 61, 35, 67, 303, 62, 35, 66, 432, 61, 35, 67, 561, 60, 35, 68, 686, 62, 35, 66, 814, 62, 35, 66}};

    _TextureSprint.loadFromFile("src/entity/player_sprint.png");
    textures_coord sprint {"sprint", {38, 68, 42, 60, 165, 68, 42, 60, 290, 68, 42, 60, 420, 68, 42, 60, 554, 67, 42, 60, 674, 68, 42, 60, 801, 68, 42, 60, 934, 68, 37, 60}};

    _TextureShot.loadFromFile("src/entity/player_shot.png");
    textures_coord shot {"shot", {47, 64, 50, 64, 175, 64, 49, 64, 302, 64, 64, 64, 431, 64, 64, 64}};

    _TextureDead.loadFromFile("src/entity/player_dead.png");
    textures_coord dead {"dead", {41, 68, 45, 59, 160, 66, 51, 61, 288, 66, 48, 61, 409, 66, 62, 61}};

    //add textures coordinates to array of these 
    _texturesArray.push_back(idle);
    _texturesArray.push_back(walk);
    _texturesArray.push_back(sprint);
    _texturesArray.push_back(dead);
    _texturesArray.push_back(shot);

    //set default idle texture
    _Sprite -> setTexture(_TextureIdle);
    _Sprite -> setTextureRect(sf::Rect(45, 62, 47, 66));
    _Sprite -> setScale(2, 2);
    _Sprite -> setPosition (500, 300);
    //setPosSprite(500, 300);
    state = EntityState::IDLE;
}


void Player::Update(float tick)
{
    dir = 0;

    sf::Sprite* sprite = getSpritePtr();
    //if player sprint (shifting)
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::LShift)) {
        setSpeed(2);
    }
    
    else {
        setSpeed(1);
    }

    //new speed of player by ticks of programm
    float det = getSpeed()*tick;
    //rigth 
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::D)) {
        dir = 1;                    //set right direction
        if (!isFire) {              //player cant move if he fire
            sprite -> move(det, 0);
            //collision with window borders (bad working on left border due to setScale)
            if (sprite -> getPosition().x >= getWidth() - 47*2)
                sprite -> setPosition(getWidth() - 47*2, sprite -> getPosition().y);
        }
    }

    if (sf::Keyboard::isKeyPressed(sf::Keyboard::A)) {
        dir = 2;
        if (!isFire) {
            sprite -> move(-det, 0);
            if (sprite -> getPosition().x <=0)
                sprite -> setPosition(0, sprite -> getPosition().y);
        }
    }

    if (sf::Keyboard::isKeyPressed(sf::Keyboard::Space)) {
        dir = 3;
    }

    //fire. isFire stops others animations while fire animation is going
    if (sf::Mouse::isButtonPressed(sf::Mouse::Left)) {
        isFire = true;
    }

    // if (sprite -> getPosition().y < getHeigth()) {
    //     sprite -> move(0, _dSpeed*tick);
    // }

    // if (sprite -> getPosition().y > getHeigth()) {
    //     sprite -> setPosition(sprite->getPosition().x, 100);
    // }
    
    
    // if (sf::Keyboard::isKeyPressed(sf::Keyboard::W)) {
    //     sprite -> move(0, -5);
    //     if (sprite -> getPosition().y <= 0)
    //         sprite -> setPosition(sprite -> getPosition().x, 0);
    // }
    // if (sf::Keyboard::isKeyPressed(sf::Keyboard::S)) {
    //     sprite -> move(0, 5);
    //     if (sprite -> getPosition().y >= getHeigth() - 66*2)
    //         sprite -> setPosition(sprite -> getPosition().x, getHeigth() - 66*2);
    // }
    // go to vector by iterator
    if (_bullets.size() > 0) {
        for (std::vector<Bullet*>::iterator i = _bullets.begin(); i != _bullets.end(); ++i) {
            auto bullet = *i;
            bullet -> Update(tick);
            if (bullet -> needToDel) {
                _bullets.erase(i);
                delete bullet;
                i--;
            }
        }
    }
    /*
    if (_bullets.size() > 0) {
        for (auto bullet : _bullets) {
            bullet -> Update(tick);
            if (bullet -> needToDel) {
                std::cout << "ya";
                delete bullet;
                _bullets.erase(*bullet);
            }
        }
    }*/

    //delay of animations png`s
    if (int(anim_time) >= 20) {
        Animation();
        anim_time = 0;
    }
    else
        anim_time += tick;
}


void Player::Animation()
{   
    if (isFire) {
        if (state != EntityState::SHOT) {
            state = EntityState::SHOT;
            indexRect = 0;
            _Sprite -> setTexture(_TextureShot);
            if (dir == 1)
                _Sprite -> setScale(2,2);
            else if (dir == 2)
                _Sprite -> setScale(-2,2);
        }
    }

    //right direction
    else if (dir == 1) {
        if (isSprint() && state != EntityState::RSPRINT) {
            indexRect = 0;
            state = EntityState::RSPRINT;
            _Sprite -> setTexture(_TextureSprint);
            _Sprite -> setScale(2,2);
        }
        else if (!isSprint() && state != EntityState::RWALK) {
            indexRect = 0;
            state = EntityState::RWALK;
            _Sprite -> setTexture(_TextureWalk);
            _Sprite -> setScale(2,2);
        }
    }
    //left direction
    else if (dir == 2) {
        if (isSprint() && state != EntityState::LSPRINT) {
            indexRect = 0;
            state = EntityState::LSPRINT;
            _Sprite -> setTexture(_TextureSprint);
            _Sprite -> setScale(-2,2);
        }
        else if (!isSprint() && state != EntityState::LWALK) {
            indexRect = 0;
            state = EntityState::LWALK;
            _Sprite -> setTexture(_TextureWalk);
            _Sprite -> setScale(-2,2);
        }
    }
    //jump
    else if (dir == 3 && state!=EntityState::JUMP) {
        indexRect = 0;
        state = EntityState::JUMP;
    }
    //stay
    else if (dir == 0 && state!=EntityState::IDLE) {
        indexRect = 0;
        state = EntityState::IDLE;
        _Sprite -> setTexture(_TextureIdle);
        _Sprite -> setScale(2,2);
        // _Sprite -> setTextureRect(sf::Rect(45, 62, 47, 66));
    }

    std::vector<int> newRect = getNewRect(state, indexRect);
    //_Sprite->setTexture(_TextureWalk);
    _Sprite->setTextureRect(sf::Rect(newRect[0], newRect[1], newRect[2], newRect[3]));

    //action when fire animations is over. this is activating others animations
    if (indexRect == 0 && state == EntityState::SHOT) {
        isFire = false;
        _bullets.push_back(new Bullet(20, 10, _Sprite->getPosition().x, _Sprite->getPosition().y+25, dir));
    }
    //reloading
    //if (indexRect == 0 && state == EntityState::RELOAD)
}

std::vector<Bullet*> Player::getBullets()
{
    return _bullets;
}
