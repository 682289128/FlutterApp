import 'package:flutter/material.dart';

import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:skeleton_text/skeleton_text.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: HomeScreen(),
      //showPerformanceOverlay: true,
      //debugShowMaterialGrid: true,
    );
  }
}

class HomeScreen extends StatelessWidget {
  final appTitle = "Flutter Drawer Demo";
  final btn = "Hello World";

  final TextStyle textStyle = const TextStyle(fontSize: 32, color: Colors.pink);

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    // width: 200,
                    //height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                        ),
                        minimumSize: Size(200, 50),
                        padding: EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 10,
                          bottom: 10,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => FirstScreen()),
                        );
                      },
                      child: Text(" Click Me"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          243,
                          33,
                          191,
                        ),
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                        ),
                        padding: EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 10,
                          bottom: 10,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondScreen(),
                          ),
                        );
                      },
                      child: Text("Button 2"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TabScreen()),
                        );
                      },
                      child: Text("Tabs"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              padding: EdgeInsets.only(left: 30, right: 0, top: 0, bottom: 0),
              //margin: EdgeInsets.only(left: ),
              decoration: BoxDecoration(color: Colors.green),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0),
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  'Tih Joseph Atengwing',
                  style: TextStyle(
                    color: Color.fromARGB(255, 11, 18, 223),
                    fontSize: 18,
                  ),
                ),
                accountEmail: Text("tihjoseph@gmail.com"),
                currentAccountPictureSize: Size.square(70),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "A",
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text("My Profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("My Course"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text("Go Premuim"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.video_label),
              title: Text("Saved Videos"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text("Edit Profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.white,

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ThemeClass()),
          );
        },
        child: Icon(Icons.color_lens, size: 24),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

/*-------------------------Theme Class-----------------------*/

class ThemeClass extends StatefulWidget {
  const ThemeClass({Key? key}) : super(key: key);

  @override
  State<ThemeClass> createState() => _ThemeClassState();
}

class _ThemeClassState extends State<ThemeClass> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.red,
        ),
        appBarTheme: AppBarTheme(foregroundColor: Colors.green),
        brightness: Brightness.light,
        primaryColor: Colors.green,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          secondary: Colors.deepOrangeAccent,
        ),
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.login, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => InputApp()),
            );
          },
        ),
        appBar: AppBar(
          // backgroundColor: const Color.fromARGB(179, 215, 215, 215),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
          title: Text("App Theme"),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 16),
          //color: Colors.white,
          child: Column(
            children: [
              Container(
                // color: Colors.white,
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  "A Love that learned How to Leave",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      "          They met quietly, the way the most dangerous things often begin — without warning, without noise, without anyone noticing. It was not fireworks. It was not fate screaming. It was simply a glance that stayed longer than it should have.\n\n"
                      "She loved mornings. He loved nights.She believed in promises. He believed in moments.Somehow, they believed in each other.\n\n"
                      "At first, love felt easy. Conversations stretched into hours, laughter slipped into silence, and silence felt safe. They spoke about dreams as if they were destinations already booked. They imagined futures with careless confidence, certain that love alone was enough to hold everything together.\n\n"
                      "He learned the sound of her footsteps.She learned the weight of his sighs.\n\n",
                      // "They built a world out of small things — shared jokes, late replies, accidental touches. Love didn’t arrive loudly; it settled gently, like a song you don’t realize you’ve memorized until it starts playing inside your head.\n\n",
                      //  "But love does not stay the same.",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*----------------------Input Fields----------------- */

class InputApp extends StatefulWidget {
  const InputApp({Key? key}) : super(key: key);

  @override
  State<InputApp> createState() => _TextFieldState();
}

class _TextFieldState extends State<InputApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Codech"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(14),
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(top: 12),
        child: SingleChildScrollView(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Register Now",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Names:",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 17,
                color: const Color.fromARGB(255, 141, 141, 141),
              ),
            ),
            SizedBox(height: 6),
            TextField(
              keyboardType: TextInputType.number,

              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 4),
                hintText: "Enter number",
                labelText: "numbers required",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 104, 104, 104),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
              ),
              //autofocus: true,
            ),


            SizedBox(height: 10),
            Text(
              "Text",
              style: TextStyle(
                fontSize: 17,
                color: const Color.fromARGB(255, 141, 141, 141),
              ),
            ),
            SizedBox(height: 6),
            TextField(
              decoration: InputDecoration(
                labelText: "Text required",
                hintText: "Enter Text",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 104, 104, 104),),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                //icon: Icon(Icons.person_add),
              ),
            ),



            SizedBox(height: 10),
            Text(
              "Decimal",
              style: TextStyle(
                fontSize: 17,
                color: const Color.fromARGB(255, 141, 141, 141),
              ),
            ),
            SizedBox(height: 6),
            TextField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: "enter decimal",
                hintText: "decimal require",
                enabledBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 104, 104, 104),),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ), 
              ),
            ),

            

            SizedBox(height: 10),
            Text(
              "Email:",
              style: TextStyle(
                fontSize: 17,
                color: const Color.fromARGB(255, 141, 141, 141),
              ),
            ),
            SizedBox(height: 6),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email Required...",
                hintText: "Enter email",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 104, 104, 104),),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                )
              ),
            ),

            SizedBox(height: 18),
            Center(
            child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                fixedSize: Size(400, 48),
              ),
              onPressed: (){},
              child: Text("Submit", style: TextStyle(color: Colors.white,fontSize: 18 )), 
            )
            ),
          ],
        ),
        ),
      ),
    );
  }
}

