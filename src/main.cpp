// #include <SFML/Graphics.hpp> 
#include <cmath>
#include <random>

// Define constants
const int SCREEN_WIDTH = 1600;
const int SCREEN_HEIGHT = 1600;
const sf::Color BACKGROUND_COLOR = sf::Color::White;
const float PENDULUM_LENGTH_SCALE = 0.75f;
const float G = 9.81f;
const float L1 = 100 * PENDULUM_LENGTH_SCALE;
const float L2 = 100 * PENDULUM_LENGTH_SCALE;
const float M1 = 10 * PENDULUM_LENGTH_SCALE;
const float M2 = 10 * PENDULUM_LENGTH_SCALE;
const float TIME_STEP = 0.01f;
const int NUM_PENDULUMS = 1000;
const int MIN_HUE = 180;
const int MAX_HUE = 260;
const float SATURATION = 1.0f;
const float VALUE = 1.0f;

// Define classes
class DoublePendulum {
public:
    DoublePendulum(float x, float y) :
        x(x),
        y(y),
        theta1(M_PI / 2 + std::uniform_real_distribution<float>{-0.01f, 0.01f}(rng)),
        theta2(M_PI / 2 + std::uniform_real_distribution<float>{-0.01f, 0.01f}(rng)),
        omega1(0),
        omega2(0),
        hue(std::uniform_real_distribution<float>{MIN_HUE, MAX_HUE}(rng)),
        line_width(3)
    {
        color = sf::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::Color::hsv(hue, SATURATION * 100, VALUE * 100);
    }

    void update() {
        float alpha1 = -G * (2 * M1 + M2) * std::sin(theta1) - M2 * G * std::sin(theta1 - 2 * theta2) - 2 * std::sin(theta1 - theta2) * M2 * (omega2 * omega2 * L2 + omega1 * omega1 * L1 * std::cos(theta1 - theta2));
        alpha1 /= L1 * (2 * M1 + M2 - M2 * std::cos(2 * theta1 - 2 * theta2));

        float alpha2 = 2 * std::sin(theta1 - theta2) * (omega1 * omega1 * L1 * (M1 + M2) + G * (M1 + M2) * std::cos(theta1) + omega2 * omega2 * L2 * M2 * std::cos(theta1 - theta2));
        alpha2 /= L2 * (2 * M1 + M2 - M2 * std::cos(2 * theta1 - 2 * theta2));

        omega1 += alpha1 * TIME_STEP;
        omega2 += alpha2 * TIME_STEP;
        theta1 += omega1 * TIME_STEP;
        theta2 += omega2 * TIME_STEP;
    }

    void draw(sf::RenderWindow& window) {
        float x1 = x + L1 * std::sin(theta1);
        float y1 = y + L1 * std::cos(theta1);
        float x2 = x1 + L2 * std::sin(theta2);
        float y2 = y1 + L2 * std::cos(theta2);

        sf::VertexArray lines(sf::Lines, 2);
        lines[0].position = sf::Vector2f(x, y);
        lines[0].color = color;
        lines[1].position = sf::Vector2f(x1, y1);
        lines[1].color = color;
        window.draw(lines);

        lines[0].position = sf::Vector2f(x1, y1);
        lines[1].position = sf::Vector2f(x2, y2);
        window.draw(lines);
    }

private:
    float x, y;
    float theta1, theta2;
    float omega1, omega2;
    float hue;
    int line_width;
    sf::Color color;
    std::default_random_engine rng;
};

int main()
{
    // Create the window
    sf::RenderWindow window(sf::VideoMode(SCREEN_WIDTH, SCREEN_HEIGHT), "Double Pendulum Simulation", sf::Style::Close);

    // Create the double pendulums
    std::vector<DoublePendulum> pendulums;
    for (int i = 0; i < NUM_PENDULUMS; i++) {
        pendulums.emplace_back(DoublePendulum(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2));
    }

    // Start the simulation loop
    while (window.isOpen()) {
        // Handle events
        sf::Event event;
        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed) {
                window.close();
            }
        }

        // Update the double pendulums
        for (auto& pendulum : pendulums) {
            pendulum.update();
        }

        // Draw the double pendulums
        window.clear(BACKGROUND_COLOR);
        for (auto& pendulum : pendulums) {
            pendulum.draw(window);
        }
        window.display();
    }

    return 0;
}