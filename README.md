# Age Calculator README

## Introduction
The Age Calculator is a Dart program designed to calculate a person's age based on their date of birth. It utilizes object-oriented programming principles, specifically classes and objects, to provide a simple and efficient way to determine age.

## Features
- Calculate age accurately based on the provided date of birth.
- Easy-to-understand object-oriented design.
- Flexible and customizable for integration into various Dart applications.

## Usage
To use the Age Calculator in your Dart project, follow these steps:

1. **Download or Clone Repository:** Download or clone the Age Calculator repository to your local machine.

2. **Import Class:** Import the `AgeCalculator` class into your Dart file where you intend to use it.

    ```dart
    var dob = DateTime(1990, 5, 15); // Example date of birth
    var ageCalculator = AgeCalculator(dateOfBirth: dob);
    ```

3. **Create an Instance:** Instantiate the `AgeCalculator` class by providing the date of birth as input.

4. **Get Age:** Use the `calculateAge()` method to calculate the age based on the provided date of birth.

    ```dart
    var age = ageCalculator.calculateAge();
    print("The calculated age is: $age years");
    ```

## Example
Here's a simple example demonstrating the usage of the Age Calculator:

```dart
import 'age_calculator.dart';

void main() {
  var dob = DateTime(1990, 5, 15); // Example date of birth
  var ageCalculator = AgeCalculator(dateOfBirth: dob);
  var age = ageCalculator.calculateAge();
  print("The calculated age is: $age years");
}
