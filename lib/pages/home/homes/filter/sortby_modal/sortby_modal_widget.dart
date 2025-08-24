import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/homes/filter/sortby_card/sortby_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'sortby_modal_model.dart';
export 'sortby_modal_model.dart';

class SortbyModalWidget extends StatefulWidget {
  const SortbyModalWidget({
    super.key,
    required this.selectedSort,
    required this.selectAction,
  });

  final String? selectedSort;
  final Future Function(String sortBy)? selectAction;

  @override
  State<SortbyModalWidget> createState() => _SortbyModalWidgetState();
}

class _SortbyModalWidgetState extends State<SortbyModalWidget> {
  late SortbyModalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SortbyModalModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SORTBY_MODAL_SortbyModal_ON_INIT_STATE');
      logFirebaseEvent('SortbyModal_update_component_state');
      _model.selector = widget.selectedSort!;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          width: 180.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              wrapWithModel(
                model: _model.sortbyCardModel1,
                updateCallback: () => safeSetState(() {}),
                child: SortbyCardWidget(
                  title: 'Verified Source',
                  active: _model.selector,
                  action: (title) async {
                    logFirebaseEvent(
                        'SORTBY_MODAL_Container_0ukhp48w_CALLBACK');
                    logFirebaseEvent('SortbyCard_update_component_state');
                    _model.selector = title;
                    safeSetState(() {});
                    logFirebaseEvent('SortbyCard_execute_callback');
                    await widget.selectAction?.call(
                      widget.selectedSort!,
                    );
                    logFirebaseEvent('SortbyCard_close_dialog_drawer_etc');
                    Navigator.pop(context);
                  },
                ),
              ),
              wrapWithModel(
                model: _model.sortbyCardModel2,
                updateCallback: () => safeSetState(() {}),
                child: SortbyCardWidget(
                  title: 'Minimum Price',
                  active: _model.selector,
                  action: (title) async {
                    logFirebaseEvent(
                        'SORTBY_MODAL_Container_ooqm31of_CALLBACK');
                    logFirebaseEvent('SortbyCard_update_component_state');
                    _model.selector = title;
                    safeSetState(() {});
                    logFirebaseEvent('SortbyCard_close_dialog_drawer_etc');
                    Navigator.pop(context);
                  },
                ),
              ),
              wrapWithModel(
                model: _model.sortbyCardModel3,
                updateCallback: () => safeSetState(() {}),
                child: SortbyCardWidget(
                  title: 'Maximum Price',
                  active: _model.selector,
                  action: (title) async {
                    logFirebaseEvent(
                        'SORTBY_MODAL_Container_rhvsai5n_CALLBACK');
                    logFirebaseEvent('SortbyCard_update_component_state');
                    _model.selector = title;
                    safeSetState(() {});
                    logFirebaseEvent('SortbyCard_close_dialog_drawer_etc');
                    Navigator.pop(context);
                  },
                ),
              ),
              wrapWithModel(
                model: _model.sortbyCardModel4,
                updateCallback: () => safeSetState(() {}),
                child: SortbyCardWidget(
                  title: 'Newest',
                  active: _model.selector,
                  action: (title) async {
                    logFirebaseEvent(
                        'SORTBY_MODAL_Container_wmmpbaf6_CALLBACK');
                    logFirebaseEvent('SortbyCard_update_component_state');
                    _model.selector = title;
                    safeSetState(() {});
                    logFirebaseEvent('SortbyCard_close_dialog_drawer_etc');
                    Navigator.pop(context);
                  },
                ),
              ),
              wrapWithModel(
                model: _model.sortbyCardModel5,
                updateCallback: () => safeSetState(() {}),
                child: SortbyCardWidget(
                  title: 'Minimum Installment',
                  active: _model.selector,
                  action: (title) async {
                    logFirebaseEvent(
                        'SORTBY_MODAL_Container_ygl931q5_CALLBACK');
                    logFirebaseEvent('SortbyCard_update_component_state');
                    _model.selector = title;
                    safeSetState(() {});
                    logFirebaseEvent('SortbyCard_close_dialog_drawer_etc');
                    Navigator.pop(context);
                  },
                ),
              ),
              wrapWithModel(
                model: _model.sortbyCardModel6,
                updateCallback: () => safeSetState(() {}),
                child: SortbyCardWidget(
                  title: 'Maximum Installment',
                  active: _model.selector,
                  action: (title) async {
                    logFirebaseEvent(
                        'SORTBY_MODAL_Container_7di9hzgr_CALLBACK');
                    logFirebaseEvent('SortbyCard_update_component_state');
                    _model.selector = title;
                    safeSetState(() {});
                    logFirebaseEvent('SortbyCard_close_dialog_drawer_etc');
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
