import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget _buildNote(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: ListTile(
      title: const Text('Note Title'),
        subtitle: const Text('Aug 15, 2024  - High'),
        trailing: Checkbox(
          onChanged: (value){
            print(value);
          },
          activeColor: Theme.of(context).primaryColor,
          value: true,
        ),
    ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 80.0),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index){
          if(index == 0) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'My Notes',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        '0 of 10',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                ),
            );
            }
          return _buildNote(index);
          }
      ),
    );
  }
}
