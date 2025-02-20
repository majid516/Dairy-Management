import 'package:flutter/material.dart';


class MasterDataScreen extends StatefulWidget {
  @override
  _MasterDataScreenState createState() => _MasterDataScreenState();
}

class _MasterDataScreenState extends State<MasterDataScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Master Data Management")),
      body: Column(
        children: [
          // Tab Selector
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _tabButton("Drivers", 0),
              _tabButton("Stores", 1),
              _tabButton("Routes", 2),
            ],
          ),

          Expanded(child: _getCurrentScreen(_selectedIndex)),
        ],
      ),
    );
  }

  Widget _tabButton(String text, int index) {
    return TextButton(
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: _selectedIndex == index ? Colors.blue : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _getCurrentScreen(int index) {
    switch (index) {
      case 0:
        return _driverScreen();
      case 1:
        return _storeScreen();
      case 2:
        return _routeScreen();
      default:
        return _driverScreen();
    }
  }

  Widget _driverScreen() {
  //  final provider = Provider.of<MasterDataProvider>(context);

    return Column(
      children: [
        ElevatedButton(
          onPressed: () => _showDriverDialog(),
          child: Text("Add Driver"),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('name'),
                subtitle: Text('9343439434'),
                trailing: IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: (){},
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void _showDriverDialog() {
    final nameController = TextEditingController();
    final phoneController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add Driver"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(controller: nameController, decoration: InputDecoration(labelText: "Name")),
              TextField(controller: phoneController, decoration: InputDecoration(labelText: "Phone")),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Add"),
            ),
          ],
        );
      },
    );
  }

  Widget _storeScreen() {
    return Center(child: Text("Store Management UI Goes Here"));
  }

  Widget _routeScreen() {
    return Center(child: Text("Route Management UI Goes Here"));
  }
}
