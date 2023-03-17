import 'package:flutter/material.dart';

Widget defultButton({
  required double ? width,
  required Color ? background,
  required final Function() ? function,
  required String text,
}) =>
    Container(
      width: width,
      color: background,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );


// ------------------------------------------------

Widget defualtFormField({
  required TextEditingController? controller,
  required TextInputType? type,
  required String? text,
  required IconData? prefix,
  final IconData? suffix,
  required String? Function(String?)? validate,
  final void Function(String?)? onSubmit,
  final void Function(String?)? onChange,
  final void Function() ? suffixPressed,
  bool isPassword = false,
}) =>
    TextFormField(
      obscureText: isPassword,
      controller: controller,
      decoration: InputDecoration(
        labelText: text,
        border: OutlineInputBorder(),
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null ?
            IconButton(
                onPressed:suffixPressed,
                icon: Icon(
                  suffix,
                ),
            )
            : null,
      ),

      validator: validate,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
    );
