
class DtcDecoder {
  static const Map<String, Map<String, String>> codes = {
    'P0300': {
      'title': 'Fallas aleatorias de encendido',
      'description': 'Se detectaron fallos de combustión en uno o varios cilindros.',
      'causes': 'Bujías, bobinas, inyectores, presión de combustible o fugas de vacío.',
    },
    'P0301': {
      'title': 'Falla de encendido cilindro 1',
      'description': 'El cilindro 1 presenta fallos de combustión.',
      'causes': 'Bujía, bobina, inyector o compresión del cilindro 1.',
    },
    'P0302': {
      'title': 'Falla de encendido cilindro 2',
      'description': 'El cilindro 2 presenta fallos de combustión.',
      'causes': 'Bujía, bobina, inyector o compresión del cilindro 2.',
    },
    'P0171': {
      'title': 'Mezcla demasiado pobre',
      'description': 'El sistema detecta demasiado aire o poco combustible.',
      'causes': 'Fugas de vacío, MAF, presión de combustible o sensores.',
    },
    'P0172': {
      'title': 'Mezcla demasiado rica',
      'description': 'El motor recibe demasiado combustible respecto al aire.',
      'causes': 'Inyectores, presión de combustible, MAF o sensor de temperatura.',
    },
    'P0420': {
      'title': 'Eficiencia baja del catalizador',
      'description': 'La eficiencia del catalizador está por debajo del umbral esperado.',
      'causes': 'Catalizador, fugas de escape o sensores de oxígeno.',
    },
    'P0128': {
      'title': 'Temperatura del refrigerante',
      'description': 'El motor no alcanza la temperatura esperada dentro del tiempo previsto.',
      'causes': 'Termostato, sensor ECT o sistema de refrigeración.',
    },
    'P0117': {
      'title': 'Voltaje bajo del sensor ECT',
      'description': 'La señal del sensor de temperatura del refrigerante es demasiado baja.',
      'causes': 'Cableado, cortocircuito o sensor ECT.',
    },
  };

  static Map<String, String> decode(String code) {
    final normalized = code.trim().toUpperCase();

    return codes[normalized] ?? {
      'title': 'Código no registrado',
      'description': 'No existe una explicación en el catálogo inicial.',
      'causes': 'Se necesita consultar información técnica específica del vehículo.',
    };
  }
}
