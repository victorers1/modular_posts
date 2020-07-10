# modular_posts

A new Flutter project using Dio, Modular w/ MobX to show posts provided by [JSONPlaceholder](https://jsonplaceholder.typicode.com/posts).

## Running the app

1. Follow Flutter's [installation instructions](https://flutter.dev/docs/get-started/install).
2. Run `flutter doctor -v` to do a dependency check. The output should be
 something similar to this:

   ```Terminal
   [✓] Flutter (Channel stable, v1.17.1, on Linux, locale pt_BR.UTF-8)
   • Flutter version 1.17.1 at /home/victor/flutter
   • Framework revision f7a6a7906b (10 dias atrás), 2020-05-12 18:39:00 -0700
   • Engine revision 6bc433c6b6
   • Dart version 2.8.2

   [✓] Android toolchain - develop for Android devices (Android SDK version 29.0.3)
   • Android SDK at /home/victor/Android/Sdk
   • Platform android-29, build-tools 29.0.3
   • ANDROID_HOME = /home/victor/Android/Sdk
   • Java binary at: /snap/android-studio/88/android-studio/jre/bin/java
   • Java version OpenJDK Runtime Environment (build 1.8.0_212-release-1586-b4-5784211)
   • All Android licenses accepted.

   [✓] Android Studio (version 3.6)
   • Android Studio at /snap/android-studio/88/android-studio
   • Flutter plugin version 45.1.1
   • Dart plugin version 192.8052
   • Java version OpenJDK Runtime Environment (build 1.8.0_212-release-1586-b4-5784211)

   [✓] Connected device (1 available)

   • No issues found!

   ```

---
**Note** : all of these versions numbers may differ from yours.

---

## Folder architecture

```Folder
- assets/
    - images/
- lib/
    - controllers/
    - models/
    - modules/
    - ui/
    - services/
    - pages/
        - all/
        - customer/
        - partner/
    - utils/
- main.dart
```

- `controllers/`: MobX controllers
- `models/`: model's classes
- `modules/`: modular declaration files
- `ui/`: custom widgets
- `services/`: APIs services
- `pages/`: app screens
- `utils/`: other useful codes
