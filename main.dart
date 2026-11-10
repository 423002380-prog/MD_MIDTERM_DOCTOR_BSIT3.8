
import 'dart:io';

// ==========================================
// COMMUNITY LEARNING CENTER MANAGEMENT
// ==========================================

// Temporary record collections.
// You will connect these to your classes in Part C.
List<String> resources = [];
List<String> participants = [];

void main() {
  print('==========================================');
  print(' COMMUNITY LEARNING CENTER MANAGEMENT');
  print('==========================================');

  runApplication();
}

// FUNCTION 1: Display menu
void displayMenu() {
  print('\n========== MAIN MENU ==========');
  print('1. Add Learning Resource');
  print('2. Register Participant');
  print('3. View All Records');
  print('4. Exit');
  print('================================');
}

// FUNCTION 2: Get and validate menu choice
int? getMenuChoice() {
  stdout.write('Enter your choice (1-4): ');

  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print('Input cannot be empty.');
    return null;
  }

  return int.tryParse(input.trim());
}

// ACTION 1: Add Learning Resource
void addLearningResource() {
  print('\n--- ADD LEARNING RESOURCE ---');

  stdout.write('Enter resource name: ');
  String? name = stdin.readLineSync();

  if (name == null || name.trim().isEmpty) {
    print('Resource name cannot be empty.');
    return;
  }

  // TODO: Create and store a LearningResource object.
  resources.add(name.trim());

  print('Resource added successfully!');
}

// ACTION 2: Register Participant
void registerParticipant() {
  print('\n--- REGISTER PARTICIPANT ---');

  stdout.write('Enter participant name: ');
  String? name = stdin.readLineSync();

  if (name == null || name.trim().isEmpty) {
    print('Participant name cannot be empty.');
    return;
  }

  // TODO: Create and store a Participant object.
  participants.add(name.trim());

  print('Participant registered successfully!');
}

// ACTION 3: View All Records
void viewAllRecords() {
  print('\n--- ALL RECORDS ---');

  print('\nLEARNING RESOURCES:');

  if (resources.isEmpty) {
    print('No learning resources available.');
  } else {
    for (int i = 0; i < resources.length; i++) {
      print('${i + 1}. ${resources[i]}');
    }
  }

  print('\nREGISTERED PARTICIPANTS:');

  if (participants.isEmpty) {
    print('No participants registered.');
  } else {
    for (int i = 0; i < participants.length; i++) {
      print('${i + 1}. ${participants[i]}');
    }
  }
}

// MAIN APPLICATION LOOP
void runApplication() {
  bool isRunning = true;

  while (isRunning) {
    displayMenu();

    int? choice = getMenuChoice();

    if (choice == null) {
      print('Invalid input! Please enter a number.');
      continue;
    }

    switch (choice) {
      case 1:
        addLearningResource();
        break;

      case 2:
        registerParticipant();
        break;

      case 3:
        viewAllRecords();
        break;

      case 4:
        print('\nThank you for using the system!');
        isRunning = false;
        break;

      default:
        print('Invalid choice! Please select 1-4.');
    }
  }
}
