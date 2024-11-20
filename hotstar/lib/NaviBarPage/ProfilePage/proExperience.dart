import 'package:flutter/material.dart';
import 'package:particles_flutter/component/particle/particle.dart';
import 'package:particles_flutter/particles_engine.dart';
import 'dart:math';

class ProExperience extends StatefulWidget {
  const ProExperience({ Key? key }) : super(key: key);

  @override
  _ProExperienceState createState() => _ProExperienceState();
}

class _ProExperienceState extends State<ProExperience> {

  final Random rng = Random(); 

  @override
  Widget build(BuildContext context) {
  
  double width = MediaQuery.sizeOf(context).width;
  double height = MediaQuery.sizeOf(context).height;

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),  
          colors: [Color(0xFF001845), Color(0xff0f1014), Color(0xff0f1014)]
          )
      ),
     child: Particles(
      awayRadius: 150,
     particles: createParticles(), // List of particles
     height: 200,
     width: width,
     onTapAnimation: true,
     awayAnimationDuration: const Duration(milliseconds: 120),
     awayAnimationCurve: Curves.linear,
     enableHover: true,
     hoverRadius: 90,
     connectDots: false,
     ), 
    );
  }
   List<Particle> createParticles() {
    var rng = Random();
    List<Particle> particles = [];
    for (int i = 0; i < 20; i++) {
      particles.add(Particle(
        color: Colors.white.withOpacity(0.6),
       size: rng.nextDouble() * 1,
        velocity: Offset(rng.nextDouble() * 200 * randomSign(),
            rng.nextDouble() * 200 * randomSign()),
      ));
    }
    return particles;
  }

  double randomSign() {
    var rng = Random();
    return rng.nextBool() ? 1 : -1;
  }
}


