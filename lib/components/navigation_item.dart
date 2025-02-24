import 'package:flutter/material.dart';
import 'package:lubette_todo_flutter/controls/use_hooks.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem({
    super.key,
    required this.title,
    required this.isSelected,
    required this.content,
  });
  final String title;
  final bool isSelected;
  final Widget content;
  @override
  Widget build(BuildContext context) {
    final theme = useTheme(context);
    final (decoration, fontWidget) = !isSelected
        ? (
            BoxDecoration(
              color: ShadTheme.of(context).colorScheme.background,
            ),
            null
          )
        : (
            BoxDecoration(
              color: ShadTheme.of(context).colorScheme.background,
              border: Border(
                bottom: BorderSide(
                  color: ShadTheme.of(context).colorScheme.foreground,
                  width: 3.5,
                ),
              ),
            ),
            FontWeight.bold,
          );
    final media = useMediaQuery(context);
    return Container(
      decoration: decoration,
      child: Padding(
        padding: EdgeInsets.only(
          top: media.size.height * 0.015,
          bottom: media.size.height * 0.015,
          left: media.size.width * 0.035,
          right: media.size.width * 0.035,
        ),
        child: Text(
          title,
          style: ShadTheme.of(
            context,
          ).textTheme.h4.copyWith(
                fontWeight: fontWidget,
              ),
        ),
      ),
    );
  }
}
