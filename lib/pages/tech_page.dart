import 'package:flutter/material.dart';
import 'package:blog/widgets/drawer_widget.dart';
import 'package:blog/config/assets.dart';

class TechPage extends StatelessWidget {
  static String id = 'Tech';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 300.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset("desktop.jpg").image,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                    Text(
                      'Desktop',
                      textScaleFactor: 4,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'CPU: I5-4690 \n GPU: RX 580 \n RAM: 16GB \n OS: Mojave \n ',
                      style: Theme.of(context).textTheme.caption,
                      textScaleFactor: 2,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Stack',
                      style: Theme.of(context).textTheme.caption,
                      textScaleFactor: 2,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Languages: Python, Typescript, Dart, Flutter\n Hosting: Google Cloud Platform \n Data: Pandas, Dataflow, Bigquery',
                      style: Theme.of(context).textTheme.caption,
                      textScaleFactor: 2,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 300.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset("desktop.jpg").image,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                    Text(
                      'Laptop',
                      textScaleFactor: 4,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Thinkpad T440p\n Os: Arch Linux\n',
                      style: Theme.of(context).textTheme.caption,
                      textScaleFactor: 2,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Stack',
                      style: Theme.of(context).textTheme.caption,
                      textScaleFactor: 2,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Languages: Python, Typescript, Dart, Flutter\n Hosting: Google Cloud Platform \n Data: Pandas, Dataflow, Bigquery',
                      style: Theme.of(context).textTheme.caption,
                      textScaleFactor: 2,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: SideDrawer(),
    );
  }
}
