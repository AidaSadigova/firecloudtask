import 'package:flutter/material.dart';
import 'package:firecloudtask/models/product_model.dart';
import 'package:firecloudtask/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsStream = ref.watch(productsStreamProvider);
    final productService = ref.read(productsServiceProvider.notifier);
    String productname = '';

    return productsStream.when(
      data: (data) => Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => Dismissible(
                key: UniqueKey(),
                child: Card(
                  color: Colors.purple[100],
                  child: ListTile(
                    title: Text(data[index].name!),
                    trailing: IconButton(
                      icon: Icon(data[index].purchased!
                          ? Icons.check_box_outlined
                          : Icons.check_box_outline_blank),
                      onPressed: () {
                        productService.updateProduct(data[index]);
                      },
                    ),
                  ),
                ),
                onDismissed: (dir) {
                  productService.deleteProduct(data[index]);
                },
              ),
            ),
          ),
          Container(
            color: Colors.purple[400],
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => productname = value,
                    ),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[100],
                    ),
                    onPressed: () {
                      productService.addProduct(
                          ProductModel(name: productname, purchased: false));
                    },
                    child: const Text('Add')),
              ],
            ),
          )
        ],
      ),
      error: (error, tree) => Center(
        child: Text(
          error.toString(),
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
