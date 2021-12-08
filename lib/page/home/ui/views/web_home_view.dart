import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WebHomeView extends StatelessWidget {
  const WebHomeView({Key? key}) : super(key: key);

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return webSp();
        }

        return webPc();
      },
    );
  }

  Scaffold webPc() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comcom'),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const SizedBox(
              height: 200.0,
            ),
            Container(
              child: const TabBar(
                tabs: myTabs,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(backgroundColor: Colors.amber),
              ),
              color: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }

  Scaffold webSp() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comcom'),
      ),
      body: const Center(
        child: Text('SP'),
      ),
    );
  }
}

/*
* Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('WEB HOME'),
              OutlinedButton(
                onPressed: () {
                  Get.snackbar("title", "message");
                },
                child: const Text('Detail'),
              )
            ],
          ),
        ),
*
*
*
* */
