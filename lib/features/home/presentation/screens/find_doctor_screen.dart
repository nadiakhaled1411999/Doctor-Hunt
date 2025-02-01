import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_build_circle.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_build_header.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_card/find_doctor_info_section/find_doctor_image.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_list_view_builder.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_search_filed/find_doctor_search_field.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_text_button.dart';

class FindDoctorScreen extends StatelessWidget {
  const FindDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGround(),
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  FindDoctorBuildHeader(),
                  verticalSpace(30),
                  FindDoctorSearchField(),
                  verticalSpace(8),
                 FindDoctorListViewBuilder(),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
