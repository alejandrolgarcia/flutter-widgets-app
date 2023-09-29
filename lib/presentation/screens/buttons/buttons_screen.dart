import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),

      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),

    );
  }
}

class _ButtonsView extends StatelessWidget {

  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity, // Ocupa todo el espacio de la pantalla
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap( // Los widgets se alienan linealmente y continuan abajo segun el tamaño del dispositivo
          spacing: 10, // Establece espacio entre widgets en el Wrap
          alignment: WrapAlignment.center, // Alienar los widgets al centro
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated Button')),
            const ElevatedButton(onPressed: null, child: Text('Disabled Elevated')),
    
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_outlined), 
              label: const Text('Elevated Icon')
            ),

            FilledButton(onPressed: (){}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.add_a_photo_rounded), 
              label: const Text('Filled Icon')
            ),

            OutlinedButton(onPressed: (){}, child: const Text('Outlined Button')),
            OutlinedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.terminal_sharp), 
              label: const Text('Outlined Icon')
            ),

            

            TextButton(onPressed: (){}, child: const Text('Text Button')),
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.text_fields_rounded), 
              label: const Text('Text Icon')
            ),

            const CustomButton(),

            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_rounded)),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white)
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding( // Permite tener una separacion del resto de widgets
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Custom Button', style: TextStyle(color: Colors.white))
          ),
        ),
      ),
    );
  }
}