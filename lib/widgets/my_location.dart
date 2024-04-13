
import 'package:flutter/material.dart';

class MyLocation extends StatefulWidget {
  const MyLocation({super.key});

  @override
  State<MyLocation> createState() => _MyLocationState();
}


class _MyLocationState extends State<MyLocation> {
  final TextEditingController locationController = TextEditingController();
  String locationText = "Your location";
  void saveLocation(){
    setState(() {
      locationText = locationController.text;
      locationController.clear();
    });
  }
  void changeLocation(BuildContext context){
    showDialog(
    context: context,
     builder: (context)=> AlertDialog(
      title: const Text("Enter your location!"),
      content: TextField(
        controller: locationController,
        decoration: const InputDecoration(
          hintText: "Location...",
        ),
      ),
      actions: [
        //cancel button
        MaterialButton(
          onPressed: ()=> Navigator.of(context).pop(),
          child: Text("Cancel",style: TextStyle(color: Colors.red.shade300),),
          ),
        //save button
        MaterialButton(
          onPressed: (){
              saveLocation();
              Navigator.of(context).pop();
          },
          child: Text("Save", style: TextStyle(color: Colors.blue.shade300),),
          ),
      ],
     )
     );
  }
  @override
  void dispose() {
    super.dispose();
    locationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now!",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          InkWell(
            onTap: () => changeLocation(context),
            child: Row(
              children: [
                //Location field
                Text(
                  locationText,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                //Drop down button
               const Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
          )
        ],
      ),
    );
  }
}
