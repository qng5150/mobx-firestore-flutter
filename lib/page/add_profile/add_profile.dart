import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddProfile extends StatefulWidget {
  AddProfile({Key? key}) : super(key: key);

  @override
  _AddProfileState createState() {
    return _AddProfileState();
  }
}

class _AddProfileState extends State<AddProfile> {
  TextEditingController profileNameController = TextEditingController();
  TextEditingController imageUrlController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final profileFocus = FocusNode();
  String? profileError;
  String? imageUrlError;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Add A Profile',
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 32),
                ListTile(
                  subtitle: TextFormField(
                    controller: profileNameController,
                    focusNode: profileFocus,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Profile Name',
                      errorText: profileError,
                      errorMaxLines: 3,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                ListTile(
                  subtitle: TextFormField(
                    controller: imageUrlController,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      if (!Uri.parse(value).isAbsolute) {
                        return "Not a valid url";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Image Url',
                      errorText: imageUrlError,
                      errorMaxLines: 3,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () => context.go('/'),
                  child: const Text('Add'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
