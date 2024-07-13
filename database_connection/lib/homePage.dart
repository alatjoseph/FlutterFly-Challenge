import 'package:database_connection/database/db_functions/db_functions.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
    required this.loginData,
  });

  final List<Map<String, dynamic>> loginData;

  @override
  State<Homepage> createState() => _HomepageState();
}

late List<Map<String, dynamic>> _loginData;
int _currentPageIndex = 0;

class _HomepageState extends State<Homepage> {
  PageController pagecontroller = PageController();
  @override
  void initState() {
    _loginData = widget.loginData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int totalPages = (_loginData.length / 5).ceil();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple),
                    onPressed: () {
                      cleardata();
                      setState(
                        () {
                          _loginData = [];
                        },
                      );
                    },
                    child: const Text(
                      'Clear Table',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple),
                    onPressed: () {},
                    child: const Text(
                      'Refresh',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple),
                      onPressed: () {},
                      child: const Text(
                        'Structure',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Login Data',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'ID',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text('Name',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: Stack(
                  children: [
                    _loginData.isEmpty
                        ? const Center(child: Text('No data available'))
                        : PageView.builder(
                            controller: pagecontroller,
                            onPageChanged: (int index) {
                              setState(() {
                                _currentPageIndex = index;
                              });
                            },
                            itemCount: (_loginData.length / 5).ceil(),
                            itemBuilder: (context, pageIndex) {
                              int startIndex = pageIndex * 5;
                              int endIndex = startIndex + 5;

                              if (endIndex > _loginData.length) {
                                endIndex = _loginData.length;
                              }

                              return ListView.separated(
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  int itemIndex = startIndex + index;

                                  if (itemIndex >= _loginData.length) {
                                    return Container(); // Return an empty container if index is out of bounds
                                  }

                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(_loginData[itemIndex]['id']
                                          .toString()),
                                      Text(_loginData[itemIndex]['email'] ??
                                          'No Email'),
                                      Text(_loginData[itemIndex]['password'] ??
                                          'No Password'),
                                    ],
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    const Divider(thickness: 1),
                                itemCount: endIndex - startIndex,
                              );
                            },
                          ),
                    Positioned(
                        right: 100,
                        bottom: 0,
                        child: IconButton(
                            onPressed: () {
                              pagecontroller.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                            ))),
                    Positioned(
                        left: 160,
                        bottom: 15,
                        child: Text(
                          "Page ${_currentPageIndex + 1}/$totalPages",
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                    Positioned(
                      left: 100,
                      bottom: 0,
                      child: IconButton(
                          onPressed: () {
                            pagecontroller.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_sharp,
                            size: 20,
                          )),
                    )
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    heroTag: 'uniqueTag1',
                    child: const Icon(Icons.exit_to_app_rounded),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  FloatingActionButton(
                    elevation: 10,
                    heroTag: 'uniqueTag2',
                    child: const Icon(Icons.menu),
                    onPressed: () {},
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
