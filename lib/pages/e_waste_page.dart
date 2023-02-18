import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class EwastePage extends StatefulWidget {
  const EwastePage({Key? key}) : super(key: key);

  @override
  _EwastePageState createState() => _EwastePageState();
}

class _EwastePageState extends State<EwastePage> {
  late Future<List<Article>> _articleList;

  Future<List<Article>> _fetchArticles() async {
    final response = await http.get(Uri.parse('https://climate-change-live402.p.rapidapi.com/news/nyp'));
    if (response.statusCode == 200) {
      final List<dynamic> articlesJson = jsonDecode(response.body);
      return articlesJson.map((articleJson) => Article.fromJson(articleJson)).toList();
    } else {
      throw Exception('Failed to fetch articles');
    }
  }

  @override
  void initState() {
    super.initState();
    _articleList = _fetchArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Waste'),
      ),
      body: FutureBuilder<List<Article>>(
        future: _articleList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final articleList = snapshot.data!;
            return ListView.builder(
              itemCount: articleList.length,
              itemBuilder: (context, index) {
                final article = articleList[index];
                return ListTile(
                  title: Text(article.title),
                  onTap: () async {
                    if (await canLaunch(article.url)) {
                      await launch(article.url);
                    } else {
                      throw Exception('Could not launch URL');
                    }
                  },
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Failed to fetch articles'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class Article {
  final String title;
  final String url;

  Article({
    required this.title,
    required this.url,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'],
      url: json['url'],
    );
  }
}
