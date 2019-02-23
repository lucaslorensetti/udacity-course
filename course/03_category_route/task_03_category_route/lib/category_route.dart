// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'category.dart';

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {

    Color baseColor = Colors.green[100];

    List<Category> getItems(){
      List<Category> items = new List<Category>();

      for (var i = 0; i < _categoryNames.length; i++) {
          items.add(Category(
            color: _baseColors[i],
            name: _categoryNames[i],
            iconLocation: Icons.cake,
          ));
      }

      return items;
    }

    final listView = Container(
      color: baseColor,
      child: ListView(
        children: getItems()
      ),
    );
    
    final appBar = AppBar(
       title: Text('Unit Converter', style: TextStyle(color: Colors.black, fontSize: 30.0)),
      elevation: 0.0,
      backgroundColor: baseColor
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
