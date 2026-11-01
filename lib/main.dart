
import 'package:flutter/material.dart';

void main() {
  runApp(const LCAutoDiagnostico());
}

class LCAutoDiagnostico extends StatelessWidget {
  const LCAutoDiagnostico({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LC Auto Diagnóstico',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF101827),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1877F2),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LC AUTO DIAGNÓSTICO',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 25),
              const Icon(
                Icons.directions_car,
                size: 85,
                color: Color(0xFF1877F2),
              ),
              const SizedBox(height: 15),
              const Text(
                'Diagnóstico Automotriz OBD2',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Conecta tu vehículo y consulta sus sistemas electrónicos.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: 35),
              _menuButton(
                icon: Icons.bluetooth,
                title: 'Conectar escáner OBD2',
                subtitle: 'Buscar adaptador Bluetooth',
                onTap: () {},
              ),
              _menuButton(
                icon: Icons.car_repair,
                title: 'Mis vehículos',
                subtitle: 'Registrar marca, modelo y año',
                onTap: () {},
              ),
              _menuButton(
                icon: Icons.troubleshoot,
                title: 'Diagnóstico',
                subtitle: 'Consultar códigos de falla',
                onTap: () {},
              ),
              _menuButton(
                icon: Icons.monitor_heart,
                title: 'Datos en vivo',
                subtitle: 'Consultar parámetros del motor',
                onTap: () {},
              ),
              _menuButton(
                icon: Icons.history,
                title: 'Historial',
                subtitle: 'Consultar diagnósticos anteriores',
                onTap: () {},
              ),
              const Spacer(),
              const Text(
                'LC Auto Diagnóstico · Versión 1.0.0',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white54),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _menuButton({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Card(
      color: const Color(0xFF1F2937),
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF1877F2), size: 30),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
