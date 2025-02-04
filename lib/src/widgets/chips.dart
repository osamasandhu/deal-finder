import 'package:deal_fineder_app/src/widgets/poppins_text.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';

class ChipWidget extends StatefulWidget {
  final String title;
  final double height;
  final double fontSize;
  final bool isTrue;
  final Color? borderColor;
  final Color backgroundColor;
  final VoidCallback onTap;
  final String? url;

  const ChipWidget({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.onTap,
    this.url,
    this.height = 36,
    this.borderColor,
    required this.isTrue,
    this.fontSize = 14,
  });

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: widget.height),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Chip(
          padding: EdgeInsets.symmetric(vertical: 0),
          visualDensity: VisualDensity.compact,
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              widget.url == null
                  ? Icon(
                      Icons.tag,
                      color:
                          widget.isTrue ? AppColors.white : AppColors.color38,
                      size: 18,
                    )
                  : Image.asset(widget.url!),
              SizedBox(width: 6),
              PoppinsText(
                widget.title,
                size: widget.fontSize,
                color: widget.isTrue ? AppColors.white : AppColors.color38,
              )
            ],
          ),
          backgroundColor:
              widget.isTrue ? widget.backgroundColor : AppColors.white,
          side: BorderSide(
            color: widget.borderColor ?? Color(0xff000000).withOpacity(0.1),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),
        ),
      ),
    );
  }
}
