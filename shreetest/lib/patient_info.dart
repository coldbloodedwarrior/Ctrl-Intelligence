import 'package:flutter/material.dart';

// Demonstrates how to use autofill hints. The full list of hints is here:
// https://github.com/flutter/engine/blob/master/lib/web_ui/lib/src/engine/text_editing/autofill_hint.dart
class AutofillDemo extends StatefulWidget {
  const AutofillDemo({Key? key}) : super(key: key);

  @override
  _AutofillDemoState createState() => _AutofillDemoState();
}

class _AutofillDemoState extends State<AutofillDemo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autofill'),
      ),
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: AutofillGroup(
              child: Column(
                children: [
                  ...[
                    TextFormField(
                      autofocus: true,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: 'Jane',
                        labelText: 'First Name',
                      ),
                      autofillHints: const [AutofillHints.givenName],
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: 'Doe',
                        labelText: 'Last Name',
                      ),
                      autofillHints: const [AutofillHints.familyName],
                    ),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'foo@example.com',
                        labelText: 'Email',
                      ),
                      autofillHints: [AutofillHints.email],
                    ),
                    const TextField(
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: '020 24214689',
                        labelText: 'Telephone',
                      ),
                      autofillHints: [AutofillHints.telephoneNumber],
                    ),
                    const TextField(
                      keyboardType: TextInputType.streetAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: '123 4th Ave',
                        labelText: 'Street Address',
                      ),
                      autofillHints: [AutofillHints.streetAddressLine1],
                    ),
                    const TextField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: '12345',
                        labelText: 'Postal Code',
                      ),
                      autofillHints: [AutofillHints.postalCode],
                    ),
                    const TextField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'United States',
                        labelText: 'Country',
                      ),
                      autofillHints: [AutofillHints.countryName],
                    ),
                    const TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '1',
                        labelText: 'Country Code',
                      ),
                      autofillHints: [AutofillHints.countryCode],
                    ),
                  ].expand(
                    (widget) => [
                      widget,
                      const SizedBox(
                        height: 24,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}