import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'global.dart';
import 'package:flutter_svg/flutter_svg.dart' as SVG;
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'insurers.dart';

void main() {
  runApp(ReisMain());
}

class ReisMain extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Reis Corretora',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            accentColor: Colors.black12,
            highlightColor: Colors.black12,
            brightness: Brightness.light,
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            ),
        home: SplashScreen(),
        routes: {
          InsurerDetail.routeName: (context) => InsurerDetail(),
        });
  }
}

class SplashScreen extends StatefulWidget {
  final Color backgroundColor = Colors.white;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay = 2;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => MyHomePage(title: 'Reis Corretora')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: Svg('assets/reis.svg', size: Size(1024, 1024)),
                          fit: BoxFit.contain,
                        )),
                  ),
                  CircularProgressIndicator(),
                ],
            )
          ]
        )
      )
    );
  }

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _quotationURL = 'https://reiscorretora.aggilizador.com.br/';

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
      new Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: Svg('assets/road-environment.svg', size: Size(1024, 1024)),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withAlpha(50), BlendMode.dstATop),
              alignment: Alignment.center),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: Svg('assets/reis.svg', size: Size(1024, 1024)),
                    fit: BoxFit.contain,
                  )),
                  child: Text('v1.0.2',
                      textAlign: TextAlign.center,
                      style: defaultFont(TextStyle(
                          fontSize: 12,
                          color: Colors.black12,
                          fontWeight: FontWeight.bold))),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  new ElevatedButton.icon(
                    onPressed: () => setState(() {
                      Launcher.launchURL(this._quotationURL);
                    }),
                    icon: Icon(Icons.calculate),
                    style: ElevatedButton.styleFrom(
                      primary: reisTheme,
                    ),
                    label: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text('Cotação Online',
                          style: defaultFont(TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400))),
                    ),
                  ),
                  new ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Phones()),
                      );
                    },
                    icon: Icon(Icons.phone),
                    style: ElevatedButton.styleFrom(
                      primary: reisTheme,
                    ),
                    label: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text('Contato',
                          style: defaultFont(TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400))),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 29, bottom: 17),
                child: Text('Para você',
                    style: defaultFont(
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500))),
              ),
              Card(
                  child: InkWell(
                      splashColor: Colors.red.shade300,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InsurersList()),
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.beach_access_rounded, size: 45),
                            title: Text('Seguradoras',
                                style: defaultFont(TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600))),
                            subtitle: Text('Veja informações da sua seguradora',
                                style: defaultFont(TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500))),
                          )
                        ],
                      ))),
              Card(
                  child: InkWell(
                      splashColor: Colors.red.shade300,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Services()),
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.person_add, size: 45),
                            title: Text('Serviços',
                                style: defaultFont(TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600))),
                            subtitle: Text('Assistência para sua apólice',
                                style: defaultFont(TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500))),
                          )
                        ],
                      ))),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 11, right: 25),
                child: ButtonBar(alignment: MainAxisAlignment.center, children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20),
                    width: 150,
                    child: Text('©2021 Desenvolvido por Wendell Luiz',
                        textAlign: TextAlign.center,
                        style: defaultFont(TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500))),
                  ),
                  new ElevatedButton.icon(
                    onPressed: () => setState(() {
                      Launcher.launchURL('https://github.com/LednewBuilds');
                    }),
                    icon: SVG.SvgPicture.asset('assets/github.svg',
                        height: 24, width: 24),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white70,
                    ),
                    label: Text('/LednewBuilds', style: TextStyle(color: Colors.black87)),
                  ),
                ]),
              ),
              Divider(thickness: 15, color: Colors.grey[400])
            ],
          ),
        ),
      ),
    ])));
  }
}
