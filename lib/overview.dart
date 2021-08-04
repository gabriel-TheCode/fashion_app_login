import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/profile.jpeg'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Katia Vasa',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Almost done! Click on continue to start creating your profile',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ))),
            SizedBox(
              height: 40,
            ),
            MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => OverviewPage()));
                },
                minWidth: double.minPositive,
                color: Colors.red[700],
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Not Katie',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ))),
          ],
        ),
      ),
    );
  }
}
