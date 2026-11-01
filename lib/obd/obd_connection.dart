
class ObdConnection {
  bool _connected = false;

  bool get isConnected => _connected;

  void setConnectionStatus(bool status) {
    _connected = status;
  }

  String get initializeCommand => 'ATZ';

  List<String> get initializationCommands => [
    'ATE0',
    'ATL0',
    'ATS0',
    'ATH0',
    'ATSP0',
  ];

  String buildCommand(String command) {
    return command.trim().toUpperCase();
  }

  String get vehicleProtocolCommand => 'ATDP';

  String get vehicleVoltageCommand => 'ATRV';

  String get storedCodesCommand => '03';

  String get pendingCodesCommand => '07';

  String get permanentCodesCommand => '0A';

  String get clearCodesCommand => '04';

  String get rpmCommand => '010C';

  String get coolantTemperatureCommand => '0105';

  String get vehicleSpeedCommand => '010D';

  String get engineLoadCommand => '0104';

  String get throttlePositionCommand => '0111';

  void disconnect() {
    _connected = false;
  }
}
