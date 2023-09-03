// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/styles/styles.dart';
import '../constant/colors/colors.dart';
import '../util/validator.dart';

class MasterTextField extends StatefulWidget {
  final double? sidePadding;
  final double? fieldHeight;
  final double? fieldWidth;
  final double? iconHeight;
  final bool? readOnly;
  final double? suffixIconHeight;
  final TextEditingController? controller;
  final Color? hintColor;
  final TextInputType? keyboardType;
  final bool? isPassword;
  final bool? autofocus;
  final Color? borderColor;
  final Color? textFieldColor;
  final String? errorText;
  final String? hintText;
  final TextStyle? hintStyle;
  final double? elevation;
  final Color? shadowColor;
  final bool? enabled;
  final double? borderRadius;
  final IconData? prefixIcon;
  final String? suffixText;
  final IconData? suffixIcon;
//final List<TextInputFormatter>? inputFormatters;
  final Color? suffixColor;
  final Color? prefixColor;
  final int? maxLines;
  final int? minLines;
  final Function(String)? onChanged;
  final int? borderWidth;
  final Function(String)? onSubmit;
  final Function()? onTap;
  final String? Function(String?) validate;
  final Widget? suffix;
  final Color? fillColor;
  final TextAlign? textAlign;
  final Widget? suffixWidget;
  final void Function(String?)? onSaved;
  final TextDirection? textDirection;
  const MasterTextField({
    Key? key,
    // this.inputFormatters,
    this.sidePadding,
    this.fieldHeight,
    this.fieldWidth,
    this.suffixWidget,
    this.iconHeight,
    this.readOnly,
    this.suffixIconHeight,
    this.controller,
    this.hintColor,
    this.keyboardType,
    this.isPassword,
    this.autofocus,
    this.borderColor,
    this.textFieldColor,
    this.errorText,
    this.hintText,
    this.hintStyle,
    this.elevation,
    this.shadowColor,
    this.enabled,
    this.borderRadius,
    this.prefixIcon,
    this.suffixText,
    this.suffixIcon,
    this.suffixColor,
    this.prefixColor,
    this.maxLines,
    this.minLines,
    this.onChanged,
    this.borderWidth,
    this.onSubmit,
    this.onTap,
    this.validate = Validator.defaultEmptyValidator,
    this.suffix,
    this.fillColor,
    this.textAlign,
    this.onSaved,
    this.textDirection = TextDirection.ltr,
  }) : super(key: key);

  @override
  State<MasterTextField> createState() => _MasterTextFieldState();
}

class _MasterTextFieldState extends State<MasterTextField> {
  bool secure = false;
  TextDirection? textDirection;
  String? fontFamily;
  @override
  void initState() {
    super.initState();
    secure = widget.isPassword ?? false;
    textDirection = widget.textDirection;
    if (widget.keyboardType == TextInputType.number) {
      fontFamily = 'Avenir';
    }
  }

