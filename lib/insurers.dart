import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'global.dart';
import 'package:flutter_svg/flutter_svg.dart' as SVG;
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as SVGProvider;

class ScreenArguments {
  final int id;
  ScreenArguments(this.id);
}

List _insurers = [
  {
    'id': 1,
    'name': 'Allianz Seguros',
    'icon': 'assets/insurers/1.png',
    'site': 'https://www.allianz.com.br',
    'phones': ['4001 5060', '0800 701 8148', '0800 0130 700'],
    'phone_text': [
      'Capitais e regiões metropolitanas',
      'Demais regiões',
      'Assistência 24 horas'
    ],
    'color': Colors.blue[900],
  },
  {
    'id': 2,
    'name': 'Tokio Marine',
    'icon': 'assets/insurers/2.png',
    'site': 'https://www.tokiomarine.com.br',
    'phones': [
      '0300 33 86546',
      '11 99578-6546',
      '0800 31 86546',
      '0800 20 86546'
    ],
    'phone_text': [
      'Atendimento ao cliente',
      'WhatsApp',
      'Assistência 24 horas',
      'Carro reserva'
    ],
    'color': Colors.lime[900],
  },
  {
    'id': 3,
    'name': 'Liberty Seguros',
    'icon': 'assets/insurers/3.png',
    'site': 'https://www.libertyseguros.com.br/',
    'phones': ['4004 5423', '0800 709 5423', '0800 701 4120'],
    'phone_text': [
      'Capitais e regiões metropolitanas',
      'Demais regiões',
      'Assistência 24 horas'
    ],
    'color': Colors.blue[700],
  },
  {
    'id': 4,
    'name': 'Porto Seguro',
    'icon': 'assets/insurers/4.png',
    'site': 'https://www.portoseguro.com.br',
    'phones': [
      '4004 76786',
      '0300 337 6786',
      '333 76786',
      '11 3003 9303',
    ],
    'phone_text': [
      'Assistência 24 horas',
      'Demais regiões',
      'Grande São Paulo',
      'WhatsApp'
    ],
    'color': Colors.blue,
  },
  {
    'id': 5,
    'name': 'HDI Seguros',
    'icon': 'assets/insurers/5.png',
    'site': 'https://www.hdiseguros.com.br',
    'phones': [
      '3003 5390',
      '0800 434 4340',
    ],
    'phone_text': ['Capitais e regiões metropolitanas', 'Demais regiões'],
    'color': Colors.green,
  },
  {
    'id': 6,
    'name': 'Zurich Seguros',
    'icon': 'assets/insurers/6.png',
    'site': 'https://www.zurich.com.br',
    'phones': [
      '4020 4848',
      '0800 285 4141',
    ],
    'phone_text': ['Capitais e regiões metropolitanas', 'Demais regiões'],
    'color': Colors.blue[900],
  },
  {
    'id': 7,
    'name': 'SulAmérica',
    'icon': 'assets/insurers/7.png',
    'site': 'https://portal.sulamericaseguros.com.br',
    'phones': ['4090 1073', '0800 778 1073', '55 11 4126 9317'],
    'phone_text': [
      'Capitais e regiões metropolitanas)',
      'Demais regiões',
      'Exterior'
    ],
    'color': Colors.deepOrangeAccent,
  },
  {
    'id': 8,
    'name': 'Bradesco Seguros',
    'icon': 'assets/insurers/8.png',
    'site': 'https://www.bradescoseguros.com.br',
    'phones': ['4004 2757', '0800 701 2757', '0800 701 2757'],
    'phone_text': [
      'Capitais e regiões metropolitanas',
      'Demais regiões',
      'Assistência 24 horas'
    ],
    'color': Colors.red,
  },
  {
    'id': 9,
    'name': 'Suhai Seguradora',
    'icon': 'assets/insurers/9.png',
    'site': 'https://suhaiseguradora.com',
    'phones': ['3003 0335', '0800 327 8424'],
    'phone_text': ['Sinistro Opção 2', 'Assist 24h WhatsApp ou Telefone'],
    'color': Colors.green[900],
  },
  {
    'id': 10,
    'name': 'Mapfre Seguros',
    'icon': 'assets/insurers/12.png',
    'site': 'https://www.mapfre.com.br',
    'phones': ['0800 775 4545', '0800 705 0101'],
    'phone_text': ['Atendimento ao cliente', 'Assistência 24 horas'],
    'color': Colors.red,
  },
  {
    'id': 11,
    'name': 'Argo Protector',
    'icon': 'assets/insurers/11.png',
    'site': 'https://argo-protector.com.br',
    'phones': [
      '4000 1246',
      '0800 942 2746',
    ],
    'phone_text': ['Capitais e regiões metropolitanas', 'Demais regiões'],
    'color': Colors.blue[800],
  },
  {
    'id': 12,
    'name': 'Azul Seguros',
    'icon': 'assets/insurers/13.png',
    'site': 'https://www.azulseguros.com.br',
    'phones': ['4004 3700', '0300 123 2985', '0800 703 0203'],
    'phone_text': [
      'Capitais e regiões metropolitanas',
      'Demais regiões',
      'Demais regiões'
    ],
    'color': Colors.blue[700],
  },
  {
    'id': 13,
    'name': 'Aliro Seguro',
    'icon': 'assets/insurers/10.png',
    'site': 'https://www.aliroseguro.com.br',
    'phones': ['3003 2127', '0800 220 2127', '0800 770 1318'],
    'phone_text': [
      'Capitais e regiões metropolitanas',
      'Demais regiões',
      'Assistência 24 horas'
    ],
    'color': Colors.teal[800],
  },
  {
    'id': 14,
    'name': 'Capemisa',
    'icon': 'assets/insurers/14.png',
    'site': 'https://www.capemisa.com.br/',
    'phones': [
      '4000 1130',
      '0800 723 3030',
    ],
    'phone_text': ['(Capitais e regiões metropolitanas)', '(Demais regiões)'],
    'color': Colors.orange,
  }
];

