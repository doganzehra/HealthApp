import '../drinks_page/drinks_page_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../grains_and_legumes_page/grains_and_legumes_page_widget.dart';
import '../greengrocery_page/greengrocery_page_widget.dart';
import '../meat_egg_page/meat_egg_page_widget.dart';
import '../milk_product_page/milk_product_page_widget.dart';
import '../spice_page/spice_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDrinkPageWidget extends StatefulWidget {
  const FoodDrinkPageWidget({
    Key key,
    this.date,
  }) : super(key: key);

  final DateTime date;

  @override
  _FoodDrinkPageWidgetState createState() => _FoodDrinkPageWidgetState();
}

class _FoodDrinkPageWidgetState extends State<FoodDrinkPageWidget> {
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
          'Yiyecek ve İçecek',
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
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/Healthy_breakfast_meals_set.jpg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MilkProductPageWidget(
                            date: widget.date,
                            kategori: 'Süt ve Süt Ürünleri',
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Süt ve Süt Ürünleri',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MeatEggPageWidget(
                            date: widget.date,
                            kategori: 'Et-Yumurta',
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Et-Yumurta',
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
                          builder: (context) => GreengroceryPageWidget(
                            date: widget.date,
                            kategori: 'Sebze-Meyve',
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Sebze-Meyve',
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
                          builder: (context) => GrainsAndLegumesPageWidget(
                            date: widget.date,
                            kategori: 'Tahıl-Kurubaklagil',
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Tahıl-Kurubaklagil',
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
                          builder: (context) => SpicePageWidget(
                            date: widget.date,
                            kategori: 'Tuz-Şeker-Baharat',
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Tuz-Şeker-Baharat',
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
                          builder: (context) => DrinksPageWidget(
                            date: widget.date,
                            kategori: 'İçecekler',
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'İçecekler',
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
            ],
          ),
        ),
      ),
    );
  }
}
