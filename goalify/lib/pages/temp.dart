import 'package:flutter/material.dart';

class Tempo extends StatelessWidget {
  var arr = ['nkxskxks', 'wkxxnlx', 'hello', 'Hi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recent Contacts'),
        // iconTheme: IconThemeData.,
        actions: [
          IconButton(onPressed:(){

          }, icon: const Icon(Icons.notification_add))
        ],
      ),
      backgroundColor: Colors.indigo[900],
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                '${index + 1}',
                style: const TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0,
                ),
              ),
              title: Text(
                '${arr[index]}',
                style: TextStyle(color: Colors.amber),
              ),
              subtitle: const Text(
                'Radhe Radhe',
                style: TextStyle(color: Colors.amber),
              ),
              trailing: Icon(
                Icons.call,
                color: Color.fromARGB(255, 13, 233, 24),
              ),
            );
          },
          itemCount: arr.length,
          separatorBuilder: (context, index) {
            return const Divider(
              height: 30,
              thickness: 2,
              color: Color.fromARGB(255, 173, 245, 58),
            );
          },
        ),
      ),
    );
  }
}



//  body: 
//       Center(
//         child: Container(
//           width: 800,
//           height: 200,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             gradient: SweepGradient(
//               center: FractionalOffset.center,
//               colors: [Colors.red[900]!, Colors.transparent],
//             )
//             ),
//           child:const CircleAvatar(
//             backgroundColor: Color.fromARGB(255, 99, 101, 99),
//             backgroundImage: AssetImage('public/images/logo.png'),
//             //radius: 20,
//           ),
//         ),
//       ),