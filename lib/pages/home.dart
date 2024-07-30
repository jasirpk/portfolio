import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/size.dart';
import 'package:web_portfolio/widgets/contact_section.dart';
import 'package:web_portfolio/widgets/drawer_mobile.dart';
import 'package:web_portfolio/widgets/footer.dart';
import 'package:web_portfolio/widgets/header_desktop.dart';
import 'package:web_portfolio/widgets/header_mobile.dart';
import 'package:web_portfolio/widgets/main_desktop.dart';
import 'package:web_portfolio/widgets/main_mobile.dart';
import 'package:web_portfolio/widgets/project_section.dart';
import 'package:web_portfolio/widgets/skills_desktop.dart';
import 'package:web_portfolio/widgets/skills_mobile.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarkeys = List.generate(4, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
            key: scaffoldKey,
            backgroundColor: CustomColor.scaffoldBg,
            endDrawer: constraints.maxWidth >= kMinDesktopWidth
                ? null
                : DrawerMobile(onNavItemTap: (int navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  }),
            body: SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(key: navbarkeys.first),
                  if (constraints.maxWidth >= kMinDesktopWidth)
                    HeaderDesktop(onNavMenuTap: (int navIndex) {
                      scrollToSection(navIndex);
                    })
                  else
                    HeaderMobile(
                      onLogoTap: () {},
                      onMenuTap: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                    ),
                  if (constraints.maxWidth >= kMinDesktopWidth)
                    MainDesktop()
                  else
                    MainMobile(),
                  Container(
                    key: navbarkeys[1],
                    width: screenWidth,
                    padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                    color: CustomColor.bgLight1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'What I can do',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary,
                          ),
                        ),
                        SizedBox(height: 50),
                        if (constraints.maxWidth >= kMedDesktopWidth)
                          SkillsDesktop()
                        else
                          SkillsMobile(),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  ProjectsSection(key: navbarkeys[2]),
                  SizedBox(height: 30),
                  ContactSection(
                    key: navbarkeys[3],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Footer()
                ],
              ),
            ));
      },
    );
  }

  void scrollToSection(int navIndex) {
    final key = navbarkeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
