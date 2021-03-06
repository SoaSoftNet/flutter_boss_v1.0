import 'package:bossapp/Compoments/ContactItem.dart';
import 'package:bossapp/Config/Constant.dart';
import 'package:flutter/material.dart';

class MineMain extends StatefulWidget {
  @override
  _MineMainState createState() => _MineMainState();
}

class _MineMainState extends State<MineMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: new Color.fromARGB(255, 242, 242, 245),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                expandedHeight: Constant.appBarHeight,
                flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    const DecoratedBox(
                      decoration: const BoxDecoration(
                        gradient: const LinearGradient(
                          begin: const Alignment(0.0, -1.0),
                          end: const Alignment(0.0, -0.4),
                          colors: const <Color>[
                            const Color(0x00000000),
                            const Color(0x00000000)
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                child: Text('鸟窝',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.0))),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('离职-考虑机会',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14.0)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 50.0,
                            top: 10.0,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.yellow,
                            child: Image(
                              image: NetworkImage(
                                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
                              width: 100.0,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ))),
            SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        new ContactItem(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                        content: new Text(
                                      "沟通过",
                                      style: new TextStyle(fontSize: 20.0),
                                    )));
                          },
                          count: '590',
                          title: '沟通过',
                        ),
                        new ContactItem(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                        content: new Text(
                                      "已沟通",
                                      style: new TextStyle(fontSize: 20.0),
                                    )));
                          },
                          count: '71',
                          title: '已沟通',
                        ),
                        new ContactItem(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                        content: new Text(
                                      "已沟通",
                                      style: new TextStyle(fontSize: 20.0),
                                    )));
                          },
                          count: '0',
                          title: '待面试',
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ],
        ));
  }
}
