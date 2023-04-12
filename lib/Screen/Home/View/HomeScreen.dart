import 'package:flutter/material.dart';
import 'package:post_api_call/Screen/Home/Provider/HomeProvider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;

  @override
  Widget build(BuildContext context) {
    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(controller: homeProviderTrue!.txtname),
            TextField(controller: homeProviderTrue!.txtjob),
            ElevatedButton(
              onPressed: () async  {
                String name = homeProviderFalse!.txtname.text;
                String job = homeProviderFalse!.txtjob.text;

                String msg = await homeProviderFalse!.Creat(name, job);

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$msg")));

              },
              child: Text("submit"),
            ),
          ],
        ),
      ),
    );
  }
}
