import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1C1E),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Header Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Nusrat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Let's watch today",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.pink,
                            Colors.blue,
                            Colors.purple,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(2),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/images/profile.jpg'),
                          ),
                        ),
                      ),
                    ),
                    // CircleAvatar(
                    //   radius: 20,
                    //   backgroundImage: AssetImage('images/profile.jpg'),
                    //
                    // ),
                  ],
                ),
                SizedBox(height: 20),

                // Search Bar
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF2C2C2E),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(Icons.search, color: Colors.grey),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),

                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.tune,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                // Categories Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See More',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCategoryChip('All', isSelected: true),
                      _buildCategoryChip('Action'),
                      _buildCategoryChip('Anime'),
                      _buildCategoryChip('Sci-fi'),
                      _buildCategoryChip('Thriller'),
                    ],
                  ),
                ),
                SizedBox(height: 15),

                // Featured Movie Banner
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('assets/images/uncharted.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.more_horiz,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 15),

                // Trending Movies Section
                _buildSection(
                  'Trending Movies',
                  [
                    _buildMovieCard('Yes I Do', 'assets/images/yes_i_do.png'),
                    _buildMovieCard('Soul Mate', 'assets/images/soul_mate.png'),
                    _buildMovieCard("UB's Secret", 'assets/images/ubs_secret.png'),
                    _buildMovieCard('Yes I Do', 'assets/images/yes_i_do.png'),
                    _buildMovieCard('Soul Mate', 'assets/images/soul_mate.png'),
                    _buildMovieCard("UB's Secret", 'assets/images/ubs_secret.png'),
                  ],
                ),

                // Continue Watching Section
                _buildSection(
                  'Continue Watching',
                  [
                    _buildEpisodeCard(
                      'Wednesday I Season - 1 Episode - 3',
                      'assets/images/wednesday.png',
                    ),
                    _buildEpisodeCard(
                      'Emily in Paris I Season - 1 Episode - 1',
                      'assets/images/emily_paris.png',
                    ),
                    _buildEpisodeCard(
                      'Wednesday I Season - 1 Episode - 3',
                      'assets/images/wednesday.png',
                    ),
                    _buildEpisodeCard(
                      'Emily in Paris I Season - 1 Episode - 1',
                      'assets/images/emily_paris.png',
                    ),
                  ],
                ),

                // Recommended Section
                _buildSection(
                  'Recommended For You',
                  [
                    _buildMovieCard('Double Love', 'assets/images/double_love.png'),
                    _buildMovieCard(
                      'Curse Of The River',
                      'assets/images/curse_river.png',
                    ),
                    _buildMovieCard('Sunita', 'assets/images/sunita.png'),
                    _buildMovieCard('Double Love', 'assets/images/double_love.png'),
                    _buildMovieCard(
                      'Curse Of The River',
                      'assets/images/curse_river.png',
                    ),
                    _buildMovieCard('Sunita', 'assets/images/sunita.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            backgroundColor: Color(0x28282924),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.desktop_windows_rounded),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.download),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label, {bool isSelected = false}) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Chip(
        label: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
          ),
        ),
        backgroundColor:
        isSelected ? Colors.red : Color(0xFF372424),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> items) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'See More',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),

        SizedBox(height: 10),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items.map((item) => Padding(
              padding: EdgeInsets.only(right: 12),
              child: item,
            )).toList(),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _buildMovieCard(String title, String assetPath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(assetPath),
              fit: BoxFit.cover,
            ),
          ),
        ),

        SizedBox(height: 8),

        SizedBox(
          width: 120,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildEpisodeCard(String title, String assetPath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(assetPath),
              fit: BoxFit.cover,
            ),
          ),
        ),

        SizedBox(height: 8),

        SizedBox(
          width: 200,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}