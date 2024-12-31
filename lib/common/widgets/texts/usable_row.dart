import 'package:flutter/material.dart';
class UsableRow extends StatelessWidget {
  const UsableRow({
    super.key, required this.text,this.buttonText= 'View all', this.showActionButton=true, this.onPressed, this.textColor,
  });
  final String text,buttonText;
  final bool showActionButton;
  final void Function()? onPressed;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
        ),
        if(showActionButton) TextButton(onPressed: onPressed, style: TextButton.styleFrom(), child: Text(buttonText,),)
      ],
    );
  }
}