  @override
  void didUpdateWidget(covariant MasterTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {});
  }

  void _checkForArabicLetter(String text) {
    final RegExp arabicRegex = RegExp(r'[ء-ي-_ \.]*$');
    final RegExp englishRegex = RegExp(r'[a-zA-Z ]');
    final RegExp spi = RegExp("[\$&+,:;=?@#|'<>.^*()%!-]+");
    final RegExp numbers = RegExp('^[0-9]*\$');
    setState(() {
      text.contains(arabicRegex) &&
              !text.startsWith(englishRegex) &&
              !text.startsWith(spi) &&
              !text.startsWith(numbers)
          ? textDirection = TextDirection.rtl
          : textDirection = TextDirection.ltr;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Shadow color
            spreadRadius: 1, // Spread radius
            blurRadius: 5, // Blur radius
            offset: const Offset(0, 2), // Offset in x and y direction
          ),
        ],
      ),
      child: TextFormField(
        readOnly: widget.readOnly ?? false,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        //autocorrect: true,
        controller: widget.controller,
        onChanged: (String value) {
          _checkForArabicLetter(value);
          if (widget.onChanged != null) widget.onChanged!(value);
        },
        onTap: () {
          if (widget.onTap != null) {
            widget.onTap!();
          }
          if (widget.controller!.selection ==
              TextSelection.fromPosition(
                  TextPosition(offset: widget.controller!.text.length - 1))) {
            setState(() {
              widget.controller!.selection = TextSelection.fromPosition(
                  TextPosition(offset: widget.controller!.text.length));
            });
          }
        },
        keyboardType: widget.keyboardType,

        obscureText: secure,
        maxLines: widget.maxLines ?? 1,
        minLines: widget.minLines ?? 1,
        autofocus: widget.autofocus ?? false,
        style: TextStyles.textViewRegular15.copyWith(color: hintColor),
        enabled: widget.enabled,
        onSaved: widget.onSaved,
        validator: widget.validate,

        onFieldSubmitted: widget.onSubmit,
        textDirection: textDirection,
        // inputFormatters: inputFormatters,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          //fillColor: widget.textFieldColor ?? textColor.withOpacity(0.2),
          filled: true,
          fillColor: widget.fillColor ?? white,
          errorMaxLines: 2,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: widget.borderColor ?? white,
              width: 1,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: widget.borderColor ?? white,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: widget.borderColor ?? white,
              width: 1,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.borderColor ?? white,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: widget.errorText != null ? red : textColor,
                width: 1,
                style: BorderStyle.solid,
              )),
          hintText: widget.hintText,
          hintStyle: TextStyles.textViewRegular15.copyWith(color: hintColor),
          suffixIconColor: widget.suffixColor ?? mainColor,
          prefixIconColor: widget.prefixColor ?? mainColor,
          suffix: widget.suffix,
          prefixIcon: widget.prefixIcon == null
              ? null
              : Icon(
                  widget.prefixIcon,
                  color: widget.prefixColor ?? mainColor.withOpacity(.8),
                ),
          suffixIcon: widget.suffixWidget ??
              (widget.isPassword ?? false
                  ? IconButton(
                      onPressed: () => setState(() {
                            secure = !secure;
                          }),
                      icon: Icon(
                        !secure ? Icons.visibility : Icons.visibility_off,
                        color: mainColor.withOpacity(.8),
                      ))
                  : widget.suffixIcon == null
                      ? null
                      : Icon(
                          widget.suffixIcon,
                          color: mainColor.withOpacity(.8),
                        )),
        ),
      ),
    );
  }
}

class SearchTextFeild extends StatefulWidget {
  final double? sidePadding;
  final double? fieldHeight;
  final double? fieldWidth;
  final double? iconHeight;
  final double? suffixIconHeight;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? isPassword;
  final bool? autofocus;
  final Color? borderColor;
  final Color? textFieldColor;
  final String? errorText;
  final String hintText;
  final TextStyle? hintStyle;
  final double? elevation;
  final Color? shadowColor;
  final bool? enabled;
  final double? borderRadius;
  final String? prefixIcon;
  final String? suffixText;
  final String? suffixIcon;
//final List<TextInputFormatter>? inputFormatters;
  final Color? suffixColor;
  final Color? fillColor;
  final int? maxLines;
  final int? minLines;
  final Function(String)? onChanged;
  final int? borderWidth;
  final Function(String)? onSubmit;
  final String? Function(String?)? validate;
  final void Function(String?)? onSaved;
  final TextDirection? textDirection;
  const SearchTextFeild({
    Key? key,
    this.autofocus,
    this.fieldWidth,
    this.elevation,
    this.shadowColor,
    this.borderColor,
    this.textFieldColor,
    this.suffixIconHeight,
    this.iconHeight,
    this.controller,
    this.fieldHeight,
    this.errorText,
    required this.hintText,
    this.textDirection = TextDirection.ltr,
    this.hintStyle,
    this.enabled,
    this.borderWidth,
    this.borderRadius,
    this.isPassword,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixText,
    this.suffixColor,
    this.sidePadding,
    this.maxLines,
    this.minLines,
    this.onChanged,
    this.onSubmit,
    this.onSaved,
    this.validate,
    this.fillColor,
    // this.inputFormatters,
  }) : super(key: key);

