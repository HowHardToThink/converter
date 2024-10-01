import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Конвертор Одиниць',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Converter(),
    );
  }
}

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  // Змінні для зберігання введених значень
  String _kilometers = '';
  String _miles = '';
  String _inches = '';
  String _centimeters = '';
  String _acres = '';
  String _hectares = '';
  String _kilograms = '';
  String _pounds = '';
  String _liters = '';
  String _gallons = '';

  // Конвертаційні функції
  void _convertToMiles() {
    if (_kilometers.isNotEmpty) {
      double km = double.parse(_kilometers);
      setState(() {
        _miles = (km * 0.621371).toStringAsFixed(2);
      });
    }
  }

  void _convertToKilometers() {
    if (_miles.isNotEmpty) {
      double mi = double.parse(_miles);
      setState(() {
        _kilometers = (mi / 0.621371).toStringAsFixed(2);
      });
    }
  }

  void _convertToCentimeters() {
    if (_inches.isNotEmpty) {
      double inValue = double.parse(_inches);
      setState(() {
        _centimeters = (inValue * 2.54).toStringAsFixed(2);
      });
    }
  }

  void _convertToInches() {
    if (_centimeters.isNotEmpty) {
      double cm = double.parse(_centimeters);
      setState(() {
        _inches = (cm / 2.54).toStringAsFixed(2);
      });
    }
  }

  void _convertToHectares() {
    if (_acres.isNotEmpty) {
      double ac = double.parse(_acres);
      setState(() {
        _hectares = (ac * 0.404686).toStringAsFixed(2);
      });
    }
  }

  void _convertToAcres() {
    if (_hectares.isNotEmpty) {
      double ha = double.parse(_hectares);
      setState(() {
        _acres = (ha / 0.404686).toStringAsFixed(2);
      });
    }
  }

  void _convertToPounds() {
    if (_kilograms.isNotEmpty) {
      double kg = double.parse(_kilograms);
      setState(() {
        _pounds = (kg * 2.20462).toStringAsFixed(2);
      });
    }
  }

  void _convertToKilograms() {
    if (_pounds.isNotEmpty) {
      double lb = double.parse(_pounds);
      setState(() {
        _kilograms = (lb / 2.20462).toStringAsFixed(2);
      });
    }
  }

  void _convertToGallons() {
    if (_liters.isNotEmpty) {
      double l = double.parse(_liters);
      setState(() {
        _gallons = (l * 0.264172).toStringAsFixed(2);
      });
    }
  }

  void _convertToLiters() {
    if (_gallons.isNotEmpty) {
      double gal = double.parse(_gallons);
      setState(() {
        _liters = (gal / 0.264172).toStringAsFixed(2);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Конвертор Одиниць'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildExpansionTile(
                title: 'Кілометри - Мілі',
                inputLabel1: 'Кілометри',
                value1: _kilometers,
                onChanged1: (val) {
                  setState(() {
                    _kilometers = val;
                    _miles = '';
                  });
                },
                buttonLabel1: 'Конвертувати в Мілі',
                onPressed1: _convertToMiles,
                result1: 'Мілі: $_miles',
                inputLabel2: 'Мілі',
                value2: _miles,
                onChanged2: (val) {
                  setState(() {
                    _miles = val;
                    _kilometers = '';
                  });
                },
                buttonLabel2: 'Конвертувати в Кілометри',
                onPressed2: _convertToKilometers,
                result2: 'Кілометри: $_kilometers',
              ),
              
              _buildExpansionTile(
                title: 'Дюйми - Сантиметри',
                inputLabel1: 'Дюйми',
                value1: _inches,
                onChanged1: (val) {
                  setState(() {
                    _inches = val;
                    _centimeters = '';
                  });
                },
                buttonLabel1: 'Конвертувати в Сантиметри',
                onPressed1: _convertToCentimeters,
                result1: 'Сантиметри: $_centimeters',
                inputLabel2: 'Сантиметри',
                value2: _centimeters,
                onChanged2: (val) {
                  setState(() {
                    _centimeters = val;
                    _inches = '';
                  });
                },
                buttonLabel2: 'Конвертувати в Дюйми',
                onPressed2: _convertToInches,
                result2: 'Дюйми: $_inches',
              ),

              _buildExpansionTile(
                title: 'Акри - Гектари',
                inputLabel1: 'Акри',
                value1: _acres,
                onChanged1: (val) {
                  setState(() {
                    _acres = val;
                    _hectares = '';
                  });
                },
                buttonLabel1: 'Конвертувати в Гектари',
                onPressed1: _convertToHectares,
                result1: 'Гектари: $_hectares',
                inputLabel2: 'Гектари',
                value2: _hectares,
                onChanged2: (val) {
                  setState(() {
                    _hectares = val;
                    _acres = '';
                  });
                },
                buttonLabel2: 'Конвертувати в Акри',
                onPressed2: _convertToAcres,
                result2: 'Акри: $_acres',
              ),

              _buildExpansionTile(
                title: 'Кілограми - Фунти',
                inputLabel1: 'Кілограми',
                value1: _kilograms,
                onChanged1: (val) {
                  setState(() {
                    _kilograms = val;
                    _pounds = '';
                  });
                },
                buttonLabel1: 'Конвертувати в Фунти',
                onPressed1: _convertToPounds,
                result1: 'Фунти: $_pounds',
                inputLabel2: 'Фунти',
                value2: _pounds,
                onChanged2: (val) {
                  setState(() {
                    _pounds = val;
                    _kilograms = '';
                  });
                },
                buttonLabel2: 'Конвертувати в Кілограми',
                onPressed2: _convertToKilograms,
                result2: 'Кілограми: $_kilograms',
              ),

              _buildExpansionTile(
                title: 'Літри - Галони',
                inputLabel1: 'Літри',
                value1: _liters,
                onChanged1: (val) {
                  setState(() {
                    _liters = val;
                    _gallons = '';
                  });
                },
                buttonLabel1: 'Конвертувати в Галони',
                onPressed1: _convertToGallons,
                result1: 'Галони: $_gallons',
                inputLabel2: 'Галони',
                value2: _gallons,
                onChanged2: (val) {
                  setState(() {
                    _gallons = val;
                    _liters = '';
                  });
                },
                buttonLabel2: 'Конвертувати в Літри',
                onPressed2: _convertToLiters,
                result2: 'Літри: $_liters',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExpansionTile({
    required String title,
    required String inputLabel1,
    required String value1,
    required Function(String) onChanged1,
    required String buttonLabel1,
    required Function onPressed1,
    required String result1,
    required String inputLabel2,
    required String value2,
    required Function(String) onChanged2,
    required String buttonLabel2,
    required Function onPressed2,
    required String result2,
  }) {
    return ExpansionTile(
      title: Text(title),
      children: [
        _buildInputField(label: inputLabel1, value: value1, onChanged: onChanged1),
        _buildButton(text: buttonLabel1, onPressed: onPressed1),
        Text(result1, style: TextStyle(fontSize: 20)),
        _buildInputField(label: inputLabel2, value: value2, onChanged: onChanged2),
        _buildButton(text: buttonLabel2, onPressed: onPressed2),
        Text(result2, style: TextStyle(fontSize: 20)),
      ],
    );
  }

  Widget _buildInputField({required String label, required String value, required Function(String) onChanged}) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: label,
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.number,
          onChanged: onChanged,
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _buildButton({required String text, required Function onPressed}) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => onPressed(),
          child: Text(text),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
