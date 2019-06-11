import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            child: CircleAvatar(
              // radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://cdn.vox-cdn.com/thumbor/9yAot9JLM_cX6thEgvOaZIxTr7Q=/0x0:4677x3280/1200x800/filters:focal(2346x1127:3094x1875)/cdn.vox-cdn.com/uploads/chorus_image/image/62282455/615970090.jpg.0.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              child: Text('SL'),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://cdn.vox-cdn.com/thumbor/9yAot9JLM_cX6thEgvOaZIxTr7Q=/0x0:4677x3280/1200x800/filters:focal(2346x1127:3094x1875)/cdn.vox-cdn.com/uploads/chorus_image/image/62282455/615970090.jpg.0.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        ),
      ),
    );
  }
}
