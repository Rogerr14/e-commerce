import 'package:e_commerce/env/theme/app_theme.dart';
import 'package:flutter/material.dart';

class LayoutAuth extends StatefulWidget {
  final Widget child;
  const LayoutAuth({super.key, required this.child});

  @override
  State<LayoutAuth> createState() => _LayoutAuthState();
}

class _LayoutAuthState extends State<LayoutAuth> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Center(
        child: Container(
          width: size.width * 0.4,
          height: size.height * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppTheme.secondaryColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: size.width * 0.2,
                  child: Image.asset(
                    AppTheme.logo,
                  ),
                ),
              ),
              widget.child,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Texto ',
                      style: TextStyle(
                        color: AppTheme.primaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Correo Electrónico',
                          style: TextStyle(
                            color: AppTheme.primaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
