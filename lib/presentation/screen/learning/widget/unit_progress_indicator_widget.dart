part of '../content_guide_screen.dart';

class UnitProgressIndicatorWidget extends StatelessWidget {
  final int currentSeq;
  final List<ContentUnitEntity> contentUnitList;

  const UnitProgressIndicatorWidget({
    super.key,
    required this.currentSeq,
    required this.contentUnitList,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: contentUnitList
          .map(
            (e) => Row(
              children: [
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentSeq == e.seq
                        ? ColorStyle.primary500
                        : e.isCompleted
                            ? ColorStyle.green500
                            : ColorStyle.whiteColor,
                    border: Border.all(
                      color: currentSeq == e.seq
                          ? ColorStyle.primary500
                          : e.isCompleted
                              ? ColorStyle.green500
                              : ColorStyle.grayColor300,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: currentSeq > e.seq || e.isCompleted
                        ? Icon(
                            Icons.check_rounded,
                            color: ColorStyle.whiteColor,
                            size: 14,
                          )
                        : Text(
                            e.seq.toString(),
                            style: TextStyle(
                              color: currentSeq == e.seq
                                  ? ColorStyle.whiteColor
                                  : ColorStyle.grayColor300,
                              fontSize: 14,
                            ),
                          ),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          )
          .toList(growable: false),
    );
  }
}
