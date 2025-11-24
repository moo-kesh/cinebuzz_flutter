# Cinebuzz Flutter

> **Note**: This project is currently a Work In Progress (WIP).

Cinebuzz Flutter is a movie discovery application built with **Clean Architecture** and **Feature-First** organization. It fetches data from the TMDB API and allows users to browse trending movies, search for titles, and bookmark their favorites.

## Features

- **Trending Movies**: View a list of currently trending movies.
- **Now Playing**: See what's currently in theaters.
- **Search**: Search for movies by title.
- **Bookmarks**: Save your favorite movies locally (using Hive).
- **Movie Details**: View detailed information about a movie.

## Tech Stack

- **Framework**: Flutter
- **State Management**: `flutter_bloc` with `freezed` for Events/States.
- **Dependency Injection**: `get_it` (Service Locator pattern).
- **Networking**: `retrofit` with `dio`.
- **Data Mapping**: `json_serializable`.
- **Local Storage**: `hive_ce`.
- **Navigation**: `go_router`

## Architecture

The project follows **Clean Architecture** principles with a strict separation of concerns:

1.  **Domain Layer** (Inner Circle - Pure Dart):
    -   **Entities**: Core business objects.
    -   **Use Cases**: Single responsibility classes for business logic.
    -   **Repositories**: Abstract interfaces.

2.  **Data Layer** (Adapter):
    -   **Models**: DTOs extending Entities.
    -   **Data Sources**: Remote (API) and Local (Database) data sources.
    -   **Repositories**: Implementations of Domain interfaces.

3.  **Presentation Layer**:
    -   **BLoC**: Manages state using `freezed` unions.
    -   **UI**: Widgets and Pages.

## Getting Started

### Prerequisites

- Flutter SDK
- [TMDB API Key](https://developer.themoviedb.org/docs/getting-started) (Sign up and create an API key)

### Installation

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/yourusername/cinebuzz_flutter.git
    cd cinebuzz_flutter
    ```

2.  **Install dependencies**:
    ```bash
    flutter pub get
    ```

3.  **Code Generation**:
    Run the build runner to generate code for JSON serialization, Retrofit, and Freezed:
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```

4.  **Configuration & Running**:
    You will need to provide your TMDB API key. You can pass it using `--dart-define` when running the app:

    ```bash
    flutter run --dart-define=TMDB_API_KEY=your_api_key_here
    ```

    Alternatively, you can configure it in `lib/core/network/api_key_interceptor.dart` directly for development (not recommended for public repos).

    > **Warning**: In some regions (e.g., India), TMDB APIs may be blocked by certain ISPs (like Jio). If you face connection issues, try using a VPN or a different network.

## Folder Structure

```
lib/
├── core/                   # Shared (Network, Error, Utils, UseCases)
├── features/
│   ├── [feature_name]/     # e.g., movies, search, bookmarks
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── presentation/
│   │       ├── bloc/
│   │       ├── pages/
│   │       └── widgets/
├── injection_container.dart
└── main.dart
```
