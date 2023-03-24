import 'package:flutter/material.dart';
import 'package:mandrake/model/buyer.dart';
import 'package:mandrake/providers/buyer_provider.dart';
import 'package:provider/provider.dart';

import '../../utils/global_colors.dart';

class BuyerFeed extends StatefulWidget {
  const BuyerFeed({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BuyerFeedState createState() => _BuyerFeedState();
}

class _BuyerFeedState extends State<BuyerFeed> {
  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  //This method uses the user provider to load the user data
  //when the user comes to the home screen
  loadUserData() async {
    BuyerProvider buyerProvider = Provider.of(context, listen: false);
    await buyerProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    Buyer user = Provider.of<BuyerProvider>(context).getBuyer;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColor.mainColor,
        title: const Text(
          'Feed',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        //automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: const Center(
        child: Text("hello"),
      ),
    );
  }
}