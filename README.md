# Rick and Morty App

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

Flutter application to explore the Rick and Morty universe using the official Rick and Morty GraphQL API. Built with
Riverpod for state management, GraphQL for data fetching, and featuring characters, locations, and episodes exploration.

## Prerequisites

Before getting started, make sure you have the following installed:

- **Flutter SDK**: >=3.10.0 <4.0.0
- **Dart SDK**: >=3.10.0 <4.0.0
- **IDE**: VSCode or Android Studio with Flutter extensions
- **Platforms**:
    - For iOS: Xcode (macOS only)
    - For Android: Android Studio or Android SDK
    - For Web: Google Chrome
    - For Windows: Visual Studio 2019 or later

## Initial Setup

### 1. Clone the repository

```bash
git clone <repository-url>
cd rick_morty_app
```

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Configure bundle identifiers (Optional)

If you want to rename the bundle identifiers for each platform:

#### Android

- Edit `android/app/build.gradle`
- Change the `applicationId` value

#### iOS

- Open `ios/Runner.xcworkspace` in Xcode
- Select `Runner` target
- Change the `Bundle Identifier` in the General tab

### 4. Generate code

This project uses code generation for GraphQL, Riverpod providers, Freezed models, and assets. Generate the required
code:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### 5. Generate assets

The project uses `flutter_gen` to generate type-safe access to assets:

```bash
# Assets are generated automatically with build_runner
# SVG files are compiled to vector graphics format
```

Assets are located at:

- `assets/images/` - Image files
- `assets/svg/` - SVG vector graphics

### 6. Generate localization files

The project supports multiple languages (English and Spanish). Generate the localization files:

```bash
flutter gen-l10n --arb-dir="lib/l10n/arb"
```

Translation files are located at:

- `lib/l10n/arb/app_en.arb` (English)
- `lib/l10n/arb/app_es.arb` (Spanish)

## Development

### Available Flavors

This project contains 3 flavors for different environments:

- **development**: For local development and testing
- **staging**: For pre-production testing
- **production**: For production releases

### Run in development mode

#### Using VSCode/Android Studio

Use the launch configuration in your IDE to select the desired flavor.

#### Using command line

```bash
# Development
flutter run --flavor development --target lib/main_development.dart

# Staging
flutter run --flavor staging --target lib/main_staging.dart

# Production
flutter run --flavor production --target lib/main_production.dart
```

### Run on specific platforms

```bash
# iOS
flutter run --flavor development --target lib/main_development.dart -d iPhone

# Android
flutter run --flavor development --target lib/main_development.dart -d android

# Web
flutter run --flavor development --target lib/main_development.dart -d chrome

# Windows
flutter run --flavor development --target lib/main_development.dart -d windows
```

### Build for production

```bash
# iOS
flutter build ios --flavor production --target lib/main_production.dart

# Android (App Bundle)
flutter build appbundle --flavor production --target lib/main_production.dart

# Android (APK)
flutter build apk --flavor production --target lib/main_production.dart

# Web
flutter build web --target lib/main_production.dart

# Windows
flutter build windows --target lib/main_production.dart
```

## Project Structure

```
lib/
├── l10n/                      # Localization files
│   ├── arb/                  # .arb files for translations
│   └── gen/                  # Generated localization files
├── core/                     # Core application infrastructure
│   ├── common/              # Common utilities and helpers
│   ├── gen/                 # Generated assets (flutter_gen)
│   ├── graph_ql/            # GraphQL configuration and client
│   ├── notifier/            # Base notifiers and state management
│   ├── routes/              # Go Router configuration
│   ├── theme/               # App theming
│   └── widgets/             # Shared widgets
├── app/                     # App initialization
│   └── view/                # Main app view
└── features/                # Feature modules
    ├── character_list/      # Characters listing
    ├── character_detail/    # Character details
    ├── location_list/       # Locations listing
    ├── location_detail/     # Location details
    ├── episode_list/        # Episodes listing
    └── episode_detail/      # Episode details
assets/
├── images/                  # Image assets
└── svg/                     # SVG vector graphics
```

## Features

### Characters

- **Browse Characters**: Paginated list of all Rick and Morty characters
- **Character Details**: Detailed information about each character
    - Name, status, species, type, gender
    - Origin and current location
    - Episodes appearances
    - Character image
- **Search**: Search characters by name
- **Filter**: Filter by status (Alive, Dead, Unknown)

### Locations

- **Browse Locations**: Explore all locations in the Rick and Morty universe
- **Location Details**: Detailed information about each location
    - Name, type, dimension
    - Residents of the location
    - Episode appearances
- **Search**: Find locations by name
- **Filter**: Filter by type and dimension

### Episodes

