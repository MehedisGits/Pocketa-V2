
```markdown
# 📱 Pocketa — Your Pocket Accountant

![Flutter](https://img.shields.io/badge/Built%20with-Flutter-02569B?logo=flutter&logoColor=white)
![State Management](https://img.shields.io/badge/State%20Management-Riverpod-7C4DFF?logo=dart)
![Architecture](https://img.shields.io/badge/Architecture-MVVM-blueviolet)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-brightgreen)
![License](https://img.shields.io/github/license/MehedisGits/Pocketa-V2)
![Localization](https://img.shields.io/badge/Language-English%20%7C%20Bengali-yellow)

---

## 🧾 Overview

**Pocketa** is a personal finance and budget management app tailored for Bangladeshi users. It helps track income and expenses, categorize spending, and visualize financial trends. With bilingual support, dark mode, and a clean user experience — Pocketa simplifies money management.

---

## ✨ Features

- ✅ Step-by-step onboarding (Income, Budget, Categories)
- 📒 Record daily transactions with category tags
- 📊 Budget insights and monthly summaries
- 🌗 Theme switching (Dark / Light)
- 🌍 Localization: English 🇬🇧 & Bengali 🇧🇩
- 🗃 Local data: Hive + SharedPreferences
- ☁️ Firebase-ready architecture (coming soon)
- 🧩 Clean Architecture (MVVM) + Riverpod

---

## 📸 Screenshots

[//]: # (<p float="left">)

[//]: # (  <img src="screenshots/onboarding1.png" width="250" />)

[//]: # (  <img src="screenshots/dashboard.png" width="250" />)

[//]: # (  <img src="screenshots/analytics.png" width="250" />)

[//]: # (</p>)

> ℹ️ Add your actual screenshots in a `screenshots/` folder in your repo.

---

## 🧠 Tech Stack

| Layer         | Tools & Frameworks                             |
|---------------|-------------------------------------------------|
| UI            | Flutter, Custom Widgets                        |
| State Mgmt    | Riverpod (StateNotifier)                       |
| Architecture  | MVVM (Clean Architecture)                      |
| Local Storage | Hive, SharedPreferences                        |
| Cloud Ready   | Firebase (Auth, Firestore, Functions)          |
| Theming       | Custom AppTheme                               |
| Localization  | ARB, `intl`, `flutter_localizations`           |

---

## 🗂️ Folder Structure

```

lib/
├── application/        # Providers, services, use-cases (Global)
├── config/             # Routes, constants, themes
├── core/               # Shared components and utils
├── data/               # Hive models, static data
├── features/           # Feature-based modules
├── l10n/               # ARB files for localization
└── main.dart           # Entry point

````

---

## 🚀 Getting Started

```bash
# 1. Clone the repository
git clone https://github.com/MehedisGits/Pocketa-V2.git
cd Pocketa-V2

# 2. Install dependencies
flutter pub get

# 3. Generate localization & Hive adapters
flutter gen-l10n
flutter packages pub run build_runner build --delete-conflicting-outputs

# 4. Run the app
flutter run
````

---

## 🧪 Testing

📌 **Coming Soon:**

* Unit testing for logic
* Widget testing for UI
* Integration testing

---

## 👨‍💻 Author

**Rakibul Islam Mehedi**  
🎯 Flutter Developer | Clean Architecture Advocate | Localization & UI/UX Focused  
📍 Rampal, Bagerhat, Bangladesh

I’m passionate about building purposeful, scalable, and beautiful mobile apps that solve real-life problems — especially for users in Bangladesh. With strong expertise in Flutter, Riverpod, and MVVM architecture, I aim to create local-first solutions that empower users through thoughtful design and robust functionality.

📬 Let’s connect and build something impactful:  
🔗 [GitHub: @MehedisGits](https://github.com/MehedisGits)  
🔗 [LinkedIn: Rakibul Islam Mehedi](https://www.linkedin.com/in/flutter-developer-rakibul-islam-mehedi/)  
🌐 Portfolio: *(Coming Soon)*  
📧 Email: rakibulmehedi.dev@gmail.com

---

## 📃 License

This project is licensed under the [MIT License](LICENSE).

---

## 🙌 Acknowledgments

* Inspired by finance apps like Wallet, Spendee, and Money Manager.
* Thanks to the Flutter, Riverpod, and Firebase communities.

---

> “Simple tools for powerful financial awareness — that’s the Pocketa promise.” 🇧🇩

```