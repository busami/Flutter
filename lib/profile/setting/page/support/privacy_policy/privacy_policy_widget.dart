import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  static String routeName = 'PrivacyPolicy';
  static String routePath = '/privacyPolicy';

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PrivacyPolicy'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 22.0,
              ),
              onPressed: () async {
                logFirebaseEvent('PRIVACY_POLICY_arrow_back_rounded_ICN_ON');
                logFirebaseEvent('IconButton_navigate_back');
                context.pop();
              },
            ),
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              's74mmqmk' /* Privacy Policy */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.cairo(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: MarkdownBody(
                    data:
                        '''# Homexa Privacy Policy\n\n**Last Updated:** [02 Apr, 2025]\n\nWelcome to Trimpz! Your privacy is important to us. This Privacy Policy explains how we collect, use, disclose, and protect your information.\n\n---\n\n## **1. Information We Collect**\n\n### **1.1 Personal Information**\nWe may collect the following personal information when you use Fixify:\n- Name\n- Email address\n- Phone number\n- Billing and payment details\n- Home address\n\n### **1.2 Non-Personal Information**\nWe also collect non-personal data, including:\n- Device information (e.g., type, operating system, IP address)\n- Usage data (e.g., interactions with the app, pages visited)\n- Location data (if enabled on your device)\n\n---\n\n## **2. How We Use Your Information**\n\n### **2.1 Provide Services**\nWe use your data to:\n- Process bookings and payments\n- Connect you with service providers\n- Provide customer support\n\n### **2.2 Improve Our Platform**\nYour data helps us:\n- Enhance app functionality\n- Develop new features\n- Monitor usage trends\n\n### **2.3 Communication**\nWe may send you:\n- Booking confirmations\n- Updates about your services\n- Promotional offers (you can opt-out at any time)\n\n---\n\n## **3. Sharing Your Information**\n\n### **3.1 With Service Providers**\nYour information is shared with service providers to facilitate bookings and services.\n\n### **3.2 Third-Party Partners**\nWe may share anonymized data with analytics and marketing partners to improve our services.\n\n### **3.3 Legal Obligations**\nWe may disclose your data to comply with legal obligations or protect our rights.\n\n---\n\n## **4. Data Security**\n\nWe prioritize the security of your information. Measures include:\n- Data encryption\n- Secure servers\n- Regular security audits\n\nWhile we strive to protect your data, no method of transmission is 100% secure.\n\n---\n\n## **5. Your Rights**\n\n### **5.1 Access and Update**\nYou can access and update your personal information through your account settings.\n\n### **5.2 Data Deletion**\nYou may request the deletion of your account and associated data by contacting us at [support@fixify.com].\n\n### **5.3 Opt-Out**\nYou can opt-out of promotional communications by adjusting your preferences in the app or clicking \"unsubscribe\" in emails.\n\n---\n\n## **6. Cookies and Tracking**\n\nWe use cookies and similar technologies to:\n- Enhance user experience\n- Analyze platform performance\n- Deliver personalized content\n\nYou can manage cookies through your browser settings.\n\n---\n\n## **7. Third-Party Links**\n\nOur app may contain links to third-party websites. We are not responsible for their privacy practices. Please review their policies before sharing your data.\n\n---\n\n## **8. Children’s Privacy**\n\nFixify is not intended for users under 18. We do not knowingly collect data from children. If we learn that we have, we will delete it promptly.\n\n---\n\n## **9. Changes to This Policy**\n\nWe may update this Privacy Policy periodically. Changes will be communicated via the app or email. Continued use of Fixify constitutes acceptance of the updated policy.\n\n---\n\n## **10. Contact Us**\n\nFor questions or concerns about this Privacy Policy, please contact us:\n\n**Fixify Support**  \nEmail: support@fixify.com  \nPhone: [998626708]  \nAddress: [Broadway, New York, NY]\n''',
                    selectable: true,
                    onTapLink: (_, url, __) => launchURL(url!),
                  ),
                ),
              ]
                  .addToStart(SizedBox(height: 8.0))
                  .addToEnd(SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
