import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monetiza',
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 29, 46, 143), // Alterar para a cor do projeto final
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Geralmente, se diz as ações da página
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
    // Aguardar 2 segundos e depois redirecionar para a home
    // Navigator.pushReplacement
      // isso se chama "Trabalhar a pilha de navegação"
  }
  
  @override
  Widget build(BuildContext context) {
    // Conteúdo visível da página
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_monetiza.png',
              width: 500,
              height: 500,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            const Text(
              'Monetiza',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monetiza'),
      ),
      body: const Center(
        child: Text('Em construção ...'),
      ),
    );
  }
}