class InsurersList extends StatelessWidget {
  InsurersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Seguradoras'),
          backgroundColor: reisTheme,
          brightness: Brightness.dark,
        ),
        body: Center(
          child: Container(
              width: 300,
              child: Stack(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 28, right: 15),
                    child: Text('Escolha sua seguradora', textAlign: TextAlign.center, style: defaultFont(TextStyle(fontSize: 22, fontWeight: FontWeight.w500))),
                  ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: const EdgeInsets.all(0),
                    itemCount: _insurers.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                          shadowColor: Colors.white,
                          child: IconButton(
                        splashRadius: 50,
                        splashColor: _insurers[index]['color'],
                        color: Colors.red,
                        icon: Image.asset(_insurers[index]['icon'], width: 800, height: 500),
                        iconSize: 180,
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            InsurerDetail.routeName,
                            arguments: ScreenArguments(index)
                          );
                        },
                      )
                      );
                    }),
              )])),
        )
    );
  }
}

class InsurerDetail extends StatelessWidget {
  static const routeName = 'insurerDetails';
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    final id = args.id;
    final insurer = _insurers[id];
    return Scaffold(
        appBar: AppBar(
          title: Text(insurer['name']),
          backgroundColor: insurer['color'],
          brightness: Brightness.dark,
        ),
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(insurer['icon']),
                          fit: BoxFit.fitWidth,
                        ))
                )
              ),
              launcher(
                id,
                "site",
                Icon(Icons.launch),
              ),
              Padding(padding: EdgeInsets.all(11)),
              launcher(
                id,
                "phone",
                Icon(Icons.phone),
              ),
            ],
          )
        ])));
  }

  Widget launcher(int id, String type, Widget icon) {
    if (type == 'site') {
      return ElevatedButton.icon(
        onPressed: () => Launcher.launchURL(_insurers[id]['site']),
        icon: icon,
        label: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 18),
          child: Text(
            'Site oficial',
            style: defaultFont(TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: _insurers[id]['color'],
        ),
      );
    } else if (type == 'phone') {
      return Center(
        child: Container(
          height: 500,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(8),
              itemCount: _insurers[id]['phones'].length,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                    children: [
                      Card(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20)
                    ),
                    child: InkWell(
                        borderRadius: new BorderRadius.circular(20),
                        splashColor: _insurers[id]['color'],
                        onTap: () => Launcher.launchPhone(_insurers[id]['phones'][index]),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.phone, size: 40),
                              minVerticalPadding: 0,
                              title: Text(_insurers[id]['phones'][index],
                                  style: defaultFont(TextStyle(
                                      fontSize: 20,
                                      color: _insurers[id]['color'],
                                      fontWeight: FontWeight.w700))),
                              subtitle: Text(_insurers[id]['phone_text'][index], overflow: TextOverflow.ellipsis, style: defaultFont(TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
                            )
                          ],
                        ))),
                    Padding(padding: EdgeInsets.only(top: 70), child:Text("")),
                    ]);
              }),
        )
      );
    } else {
      return Text('Datatype error.');
    }
  }
}

