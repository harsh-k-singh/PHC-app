import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About US"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Text(
            "The Ambulance Service",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Center(
            child: Text(
                """Our college healthcare center ambulance service is dedicated to providing timely and reliable emergency medical transportation to students, staff, and faculty on campus. Our ambulance service operates 24/7 to ensure that help is always just a phone call away, and our response times are among the fastest in the region. At our college healthcare center ambulance service, we prioritize patient safety and comfort, and we work closely with local hospitals and emergency services to provide seamless care for our patients. Whether you need transportation to a nearby hospital or urgent care facility, or simply require medical attention on campus, our ambulance service is here to help. Contact us today to learn more about our services or to request assistance in an emergency."""),
          ),
          Text(
            "The Medical Service",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Center(
            child: Text(
                """The campus medical team at IIIT Jabalpur Healthcare Center is a group of highly skilled and compassionate healthcare professionals who are dedicated to providing exceptional care to students, staff, and faculty. Our medical team includes board-certified physicians, nurse practitioners, nurses, and medical assistants, who work collaboratively to deliver comprehensive primary care and preventive health services to our patients. At IIIT JAbalpur Healthcare Center, our campus medical team is committed to delivering patient-centered care that is tailored to your individual needs and preferences."""),
          ),
        ]),
      ),
    );
  }
}
