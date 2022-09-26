import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../food_drink_page/food_drink_page_widget.dart';
import '../symptoms/symptoms_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddContentWidget extends StatefulWidget {
  const AddContentWidget({
    Key key,
    this.date,
  }) : super(key: key);

  final DateTime date;

  @override
  _AddContentWidgetState createState() => _AddContentWidgetState();
}

class _AddContentWidgetState extends State<AddContentWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF94C42),
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
          'Bilgi Ekleme',
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'assets/images/addContent.jpeg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodDrinkPageWidget(
                        date: widget.date,
                      ),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'Besinler',
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF303030),
                    size: 20,
                  ),
                  tileColor: Colors.white,
                  dense: false,
                ),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SymptomsWidget(
                        date: widget.date,
                      ),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    'Semptomlar',
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF303030),
                    size: 20,
                  ),
                  tileColor: Colors.white,
                  dense: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
