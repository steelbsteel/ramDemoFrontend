# ram-Demo

Данный проект разработан разработчиком Danil Abramov (steelbsteel) и представляет собой мобильное приложение-энциклопедию по вселенной Рика и Морти.
Проект разработан с целью демонстрации навыков построения чистой архитектуры, управления сложным состоянием и работы с GraphQL в экосистеме Flutter.

## Стек технологий

Mobile:

- Flutter (версия 3.38.10)
- Dart (версия 3.10.9)
- Управление версиями Flutter: FVM
- Роутинг: `auto_route`
- Управление состоянием: `bloc` / `flutter_bloc`
- Внедрение зависимостей (DI): `get_it`, `injectable`
- Сеть общения с API: `dio`, `graphql`
- Локализация: `slang`
- Логирование: `talker`

## Установка и запуск проекта

1. Клонировать проект в IDE
   `git clone => вставить url репозитория <https://github.com/steelbsteel/ramDemoFrontend>`
2. Установка версии Flutter
   
   С помощью FVM:
   2.1.1 Открыть терминал и активировать менеджер версий
   `dart pub global activate fvm`
   2.1.2 Установить версию и использовать её
   `fvm install <версия_фреймворка>`  
   `fvm use <версия_фреймворка>`

    С помощью установки версии из браузера:
   2.2.1 Перейти на официальный сайт контроля версий Flutter
   `https://docs.flutter.dev/install/archive`
   2.2.2 Установить версию 3.38.10 с указанием дефолтного пути для Flutter SDK на вашем устройстве
   
3. Запустить процесс загрузки и актуализации пакетов проекта, используя следующую последовательность команд:
   - `fvm flutter doctor -v`
   - `fvm flutter clean`
   - `fvm flutter pub get`
4. Запустить проект из IDE, используя конфигурационный файл launch.json, либо из терминала:
   `flutter run --dart-define-from-file=<ваш_путь_до_файла_окружения>`
   Запуск с базовым расположением файла env:
   `flutter run --dart-define-from-file=assets/env/dev.json`

## FAQ

**Как убедиться что версия флаттера используется именно от fvm?**

1. Проверить путь до flutter sdk из терминала проекта:
   `which flutter`
   Если FVM используется корректно, путь должен содержать `.fvm/flutter_sdk`, например:
   `/Users/yourname/your_project/.fvm/flutter_sdk/bin/flutter`
2. Запустить команду проверки версии flutter с использованием fvm
   `fvm flutter --version`
3. Проверить `.fvm/fvm_config.json`
   Файл `.fvm/fvm_config.json` должен быть в корне проекта. Его содержимое примерно такое:
   `{"flutterSdkVersion": "3.38.10"}`
4. Проверка созданного файла pubspec.lock
   После успешной настройки проекта и загрузки зависимостей, можно проверить, значение flutter sdk в новом файле pubspec.lock:
   (версия должна совпадать с той, которая указана в `.fvm/fvm_config.json`)
5. Проверка выставленной версии flutter в IDE:
   Убедись, что в **Android Studio / VS Code** путь до Flutter SDK указывает на: `<путь_к_проекту>/.fvm/flutter_sdk`

## Структура проекта

- `/lib/core` `# Базовые утилиты, инфраструктура, сеть (Dio, GraphQL), ресурсы, дизайн-система AppSizes, тема`
- `/lib/app` `# Инициализация зависимостей GetIt, роутер AutoRoute`
- `/lib/features` `# Фичи (по разделам приложения RAMApp), с разделением на domain, data, presentation`
- `/assets` `# Внешние ресурсы: env конфигурации (dev.json), иконки, splash-файлы (logo), переводы (l10n)`
- `/fonts` `# Шрифты проекта (Golos)`

### Переменные окружения

1. `assets/env/dev.json` - **dev** конфигурация

### Описание ключевых переменных (пример):

- `ENV` (String) - наименование окружения
- `BASE_API_URL` (String) - домен адреса сервера GraphQL API

## Скрипты и команды

#### Кодогенерация переводов (slang)

`dart run slang`

#### Генерация DI (injectable), Freezed, GraphQL и AutoRoute

`dart run build_runner build --delete-conflicting-outputs`

#### Актуализация схемы GraphQL в корне проекта

`get-graphql-schema [YOUR_GRAPHQL_ENDPOINT] > schema.graphql`

**Актуализация схемы GraphQL с сохранением в конкретную папку (в нашем случае)**
`get-graphql-schema https://rickandmortyapi.com/graphql | Set-Content lib/features/data/schema/schema.graphql`

**Актуализация схемы GraphQL с сохранением в конкретную папку (если используется PowerShell в Windows, то лучше использовать эту команду, так как она сохраняет схему с кодировкой UTF8)**
`get-graphql-schema https://rickandmortyapi.com/graphql | Set-Content -Encoding UTF8 lib/features/data/schema/schema.graphql`

#### Пересборка проекта

`flutter clean && flutter pub get && dart run build_runner build --delete-conflicting-outputs`

#### Сборка приложения (Build)

**Web:**
`fvm flutter build web --web-renderer canvaskit --release --dart-define-from-file assets/env/dev.json`

**Android (APK):**
`fvm flutter build apk --release --dart-define-from-file assets/env/dev.json`

**iOS:**
`fvm flutter build ios --release --no-codesign --dart-define-from-file assets/env/dev.json`

#### Analyzer / Форматирование кода

`dart fix --dry-run`

### Правила кода (Lint rules & code style)

- Используются правила: `flutter_lints`, `dart_code_metrics`
- Наименование файлов: `snake_case`
- Не использовать `print`, использовать вызовы логгера библиотеки **talker**.
- Все события(events)/методы коллбеков в UI именуются конструкцией `on...`, например `onTap`, `onLogin` и т.д.
- Основные правила описаны в файле - `analysis_options.yaml`

##### Разработчик: steelbsteel
