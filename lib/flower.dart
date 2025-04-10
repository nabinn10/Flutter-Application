import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 193, 240),
        title: Text("This is Appbar"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 229, 222, 222),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  const Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 229, 222, 222),
                      shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.favorite_border,
                      ),
            
                    ),
                ],
              ),
              const SizedBox(height: 20),

              Center(child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,


                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/loho.png", height: 200, width: 250, fit: BoxFit.cover,)
                  ],
                ),
              ),),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Products", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                Row(
                  children: [
                    Icon(
                      Icons.star, color: Colors.red, size: 24,
                    ),
                    Text(
                      "4.8", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text("(268 Reviews)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24), )
                  ],
                ),
              ],
            ),

            const SizedBox(height: 10),

            Text("This is the place for description", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),),

            TextButton(onPressed: () {}, child: Text("Read More", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),)),

             const SizedBox(height: 10),

            
              
            ],
          ),
        ),
      ),
    );
  }
}
