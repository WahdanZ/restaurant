# Restaurant Reservation App

A Flutter-based restaurant reservation app with food items listing and table reservations functionality. The app integrates with Firebase for backend services and is deployed as a web app using GitHub Pages.

## Live Demo

Check out the live demo of the application:
- [Restaurant Reservation App](https://restaurant-5b40a.web.app)

## Task Description

The task was to build a restaurant reservation app using Flutter that allows users to:
- View a list of food items.
- Reserve tables at a restaurant for a specific date and time.
- Manage table reservations (reserve and cancel reservations).
- Authenticate users anonymously using Firebase Authentication.
- Store and fetch reservation details from Firebase Firestore.
- Preload the app with seed data for food items, tables, and reservations for testing and demonstration purposes.
- Provide a top-right button to refresh and reseed the data.

The project is implemented using Clean Architecture and Bloc for state management. The app is fully responsive and can run on mobile, web, and desktop platforms.

## Seed Data

The app includes preloaded seed data to showcase the food items, tables, and reservations. This seed data is useful for testing and demonstration purposes. The following data is seeded when the app is first launched:

- **Food Items**: 50 food items are preloaded with details such as name, description, price, and image URL.
- **Tables**: 10 restaurant tables are seeded with details like table name, number of chairs, and availability status.
- **Reservations**: Fake reservation data is included to simulate actual table bookings within the restaurant.

A button on the top-right corner of the screen allows users to reseed the data at any time by clicking on it. This is useful for resetting the app to its initial state during testing or demos.

## Firebase Collections Structure

### `tables` Collection
This collection contains information about the restaurant tables.

| Field Name | Data Type | Description                             |
|------------|-----------|-----------------------------------------|
| `id`       | String    | Unique identifier for the table         |
| `chairs`   | Number    | Number of chairs available at the table |
| `name`     | String    | Name or label for the table             |

### `reservations` Collection
This collection stores the details about reservations made by users.

| Field Name   | Data Type | Description                                  |
|--------------|-----------|----------------------------------------------|
| `id`         | String    | Unique identifier for the reservation        |
| `userId`     | String    | ID of the user making the reservation        |
| `tableId`    | String    | ID of the reserved table                     |
| `username`   | String    | Name of the user who made the reservation    |
| `startTime`  | Timestamp | Start time of the reservation                |
| `endTime`    | Timestamp | End time of the reservation                  |

### `food_items` Collection
This collection holds the list of food items available in the restaurant.

| Field Name   | Data Type | Description                             |
|--------------|-----------|-----------------------------------------|
| `id`         | String    | Unique identifier for the food item     |
| `name`       | String    | Name of the food item                   |
| `description`| String    | Description of the food item            |
| `price`      | Number    | Price of the food item                  |
| `imageUrl`   | String    | URL to the image of the food item       |
| `category`   | String    | Category of the food item (e.g., Main)  |

## Project Structure

The project follows a clean architecture pattern with a feature-based folder structure.
    
    ```
restaurant_app/
├── lib/
│   ├── base/                     # Base classes and utilities
│   ├── di/                       # Dependency injection setup
│   │   └── injector.dart         # Injector configuration file
│   ├── feature/                  # Main features of the app
│   │   ├── food_items/           # Food items listing feature
│   │   │   ├── data/             # Data layer (models, repository)
│   │   │   │   ├── mapper/       # Mappers for converting between Data and Domain layers
│   │   │   │   ├── model/        # Data models
│   │   │   │   ├── repository/   # Repository implementation
│   │   │   ├── remote/           # Remote data sources (Firestore)
│   │   │   │   ├── model/        # Remote data models
│   │   │   │   ├── food_api.dart # Firestore API for food items
│   │   │   ├── domain/           # Domain layer (entities, use cases)
│   │   │   │   ├── entity/       # Domain entities
│   │   │   │   ├── usecases/     # Use cases for food items
│   │   │   ├── presentation/     # Presentation layer (bloc, widgets, pages)
│   │   │   │   ├── bloc/         # Bloc state management
│   │   │   │   ├── widgets/      # Reusable UI components
│   │   │   │   └── pages/        # UI pages (Food items page, detail page)
│   │   ├── table_reservation/    # Table reservation feature
│   │   │   ├── data/             # Data layer (models, repository)
│   │   │   │   ├── mapper/       # Mappers for converting between Data and Domain layers
│   │   │   │   ├── model/        # Data models
│   │   │   │   ├── repository/   # Repository implementation
│   │   │   ├── remote/           # Remote data sources (Firestore)
│   │   │   │   ├── model/        # Remote data models
│   │   │   │   ├── table_api.dart # Firestore API for tables and reservations
│   │   │   ├── domain/           # Domain layer (entities, use cases)
│   │   │   │   ├── entity/       # Domain entities
│   │   │   │   ├── usecases/     # Use cases for reservations
│   │   │   ├── presentation/     # Presentation layer (bloc, widgets, pages)
│   │   │   │   ├── bloc/         # Bloc state management
│   │   │   │   ├── widgets/      # Reusable UI components
│   │   │   │   └── pages/        # UI pages (Reservation pages, table list)
│   ├── main.dart                 # Entry point of the application
├── test/
│   ├── mocks.dart                # Mock classes for testing
│   ├── unit_tests/               # Unit tests for various features
│   ├── features/                 # Unit tests for various features
│   │   ├── food_items/           # data , domain and presentation tests for food items feature
│   │   ├── table_reservation/    # data , domain and presentation tests for table reservation feature
│   └── test_injection.dart       # Test dependency injection setup
├── pubspec.yaml                  # Dart dependencies
    
```

### Key Features:
- **Authentication**: Anonymous user authentication via Firebase.
- **Food Listing**: A list of food items fetched from Firestore.
- **Table Reservation**: Users can select a table and make reservations for a specific time period. Tables have three statuses: Available, Reserved, or Reserved by the current user.
- **State Management**: The app uses Bloc for state management with clean architecture principles.

## How to Run the App

## Installation

### Prerequisites
- [Flutter](https://flutter.dev/docs/get-started/install)
- [FVM (Flutter Version Management)](https://fvm.app/documentation/getting-started/installation)

### Setup
1. **Clone the repository**
    ```bash
   git clone https://github.com/WahdanZ/restaurant.git
   cd restaurant
    ```

2. **Install dependencies using FVM**
    ```bash
    fvm install
    fvm use
    ```

3. **Get Flutter packages**
    ```bash
    fvm flutter pub get
    ```

4. **Generate necessary files**
    ```bash
    fvm flutter pub run build_runner build --delete-conflicting-outputs
    ```


## Usage
**Run the app**

    ```bash
    fvm flutter run
    ```

## Testing

### Unit Tests
1. **Run unit tests**
    ```bash
    fvm flutter test
    ```
   