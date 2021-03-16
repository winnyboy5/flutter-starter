import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:starter/feed/ui/feed.dart';
import 'package:starter/utils/widgets/app_strings.dart';
import 'package:starter/utils/widgets/custom_app_bar.dart';
import 'package:starter/utils/widgets/style.dart';

final navProvider = StateProvider((ref) => 0);

class HomePage extends HookWidget {
  HomePage({Key key}) : super(key: key);

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);

  static List<Widget> _widgetOptions = <Widget>[
    FeedPage(),
    Text(
      'Index 1: Card Wallet',
      style: optionStyle,
    ),
    Text(
      'Index 2: Exchange',
      style: optionStyle,
    ),
    Text(
      'Index 3: Broadcast',
      style: optionStyle,
    ),
    Text(
      'Index 4: Messages',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, _) {
      final selectedIndex = watch(navProvider).state;
      return SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(
              title: selectedIndex == 0
                  ? this.homeLogo(context)
                  : this.appHead(context, AppStrings.menuText[selectedIndex])),
          body: Center(child: _widgetOptions.elementAt(selectedIndex)),
          bottomNavigationBar: BottomNavyBar(
            selectedIndex: selectedIndex,
            onItemSelected: (index) {
              context.read(navProvider).state = index;
            },
            iconSize: 14,
            containerHeight: 50,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            backgroundColor: Theme.of(context).primaryColor,
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                  title: Text('Home'),
                  icon: Icon(FontAwesomeIcons.home),
                  textAlign: TextAlign.center,
                  inactiveColor: Theme.of(context).accentColor,
                  activeColor: ColorSets.colorBrand1),
              BottomNavyBarItem(
                  title: Text('Card Wallet'),
                  icon: Icon(FontAwesomeIcons.layerGroup),
                  textAlign: TextAlign.center,
                  inactiveColor: Theme.of(context).accentColor,
                  activeColor: ColorSets.colorBrand1),
              BottomNavyBarItem(
                  title: Text('Exchange'),
                  icon: Icon(FontAwesomeIcons.sync),
                  textAlign: TextAlign.center,
                  inactiveColor: Theme.of(context).accentColor,
                  activeColor: ColorSets.colorBrand1),
              BottomNavyBarItem(
                  title: Text(
                    'Broadcast',
                  ),
                  icon: Icon(FontAwesomeIcons.broadcastTower),
                  textAlign: TextAlign.center,
                  inactiveColor: Theme.of(context).accentColor,
                  activeColor: ColorSets.colorBrand1),
              BottomNavyBarItem(
                  title: Text('Messages'),
                  icon: Icon(FontAwesomeIcons.comment),
                  textAlign: TextAlign.center,
                  inactiveColor: Theme.of(context).accentColor,
                  activeColor: ColorSets.colorBrand1),
            ],
          ),
        ),
      );
    });
  }

  Widget homeLogo(context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logo_solo.png'),
                  fit: BoxFit.contain)),
        ),
        Container(
          child: Text(AppStrings.appTitle,
              style: Theme.of(context).textTheme.headline4),
          margin: EdgeInsets.only(left: 10.0, bottom: 6.0),
        ),
      ],
    );
  }

  Widget appHead(context, title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
