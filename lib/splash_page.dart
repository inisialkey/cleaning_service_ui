import 'package:cleaning_service_ui/color_scheme.dart';
import 'package:cleaning_service_ui/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepPurple400,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Cleaning Service\nOnline',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Rumah Sehaet\nuntuk\nKehidupan Yang Sehat',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/splash.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 30,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Text(
                    'Lanjutkan',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: deepPurple400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
