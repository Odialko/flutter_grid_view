import 'package:flutter/material.dart';
import 'package:flutter_grid/grid_icons.dart';

class GridViewExtend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<IconData> _iconList = GridIcons().getIconList();
    return GridView.extent(
      maxCrossAxisExtent: 175.0,
//      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(8.0),
      children: List.generate(20, (index) {
        print('_buildGridViewExtent $index');
        return Card(
          margin: EdgeInsets.all(8.0),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  _iconList[index],
                  size: 48.0,
                  color: Colors.blue,
                ),
                Divider(),
                Text(
                  'Index $index',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            onTap: () {
              print('Row $index');
            },
          ),
        );
      }),
    );
  }
}
