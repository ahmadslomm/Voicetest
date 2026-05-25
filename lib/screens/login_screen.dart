import 'package:flutter/material.dart';

void main() { runApp(const MyApp()); }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const LoginScreen());
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0.0, -0.6), radius: 1.2,
            colors: [Color(0xFF0D3B1A), Color(0xFF000000)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Container(
                  width: 120, height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: [BoxShadow(color: Colors.green.withOpacity(0.4), blurRadius: 30, spreadRadius: 5)],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: Container(
                      color: const Color(0xFF0D2B0D),
                      child: const Center(child: Text('غ', style: TextStyle(fontSize: 64, color: Colors.greenAccent, fontWeight: FontWeight.bold))),
                    ),
                  ),
                ),
                const SizedBox(height: 80),
                _btn(const Color(0xFF3B5BDB), 'f', Colors.white, Color(0xFF3B5BDB), 'Login with Facbook'),
                const SizedBox(height: 14),
                _btn(const Color(0xFF1C1C1C), 'G', Colors.white, Color(0xFF4285F4), 'Login with Google'),
                const SizedBox(height: 14),
                _btn(const Color(0xFF1C1C1C), 'غ', Colors.white, Color(0xFF1B5E20), 'Login with Phone'),
                const SizedBox(height: 14),
                Row(children: [
                  Expanded(child: _btn2(const Color(0xFF1C1C1C), '✓', const Color(0xFF25D366), 'With WhatsApp')),
                  const SizedBox(width: 12),
                  Expanded(child: _btn2(const Color(0xFF1C1C1C), 'Id', const Color(0xFF1B5E20), 'Login with ID')),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _btn(Color bg, String ic, Color icTxt, Color icBg, String label) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(32)),
      child: Row(children: [
        const SizedBox(width: 16),
        CircleAvatar(backgroundColor: icBg, radius: 18, child: Text(ic, style: TextStyle(color: icTxt, fontWeight: FontWeight.w900, fontSize: 18))),
        const Spacer(),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)),
        const Spacer(),
        const SizedBox(width: 52),
      ]),
    );
  }

  Widget _btn2(Color bg, String ic, Color icBg, String label) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(32)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(backgroundColor: icBg, radius: 16, child: Text(ic, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 13))),
        const SizedBox(width: 8),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700)),
      ]),
    );
  }
}
