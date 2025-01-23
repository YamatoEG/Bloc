Here’s a concise, styled README for your Bloc-based project:

---

# **Flutter Bloc Counter App**

This app demonstrates the use of **Bloc** for state management in a Flutter counter application. It includes three different screens to showcase `BlocListener`, `BlocBuilder`, and `BlocConsumer` functionalities.

---

## **Main Screen**

The main screen provides navigation to three screens:
1. **Bloc Listener**
2. **Bloc Builder**
3. **Bloc Consumer**

The `CounterCubit` is globally provided using a `BlocProvider` to manage the app's state.

---

## **Screens**

### 1. **Bloc Listener**
- **Functionality**: Listens to specific state changes and reacts without rebuilding the UI.
- **Feature**: Displays a SnackBar when the counter reaches **-10**.

---

### 2. **Bloc Builder**
- **Functionality**: Rebuilds the UI based on the current state of the counter.
- **Feature**: Updates the displayed counter value dynamically when incremented or decremented.

---

### 3. **Bloc Consumer**
- **Functionality**: Combines the features of `BlocListener` and `BlocBuilder`.
- **Features**:
  - Rebuilds the UI when the counter state changes.
  - Displays a SnackBar when the counter reaches **-10**.

---

## **Floating Action Buttons**

Each screen provides two floating action buttons:
1. **Increment Button**: Increases the counter value.
2. **Decrement Button**: Decreases the counter value.

---

## **How to Run**
1. Clone this repository.
2. Run `flutter pub get` to install dependencies.
3. Use `flutter run` to launch the app.

---
