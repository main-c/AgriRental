import 'package:flutter/material.dart';
import '../widgets/button.dart';
import '../widgets/search_delegates.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchedText = "";
  TextEditingController searchController = TextEditingController();
  List<String> categories = [
    'Agriculture',
    'Commerce',
    'Elevage',
    'Education',
    'Commerce',
    'Elevage',
    'Education',
    'Commerce',
    'Elevage',
    'Education',
    'Commerce',
    'Elevage',
    'Education'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              // background: Image.network(
              //   "https://picsum.photos/200/",
              //   fit: BoxFit.cover,
              // ),

              background: Container(
                margin: EdgeInsets.all(20),
                height: 50,
                child: ListTile(
                  // if the user is connected
                  // leading: const CircleAvatar(
                  //     backgroundImage: NetworkImage(
                  //   "https://picsum.photos/200/",
                  // )),
                  // title: Text('Bon retour !',
                  //     style: Theme.of(context)
                  //         .textTheme
                  //         .bodySmall
                  //         ?.copyWith(fontSize: 14)),
                  // subtitle: Text(
                  //   'Yannik B.',
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .bodyLarge
                  //       ?.copyWith(fontSize: 16),
                  // ),
                  // if not
                  subtitle: Text(
                    'FindInvest',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(fontSize: 32),
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    child: IconButton(
                      highlightColor: Colors.white,
                      icon: Icon(Icons.notifications_outlined),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),

              centerTitle: true,
              title: Container(
                child: Container(
                  padding: EdgeInsets.only(
                    left: 40,
                    right: 40,
                  ),
                  height: 40,
                  child: TextField(
                    controller: searchController,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Theme.of(context).colorScheme.onSecondary,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      hintText: "Rechercher un projet, un investisseur",
                      hintStyle: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey, fontSize: 14),
                    ),
                    onChanged: (value) => setState(() {
                      searchedText = value;
                    }),
                    // onSaved: (newValue) {
                    //   setState(() {
                    //     searchedText = newValue!;
                    //   });
                    // },
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return "Veuillez entrer votre nom d'utilisateur";
                    //   }
                    //   return null;
                    // },
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                        ),
                        onPressed: () {},
                        child: Text(categories[index],
                            style: Theme.of(context).textTheme.headlineMedium),
                      ),
                    );
                  }),
                  const SizedBox(height: 2000),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Read more",
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
