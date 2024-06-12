import 'package:e_commerce/env/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatefulWidget {
  Function(String value) onChanged;
  String? label;
  bool? enabled;
  TextEditingController? controller;
  TextInputType? textInputType = TextInputType.text;
  List<TextInputFormatter>? inputFormatter;
  String? hinText;
  String? errorText;
  bool? obscureText = false;
  bool? isValid = true;
  int? maxLines;
  bool? multiline = false;
  int? maxLength;
  Color? fontColor;
  Color? focusColor;
  Widget? suffixIcon = const Icon(Icons.add);
  String? prefixText = '';
  TextCapitalization? textCapitalization;
  void Function()? ontap;
  void Function()? onEditingComplete;

  TextFieldWidget(
      {Key? key,
      required this.onChanged,
      this.label,
      this.enabled,
      this.hinText,
      this.errorText,
      this.suffixIcon,
      this.prefixText,
      this.obscureText,
      this.isValid,
      this.textInputType,
      this.inputFormatter,
      this.maxLines,
      this.maxLength,
      this.fontColor,
      this.focusColor,
      this.controller,
      this.textCapitalization,
      this.ontap,
      this.multiline,
      this.onEditingComplete})
      : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    widget.multiline = widget.multiline ?? true;
    widget.isValid = widget.isValid ?? true;
    widget.textCapitalization =
        widget.textCapitalization ??= TextCapitalization.none;
    return TextField(
      onEditingComplete: widget.onEditingComplete,
      onTap: widget.ontap,
      enabled: widget.enabled,
      textCapitalization: widget.textCapitalization!,
      controller: widget.controller,
      onChanged: widget.onChanged,
      maxLines: widget.obscureText == true ? 1 : widget.maxLines,
      maxLength: widget.maxLength,
      keyboardType: widget.textInputType,
      obscureText: widget.obscureText ?? false,
      inputFormatters: widget.inputFormatter,
      style: TextStyle(
        height: widget.multiline! ? 1.8 : 1,
        color: widget.fontColor ?? AppTheme.secondaryColor,
      ),
      cursorColor: widget.focusColor ?? AppTheme.primaryColor,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: (widget.isValid!)
                    ? widget.focusColor ?? AppTheme.primaryColor
                    : Colors.red,
                width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          contentPadding: EdgeInsets.only(
              right: 5, top: widget.multiline! ? 20 : 6, bottom: 5, left: 10),
          border: OutlineInputBorder(
            gapPadding: 1,
            borderRadius: BorderRadius.circular(
                20),
          ),
          label: Text(
            widget.label ?? "",
            style: TextStyle(
                color: (widget.isValid!)
                    ? widget.focusColor ?? AppTheme.primaryColor
                    : Colors.red),
          ),
          hintText: widget.hinText,
          errorText: widget.errorText,
          suffixIcon: widget.suffixIcon,
          prefixText: widget.prefixText),
    );
  }
}
