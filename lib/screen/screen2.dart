import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tus Horas'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: _buildTable(),
      ),
    );
  }

  Widget _buildTable() {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(),
      children: [
        _buildTableRow(['Grupo', 'Materia', 'Horas Frente a Grupo'], bold: true),
        _buildTableRow(['IGDS 10A°', 'Desarrollo Web', '4']),
        _buildTableRow(['IGDS 7A°', 'Base de Datos', '6']),
        _buildTableRow(['DSM 4A°', 'Redes digitales', '3']),
        _buildTableRow(['DSM 1A° ', 'Diseño 3D', '4']),
        _buildTableRow(['DSM 1B°', 'Programacion Movil', '5']),
      ],
    );
  }

  TableRow _buildTableRow(List<String> data, {bool bold = false}) {
    return TableRow(
      children: data.map((item) {
        return TableCell(
          child: Center(
            child: Text(
              item,
              style: TextStyle(
                fontWeight: bold ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
