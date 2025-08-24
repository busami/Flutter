import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'about_referral_model.dart';
export 'about_referral_model.dart';

class AboutReferralWidget extends StatefulWidget {
  const AboutReferralWidget({super.key});

  @override
  State<AboutReferralWidget> createState() => _AboutReferralWidgetState();
}

class _AboutReferralWidgetState extends State<AboutReferralWidget> {
  late AboutReferralModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutReferralModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FlutterFlowIconButton(
            borderRadius: 20.0,
            buttonSize: 40.0,
            fillColor: Color(0x6614181B),
            icon: Icon(
              FFIcons.kx,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
            onPressed: () async {
              logFirebaseEvent('ABOUT_REFERRAL_COMP_x_ICN_ON_TAP');
              logFirebaseEvent('IconButton_bottom_sheet');
              Navigator.pop(context);
            },
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.6,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: MarkdownBody(
                        data:
                            '''### Terms & Conditions  \n\nBy participating in our referral program, you agree to the following terms:  \n\n- **Eligibility**:  \n  - Open to registered users of our app.  \n  - Referrals must be new users who have not previously signed up.  \n\n- **How It Works**:  \n  - Share your unique referral code or link.  \n  - The referral is valid only when the new user signs up using the code and meets specific requirements (e.g., completing a profile or booking a service).  \n\n- **Rewards**:  \n  - Rewards are given for valid referrals as per the program’s criteria.  \n  - Rewards are non-transferable and cannot be exchanged for cash unless stated.  \n  - The company may adjust the reward structure at any time without notice.  \n\n- **Restrictions**:  \n  - Fraudulent activities, such as creating fake accounts, will disqualify referrals.  \n  - Each user may refer a limited number of people, based on program terms.  \n\n- **Changes**:  \n  - The program is subject to modification or termination at the company’s discretion.  \n  - Updates will be communicated via the app or email.  \n\n- **Final Decision**:  \n  - The company’s decision on referrals and rewards is final.  \n\nBy using the referral program, you accept these terms. For questions, contact our support team.  ''',
                        selectable: true,
                        onTapLink: (_, url, __) => launchURL(url!),
                      ),
                    ),
                  ]
                      .divide(SizedBox(height: 16.0))
                      .addToStart(SizedBox(height: 16.0))
                      .addToEnd(SizedBox(height: 24.0)),
                ),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
