import 'package:assignment_2/product.dart';
import 'package:flutter/material.dart';

class PhotoDetailsScreen extends StatelessWidget {
  const PhotoDetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo Details"),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 100,),
            Image.network(product.url ?? ''),
            const SizedBox(height: 24,),
            Text('Title: ${product.title ?? ''}', style: Theme.of(context).textTheme.displayMedium!),
            const SizedBox(height: 24,),
            Center(child: Text('ID: ${product.id ?? ''}',  style: Theme.of(context).textTheme.displayMedium!),)
          ],
        ),
      ),
    );
  }
}
