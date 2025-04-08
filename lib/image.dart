import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("This is App Bar", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 50,
              ),
              ),
              Image.network(
                "https://images.unsplash.com/photo-1741802856120-3b915476f1ab?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                width: 500,
                height: 500,
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/images/loho.png",
                width: 500,
                height: 500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
