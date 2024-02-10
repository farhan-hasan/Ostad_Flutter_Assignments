import 'dart:convert';

import 'package:assignment_2/photo_details_screen.dart';
import 'package:assignment_2/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

enum PopupMenuType { edit, delete }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> productList = [];
  bool _inProgress = false;

  @override
  void initState() {
    super.initState();
    getProductListFromAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo Gallery App"),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          getProductListFromAPI();
        },
        child: Visibility(
          visible: _inProgress == false,
          replacement: const Center(child: CircularProgressIndicator()),
          child: ListView.builder(
              //itemCount: 5,
              itemBuilder: (context, index) {
            //return _getStaticProductListTile();
            return _getProductListTile(productList[index]);
          }),
        ),
      ),
    );
  }

  Widget _getProductListTile(Product product) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PhotoDetailsScreen(
                      product: product,
                    )));
      },
      child: ListTile(
        leading: SizedBox(
          child: Image.network(product.thumbnailUrl ?? ''),
        ),
        title: Wrap(children: [Text(product.title ?? 'Unknown')]),
      ),
    );
  }

  Future<void> getProductListFromAPI() async {
    _inProgress = true;
    setState(() {});

    /// step 1: make URI
    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/photos");

    /// step 2: Call API
    Response response = await get(uri);

    /// step 3: Show response
    if (response.statusCode == 200) {
      productList.clear();
      var decodedResponse = jsonDecode(response.body);

      for (var item in decodedResponse) {
        Product product = Product.fromJson(item);
        productList.add(product);
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Load failed, Try Again!")));
    }
    _inProgress = false;
    setState(() {});
  }
}
