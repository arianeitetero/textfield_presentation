# TextField Demo

This app asks for a name and shows a greeting. It also shows three TextField properties.

## Run the app

Run these commands in the project folder:

```sh
flutter pub get
flutter run
```

## Properties

- **`readOnly`**: The default is `false`, so you can type in the field. Set it to `true` to stop edits.
- **`obscureText`**: The default is `false`, so you can see what you type. Set it to `true` to hide the text.
- **`maxLines`**: The default is `1`. Set it to `3` to make room for text on three lines.

## Screenshots

![The app before entering a name](screenshots/default-state.png)

![The app with a greeting and property examples](screenshots/properties-demo.png)

![The app showing a message when the name is empty](screenshots/validation-state.png)

Presentation date: October 12, 2026.
