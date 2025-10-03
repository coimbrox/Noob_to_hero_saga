import 'package:flutter/material.dart';

class ProductCardPage extends StatelessWidget {
  const ProductCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card do Produto'), centerTitle: true),
      body: Center(
        child: Container(
          // CONTAINER CRIOU O CORPO DO CARD COM COR, BORDA E SOMBRA
          width: 250, // largura fixa do card
          margin: const EdgeInsets.all(16), // margem externa do card
          padding: const EdgeInsets.all(12), // espaçamento interno do card
          decoration: BoxDecoration(
            // Controlou as bordas, sombras e cor de fundo
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(2, 2),
              ),
            ],
          ),
          // conteudo do card
          child: Column(
            // Organizou verticalmente os elementos do card
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                // recortou a imagem com bordas arredondadas
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  //carrega a imagem diretamente da internet
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Mangekyou_Sharingan_Sasuke_%28Eternal%29.svg/2048px-Mangekyou_Sharingan_Sasuke_%28Eternal%29.svg.png',
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),

              //nome do produto
              const Text(
                'Sharingan do Sasuke',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),

              //preço do produto
              const Text(
                'A vida do seu irmão itachi',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
