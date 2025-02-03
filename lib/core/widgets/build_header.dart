import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';

class BuildHeader extends StatelessWidget {
  const BuildHeader({super.key, required this.headerText});
  final String headerText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h, left:10.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomBackButton(),
          horizontalSpace(15),
          Expanded(
            child: Text(headerText,
                style: AppStyles.getMediumStyle(
                  color: AppColors.black2,
                )),
          )
        ],
      ),
    );
  }
}
