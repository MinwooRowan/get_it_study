part of '../content_guide_screen.dart';

class _ContentInfoWidget extends StatelessWidget {
  final ContentUnitEntity contentUnit;
  const _ContentInfoWidget({required this.contentUnit});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          contentUnit.unitName,
          style: TextStyle(fontSize: 20, fontFamily: jalnanGothic),
        ),
        SizedBox(height: 20),
        Text(
          contentUnit.contentUnitType.name,
          style: TextStyle(fontSize: 16, fontFamily: jalnanGothic),
        ),
      ],
    );
  }
}
