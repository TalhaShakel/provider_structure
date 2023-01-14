import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_structure/providers/homepage_providers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<HomePageProvider>(
        create: (context) => HomePageProvider(),
        child: Consumer<HomePageProvider>(builder: (context, provider, child) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  children: [
                    Text(
                      provider.eligible.toString(),
                      style: TextStyle(
                          color: (provider.isEligible == true)
                              ? Colors.green
                              : Colors.red),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (v) {
                        provider.check(int.parse(v));
                      },
                    ),
                  ],
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
