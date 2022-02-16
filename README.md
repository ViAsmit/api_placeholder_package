# API Placeholder

[![pub package](https://img.shields.io/pub/v/shared_preferences.svg)](https://pub.dev/packages/api_placeholder) [![pub package](https://img.shields.io/badge/dependencies-http-blue)](https://pub.dev/packages/api_placeholder) 



A composable, light-weight package that can be used as a placeholder whenever you need some fake data.
With this package, you can get some famous API Responses like, users, posts, comment, photos, todos, etc.
It can be used for prototyping and testing, before using real Real API Endpoints.

## Usage

To use this plugin, add `api_placeholder` as a dependency in your `pubspec.yaml`

```dart
  void getFakeUsers() async {
    String x = await ApiPlaceholder().getUsers()
    // Return a list of users
    print(x);
  }
  
  void getFakePhotos() async {
    String x = await ApiPlaceholder().getPhotos(id: 4);
    // When Id is passed, it returns only one photo with that particular Id
    print(x);
  }
  
  void getFakeTodos() async {
    String x = await ApiPlaceholder().getTodos(limit: 5);
    // When limit is passed, it limits the number od todos.
    print(x);
  }
```


## Additional information

Everyone is welcome to contrbute, or file any issue on this package.

Github Repo: https://github.com/ViAsmit/api_placeholder_package
