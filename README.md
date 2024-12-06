# Casino Platform API

## Overview
This repository contains the API documentation and resources for managing player accounts and free rounds in the online casino platform. The API is integrated with SwaggerHub for easy access to the Swagger documentation. Additionally, a Postman collection is available for testing and collaboration.

## API Documentation
The API documentation is available on SwaggerHub. You can view and interact with the API documentation [here](https://app.swaggerhub.com/apis/wild-west-gaming/spinshield-games_api/1.0.0).

## Postman Collection
A Postman collection has been created to facilitate testing and collaboration. You can access the Postman collection [here](https://wildwestgaming.postman.co/workspace/Team-Workspace~5c3ad27b-58ca-4ad5-83f7-385fc25cff69/collection/40259149-f25b674a-3d44-48a8-9baa-d319c9985c1f?action=share&creator=40259149).

## API Methods
### addFreeRounds
Adds free spins to a player. If the player is already playing on the slot machine, it will start the free rounds on the next available spin/init.

### createPlayer
Creates a new player account. If the player already exists, the request is redirected to the playerExists method.

### deleteFreeRounds
Deactivates all active free rounds for a specific player on a specified slot machine.

### deleteAllFreeRounds
Deactivates all active free rounds for a specific player on all slot machines.

### getGameList
Returns all available games. Games eligible for the addFreeRounds method are returned with `freerounds_supported: true`.

### getFreeRounds
Returns all free rounds history for a given player.

### getGame
Opens a game session and returns the game URL that you should serve to your players.

## Getting Started
To get started with the API, follow these steps:
1. **Clone the repository**: `git clone https://github.com/ionninja/wwgswag.git`
2. **Install dependencies**: Follow the instructions in the `setup` directory.
3. **Review the API documentation**: Check the Swagger documentation on SwaggerHub.
4. **Use the Postman collection**: Import the Postman collection and start testing the API.

## Contributing
We welcome contributions from all team members. To contribute, please follow these steps:
1. **Fork the repository**.
2. **Create a new branch**: `git checkout -b feature/your-feature-name`
3. **Make your changes**.
4. **Commit your changes**: `git commit -m 'Add some feature'`
5. **Push to the branch**: `git push origin feature/your-feature-name`
6. **Create a pull request**.

## License
This project is licensed under the MIT License. See the `LICENSE` file for more details.

## Contact
For any questions or concerns, please contact the project lead at [email@example.com](mailto:ryan.g@wildwestgaming.nl).
