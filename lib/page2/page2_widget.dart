import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2Widget extends StatefulWidget {
  const Page2Widget({Key key}) : super(key: key);

  @override
  _Page2WidgetState createState() => _Page2WidgetState();
}

class _Page2WidgetState extends State<Page2Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Jun 11, 2022',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Image.asset(
                    'assets/images/vecteezy_men-and-women-confused-thinking-together-man-with-question_7609247.jpg',
                    width: double.infinity,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'Yedi??iniz Besinler ve  Sebep Oldu??u \n                               Semptom',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Bas agrisi',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        Text(
                          'Ac?? Pul Biber - Avokado',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
