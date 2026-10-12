
import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
    // Creates a controller to access and manage the text entered in the name field.
  final TextEditingController nameController =
      TextEditingController();

  String message = '';

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Demo'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Welcome!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Enter your name below.',
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Your name',
                hintText: 'Type your name here',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  String name = nameController.text.trim();

                  if (name.isEmpty) {
                    message = 'Please enter your name.';
                  } else {
                    message = 'Hello, $name!';
                  }
                });
              },
              child: const Text('Submit'),
            ),

            const SizedBox(height: 10),

            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
              ),
            ),

            const Divider(height: 35),

            // Property 1: readOnly
            const Text(
              '1. readOnly',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            const CustomTextField(
              label: 'Editable text (default)',
            ),

            const SizedBox(height: 10),

            const TextField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Read-only text',
                hintText: 'You cannot type here',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Property 2: obscureText
            const Text(
              '2. obscureText',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            const CustomTextField(
              label: 'Visible text (default)',
            ),

            const SizedBox(height: 10),

            const CustomTextField(
              label: 'Hidden text',
              obscureText: true,
            ),

            const SizedBox(height: 20),

            // Property 3: maxLines
            const Text(
              '3. maxLines',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            const CustomTextField(
              label: 'One line (default)',
            ),

            const SizedBox(height: 10),

            const CustomTextField(
              label: 'Three lines',
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
