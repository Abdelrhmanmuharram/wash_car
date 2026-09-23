# 🚗 Wash Car

A Flutter mobile application for booking and managing car washing services.

Wash Car provides users with a simple and convenient experience to register,
access the application, and interact with car washing services through a
clean and modern interface.

---

## 📱 Project Overview

**Wash Car** is built using Flutter and follows a feature-based project
structure to keep the application organized, scalable, and maintainable.

The project separates core application functionality from individual
features, while using Cubit for state management.

---

## ✨ Features

### 🔐 Authentication
- User Registration
- Form Validation
- Authentication Flow

### 🚗 Car Washing Services
- Car washing service management
- Service-related user interactions

### 🎨 User Interface
- Clean and modern UI
- Responsive layouts
- Reusable components
- Consistent application theme

---

## 🛠️ Tech Stack

| Technology | Usage |
|------------|-------|
| Flutter | Mobile Application Development |
| Dart | Programming Language |
| Cubit | State Management |
| REST API | Backend Communication |
| Dependency Injection | Dependency Management |
| Git | Version Control |

---

## 🏗️ Project Architecture

The project follows a **Feature-Based Architecture** with separation
between core application components and individual features.

```text
lib/
│
├── core/
│   ├── di/
│   ├── networking/
│   ├── routes/
│   ├── theme/
│   └── utils/
│
├── feature/
│   └── register/
│       ├── data/
│       │   ├── models/
│       │   └── repo/
│       │
│       └── presentation/
│           ├── cubit/
│           └── ui/
│
├── main.dart
└── wash_app.dart
