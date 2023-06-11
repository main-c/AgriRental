import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Handle the search results here, and return the appropriate widget
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Provide suggestions as the user types in the search bar
    return ListView(
      children: [
        ListTile(
          title: Text('Suggestion 1'),
          onTap: () {
            query = 'Suggestion 1';
            showResults(context);
          },
        ),
        ListTile(
          title: Text('Suggestion 2'),
          onTap: () {
            query = 'Suggestion 2';
            showResults(context);
          },
        ),
      ],
    );
  }
}
