import 'package:flutter/material.dart';
import 'community_form.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

/*
ElevatedButton(onPressed: (() {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CommunityPage()));
      }), child: Text('Community Page')),
*/

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  //const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const CommunityPage()));
        },
        child: Icon(Icons.arrow_forward_ios),
        ),
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: RichText(
            text: const TextSpan(
                text: 'event',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                children: [
                  TextSpan(
                    text: 'org',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ]),
          ),
        ),
        bottomNavigationBar: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          
          
          child: SalomonBottomBar(
            
            currentIndex: _currentIndex,
            onTap: (i) => setState(() => _currentIndex = i),
            items: [
              /// Home
              SalomonBottomBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
                  selectedColor: Colors.blueAccent,
                  unselectedColor: Colors.white),
        
              SalomonBottomBarItem(
                  icon: Icon(Icons.people_alt),
                  title: Text("Network"),
                  selectedColor: Colors.blueAccent,
                  unselectedColor: Colors.white),
        
              /// Likes
              SalomonBottomBarItem(
                  icon: Icon(Icons.work),
                  title: Text("Work"),
                  selectedColor: Colors.blueAccent,
                  unselectedColor: Colors.white),
        
              /// Search
              SalomonBottomBarItem(
                  icon: Icon(Icons.notifications),
                  title: Text("Notification"),
                  selectedColor: Colors.blueAccent,
                  unselectedColor: Colors.white),
        
              /// Profile
              SalomonBottomBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Profile"),
                  selectedColor: Colors.blueAccent,
                  unselectedColor: Colors.white),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  width: double.infinity,
                  //color: Colors.white,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                      
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Coding Club',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Coding Club',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Coding Club',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    CircleAvatar(
                                      radius: 20,
                                     backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Coding Club',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Coding Club',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Coding Club',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    CircleAvatar(
                                      radius: 20,
                                     backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Coding Club',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                  
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Coding Club',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Coding Club',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Coding Club',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Coding Club',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                  
                      SizedBox(height: 8),   
                  
                      Card(                      
                        color: Colors.white,                      
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Flex(
                            mainAxisAlignment: MainAxisAlignment.center,
                            direction: Axis.horizontal,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                radius: 40,
                                
                                ),
                              SizedBox(width: 20),  
                              Column(
                                children: [
                                  Text('Community Name'),
                                  SizedBox(height: 10),
                                  Text('Community Description'),
                                  SizedBox(height: 10),
                                  Text('Tags')
                                ],
                              )  
                            ],
                            ),
                        ),
                      ),   
                  
                      Card(                      
                        color: Colors.white,                      
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Flex(
                            mainAxisAlignment: MainAxisAlignment.center,
                            direction: Axis.horizontal,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                radius: 40,
                                
                                ),
                              SizedBox(width: 20),  
                              Column(
                                children: [
                                  Text('Community Name'),
                                  SizedBox(height: 10),
                                  Text('Community Description'),
                                  SizedBox(height: 10),
                                  Text('Tags')
                                ],
                              )  
                            ],
                            ),
                        ),
                      ),   
                  
                      Card(                      
                        color: Colors.white,                      
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Flex(
                            mainAxisAlignment: MainAxisAlignment.center,
                            direction: Axis.horizontal,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                radius: 40,
                                
                                ),
                              SizedBox(width: 20),  
                              Column(
                                children: [
                                  Text('Community Name'),
                                  SizedBox(height: 10),
                                  Text('Community Description'),
                                  SizedBox(height: 10),
                                  Text('Tags')
                                ],
                              )  
                            ],
                            ),
                        ),
                      ),   
                  
                      Card(                      
                        color: Colors.white,                      
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Flex(
                            mainAxisAlignment: MainAxisAlignment.center,
                            direction: Axis.horizontal,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                radius: 40,
                                
                                ),
                              SizedBox(width: 20),  
                              Column(
                                children: [
                                  Text('Community Name'),
                                  SizedBox(height: 10),
                                  Text('Community Description'),
                                  SizedBox(height: 10),
                                  Text('Tags')
                                ],
                              )  
                            ],
                            ),
                        ),
                      ),   
                  
                      Card(                      
                        color: Colors.white,                      
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Flex(
                            mainAxisAlignment: MainAxisAlignment.center,
                            direction: Axis.horizontal,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                radius: 40,
                                
                                ),
                              SizedBox(width: 20),  
                              Column(
                                children: [
                                  Text('Community Name'),
                                  SizedBox(height: 10),
                                  Text('Community Description'),
                                  SizedBox(height: 10),
                                  Text('Tags')
                                ],
                              )  
                            ],
                            ),
                        ),
                      ),   
                  
                      Card(                      
                        color: Colors.white,                      
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Flex(
                            mainAxisAlignment: MainAxisAlignment.center,
                            direction: Axis.horizontal,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                radius: 40,
                                
                                ),
                              SizedBox(width: 20),  
                              Column(
                                children: [
                                  Text('Community Name'),
                                  SizedBox(height: 10),
                                  Text('Community Description'),
                                  SizedBox(height: 10),
                                  Text('Tags')
                                ],
                              )  
                            ],
                            ),
                        ),
                      ),   
                  
                      Card(                      
                        color: Colors.white,                      
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Flex(
                            mainAxisAlignment: MainAxisAlignment.center,
                            direction: Axis.horizontal,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/undraw_Coding_re_iv62.png'),
                                radius: 40,
                                
                                ),
                              SizedBox(width: 20),  
                              Column(
                                children: [
                                  Text('Community Name'),
                                  SizedBox(height: 10),
                                  Text('Community Description'),
                                  SizedBox(height: 10),
                                  Text('Tags')
                                ],
                              )  
                            ],
                            ),
                        ),
                      ),          
                        
                      ],
                    ),
                  ),
                  
                ),
            ),

            
          ],
        ),
        );
  }
}