  @override
  State<SearchTextFeild> createState() => _SearchTextFeildState();
}

class _SearchTextFeildState extends State<SearchTextFeild> {
  TextDirection? textDirection;

  @override
  void initState() {
    super.initState();
    textDirection = widget.textDirection;
  }

  void _checkForArabicLetter(String text) {
    final RegExp arabicRegex = RegExp(r'[ء-ي-_ \.]*$');
    final RegExp englishRegex = RegExp(r'[a-zA-Z ]');
    setState(() {
      text.contains(arabicRegex) && !text.startsWith(englishRegex)
          ? textDirection = TextDirection.rtl
          : textDirection = TextDirection.ltr;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //autocorrect: true,
      onTap: () {
        if (widget.controller!.selection ==
            TextSelection.fromPosition(
                TextPosition(offset: widget.controller!.text.length - 1))) {
          setState(() {
            widget.controller!.selection = TextSelection.fromPosition(
                TextPosition(offset: widget.controller!.text.length));
          });
        }
      },
      controller: widget.controller,
      onChanged: (String value) {
        _checkForArabicLetter(value);
        if (widget.onChanged != null) widget.onChanged!(value);
      },
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword ?? false,
      maxLines: widget.maxLines ?? 1, textDirection: textDirection,
      minLines: widget.minLines ?? 1,
      autofocus: widget.autofocus ?? false,
      // style:  TextStyles.textViewBold18.copyWith(color: white),
      enabled: widget.enabled,
      onSaved: widget.onSaved,
      validator: widget.validate,
      onFieldSubmitted: widget.onSubmit,
      // inputFormatters: inputFormatters,
      decoration: InputDecoration(
        fillColor: widget.fillColor,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.sp),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(
                widget.borderRadius == null ? 15.r : widget.borderRadius!.r)),
            borderSide: BorderSide(
              color: textColor,
              width: widget.borderWidth == null ? 1.w : widget.borderWidth!.w,
              style: BorderStyle.solid,
            )),
        //focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(
                widget.borderRadius == null ? 15.r : widget.borderRadius!.r)),
            borderSide: BorderSide(
              color: mainColor.withOpacity(.1),
              width: widget.borderWidth == null ? 1.w : widget.borderWidth!.w,
              style: BorderStyle.solid,
            )),

        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(
                widget.borderRadius == null ? 15.r : widget.borderRadius!.r)),
            borderSide: BorderSide(
              color: textColor,
              width: widget.borderWidth == null ? 1.w : widget.borderWidth!.w,
              style: BorderStyle.solid,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(
                widget.borderRadius == null ? 15.r : widget.borderRadius!.r)),
            borderSide: BorderSide(
              color: widget.borderColor ?? mainColor,
              width: widget.borderWidth == null ? 1.w : widget.borderWidth!.w,
              style: BorderStyle.solid,
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(
                widget.borderRadius == null ? 15.r : widget.borderRadius!.r)),
            borderSide: BorderSide(
              color: widget.errorText != null ? red : textColor,
              width: widget.borderWidth == null ? 1.w : widget.borderWidth!.w,
              style: BorderStyle.solid,
            )),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(
                widget.borderRadius == null ? 15.r : widget.borderRadius!.r)),
            borderSide: BorderSide(
              color: widget.errorText != null ? red : textColor,
              width: widget.borderWidth == null ? 1.w : widget.borderWidth!.w,
              style: BorderStyle.solid,
            )),
        hintText: widget.hintText,
        hintStyle: widget.hintStyle ?? TextStyles.textViewBold15,
        suffixIconColor: widget.suffixColor,

        suffixIcon: const Icon(
          Icons.search,
          size: 30,
          color: blackColor,
        ),
      ),
    );
  }
}