class Phones extends StatelessWidget {
  Phones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nossos telefones'),
        backgroundColor: reisTheme,
        brightness: Brightness.dark,
      ),
      body: SingleChildScrollView(
          child: Stack(children: <Widget>[
          new Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withAlpha(50), BlendMode.dstATop),
              alignment: Alignment.topCenter),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                margin: EdgeInsets.only(top: 50, bottom: 20),
                child: Text(
                  'Redes sociais',
                  style: GoogleFonts.openSans(
                      textStyle:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () =>
                      Launcher.launchURL('https://facebook.com/reissegurosUba'),
                  icon: SVG.SvgPicture.asset('assets/facebook.svg',
                      height: 40, width: 40),
                  label: Text(''),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(255, 255, 255, 0.0),
                    onPrimary: Colors.blue,
                    shadowColor: Color.fromRGBO(255, 255, 255, 0.0),
                    elevation: 2,
                  )

                ),
                ElevatedButton.icon(
                  onPressed: () =>
                      Launcher.launchURL('https://instagram.com/reisseguros'),
                  icon: SVG.SvgPicture.asset('assets/instagram.svg',
                      height: 40, width: 40),
                  label: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(''),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(255, 255, 255, 0.0),
                    onPrimary: Colors.red,
                    shadowColor: Color.fromRGBO(255, 255, 255, 0.0),
                    elevation: 0,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () => Launcher.launchURL(
                      'http://api.whatsapp.com/send?phone=553235321310'),
                  icon: SVG.SvgPicture.asset('assets/whatsapp.svg',
                      height: 48, width: 48),
                  label: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(''),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(255, 255, 255, 0.0),
                    onPrimary: Colors.green,
                    shadowColor: Color.fromRGBO(255, 255, 255, 0.0),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () => Launcher.launchURL('https://www.reissegurosmg.com.br'),
                  icon: Icon(Icons.launch),
                  style: ElevatedButton.styleFrom(
                    primary: reisTheme,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30),
                    )
                    ),
                  label: Text('Site'),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 30),
              child: Text('Telefones',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w600))),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ElevatedButton.icon(
                onPressed: () => Launcher.launchPhone('(32)3532-1310'),
                icon: Icon(Icons.phone),
                label: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    '32 3532-1310',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: reisTheme,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ElevatedButton.icon(
                onPressed: () => Launcher.launchPhone('(32)98864-1310'),
                icon: Icon(Icons.phone),
                label: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    '32 98864-1310',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: reisTheme,
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => Launcher.launchPhone('(32)98826-5909'),
              icon: Icon(Icons.phone),
              label: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  '32 98826-5909',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: reisTheme,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Divider(thickness: 1),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Atendimento de segunda-feira à sexta-feira das ',
                      style: defaultFont(
                          TextStyle(fontSize: 16, color: Colors.black)),
                      children: [
                        TextSpan(
                            text: '8:30h às 11:30h ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'e das '),
                        TextSpan(
                            text: '13:30h às 18:00h \n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ])),
            )
          ],
        )),
      ),
    ]))
    );
  }
}

