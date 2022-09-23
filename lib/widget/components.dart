
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.type,
    required this.validate,
     this.label,
    this.hintText,
     this.controller,
    this.prefix,
    this.onSubmit,
    this.onChange,
    this.onTap,
    this.suffix,
    this.suffixPressed,
    this.border,
    this.isPassword = false,
    // OutlineInputBorder focusedBorder,     // this.isPassword,
  }) : super(key: key);
  final TextEditingController? controller;
  final TextInputType type;
  final String? label;
  final IconData? prefix;
  final FormFieldValidator? validate;
  final Function(String? value)? onSubmit;
  final Function(String? value)? onChange;
  final bool isPassword;
  final bool isClicked = true;
  final VoidCallback? onTap;
  final IconData? suffix;
  final VoidCallback? suffixPressed;
  final InputBorder? border;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: controller,
      enabled: isClicked,
      onFieldSubmitted: onSubmit,
      obscureText: isPassword,
      onTap: onTap,
      validator: validate,
      keyboardType: type,
      onChanged: onChange,
      decoration: InputDecoration(

        focusColor: Colors.grey, ///// //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        labelText: label,
        hintText: hintText,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: IconButton(
          onPressed: suffixPressed,
          splashRadius: 25,
          icon: Icon(
            suffix,
          ),
        ),
        // labelStyle: const TextStyle(color: Colors.white),
        hintStyle: const TextStyle(
          // color:Color(0xff171D2D)
            color: Colors.grey),
        fillColor: Colors.grey, ///// //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        enabledBorder: OutlineInputBorder(

          borderSide: const BorderSide(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.lightBlue, width: 2),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      // decoration: InputDecoration(
      //   border: border ?? const OutlineInputBorder(),
      //   // prefixIcon: Icon(prefix),
      //   labelText: label,
      //   suffixIcon: IconButton(
      //     onPressed: suffixPressed,
      //     splashRadius: 25,
      //     icon: Icon(suffix),
      //   ),
      // ),

      // focusedBorder:OutlineInputBorder(
      //   borderSide: const BorderSide(color: Colors.white, width: 2.0),
      //   borderRadius: BorderRadius.circular(25.0),
      // ),
    );
  }
}
////>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
class CustomInputForm extends StatelessWidget {
  ///input form
  final String? hintText;
  final TextEditingController? fieldController;
  final Function? onSaved;
  final Function? onConfirm;
  final Function? validation;
  final VoidCallback? onTap;
  //is country

  final IconData? icon;
  final IconData? prefixIcon;
  final int? maxLines;
  final String? preText;

  final double borderWidth;
  final Color? shadowColor;
  final Color borderColor;
  final bool isProtected;
  final bool? isEditable;
  //is country
  final bool isCountry;
  final bool centerText;
  final bool autoFocus;
  final FocusNode? focusNode;
  final TextInputType? keyType;
  final double? height;
  final double radius;
  final bool absorbing;

  const CustomInputForm({
    Key? key,
    this.preText,
    this.prefixIcon,
    this.onTap,
    this.isEditable,
    this.maxLines,
    this.shadowColor,
    this.centerText = false,
    this.validation,
    this.focusNode,
    this.autoFocus = false,
    this.isProtected = false,
    this.isCountry = false,
    this.hintText,
    this.icon,
    this.fieldController,
    this.keyType,
    this.onSaved,
    this.onConfirm,
    this.height,
    this.borderColor = const Color(0xFF808080),
    this.radius = 5,
    this.borderWidth = .3,
    this.absorbing = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height / 15.5,
        // height: maxLines == null ? getProportionateScreenHeight(44.0) : height,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          border: Border.all(width: borderWidth, color: borderColor),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Row(
          children: [
            SizedBox(
              child: isCountry
                  ? Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 5.5,
                    child: const Center(
                      child: Text(
                        ' +20',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    width: .25,
                    height:  MediaQuery.of(context).size.height / 0.5,
                    // height: maxLines == null
                    //     ? getProportionateScreenWidth(44.0)
                    //     : height,
                    color: const Color(0xFF808080),
                  ),
                ],
              )
                  : const SizedBox.shrink(),
            ),
            Expanded(
              child: AbsorbPointer(
                absorbing: absorbing,
                child: TextFormField(
                  onTap: onTap,
                  maxLines: maxLines ?? 1,
                  enabled: isEditable,
                  validator: validation as String? Function(String?)?,
                  controller: fieldController,
                  keyboardType: keyType,
                  obscureText: isProtected,
                  obscuringCharacter: '*',
                  onChanged: onSaved as void Function(String)?,
                  onFieldSubmitted: onConfirm as void Function(String?)?,
                  focusNode: focusNode,
                  textAlign:
                  centerText == true ? TextAlign.center : TextAlign.start,
                  autofocus: autoFocus,
                  cursorColor: const Color(0xFF808080),
                  decoration: InputDecoration(
                    errorStyle: const TextStyle(fontSize: 11, height: 0.3),
                    focusedBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                    prefixText: preText,
                    prefixStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    prefixIcon: prefixIcon != null
                        ? Icon(
                      prefixIcon,
                      color: const Color(0xFFC4C4C4),
                    )
                        : null,
                    hintText: hintText,
                    hintStyle: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                      height: 1.0,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    alignLabelWithHint: false,
                    border:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ///////////////////////////////////////////////////////////

void customToast(
    BuildContext context, {
      required String text,
      Color? color,
    }) {
  showToast(
    text,
    context: context,
    textStyle: const TextStyle(fontSize: 15, color: Colors.white),
    animation: StyledToastAnimation.scale,
    reverseAnimation: StyledToastAnimation.fade,
    position: StyledToastPosition.center,
    animDuration: const Duration(seconds: 2),
    duration: const Duration(seconds: 4),
    curve: Curves.elasticOut,
    reverseCurve: Curves.easeInOut,
    backgroundColor: color ?? Colors.green,
  );
}


