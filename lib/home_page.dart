import 'package:flutter/material.dart';
import 'custom_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Card Widget Demo'),
      ),
      body: Center(
        child: CustomWidget(
          title: 'Vet allowance balance',
          description:
              'We love our Vetted members - Enjoy up to \$245 off your next vet visit, on us!',
          buttonText: 'Button',
          onClick: () {},
          icon: 'assets/icon_dollar.svg',
        ),
      ),
    );
  }
}
