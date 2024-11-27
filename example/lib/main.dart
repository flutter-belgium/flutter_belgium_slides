import 'package:flutter/widgets.dart';
import 'package:flutter_belgium_slides/flutter_belgium_slides.dart';

void main() {
  FlutterBelgiumSlides.initialize();
  runApp(const FlutterBelgiumSlidesApp());
}

class FlutterBelgiumSlidesApp extends StatelessWidget {
  const FlutterBelgiumSlidesApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterBelgiumSlidesDeck(
      title: 'Flutter Belgium Slides',
      slides: (context, theme) => [
        const FlutterBelgiumLogoSlide(
          title: 'Meetup #20',
        ),
        const FlutterBelgiumSpeakerSlide(
          title: '⚡️ Lightning talks',
          speakers: [
            FlutterBelgiumSpeaker(
              name: 'Robert Bouten',
              profilePictureUrl:
                  'https://v5.airtableusercontent.com/v3/u/35/35/1732730400000/wgAhE7rItYxw5pUcDiXYBw/UpNlijsGTZxYwwkKeF4aVKIzoVyKbTwoLWklOwXfiUFq75OXmCXHNcwK0xuLHbE7z0kSsfZCZzIc4w670k7ev18vITKH49UU7ihXuEcrU87dYvZo5WssdD_ZrQA-gLlJk2y9oq9B9onOlorufG8t_A/UuKoVvDw9SvkKb6Zg1W9RLr_bulWCb4bXs3CAnXX7ak',
              talkTitle: 'Dart frog',
            ),
            FlutterBelgiumSpeaker(
              name: 'Pieter-Jan Robrecht',
              profilePictureUrl:
                  'https://v5.airtableusercontent.com/v3/u/35/35/1732730400000/8CcH-kK2P0-MLaOlGBHp2g/0WHGrsmYWRPt2NzT2nr-VXKlDwzVK-gsAJRo7-knZjzeSR6ABQ3xzNLYpDlllXtqXjDun4XuZ1JCB_BEdsPbvMH5WenW5dR94YabXb8swwhXDt12TW-jOswh90xunVQ0lNdb4X39Krx0YyPNu4_m3g/fcuoofDywCbgIYZTrRl-NBUmWPD62pR6oCLhjCc9wns',
              talkTitle: 'Memory leaks',
            ),
            FlutterBelgiumSpeaker(
              name: 'Romain Pattyn',
              profilePictureUrl:
                  'https://v5.airtableusercontent.com/v3/u/35/35/1732730400000/8CcH-kK2P0-MLaOlGBHp2g/0WHGrsmYWRPt2NzT2nr-VXKlDwzVK-gsAJRo7-knZjzeSR6ABQ3xzNLYpDlllXtqXjDun4XuZ1JCB_BEdsPbvMH5WenW5dR94YabXb8swwhXDt12TW-jOswh90xunVQ0lNdb4X39Krx0YyPNu4_m3g/fcuoofDywCbgIYZTrRl-NBUmWPD62pR6oCLhjCc9wns',
              talkTitle: 'Securely transmit an API Key from an App to a computer using Firebase',
            ),
          ],
        ),
        const FlutterBelgiumSpeakerSlide(
          title: '🍿 Our program for today',
          speakers: [
            FlutterBelgiumSpeaker(
              name: 'Tijl Ivens',
              profilePictureUrl:
                  'https://v5.airtableusercontent.com/v3/u/35/35/1732730400000/wgAhE7rItYxw5pUcDiXYBw/UpNlijsGTZxYwwkKeF4aVKIzoVyKbTwoLWklOwXfiUFq75OXmCXHNcwK0xuLHbE7z0kSsfZCZzIc4w670k7ev18vITKH49UU7ihXuEcrU87dYvZo5WssdD_ZrQA-gLlJk2y9oq9B9onOlorufG8t_A/UuKoVvDw9SvkKb6Zg1W9RLr_bulWCb4bXs3CAnXX7ak',
              talkTitle: 'Flutter as a React dev',
            ),
            FlutterBelgiumSpeaker(
              name: 'William Verhaeghe',
              profilePictureUrl:
                  'https://v5.airtableusercontent.com/v3/u/35/35/1732730400000/8CcH-kK2P0-MLaOlGBHp2g/0WHGrsmYWRPt2NzT2nr-VXKlDwzVK-gsAJRo7-knZjzeSR6ABQ3xzNLYpDlllXtqXjDun4XuZ1JCB_BEdsPbvMH5WenW5dR94YabXb8swwhXDt12TW-jOswh90xunVQ0lNdb4X39Krx0YyPNu4_m3g/fcuoofDywCbgIYZTrRl-NBUmWPD62pR6oCLhjCc9wns',
              talkTitle: 'Intro to Machine Learning',
            ),
          ],
        ),
        const FlutterBelgiumSpeakerSlide(
          title: '🍿 Open space',
          speakers: [
            FlutterBelgiumSpeaker(
              name: 'Fré Dumazy',
              profilePictureUrl:
                  'https://v5.airtableusercontent.com/v3/u/35/35/1732730400000/wgAhE7rItYxw5pUcDiXYBw/UpNlijsGTZxYwwkKeF4aVKIzoVyKbTwoLWklOwXfiUFq75OXmCXHNcwK0xuLHbE7z0kSsfZCZzIc4w670k7ev18vITKH49UU7ihXuEcrU87dYvZo5WssdD_ZrQA-gLlJk2y9oq9B9onOlorufG8t_A/UuKoVvDw9SvkKb6Zg1W9RLr_bulWCb4bXs3CAnXX7ak',
              talkTitle: 'Flutter Belgium Hackathon',
            ),
          ],
        ),
      ],
    );
  }
}
