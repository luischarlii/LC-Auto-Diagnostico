
class LiveData {
  static double? decodeRpm(String response) {
    final bytes = _readBytes(response, '410C');
    if (bytes == null || bytes.length < 2) return null;

    return ((bytes[0] * 256) + bytes[1]) / 4;
  }

  static double? decodeCoolantTemperature(String response) {
    final bytes = _readBytes(response, '4105');
    if (bytes == null || bytes.isEmpty) return null;

    return bytes[0] - 40.0;
  }

  static double? decodeVehicleSpeed(String response) {
    final bytes = _readBytes(response, '410D');
    if (bytes == null || bytes.isEmpty) return null;

    return bytes[0].toDouble();
  }

  static double? decodeEngineLoad(String response) {
    final bytes = _readBytes(response, '4104');
    if (bytes == null || bytes.isEmpty) return null;

    return (bytes[0] * 100) / 255;
  }

  static double? decodeThrottlePosition(String response) {
    final bytes = _readBytes(response, '4111');
    if (bytes == null || bytes.isEmpty) return null;

    return (bytes[0] * 100) / 255;
  }

  static List<int>? _readBytes(String response, String header) {
    final clean = response
        .replaceAll(RegExp(r'[\s>]'), '')
        .toUpperCase();

    final index = clean.indexOf(header);

    if (index < 0) return null;

    final data = clean.substring(index + header.length);

    if (data.length < 2 || data.length % 2 != 0) {
      return null;
    }

    final bytes = <int>[];

    for (int i = 0; i < data.length; i += 2) {
      final value = int.tryParse(
        data.substring(i, i + 2),
        radix: 16,
      );

      if (value == null) return null;

      bytes.add(value);
    }

    return bytes;
  }
}
