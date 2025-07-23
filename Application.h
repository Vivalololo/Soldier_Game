#pragma once
#include <iostream>
#include <SFML/Graphics.hpp>

enum class GameState {
    MENU,
    PLAY,
    PAUSE,
    EXIT
};

class Application 
{
public:
    Application();
    void Run();
    void Menu();
    void Play();
    void Pause();
    void Exit();

    int getWidth();
    int getHeigth();
private:
    const unsigned int _WIDTH = 800, _HEIGHT = 600;
    GameState state;
    const std::string _name = "Game";
    const std::string _titleName = "Game";
    sf::RenderWindow window; //объект окна
};