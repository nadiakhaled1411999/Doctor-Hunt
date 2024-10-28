import 'package:untitled/core/routing/route_export_features/export_onboarding/route_export_onboarding.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => OnboardingBodyState();
}

class OnboardingBodyState extends State<OnboardingBody> {
  final controller = OnboardingData();
  final pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnboardingBackGround(currentIndex: currentIndex),
        Column(
          children: [
            Expanded(
              child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: controller.items.length,
                  itemBuilder: (context, index) =>
                 OnboardingPageContent(item: controller.items[index])),
            ),
            OnboardingNextButton(
                currentIndex: currentIndex,
                itemCount: controller.items.length,
                pageController: pageController),
           OnboardingSkipButton(currentIndex: currentIndex, itemCount:controller.items.length,
            pageController: pageController)
          ],
        ),
      ],
    );
  }
}
