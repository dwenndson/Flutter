import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

void enviaPost(String titulo, String corpo) async {
  final response = await http.post('https://jsonplaceholder.typicode.com/posts',
      body: {'title': titulo, 'body': corpo, 'userId': '7'});

  if (response.statusCode == 201) {
    print(response.body);
  } else {
    throw Exception('Falhou na requisição');
  }
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']);
  }
}

Future<Post> pegarPost() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/posts/1');

  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception('Falhou na requisição de post');
  }
}

Future<List<Post>> pegarPosts() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/posts');
  if (response.statusCode == 200) {
    return parsePosts(response.body);
  } else {
    throw Exception('Falhou na requisição de post');
  }
}

List<Post> parsePosts(String responseBody) {
  var parsed = jsonDecode(responseBody).cast < Map<String, dynamic>();
  return parsed.map<Post>((json) => Post.fromJson(json)).toList();
}

class PostsList extends StatelessWidget {
  final List<Post> posts;

  PostsList({this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.cake),
          title: Text(posts[index].title),
          subtitle: Text(posts[index].body),
        );
      },
    );
  }
}

class TestePage extends StatefulWidget {
  @override
  _TestePage createState() => _TestePage();
}

class _TestePage extends State<TestePage> {
  Future<List<Post>> postagens;
  String titulo;
  String corpo;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    postagens = pegarPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Teste'),
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Digite o titulo'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Digite um titulo';
                  }
                  return null;
                },
                onSaved: (t) {
                  setState(() {
                    titulo = t;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Digite o corpo'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Digite um corpo';
                  }
                  return null;
                },
                onSaved: (t) {
                  setState(() {
                    titulo = t;
                  });
                },
              ),
              RaisedButton(
                child: Text("Enviar"),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();

                    enviaPost(titulo, corpo);
                  }
                },
              )
            ],
          )),
    );
  }
}
