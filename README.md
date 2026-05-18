# Dev Store 🛍️

A simple Flutter eCommerce application that fetches products from an online API and displays them in a clean UI.

<img width="1920" height="1080" alt="Screenshot 2026-05-18 154004" src="https://github.com/user-attachments/assets/050ce815-0fa2-43a6-b434-140586ff89c6" />


---

# Features ✨

- Fetch products from API
- Display product image, title, and price
- Wishlist/Favorite icon ❤️
- Clean and responsive UI
- Built using Flutter
- HTTP API integration

---

# Tech Stack 🚀

- Flutter
- Dart
- HTTP Package
- Fake Store API

---

# Installation ⚙️

## 1. Clone the Repository

```bash
git clone https://github.com/your-username/dev-store.git
```

## 2. Open Project

```bash
cd dev-store
```

## 3. Install Dependencies

```bash
flutter pub get
```

## 4. Run the App

```bash
flutter run
```

---

# Dependencies 📦

Add this in `pubspec.yaml`

```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.1
```

Install packages:

```bash
flutter pub get
```

---

# HTTP Import

```dart
import 'package:http/http.dart' as http;
```

---

# API Used 🌐

```text
https://fakestoreapi.com/products
```

---

# Project Structure 📁

```text
lib/
 ├── main.dart


---

# Example API Call

```dart
Future<void> fetchProducts() async {
  final response = await http.get(
    Uri.parse('https://fakestoreapi.com/products'),
  );

  if (response.statusCode == 200) {
    print(response.body);
  }
}
```

---

# Future Improvements 🔥

- Product details page
- Add to cart
- User authentication
- Firebase integration
- Dark mode
- Search functionality

---

# Author 👨‍💻

Created by Dev Pawar

---

# License 📄

This project is open-source and free to use.
