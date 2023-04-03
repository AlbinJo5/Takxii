import 'package:flutter/material.dart';
import '../../providers/map_provider.dart';
import 'package:provider/provider.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key, this.mapProvider}) : super(key: key);

  final MapProvider? mapProvider;

  @override
  Widget build(BuildContext context) {
    final MapProvider mapProvider = Provider.of<MapProvider>(
      context,
      listen: false,
    );
    return Container(
      // position of the search bar
      margin: const EdgeInsets.only(top: 10, left: 85),
      // width of the search bar is onmly 80% of the screen
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
          // padding left of the search bar
          contentPadding: EdgeInsets.only(left: 10, top: 15),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