/*---------------------The First Screen-------------------- */

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Second Screen",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
        toolbarHeight: 56.0,
        toolbarOpacity: 0.8,
        titleSpacing: 0.0,
        elevation: 50.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.elliptical(15, 70),
          ),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {
              print("This is a comment icon");
            },
          ),

          IconButton(
            icon: Icon(Icons.settings),
            tooltip: 'setting Icon',
            onPressed: () {
              print("This is the setting icon");
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 67, 122, 249),
            border: Border.all(
              color: const Color.fromARGB(255, 127, 127, 127),
              style: BorderStyle.solid,
              width: 10.0,
            ),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(
                  255,
                  3,
                  3,
                  3,
                ).withOpacity(0.5), // shadow color
                offset: Offset(3, 2), // x and y shift
                blurRadius: 8, // how blurry the shadow is
                spreadRadius: 2,
                blurStyle: BlurStyle.normal, // how much the shadow spreads
              ),
            ],
            //borderRadius: BorderRadius.all(Radius.circular(100),),
          ),
          margin: EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to the Second Screen",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              //margin: EdgeInsets.all(0),
              child: Text(
                "Drawer",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("Search"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*-------------------The Second Screen----------------------*/

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            tooltip: 'Mesaage icon',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstScreen()),
              );
            },
          ),

          IconButton(
            icon: Icon(Icons.pageview),
            tooltip: 'pageview Icon',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
        ],
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Container(
        height: 300.0,
        color: const Color.fromARGB(255, 239, 239, 239),
        margin: EdgeInsets.only(top: 24),
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //width: double.infinity,
            //height: double.infinity,
            //margin: EdgeInsets.all(24),
            //decoration: BoxDecoration(color: const Color.fromARGB(255, 227, 227, 227)),
            RichText(
              // Controls visual overflow
              overflow: TextOverflow.fade,

              // Controls how the text should be aligned horizontally
              textAlign: TextAlign.center,

              // Control the text direction
              textDirection: TextDirection.rtl,

              // Whether the text should break at soft line breaks
              softWrap: true,

              // Maximum number of lines for the text to span
              textScaler: TextScaler.linear(1),
              maxLines: 2,
              text: TextSpan(
                text: 'Progress ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Indicator',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Text(
              "Circular Progress Indicator",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            CircularProgressIndicator(
              backgroundColor: const Color.fromARGB(179, 161, 161, 161),
              strokeWidth: 4,
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              // value: 0.6,
            ),
            SizedBox(height: 4),
            Text(
              "Linear Progress Indicator",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            LinearProgressIndicator(
              backgroundColor: const Color.fromARGB(179, 161, 161, 161),
              minHeight: 4,
              valueColor: AlwaysStoppedAnimation(Colors.green),
              value: 0.5,
            ),
          ],
        ),
      ),
    );
  }
}

