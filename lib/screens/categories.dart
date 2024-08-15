import 'package:flutter/material.dart';
import 'package:study_helper/widgets/basic_widgets_widget.dart';
import 'package:study_helper/widgets/flutter_layout_widget.dart';
import 'package:study_helper/widgets/routing_widget.dart';
import 'package:study_helper/widgets/user_inputs_and_gestures_widget.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
import 'package:study_helper/widgets/auth_screen.dart';
import 'package:study_helper/widgets/async_data_screen.dart';
import 'package:study_helper/widgets/alert_dialog_screen.dart';

class CategoryScreen extends StatelessWidget {
  final String category;

  CategoryScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    // Define widgets for each category
    Widget widgetToShow;
    String filePath;

    switch (category) {
      case 'Basic Widgets':
        widgetToShow = const BasicWidgetsWidget();
        filePath = 'lib/widgets/basic_widgets_widget.dart';
        break;
      case 'Flutter Layout':
        widgetToShow = const FlutterLayoutWidget();
        filePath = 'lib/widgets/flutter_layout_widget.dart';
        break;
      case 'User Inputs & Gestures':
        widgetToShow = const UserInputsAndGesturesWidget();
        filePath = 'lib/widgets/user_inputs_and_gestures_widget.dart';
        break;
      case 'Routing':
        widgetToShow = const RoutingWidget();
        filePath = 'lib/widgets/routing_widget.dart';
        break;
      case 'Alert Dialog':
        widgetToShow = AlertDialogScreen();
        filePath = 'lib/widgets/alert_dialog_screen.dart';
        break;
      case 'Authentication':
        widgetToShow = AuthScreen();
        filePath = 'lib/widgets/auth_screen.dart';
        break;
      case 'Asynchronous Data':
        widgetToShow = AsyncDataScreen();
        filePath = 'lib/widgets/async_data_screen.dart';
        break;
      default:
        widgetToShow = const Center(child: Text('Unknown category'));
        filePath = '';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: widgetToShow is Center
          ? widgetToShow
          : WidgetWithCodeView(
              child: widgetToShow,
              filePath: filePath,
              codeLinkPrefix: 'https://example.com?q=',
              iconBackgroundColor: Colors.white,
              iconForegroundColor: Colors.deepPurple,
              labelBackgroundColor: Colors.grey[100]!,
              labelTextStyle: TextStyle(color: Colors.grey[800]),
              showLabelText: true,
            ),
    );
  }
}
