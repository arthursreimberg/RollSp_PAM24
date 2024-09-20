import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roll_sp_app/questao.dart';
import 'package:roll_sp_app/result.dart';
import 'package:roll_sp_app/respostas.dart';


void questionario() {
  runApp(MaterialApp(
    title: "RollSP",
    home: Quiz(),
  ));
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _Quiz();
}



 List <Questao> questao = [Questao('Santos é uma das cidades mais antigas do Brasil, situada no litoral do estado de São Paulo. Sua fundação remonta ao século XVI, quando foi estabelecida por Brás Cubas, um explorador português. Em 1546, Brás Cubas fundou um hospital e uma capela, que foram os primeiros edifícios construídos na região. A cidade rapidamente se tornou um importante porto devido à sua localização estratégica, facilitando o comércio entre o Brasil e a Europa. Durante o período colonial, Santos prosperou com a exportação de açúcar, café e outros produtos agrícolas. No século XIX, a cidade também se destacou na luta contra a escravidão, sendo um dos principais centros do movimento abolicionista. A ferrovia São Paulo Railway, inaugurada em 1867, conectava Santos a Jundiaí e foi fundamental para o escoamento da produção cafeeira do interior paulista até o porto. Hoje, Santos é conhecida por suas praias, seu porto movimentado e seu rico patrimônio histórico. A cidade continua a ser um ponto vital para o comércio e a cultura no estado de São Paulo.','1- Quem fundou a cidade de Santos?',1),
                            Questao('Santos é uma das cidades mais antigas do Brasil, situada no litoral do estado de São Paulo. Sua fundação remonta ao século XVI, quando foi estabelecida por Brás Cubas, um explorador português. Em 1546, Brás Cubas fundou um hospital e uma capela, que foram os primeiros edifícios construídos na região. A cidade rapidamente se tornou um importante porto devido à sua localização estratégica, facilitando o comércio entre o Brasil e a Europa. Durante o período colonial, Santos prosperou com a exportação de açúcar, café e outros produtos agrícolas. No século XIX, a cidade também se destacou na luta contra a escravidão, sendo um dos principais centros do movimento abolicionista. A ferrovia São Paulo Railway, inaugurada em 1867, conectava Santos a Jundiaí e foi fundamental para o escoamento da produção cafeeira do interior paulista até o porto. Hoje, Santos é conhecida por suas praias, seu porto movimentado e seu rico patrimônio histórico. A cidade continua a ser um ponto vital para o comércio e a cultura no estado de São Paulo.','2- Em que ano foi fundada a cidade de Santos?',2),
                            Questao('Santos é uma das cidades mais antigas do Brasil, situada no litoral do estado de São Paulo. Sua fundação remonta ao século XVI, quando foi estabelecida por Brás Cubas, um explorador português. Em 1546, Brás Cubas fundou um hospital e uma capela, que foram os primeiros edifícios construídos na região. A cidade rapidamente se tornou um importante porto devido à sua localização estratégica, facilitando o comércio entre o Brasil e a Europa. Durante o período colonial, Santos prosperou com a exportação de açúcar, café e outros produtos agrícolas. No século XIX, a cidade também se destacou na luta contra a escravidão, sendo um dos principais centros do movimento abolicionista. A ferrovia São Paulo Railway, inaugurada em 1867, conectava Santos a Jundiaí e foi fundamental para o escoamento da produção cafeeira do interior paulista até o porto. Hoje, Santos é conhecida por suas praias, seu porto movimentado e seu rico patrimônio histórico. A cidade continua a ser um ponto vital para o comércio e a cultura no estado de São Paulo.','3- Qual produto agrícola foi fundamental para a prosperidade de Santos durante o período colonial?',3)];
 
 List <Respostas> respostasP1 =[ Respostas (1, 'A) Martim Afonso de Sousa', false),
                               Respostas (2, 'B) Brás Cubas', false),
                               Respostas (3, 'C) Duarte Coelho', false),
                               Respostas (4, 'D) Pedro Álvares Cabral', false),];
                               
 List <Respostas> respostasP2=[Respostas(5, 'a) 1500', false),
                              Respostas(6, 'b) 1546', false),
                              Respostas(7, 'c) 1600', false),
                              Respostas(8, 'd) 1630', false)];

 List <Respostas> respostasP3=[Respostas(9, 'a) Algodão', false),
                              Respostas(10, 'b) Milho', false),
                              Respostas(11, 'c) Café', false),
                              Respostas(12, 'd) Cana-de-açúcar', false)];

 


class _Quiz extends State<Quiz> {
  List<String> Perguntas = [
    questao[0].textoQuestao,
    respostasP1[0].textoAlternativa,
    respostasP1[1].textoAlternativa,
    respostasP1[2].textoAlternativa,
    respostasP1[2].textoAlternativa
  ];

  int numQuestao = 1;
  int Acertos = 0;
  @override
  void initState() {
    super.initState();
  }

  bool AltA = false;
  bool AltB = false;
  bool AltC = false;
  bool AltD = false;

