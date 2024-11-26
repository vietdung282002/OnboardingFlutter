import 'package:flutter/cupertino.dart';
import 'package:onboarding/colors.dart';

class TextFieldWidgets extends StatefulWidget {
  final double width;
  final double height;
  final String placeholder;

  const TextFieldWidgets(
      {super.key, this.width = 600, this.height = 40, this.placeholder = ""});

  @override
  State<TextFieldWidgets> createState() => _TextFieldWidgetsState();
}

class _TextFieldWidgetsState extends State<TextFieldWidgets> {
  final FocusNode _focus = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    _focus.addListener(_onFocusChange);
    super.initState();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focus.hasFocus;
    });
  }

  @override
  void dispose() {
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: CupertinoTextField(
        textAlign: TextAlign.left,
        placeholder: widget.placeholder,
        focusNode: _focus,
        decoration: BoxDecoration(
            border: _isFocused
                ? Border.all(color: mainColor, width: 2.0)
                : Border.all(color: mainColor, width: 0.0),
            borderRadius: BorderRadius.circular(10)),
        // controller: TextEditingController(text: "test"),
      ),
    );
  }
}
