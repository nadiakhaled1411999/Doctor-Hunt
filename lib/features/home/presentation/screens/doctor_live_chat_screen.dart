 

import 'package:untitled/core/routing/route_export_features/export_onboarding/route_export_onboarding.dart';
 
class DoctorLiveChatScreen extends StatelessWidget {
  const DoctorLiveChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(AppAssets.backGroundLiveChatScreen,
                  fit: BoxFit.cover)),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.2),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25, right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 33,
                          width: 33,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: AppColors.descriptionColor,
                                )),
                          )),
                      CircleAvatar(
                        child: Image.asset(
                          AppAssets.liveChatDoctor,
                        ),
                      )
                    ],
                  ),
                ),
                verticalSpace(270.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22.r,
                            child: Image.asset(
                              AppAssets.liveChatComment1,
                            ),
                          ),
                          horizontalSpace(10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Everhart Tween",
                                style: AppStyles.getMediumStyle(),
                              ),
                              Text(
                                "Thanks for shareing doctor ❤️",
                                style: AppStyles.getCustomStyle(
                                    color: AppColors.white, fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                      verticalSpace(15.h),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22.r,
                            child: Image.asset(
                              AppAssets.liveChatComment2,
                            ),
                          ),
                          horizontalSpace(10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bonebrake Mash",
                                style: AppStyles.getMediumStyle(),
                              ),
                              Text(
                                "They treat immune system disorders",
                                style: AppStyles.getCustomStyle(
                                  color: AppColors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      verticalSpace(15.h),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22.r,
                            child: Image.asset(
                              AppAssets.liveChatComment3,
                            ),
                          ),
                          horizontalSpace(10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Handler Wack",
                                style: AppStyles.getMediumStyle(),
                              ),
                              Text(
                                "This is the largest directory 👍",
                                style: AppStyles.getCustomStyle(
                                    color: AppColors.white, fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                      verticalSpace(15.h),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22.r,
                            child: Image.asset(
                              AppAssets.liveChatComment1,
                            ),
                          ),
                          horizontalSpace(10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Comfort Love",
                                style: AppStyles.getMediumStyle(),
                              ),
                              Text(
                                "Depending on their education🙂",
                                style: AppStyles.getCustomStyle(
                                    color: AppColors.white, fontSize: 13),
                              ),
                            
                            ],
                          )
                        ],
                      ),
                        verticalSpace( 15.h),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal:15, ),
                                child: TextField(
                                  
                                  onSubmitted: (value) {},
                                  decoration: InputDecoration(
                                       hintText: "Add a Comment...",
                                       hintStyle:TextStyle(
                                        color: AppColors.descriptionColor
                                       ),
                                    filled: true,
                                    fillColor: AppColors.white,
                                      prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.chat_bubble_outline,color: AppColors.primaryColor,),
                                
                                  ),
                                /*  suffixIcon: IconButton(onPressed: (){},   icon: Icon(Icons.radar_outlined),),*/
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular( 100),
                                    
                                    borderSide: BorderSide(
                                      color: AppColors.white
                                    ),
                                  ), 
                                   focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular( 20),
                                    
                                    borderSide: BorderSide(
                                      color: AppColors.white
                                    ),
                                  ),
                                  ),
                                   
                                ),
                              ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
