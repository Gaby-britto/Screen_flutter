import 'package:first_app/constants/styles.dart';
import 'package:first_app/models/produto_model.dart';
import 'package:flutter/material.dart';

class ProdutoDetalheScreen extends StatelessWidget {
  final ProdutoModel produto;
  const ProdutoDetalheScreen({
    super.key,
    required this.produto,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child:
                    Image.asset(produto.imagem, height: 200, fit: BoxFit.fill),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    produto.titulo,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 250),
                  Icon(Icons.favorite_border),
                ],
              ),
              Text('1kg, Price', style: TextStyle(color: Colors.grey)),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          // Lógica para diminuir a quantidade
                        },
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        //  margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 61, 184, 98),
                          borderRadius: borderRadius,
                        ),
                        child: IconButton(
                          iconSize: 20,
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          // Lógica para aumentar a quantidade
                        },
                      ),
                    ],
                  ),
                  Text(
                    produto.preco.toString(),
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Spacer(),
              Divider(),
              Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
              Divider(),
              Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
              Divider(),
              Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  // Lógica para adicionar ao carrinho
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.green,
                ),
                child: Text(
                  'Add To Basket',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