/*-----------------Default Tab Controller--------------------------*/

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(221, 204, 204, 204),
            bottom: const TabBar(
              unselectedLabelColor: Colors.blue,
              labelColor: Colors.green,
              indicatorColor: Colors.green,

              tabs: <Widget>[
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.music_video)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.email)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 60.0),
                height: 450.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 480.0,
                      height: 240.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://4kwallpapers.com/images/walls/thumbs_2t/13495.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),

                    Container(
                      width: 480.0,
                      height: 240.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://wallpapercat.com/w/full/0/a/8/319915-3840x2160-desktop-4k-iron-man-background.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),

                    Container(
                      width: 480.0,
                      height: 240.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://c4.wallpaperflare.com/wallpaper/1022/408/961/tv-show-ben-10-ben-tennyson-wallpaper-preview.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),

                    Container(
                      width: 480.0,
                      height: 240.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://c4.wallpaperflare.com/wallpaper/724/879/773/prabhas-bahubali-part-2-wallpaper-preview.jpg',
                          ),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
              //Icon(Icons.music_note_sharp, size: 200, color: Colors.blue),
              ExpansionTile(
                title: Text("Fruits"),
                subtitle: Text("Tap here to view"),
                leading: Icon(Icons.food_bank),
                children: [
                  ListTile(
                    title: Text("Orange"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text("Pineapple"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => TabScreen()),
                      );
                    },
                  ),
                  ListTile(title: Text("Apple"), onTap: () {}),
                  ListTile(title: Text("Mango"), onTap: () {}),
                  ListTile(title: Text("Lemon"), onTap: () {}),
                ],
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                color: const Color.fromARGB(60, 137, 52, 52),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.green,
                        padding: EdgeInsets.all(2),
                        margin: EdgeInsets.all(2),
                        child: Image.asset(
                          "assets/images/651d66c14ac97bfbf614d71c_Understand-Facebook-algorithm-2023.jpeg",
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        margin: EdgeInsets.all(2),
                        color: Colors.red,
                        child: Image.asset(
                          "assets/images/Snapchat-1707516179.jpg",
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.pink,
                        padding: EdgeInsets.all(2),
                        margin: EdgeInsets.all(2),
                        child: Image.asset(
                          "assets/images/Snapchat-780572700.jpg",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.cyan,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return SimpleDialog(
                                title: Text("List"),
                                children: <Widget>[
                                  SimpleDialogOption(
                                    onPressed: () {},
                                    child: Text("Option 1"),
                                  ),
                                  SimpleDialogOption(
                                    onPressed: () {},
                                    child: Text("Option 1"),
                                  ),
                                  SimpleDialogOption(
                                    onPressed: () {},
                                    child: Text("Option 1"),
                                  ),
                                  SimpleDialogOption(
                                    onPressed: () {},
                                    child: Text("Option 1"),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          "Show Dialog",
                          style: TextStyle(fontSize: 20, color: Colors.green),
                        ),
                      ),
                      AlertDialog(
                        //Alert Dialog
                        title: Text(
                          "Login",
                          style: TextStyle(fontSize: 24, color: Colors.blue),
                        ),
                        content: Text(
                          "Login Sucessfull. Continue!",
                          style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(221, 14, 13, 13),
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "CANCEL",
                              style: TextStyle(fontSize: 20, color: Colors.red),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Accept",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
