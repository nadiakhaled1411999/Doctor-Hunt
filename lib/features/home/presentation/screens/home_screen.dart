import 'package:untitled/core/routing/route_export_features/export_home/export_home.dart';
import 'package:untitled/core/routing/route_export_features/export_onboarding/route_export_onboarding.dart';
import 'package:untitled/features/home/presentation/widgets/feature_doctor_card.dart';
import 'package:untitled/features/home/presentation/widgets/icon_card.dart';
import 'package:untitled/features/home/presentation/widgets/popular_doctor_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.r),
            topRight: Radius.circular(40.r),
          ),
          child: BottomNavigationBar(
            onTap: (val) {
              setState(() {
                selectedIndex = val;
              });
            },
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.shifting,
            selectedItemColor: AppColors.primaryColor,


            items: [
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 25.r,
                  backgroundColor: selectedIndex == 0
                      ? AppColors.primaryColor
                      : AppColors.white,
                  child: CustomSVGImage(
                    asset: AppAssets.homeIcon,
                    width: 20,
                    height: 20,
                    color: selectedIndex == 0
                        ? AppColors.white
                        : AppColors.iconBarColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                  // backgroundColor: AppColors.colorCardIcon4,
                  icon: CircleAvatar(
                    radius: 25.r,
                    backgroundColor: selectedIndex == 1
                        ? AppColors.primaryColor
                        : AppColors.white,
                    child: CustomSVGImage(
                      asset: AppAssets.favoritesIcon,
                      width: 20,
                      height: 20,
                      color: selectedIndex == 1
                          ? AppColors.white
                          : AppColors.iconBarColor,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(

                  icon: CircleAvatar(
                    radius: 25.r,
                    backgroundColor: selectedIndex == 2
                        ? AppColors.primaryColor
                        : AppColors.white,
                    child: CustomSVGImage(
                      asset: AppAssets.readingIcon,
                      width: 20,
                      height: 20,
                      color: selectedIndex == 2
                          ? AppColors.white
                          : AppColors.iconBarColor,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: CircleAvatar(
                    radius: 25.r,
                    backgroundColor: selectedIndex == 3
                        ? AppColors.primaryColor
                        : AppColors.white,
                    child: CustomSVGImage(
                      asset: AppAssets.messagesIcon,
                      width: 20,
                      height: 20,
                      color: selectedIndex == 3
                          ? AppColors.white
                          : AppColors.iconBarColor,
                    ),
                  ),
                  label: ''),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned.fill(
                  child: Image.asset(
                AppAssets.bg,
                fit: BoxFit.cover,
              )),
              Column(children: [
                Container(
                  width: double.infinity,
                  height: 155.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        AppColors.gradientColor1,
                        AppColors.gradientColor2
                      ]),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.r),
                        bottomRight: Radius.circular(40.r),
                      )),
                  child: Center(
                    child: ListTile(
                      title: Text('Hi Handwerker!',
                          style: TextStyle(
                              color: AppColors.subtitelColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp,
                              fontFamily: 'Rubik')),
                      subtitle: Text('Find Your Doctor',
                          style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28.sp,
                              fontFamily: 'Rubik')),
                      trailing: CircleAvatar(
                        radius: 30.r,
                        backgroundImage: AssetImage(AppAssets.homeImage),
                      ),
                    ),
                  ),
                ),
                verticalSpace(10),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.w),
                  child: SizedBox(
                    height: 100.h,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          IconCard(
                              colorCard: AppColors.colorCardIcon1,
                              icon: AppAssets.toothIcon),
                          horizontalSpace(5),
                          IconCard(
                              colorCard: AppColors.colorCardIcon2,
                              icon: AppAssets.heartIcon),
                          horizontalSpace(5),
                          IconCard(
                              colorCard: AppColors.colorCardIcon3,
                              icon: AppAssets.eyeIcon),
                          horizontalSpace(5),
                          IconCard(
                              colorCard: AppColors.colorCardIcon4,
                              icon: AppAssets.bodyIcon),
                        ]),
                  ),
                ),
                verticalSpace(10),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular Doctor',
                          style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                              fontFamily: 'Rubik')),
                      Text('See all>',
                          style: TextStyle(
                              color: AppColors.descriptionColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              fontFamily: 'Rubik')),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,vertical: 10.h
                  ),
                  child: SizedBox(
                      height: 200.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          PopularDoctorCard(
                              name: 'Dr. Fillerup Grab',
                              specialty: 'Medicine Specialist',
                              imageDoctor: AppAssets.popularDoctor1),
                          horizontalSpace(5),
                          PopularDoctorCard(
                              name: 'Dr. Blessing',
                              specialty: 'Dentist Specialist',
                              imageDoctor: AppAssets.popularDoctor2),
                          horizontalSpace(5),
                          PopularDoctorCard(
                              name: 'Dr.Nadia',
                              specialty: 'Dentist Specialist',
                              imageDoctor: AppAssets.popularDoctor3),
                        ],
                      )),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Feature Doctor',
                          style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                              fontFamily: 'Rubik')),
                      Text('See all>',
                          style: TextStyle(
                              color: AppColors.descriptionColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              fontFamily: 'Rubik')),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,vertical: 10.h,

                    ),
                    child: SizedBox(
                      height: 200.h,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          FeatureDoctorCard(
                              name: 'Dr. Crick',
                              salary: '25.00/ hours',
                              imageFeatuerDoctor: AppAssets.featureDoctor1,
                              iconPath: AppAssets.heart,
                              rate: '3.7'),
                          FeatureDoctorCard(
                              name: 'Dr. Strain',
                              salary: '22.00/ hours',
                              iconPath: AppAssets.heartred,
                              imageFeatuerDoctor: AppAssets.featureDoctor2,
                              rate: '3.0'),
                          FeatureDoctorCard(
                              name: 'Dr. Lachinet',
                              salary: '29.00/ hours',
                              imageFeatuerDoctor: AppAssets.featureDoctor3,
                              iconPath: AppAssets.heart,
                              rate: '2.9'),
                        ],
                      ),
                    )),
              ]),
            ],
          ),
        ));
  }
}
