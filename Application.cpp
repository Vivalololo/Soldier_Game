#include "Application.h"
#include <SFML/Graphics.hpp>
#include "Player.h"


Application::Application() {
    state = GameState::MENU;
    //window.create(sf::VideoMode(_WIDTH, _HEIGHT), _titleName);
    //window.setFramerateLimit(30);
}

void Application::Run()
{
    window.create(sf::VideoMode(_WIDTH, _HEIGHT), _titleName);
    while (window.isOpen())
    {
        switch (state) {
            case GameState::MENU:
                Menu();
                break;
            case GameState::PLAY:
                Play();
                break;
            case GameState::PAUSE:
                Pause();
                break;
            case GameState::EXIT:
                Exit();
                window.close();
                break;
            default:
                window.close();
                break;
        }
    }
    
}

void Application::Menu()
{
    sf::Font font;
    font.loadFromFile("src/font/arial.ttf");
    sf::Text text;
    text.setFont(font);
    text.setString("Hello");
    text.setCharacterSize(48);
    text.setFillColor(sf::Color::Red);
    text.setStyle(sf::Text::Bold);
    //text.setOutlineThickness(100);
    text.setPosition(_WIDTH / 2, _HEIGHT / 2);
    sf::CircleShape shape(100.0f);
    shape.setFillColor(sf::Color::Green);

    while (window.isOpen())
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            
            if (sf::Mouse::isButtonPressed(sf::Mouse::Left))
            {
                sf::Vector2i localPosition = sf::Mouse::getPosition(window);
                if ((localPosition.x >= 400 && localPosition.x <= 515) && (localPosition.y >= 310 && localPosition.y <= 350)) {
                    state = GameState::PLAY;
                    return;
                }
            }
            // if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::F))

            // меню не закрывается после нажания кнопки
            if (event.type == sf::Event::Closed) {
                state = GameState::EXIT;
                return;
            }
        }

        window.clear();
        window.draw(text);
        window.draw(shape);
        window.display();
    }
    //window.clear();
}


void Application::Play() 
{
    sf::Clock clockTime;
    sf::Clock clockTick;
    sf::Font font;
    font.loadFromFile("src/font/arial.ttf");
    sf::Texture backgrTex;
    backgrTex.loadFromFile("src/entity/background.png");
    sf::Sprite backgrSp(backgrTex);
    backgrSp.setScale((float)_WIDTH/backgrTex.getSize().x, (float)_HEIGHT/backgrTex.getSize().y);
    sf::Text text;
    text.setFont(font);
    Player* player = new Player("Player", 100, 1);
    while (window.isOpen())
    {
        int time = static_cast<unsigned int>(clockTime.getElapsedTime().asSeconds());  // Получаем количество секунд, прошедшее с момента запуска часов
        std::string timeStr = std::to_string(time);
        text.setString("Time: " + timeStr);
        text.setFillColor(sf::Color::Red);
        text.setStyle(sf::Text::Bold);

        float tick = clockTick.getElapsedTime().asMicroseconds();
        clockTick.restart();
        tick = tick/10000;

        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed) {
                state = GameState::EXIT;
                return;
            }
        }
        window.clear();
        player -> Update(tick);
        window.draw(backgrSp);
        window.draw(player->getSprite());

        if (player->getBullets().size() > 0) {
            for (int i = 0; i<player->getBullets().size(); i++)
                window.draw(player->getBullets()[i]->getShape());
        }

        //window.draw(player->getBullets());
        window.draw(text);
        window.display();
    }
    delete player;
}

void Application::Pause()
{
}

void Application::Exit()
{
}

int Application::getWidth()
{
    return _WIDTH;
}

int Application::getHeigth()
{
    return _HEIGHT;
}
