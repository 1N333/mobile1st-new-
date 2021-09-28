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
    print(response.statusCode);
    //print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
