import 'package:drosak/core/resources/images_maneger.dart';
import 'package:drosak/model/onboarding_model.dart';

class Utils {
  Utils._();

  static List<OnboardingModel> onBoardingModelList = [
    OnboardingModel(image: SVGImagesManager.room,
        title: "يمكنك إضافة  بعض المراحل التعليمية "),
    OnboardingModel(image: SVGImagesManager.matter,
        title: "يمكنك إضافة  بعض المجموعات لكل مرحلة من المراحل التعليمية"),
    OnboardingModel(image: SVGImagesManager.book,
        title: "يمكنك إضافة  بعض الطلاب لكل جروب الموجودة في كل مرحلة تعليمية"),
    OnboardingModel(image: SVGImagesManager.message,
        title: "يمكنك إضافة  حضور وغياب لكل طالب "),
    OnboardingModel(image: SVGImagesManager.bitcoin,
        title: "يمكنك إضافة  ما إذا كان الطالب دفع هذا الشهر أم لا وإضافة تاريخ الدفع "),
  ];
}
