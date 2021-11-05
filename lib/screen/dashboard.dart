import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobile1st/model/activity.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    callActivity();
  }

  Future<void> callActivity() async {
    var url = Uri.parse("https://www.boredapi.com/api/activity");
    var response = await http.get(url);
    setState(() {
      data = cedFromJson(response.body);
      print(data.activity);
      print(data.type);
      print(data.participants);
      print(data.price);
    });
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('Menu Package'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text(
                  'Video',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                leading: Icon(Icons.monitor),
                onTap: () {
                  print('Menu Video');
                  Navigator.pushNamed(context, 'video');
                },
              ),
              ListTile(
                title: Text(
                  'Image',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                leading: Icon(Icons.image),
                onTap: () {
                  print('Menu Image');
                  Navigator.pushNamed(context, 'imagepic');
                },
              ),
              ListTile(
                title: Text(
                  'Map',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                leading: Icon(Icons.map),
                onTap: () {
                  print('Menu Map');
                  Navigator.pushNamed(context, 'location');
                },
              ),
              ListTile(
                title: Text(
                  'Store',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                leading: Icon(Icons.store),
                onTap: () {
                  print('Menu Store');
                  Navigator.pushNamed(context, 'store');
                },
              ),
              ListTile(
                title: Text(
                  'logout',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                leading: Icon(Icons.logout),
                onTap: () {
                  print('Logout');
                  logout();
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, 'login');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
            title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Icon(Icons.api_sharp),
          SizedBox(
            width: 10,
          ),
          Text('Dashboard'),
        ])),
        body: Column(
          children: [
            Text(data?.activity ?? "กำลังโหลด"),
            Text(data?.type ?? ""),
            Text('${data?.participants ?? ""}'),
            Text('${data?.price ?? ""}'),
          ],
        ),
      ),
    );
  }
}
