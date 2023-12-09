import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:productive/constants/routes.dart';

import '../../../constants/icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$isSelect',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          if (isSelect)
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 43),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 45,
                                width: 45,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  AppIcons.income,
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                              const SizedBox(height: 8,),
                              const Text('Income'),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 45,
                                width: 45,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  AppIcons.expense,
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                              const SizedBox(height: 8,),
                              const Text("Expense"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 45,
                                width: 45,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  AppIcons.tasks,
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                              const SizedBox(height: 8,),
                              const Text("Tasks"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 43),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 45,
                                width: 45,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  AppIcons.income,
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                              const SizedBox(height: 8,),
                              const Text('Notes'),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pushReplacementNamed(AppRoutes.createTask);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    AppIcons.income,
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8,),
                              const Text('Event'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 26),
                    GestureDetector(
                      onTap: () {
                        isSelect = false;
                        setState(() {});
                      },
                      child: Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: isSelect
          ? const SizedBox.shrink()
          : FloatingActionButton(
              onPressed: () {
                isSelect = !isSelect;
                setState(() {});
              },
            ),
    );
  }
}
