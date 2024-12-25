import 'package:flutter/material.dart';
import 'recipe_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Center(
                child: Image.asset(
                  'assets/images/homepage-logo.png',
                  width: 300,
                  height: 300,
                ),
              ),
              const SizedBox(height: 18),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text(
                    'Are you \nHungry?',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEF301E),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'From the Heart of the Kitchen, \nA Recipe Book to Share Love and Flavor',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),   
              const Spacer(flex: 2),
              Container(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RecipePage()),
                    );
                  },
                  icon: Container(
                    width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEF301E),
                    shape: BoxShape.circle,
                  ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white, 
                    ),
                  ),
                ),
              )          
            ]
          ),
                   
        ),
      );    
  }
}