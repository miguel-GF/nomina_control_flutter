import 'package:flutter/material.dart';

class TheColumnInput extends StatelessWidget {
  const TheColumnInput({
    super.key,
    required this.label,
    this.hintText,
    required this.txtController,
    this.textInputAction,
    this.obligatory = true,
  });
  final String label;
  final String? hintText;
  final TextEditingController txtController;
  final TextInputAction? textInputAction;
  final bool obligatory;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(width: 8),
          Visibility(
            visible: obligatory,
            child: const Text(
              '*',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
      const SizedBox(height: 8),
      TextFormField(
        controller: txtController,
        textInputAction: textInputAction ?? TextInputAction.done,
        validator: (String? value) {
          if (!obligatory) {
            return null;
          }
          if (value!.isEmpty) {
            return '$label es obligatorio';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: hintText ?? label,
        ),
      ),
    ]);
  }
}