- **Browse Episodes**: List of all Rick and Morty episodes
- **Episode Details**: Complete episode information
    - Episode name and air date
    - Episode code (S01E01 format)
    - Characters in the episode
- **Search**: Search episodes by name
- **Filter**: Filter by season

### UI/UX Features

- **Beautiful UI**: Custom Material Design with Rick and Morty theme
- **Vector Graphics**: Crisp SVG icons and illustrations
- **Smooth Navigation**: Go Router for declarative routing
- **Loading States**: Elegant loading indicators
- **Error Handling**: User-friendly error messages
- **Offline Ready**: GraphQL caching for offline access
- **Responsive**: Adapts to different screen sizes

## Localization (l10n)

### Add new translations

1. Edit the `.arb` files in `lib/l10n/arb/`:
    - `app_en.arb` for English
    - `app_es.arb` for Spanish

2. Add new key/value pairs:
   ```json
   {
     "@@locale": "en",
     "newKey": "New translation",
     "@newKey": {
       "description": "Description of the new key"
     }
   }
   ```

3. Regenerate localization files:
   ```bash
   flutter gen-l10n --arb-dir="lib/l10n/arb"
   ```

4. Use the new string in your code:
   ```dart
   import 'package:rick_morty_app/l10n/l10n.dart';

   @override
   Widget build(BuildContext context) {
     final l10n = context.l10n;
     return Text(l10n.newKey);
   }
   ```

### Add new language

1. Create a new `.arb` file in `lib/l10n/arb/`:
   ```
   app_fr.arb  # For French
   ```

2. Update iOS localization in `ios/Runner/Info.plist`:
   ```xml
   <key>CFBundleLocalizations</key>
   <array>
     <string>en</string>
     <string>es</string>
     <string>fr</string>
   </array>
   ```

3. Regenerate localization files

## Testing

### Run all tests

```bash
flutter test
```

### Run tests with coverage

```bash
flutter test --coverage --test-randomize-ordering-seed random
```

### View coverage report

```bash
# Generate coverage report
genhtml coverage/lcov.info -o coverage/

# Open coverage report in browser
open coverage/index.html
```

### Run specific test file

```bash
flutter test test/path/to/test_file.dart
```

## Code Quality

### Run code analysis

The project uses `very_good_analysis` to maintain code quality:

```bash
flutter analyze
```

### Format code

```bash
flutter format .
```

### Generate code

This project uses code generation for GraphQL queries, Riverpod providers, and Freezed models:

```bash
# Generate code
flutter pub run build_runner build --delete-conflicting-outputs

# Watch for changes and auto-generate
flutter pub run build_runner watch --delete-conflicting-outputs
```

## Main Dependencies

### State Management & Architecture

- **hooks_riverpod**: State management and dependency injection
- **flutter_hooks**: React-like hooks for Flutter
- **riverpod_annotation**: Annotations for Riverpod code generation

### GraphQL

- **graphql**: GraphQL client for Flutter
- **gql**: GraphQL query language support

### Navigation

- **go_router**: Declarative routing

### Data Models

- **freezed**: Immutable data classes
- **freezed_annotation**: Annotations for Freezed
- **json_serializable**: JSON serialization

### UI Components

- **vector_graphics**: SVG rendering
- **collection**: Enhanced collection utilities

### Assets Management

- **flutter_gen_runner**: Type-safe asset generation

### Localization

- **flutter_localizations**: Internationalization support
- **intl**: Internationalization and localization utilities

### Dev Dependencies

- **build_runner**: Code generation
- **riverpod_generator**: Riverpod code generation
- **flutter_launcher_icons**: App icon generation
- **flutter_native_splash**: Splash screen generation
- **vector_graphics_compiler**: SVG to vector graphics compiler
- **remove_from_coverage**: Exclude generated files from coverage
- **mocktail**: Mocking library for tests
- **very_good_analysis**: Strict lint rules

## API Documentation

This project uses the Rick and Morty GraphQL API:

