# 🏋️‍♂️ Gym 

## 📃 Summary

This is a gym management system project developed in Swift, running directly in the terminal. The goal is to practice basic and intermediate language structures such as classes, inheritance, protocols, enums, tuples, arrays, dictionaries, and control flow, while simulating the management of students, instructors, classes, and gym equipment.

## 📌 Features

* 🧑‍🎓 Enroll students
* 👨‍🏫 Hire instructors
* 🏋️‍♂️ Add gym equipment
* 📚 Create classes (group or personal)
* 📝 Register students in classes
* 🔍 Search students by registration number
* 📄 List students and classes
* 🛠 Record equipment maintenance
* 📊 Generate gym report (total students, instructors, and classes)

## 🧠 Logic

* The project uses classes such as `Academia`, `Aluno`, `Instrutor`, `Aula`, `AulaColetiva`, `AulaPersonal`, `Aparelho`, and `Plano` to model the system.
* Protocols (`Manutencao`) and inheritance are used to organize common functionalities.
* Students and instructors are stored in dictionaries for easy lookup by registration number or email.
* Group classes have a capacity limit, and the system automatically manages student enrollment.
* Extension methods, such as generating reports in tuples, allow quick analysis of the gym's status.

## 📂 Code Organization

* Classes are separated by functionality (`Aluno.swift`, `Instrutor.swift`, `Aula.swift`, etc.)
* `main.swift` contains usage examples, tests, and simulation of gym operations
* Each plan (`PlanoMensal` and `PlanoAnual`) implements the logic for calculating monthly fees
* Protocols and enums provide better safety and code organization

## 🚀 Possible Improvements

* Save data to files for persistence
* Create a graphical interface using SwiftUI
* Implement user authentication
* Add more detailed reports on student performance and equipment usage

## 👨‍💻 Author

* Kemuel Áquila de Matos
