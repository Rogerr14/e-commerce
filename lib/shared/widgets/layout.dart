import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/env/theme/app_theme.dart';
import 'package:e_commerce/modules/routes.dart';
import 'package:e_commerce/shared/provider/functional_provider.dart';
import 'package:e_commerce/shared/widgets/alert_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart' as badges;
import 'package:provider/provider.dart';

class LayoutPage extends StatefulWidget {
  final bool requiredStack;
  final Widget child;
  final bool hasScrollBody;
  const LayoutPage(
      {super.key,
      required this.requiredStack,
      required this.child,
      this.hasScrollBody = false});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // final fp = Provider.of<FunctionalProvider>(context, listen: false);

    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverAppBar(
                toolbarHeight: size.height * 0.07,
                backgroundColor: AppTheme.secondaryColor,
                surfaceTintColor: AppTheme.secondaryColor,
                elevation: 30,
                // centerTitle: true,

                leading: GestureDetector(
                  onTap: () {
                    debugPrint('si funca');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      AppTheme.logo,
                      height: 50,
                    ),
                  ),
                ),
                leadingWidth: 200,
                actions: [
                  badges.Badge(
                    badgeStyle: badges.BadgeStyle(badgeColor: AppTheme.orange),
                    position: badges.BadgePosition.topEnd(top: -2, end: 2),
                    badgeContent: Text('1'),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/cart');
                        },
                        icon: Icon(
                          Icons.shopping_bag_rounded,
                          size: 30,
                          color: AppTheme.primaryColor,
                        )),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        size: 30,
                        color: AppTheme.primaryColor,
                      )),
                ],
                title: SizedBox(
                  width: size.width * 0.2,
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Buscar...',
                        // label: Text(
                        //   'Buscar...',
                        //   style: TextStyle(color: Colors.black87),
                        // ),
                        contentPadding: EdgeInsets.all(10),
                        // hintText: 'Buscar...',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 5.0,
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        border: OutlineInputBorder(
                            gapPadding: 1,
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        // borderSide: BorderSide(color: Colors.white)),
                        fillColor: Colors.white),
                  ),
                ),
                centerTitle: true,
              ),
              SliverFillRemaining(
                hasScrollBody: widget.hasScrollBody,
                child: widget.child,
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(color: AppTheme.secondaryColor),
              child: Container(),
            ),
          )
          // if (widget.requiredStack) const AlertModal()
        ],
      ),
    );
  }
}