- **GraphQL Endpoint**: `https://rickandmortyapi.com/graphql`
- **REST Documentation**: [Rick and Morty API Docs](https://rickandmortyapi.com/documentation)
- **GraphQL Playground**: [GraphQL Explorer](https://rickandmortyapi.com/graphql)

### GraphQL Queries

The app uses the following main queries:

#### Characters

```graphql
query Characters($page: Int, $filter: FilterCharacter) {
  characters(page: $page, filter: $filter) {
    info { count, pages, next, prev }
    results {
      id, name, status, species, type, gender
      image
      origin { id, name }
      location { id, name }
      episode { id }
    }
  }
}
```

#### Locations

```graphql
query Locations($page: Int, $filter: FilterLocation) {
  locations(page: $page, filter: $filter) {
    info { count, pages, next, prev }
    results {
      id, name, type, dimension
      residents { id }
    }
  }
}
```

#### Episodes

```graphql
query Episodes($page: Int, $filter: FilterEpisode) {
  episodes(page: $page, filter: $filter) {
    info { count, pages, next, prev }
    results {
      id, name, air_date, episode
      characters { id }
    }
  }
}
```

## GraphQL Integration

### Client Configuration

The GraphQL client is configured in `lib/core/graph_ql/`:

- Optimistic caching for offline support
- Custom error handling
- Network-only fetch policy for fresh data
- Cache-first for subsequent requests

### Best Practices

- Use code generation for type-safe queries
- Implement pagination for large data sets
- Cache responses for offline access
- Handle loading and error states gracefully

## Troubleshooting

### Error: "Flutter SDK not found"

Verify that Flutter is installed correctly and in your PATH:

```bash
flutter doctor
```

### GraphQL API errors

- Check your internet connection
- Verify the API endpoint is accessible
- Check API status at [Rick and Morty API](https://rickandmortyapi.com/)

### Code generation fails

Clean and regenerate:

```bash
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

### Assets not found

Make sure assets are generated:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### SVG rendering issues

- Verify SVG files are valid
- Check `vector_graphics_compiler` is installed
- Ensure SVG transformers are configured in pubspec.yaml

### l10n generation error

Regenerate localization files:

```bash
flutter gen-l10n --arb-dir="lib/l10n/arb"
```

### Flavor not found error

Make sure you're specifying both the flavor and target:

```bash
flutter run --flavor development --target lib/main_development.dart
```

### iOS build fails

Clean and rebuild:

```bash
flutter clean
cd ios
pod install
cd ..
flutter build ios --flavor development --target lib/main_development.dart
```

### Android build fails

Clean project:

```bash
flutter clean
cd android
./gradlew clean
cd ..
flutter build apk --flavor development --target lib/main_development.dart
```

### Tests failing

Run tests with verbose output:

```bash
flutter test --reporter=expanded
```

### Riverpod provider not found

Make sure you've generated the providers:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Performance Optimization

This app implements several performance optimizations:

- **GraphQL Caching**: Responses cached for offline access and faster loads
- **Lazy Loading**: Images and data loaded on demand
- **Efficient State Management**: Riverpod's fine-grained reactivity
- **Vector Graphics**: SVGs compiled to efficient vector format
- **Code Generation**: Compile-time code generation for better performance
- **Pagination**: Load data in chunks to reduce memory usage

## Architecture

### Riverpod Pattern

The app follows best practices with Riverpod:

- **Providers**: Global state and dependency injection
- **Notifiers**: Complex state management with AsyncNotifier
- **Code Generation**: Type-safe providers with riverpod_generator
- **Hooks**: React-like hooks for widget state

### Data Flow

1. UI triggers an action (navigation, button press)
2. Notifier receives the action
3. GraphQL client fetches data from API
4. Data is cached locally
5. Notifier updates state
6. UI rebuilds reactively

### Feature Organization

Each feature is self-contained:

- **View**: UI widgets and screens
- **Notifier**: State management logic
- **Models**: Data classes (generated with Freezed)
- **Queries**: GraphQL queries and mutations

## Contributing

1. Create a branch from `main`
2. Make your changes
3. Run tests: `flutter test`
4. Run analysis: `flutter analyze`
5. Format code: `flutter format .`
6. Generate code if needed: `flutter pub run build_runner build --delete-conflicting-outputs`
7. Create a Pull Request to `main`

## Testing Strategy

### Unit Tests

- Notifier state testing
- GraphQL query validation
- Business logic testing

### Widget Tests

- Widget rendering tests
- User interaction tests
- Navigation testing

### Integration Tests

- End-to-end user flows
- GraphQL integration testing
- Offline behavior testing

## Future Enhancements

Potential features for future versions:

- **Favorites**: Save favorite characters, locations, and episodes
- **Advanced Search**: Multi-field search with complex filters
- **Character Comparison**: Compare multiple characters side by side
- **Episode Guide**: Track watched episodes
- **Trivia Game**: Quiz based on show data
- **Character Timeline**: Visual timeline of character appearances
- **Social Sharing**: Share favorite characters on social media
- **Dark Mode**: Full dark theme support
- **Animations**: Enhanced transitions and animations
- **Voice Search**: Search using voice commands

## Credits

- **Rick and Morty API**: [rickandmortyapi.com](https://rickandmortyapi.com/)
- **Rick and Morty**: Created by Justin Roiland and Dan Harmon
- This is a fan-made app and is not affiliated with Adult Swim or Cartoon Network

## License

This project is licensed under the MIT License - see the [LICENSE](https://opensource.org/licenses/MIT) for details.

---

Generated by the [Very Good CLI][very_good_cli_link] 🤖

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
