import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/component/language_option/language_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'languages_model.dart';
export 'languages_model.dart';

class LanguagesWidget extends StatefulWidget {
  const LanguagesWidget({super.key});

  static String routeName = 'Languages';
  static String routePath = '/languages';

  @override
  State<LanguagesWidget> createState() => _LanguagesWidgetState();
}

class _LanguagesWidgetState extends State<LanguagesWidget> {
  late LanguagesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanguagesModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Languages'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
              buttonSize: 54.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                logFirebaseEvent('LANGUAGES_arrow_back_rounded_ICN_ON_TAP');
                logFirebaseEvent('IconButton_navigate_back');
                context.pop();
              },
            ),
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'jk5rjsim' /* Select Language */,
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
          child: Builder(
            builder: (context) {
              final languages = FFAppState().appLanguages.toList();

              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(languages.length, (languagesIndex) {
                    final languagesItem = languages[languagesIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: wrapWithModel(
                        model: _model.languageOptionModels.getModel(
                          languagesIndex.toString(),
                          languagesIndex,
                        ),
                        updateCallback: () => safeSetState(() {}),
                        child: LanguageOptionWidget(
                          key: Key(
                            'Key6b0_${languagesIndex.toString()}',
                          ),
                          title: valueOrDefault<String>(
                            languagesItem.title,
                            'Language',
                          ),
                          flag: languagesItem.countryFlag,
                          selected: FFLocalizations.of(context).languageCode ==
                              languagesItem.langCode,
                          selectAction: () async {
                            logFirebaseEvent(
                                'LANGUAGES_Container_6b0th2rh_CALLBACK');
                            logFirebaseEvent('LanguageOption_set_app_language');
                            setAppLanguage(context, languagesItem.langCode);
                          },
                        ),
                      ),
                    );
                  })
                      .divide(SizedBox(height: 12.0))
                      .addToStart(SizedBox(height: 12.0))
                      .addToEnd(SizedBox(height: 24.0)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
