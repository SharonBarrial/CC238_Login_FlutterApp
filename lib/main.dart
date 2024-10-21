import 'package:flutter/material.dart';
//aqui se llaman todos los paquetes
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(image: AssetImage('lib/assets/images.jpeg'),
          fit: BoxFit.cover,
          // Other form: black50
          color: Colors.black.withOpacity(0.5), // 50% black
          colorBlendMode: BlendMode.darken,
          ),
          Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              FlutterLogo(

                size: 160,

              ),

              Form(

                  child: Theme(

                    data: ThemeData(

                        brightness: Brightness.dark, primarySwatch: Colors.teal,

                        inputDecorationTheme: InputDecorationTheme(

                            labelStyle: TextStyle(

                                color: Colors.teal,

                                fontSize: 20

                            )

                        )

                    ),

                    child: Container(

                      padding: EdgeInsets.all(25),

                      child: Column(

                        children: <Widget>[

                          TextFormField(

                            decoration: InputDecoration(

                              labelText: "Ingrese correo",

                            ),

                            keyboardType: TextInputType.emailAddress,

                          ),

                          TextFormField(

                            decoration: InputDecoration(

                              labelText: "Ingrese pass",

                            ),

                            keyboardType: TextInputType.text,

                            obscureText: true,

                          ),

                          Padding(

                              padding: EdgeInsets.only(top: 75)

                          ),

                          MaterialButton(

                              height: 70,

                              minWidth: 80,

                              color: Colors.teal,

                              textColor: Colors.white,

                              child: Icon(FontAwesomeIcons.accusoft),

                              splashColor: Colors.amberAccent,

                              onPressed: (){



                              })

                        ],

                      ),

                    ),

                  ))

            ],

          )

        ],

      ),

    );

  }

}



/**import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión de sesión',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Variable para almacenar el nombre de usuario
  String _username = '';
  final TextEditingController _controller = TextEditingController();

  // Método para simular el inicio de sesión
  void _login() {
    setState(() {
      // Almacenar el nombre de usuario ingresado en el estado
      _username = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Si el usuario está autenticado, mostrar la pantalla de bienvenida
    if (_username.isNotEmpty) {
      return WelcomeScreen(username: _username);
    }

    // Pantalla de inicio de sesión
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de sesión'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Nombre de usuario',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}

// Pantalla de bienvenida después de iniciar sesión
class WelcomeScreen extends StatelessWidget {
  final String username;

  // Constructor para pasar el nombre de usuario a la pantalla de bienvenida
  WelcomeScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
      ),
      body: Center(
        child: Text(
          'Bienvenido, $username!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}**/

