import 'package:festival_flutterturkiye_org/core/utils/theme_helper.dart';
import 'package:festival_flutterturkiye_org/core/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SpeakerSocialMedias extends StatelessWidget {
  const SpeakerSocialMedias({
    this.twitter,
    this.github,
    this.linkedin,
    Key key,
  }) : super(key: key);

  /// Twitter username of the Speaker.
  ///
  /// https://www.twitter.com/ + `username`
  final String twitter;

  /// Github username of the Speaker.
  ///
  /// https://www.github.com/ + `username`
  final String github;

  /// LinkedIn username of the Speaker.
  ///
  /// https://www.linkedin.com/in/ + `username`
  final String linkedin;

  @override
  Widget build(BuildContext context) {
    var mainAxisAlignment = MainAxisAlignment.start;

    if (ResponsiveHelper.isSmallScreen(context)) {
      mainAxisAlignment = MainAxisAlignment.center;
    }
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        _SpeakerSocialMediaButton(
          icon: MdiIcons.twitter,
          url: 'https://www.twitter.com/',
          username: twitter,
        ),
        _SpeakerSocialMediaButton(
          icon: MdiIcons.github,
          url: 'https://www.github.com/',
          username: github,
        ),
        _SpeakerSocialMediaButton(
          icon: MdiIcons.linkedin,
          url: 'https://www.linkedin.com/in/',
          username: linkedin,
        ),
      ],
    );
  }
}

class _SpeakerSocialMediaButton extends StatelessWidget {
  const _SpeakerSocialMediaButton({
    @required this.icon,
    @required this.url,
    this.username,
    Key key,
  })  : assert(icon != null),
        assert(url != null),
        super(key: key);

  final IconData icon;
  final String url;
  final String username;

  @override
  Widget build(BuildContext context) {
    if (username == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ClipOval(
        child: Material(
          elevation: 8,
          shadowColor: Colors.black,
          color: Colors.white10,
          child: InkWell(
            onTap: () async {
              if (await canLaunch(url + username)) {
                await launch(url + username);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                icon,
                color: ThemeHelper.lightColor,
                size: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
