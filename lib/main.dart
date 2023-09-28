import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 30, 29, 29),
          body: Column(
            children: [
              AspectRatio(
                aspectRatio: 13 / 9.5,
                child:
                    Image.asset("assets/starry_night.png", fit: BoxFit.cover),
              ),
              SizedBox(
                height: size.height * .04,
              ),
              const ListTile(
                  title: Text('The Starry Night',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontStyle: FontStyle.normal,
                      )),
                  subtitle: Text('Oil on Canvas - 73 x 92cm - 1889',
                      style: TextStyle(
                        color: Colors.grey,
                        //fontSize: 34,
                        //fontStyle: FontStyle.italic,
                      ))),
              SizedBox(
                height: size.height * .02,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                    'The Starry Night is an oil o canvas by the Dutch post-impressionist painter Vincent Van Gogh. Painted in June 1889, it depicts the view from the... Read More',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              ListTile(
                leading: Image.asset('assets/vangogh.png'),
                title: const Text(
                  'Vincent Van Gogh',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: const Text('Dutch, 1853-1890',
                    style: TextStyle(color: Colors.grey)),
                trailing: const Icon(Icons.chevron_right, color: Colors.grey),
              ),
              const Divider(
                color: Color.fromARGB(255, 239, 238, 238),
              ),
              ListTile(
                leading: Image.asset('assets/wikipedia.png'),
                title: const Text(
                  'Wikipedia',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: const Text('More info on wikipedia',
                    style: TextStyle(color: Colors.grey)),
                trailing: const Icon(Icons.chevron_right, color: Colors.grey),
              ),
              SizedBox(
                height: size.height * .125,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(31, 102, 95, 95)),
                    child: ListTile(
                        title: const Text('Auction of Art de Paris',
                            style: TextStyle(color: Colors.white)),
                        subtitle: const Text('Starting Bid \$4,000',
                            style: TextStyle(color: Colors.grey)),
                        trailing: ElevatedButton(
                            child: const Text('MAKE A BID'),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: const StadiumBorder(),
                            )))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