class MasterTripTextField extends StatefulWidget {
  final Widget? suffix;
  final Widget? perfix;
  final Function(String)? onChanged;
  final int? borderWidth;
  final Function(String)? onSubmit;
  final Function()? onTap;
  final String? Function(String?) validate;
  final void Function(String?)? onSaved;
  final TextDirection? textDirection;
  final bool readOnly;
  final TextEditingController? controller;
  final String hintText;
  const MasterTripTextField({
    Key? key,
    this.textDirection = TextDirection.ltr,
    this.borderWidth,
    this.suffix,
    this.onChanged,
    this.onSubmit,
    this.onSaved,
    this.readOnly = false,
    this.validate = Validator.defaultEmptyValidator,
    this.perfix,
    this.onTap,
    this.controller,
    required this.hintText,
    // this.inputFormatters,
  }) : super(key: key);
  @override
  State<MasterTripTextField> createState() => _MasterTripTextFieldState();
}

class _MasterTripTextFieldState extends State<MasterTripTextField> {
  bool secure = false;
  TextDirection? textDirection;
  String? fontFamily;
  @override
  void initState() {
    super.initState();
    textDirection = widget.textDirection;
  }

  void _checkForArabicLetter(String text) {
    final RegExp arabicRegex = RegExp(r'[ء-ي-_ \.]*$');
    final RegExp englishRegex = RegExp(r'[a-zA-Z ]');
    final RegExp spi = RegExp("[\$&+,:;=?@#|'<>.^*()%!-]+");
    final RegExp numbers = RegExp('^[0-9]*\$');
    setState(() {
      text.contains(arabicRegex) &&
              !text.startsWith(englishRegex) &&
              !text.startsWith(spi) &&
              !text.startsWith(numbers)
          ? textDirection = TextDirection.rtl
          : textDirection = TextDirection.ltr;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //autocorrect: true,
      controller: widget.controller,
      onChanged: (String value) {
        _checkForArabicLetter(value);
        if (widget.onChanged != null) widget.onChanged!(value);
      },
      onTap: widget.onTap,
      obscureText: secure,
      readOnly: widget.readOnly,

      style: TextStyles.textViewBold18
          .copyWith(color: textColor, fontFamily: fontFamily),

      onSaved: widget.onSaved,
      validator: widget.validate,
      onFieldSubmitted: widget.onSubmit,
      textDirection: textDirection,
      // inputFormatters: inputFormatters,
      decoration: InputDecoration(
          fillColor: mainColor,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.r)),
              borderSide: BorderSide(
                color: mainColor,
                width: widget.borderWidth == null ? 1.w : widget.borderWidth!.w,
                style: BorderStyle.solid,
              )),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.r)),
              borderSide: BorderSide(
                color: mainColor,
                width: widget.borderWidth == null ? 1.w : widget.borderWidth!.w,
                style: BorderStyle.solid,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.r)),
              borderSide: BorderSide(
                color: mainColor,
                width: widget.borderWidth == null ? 1.w : widget.borderWidth!.w,
                style: BorderStyle.solid,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.r)),
              borderSide: BorderSide(
                color: mainColor,
                width: widget.borderWidth == null ? 1.w : widget.borderWidth!.w,
                style: BorderStyle.solid,
              )),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.r)),
              borderSide: BorderSide(
                color: red,
                width: widget.borderWidth == null ? 1.w : widget.borderWidth!.w,
                style: BorderStyle.solid,
              )),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.r)),
              borderSide: BorderSide(
                color: mainColor,
                width: widget.borderWidth == null ? 1.w : widget.borderWidth!.w,
                style: BorderStyle.solid,
              )),
          hintText: widget.hintText,
          suffixIconColor: Colors.white,
          prefixIconColor: Colors.white,
          hintStyle: TextStyles.textViewRegular20.copyWith(color: white),
          suffix: widget.suffix,
          prefix: widget.perfix),
    );
  }
}