  void Recarregar() {
    setState(() {
      numQuestao++;
    });
  }

/*  void Alerta(){
    setState(() {
      Text('Atenção, Marque alguma Alternativa para prosseguir')
    });
  }*/

  void Acerto() {
    if ((numQuestao == 1 && AltB) ||
        (numQuestao == 2 && AltB) ||
        (numQuestao == 3 && AltC)) {
      Acertos++;
    }

    if (AltA || AltB || AltC || AltD) {
      Recarregar();
    }

    AltA = false;
    AltB = false;
    AltC = false;
    AltD = false;

    if (numQuestao == 1) {
      Perguntas = [
        questao[0].textoQuestao,
        respostasP1[0].textoAlternativa,
        respostasP1[1].textoAlternativa,
        respostasP1[2].textoAlternativa,
        respostasP1[2].textoAlternativa
      ];
    } else if (numQuestao == 2) {
      Perguntas = [
        questao[1].textoQuestao,
        respostasP2[0].textoAlternativa,
        respostasP2[1].textoAlternativa,
        respostasP2[2].textoAlternativa,
        respostasP2[2].textoAlternativa
      ];
    } else if (numQuestao == 3) {
      Perguntas = [
        questao[2].textoQuestao,
        respostasP3[0].textoAlternativa,
        respostasP3[1].textoAlternativa,
        respostasP3[2].textoAlternativa,
        respostasP3[2].textoAlternativa
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 19, 19, 19),
          body: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 37 / 400),
                child: const Image(
                    image: AssetImage('assets/images/backgroundRollSP2.jpg')),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 6,
                      left: MediaQuery.of(context).size.width * 15 / 292,
                      right: MediaQuery.of(context).size.width * 15 / 292,
                      bottom: MediaQuery.of(context).size.height / 12),
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 2 / 63,
                      left: MediaQuery.of(context).size.width * 3 / 73,
                      right: MediaQuery.of(context).size.width * 3 / 73),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black),
                      color: Colors.white),
                  child: Column(children: <Widget>[
                    const Center(
                        child: Text('A Fundação de Santos',
                            style: TextStyle(fontSize: 30))),
                    Container(
                        height: MediaQuery.of(context).size.height * 13 / 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black),
                        ),
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 90,
                            right: MediaQuery.of(context).size.width / 35,
                            left: MediaQuery.of(context).size.width / 30),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                             child: Text(questao[0].textoIntrodutorio))),
                    Container(
                        height: MediaQuery.of(context).size.height * 32 / 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black),
                        ),
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 90,
                            left: MediaQuery.of(context).size.width / 30),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 5 / 72 -
                                MediaQuery.of(context).size.height / 50),
                        child: Column(
                          children: [
                            Center(child: Text(Perguntas[0])),
                            Column(children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(Perguntas[1]),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(Perguntas[2]),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(Perguntas[3]),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(Perguntas[4]),
                              ),
                            ]),
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                padding: EdgeInsets.only(
                                    left: (MediaQuery.of(context).size.width /
                                        42.857)),
                                child: Column(
                                  children: [
                                    const Text('Resposta',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Row(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              const Text('A'),
                                              IconButton(
                                                icon: Icon(AltA
                                                    ? Icons.check_box
                                                    : Icons
                                                        .check_box_outline_blank),
                                                onPressed: () {
                                                  setState(() {
                                                    AltA = !AltA;
                                                    AltB = false;
                                                    AltC = false;
                                                    AltD = false;
                                                  });
                                                },
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              const Text('B'),
                                              IconButton(
                                                icon: Icon(AltB
                                                    ? Icons.check_box
                                                    : Icons
                                                        .check_box_outline_blank),
                                                onPressed: () {
                                                  setState(() {
                                                    AltB = !AltB;
                                                    AltA = false;
                                                    AltC = false;
                                                    AltD = false;
                                                  });
                                                },
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              const Text('C'),
                                              IconButton(
                                                icon: Icon(AltC
                                                    ? Icons.check_box
                                                    : Icons
                                                        .check_box_outline_blank),
                                                onPressed: () {
                                                  setState(() {
                                                    AltC = !AltC;
                                                    AltA = false;
                                                    AltB = false;
                                                    AltD = false;
                                                  });
                                                },
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              const Text('D'),
                                              IconButton(
                                                icon: Icon(AltD
                                                    ? Icons.check_box
                                                    : Icons
                                                        .check_box_outline_blank),
                                                onPressed: () {
                                                  setState(() {
                                                    AltD = !AltD;
                                                    AltA = false;
                                                    AltC = false;
                                                    AltB = false;
                                                  });
                                                },
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 5 / 170),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black),
                          color: Colors.black),
                      child: TextButton(
                        onPressed: () {
                          Acerto();
                          if (numQuestao >= 4) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const resultado(),
                                  settings: RouteSettings(arguments: Acertos)),
                            );
                          }
                        },
                        child: const Text(
                          'Próxima Questão',
                          style: TextStyle(
                              color: Colors.white,
                              backgroundColor: Colors.black),
                        ),
                      ),
                    )
                  ]))
            ],
          )),
    );
  }
}
