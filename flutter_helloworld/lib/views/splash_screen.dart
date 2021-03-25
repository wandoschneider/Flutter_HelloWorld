import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_helloworld/services/repository.dart';

import 'items_list.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Repository repository = Repository();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_callApi);
  }

  _goToNextPage() {
    Navigator.of(context).pushReplacement(CupertinoPageRoute(
      builder: (_) => ItemList(),
    ));
  }

  _callApi(_) {
    repository.getAllItems(context);
    _goToNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueAccent,
    );
  }
}