class Services extends StatelessWidget {
  Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Serviços online'),
        backgroundColor: Colors.black54,
        brightness: Brightness.dark,
      ),
      body: SingleChildScrollView(
          child: Stack(children: <Widget>[
          new Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(
                  Colors.white.withAlpha(50), BlendMode.dstATop),
              alignment: Alignment.center),
        ),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  child: Text('Serviços',
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600))),
                ),
                Container(
                  width: 350,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[500],
                              child: InkWell(
                                  splashColor: Colors.blue.shade300,
                                  borderRadius: BorderRadius.circular(20),
                                  onTap: () => Launcher.launchURL('https://www.abraseuatendimento.com.br/'),
                                  child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    leading: Image.asset('assets/crack.png'),
                                    title: Text('Autoglass Vidros',
                                        style: defaultFont(TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600, color: Colors.white))),
                                    subtitle: Text('Solicite a troca de vidros',
                                        style: defaultFont(TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500, color: Colors.white))),
                                  )
                                ],
                              )
                          ))),
                ),
                Container(
                  width: 350,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red[400],
                              child:
                              InkWell(
                                  splashColor: Colors.red[200],
                                  borderRadius: BorderRadius.circular(20),
                                  onTap: () => Launcher.launchURL('https://www.agendeseuservico.com/'),
                                  child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    leading: Image.asset('assets/crack.png'),
                                    title: Text('Carglass Vidros',
                                        style: defaultFont(TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600, color: Colors.white))),
                                    subtitle: Text('Solicite a troca de vidros',
                                        style: defaultFont(TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500, color: Colors.white))),
                                  )
                                ],
                              )
                          ))),
                ),
                Container(
                  width: 350,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70,
                          child:
                          InkWell(
                              splashColor: Colors.red[200],
                              borderRadius: BorderRadius.circular(20),
                              onTap: () => Launcher.launchURL('https://www.reissegurosmg.com.br/cotacao'),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    leading: Icon(Icons.calculate, size: 45, color: Colors.black,),
                                    title: Text('Cotação online',
                                        style: defaultFont(TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))),
                                    subtitle: Text('Faça um orçamento grátis',
                                        style: defaultFont(TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500))),
                                  )
                                ],
                              )
                          ))),
                ),
                Container(
                  width: 350,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70,
                          child:
                          InkWell(
                              splashColor: Colors.red[200],
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                Navigator.push(
                                  context,
                                    PageRouteBuilder(
                                    pageBuilder: (_, __, ___) => InsurersList(),
                                    transitionDuration: Duration(seconds: 0)
                                    )
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    leading: Icon(Icons.beach_access_rounded, size: 45, color: Colors.black,),
                                    title: Text('Seguradoras',
                                        style: defaultFont(TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))),
                                    subtitle: Text('Telefones para contato',
                                        style: defaultFont(TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500))),
                                  )
                                ],
                              )
                          ))),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      'Dúvidas?',
                      style: GoogleFonts.openSans(
                          textStyle:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => Phones(),
                            transitionDuration: Duration(seconds: 0)
                          )
                        );
                      },
                      icon: Icon(Icons.phone),
                      style: ElevatedButton.styleFrom(
                          primary: reisTheme,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30),
                          )
                      ),
                      label: Text('Telefones'),
                    ),
                    Padding(padding: EdgeInsets.only(left: 15)),
                    ElevatedButton.icon(
                      onPressed: () => Launcher.launchURL('https://www.reissegurosmg.com.br/contato'),
                      icon: Icon(Icons.launch),
                      style: ElevatedButton.styleFrom(
                          primary: reisTheme,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30),
                          )
                      ),
                      label: Text('Solicite uma ligação'),
                    )
                  ],
                ),
            ])),
      ),
    ]))
    );
  }
}
