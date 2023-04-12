import 'package:drower_steper/screen/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;

  @override
  Widget build(BuildContext context) {
    homeProviderFalse = Provider.of<HomeProvider>(context,listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Edit Your Profile",style: TextStyle(color: Colors.white,)),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.black,
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: FlutterLogo(size: 50),
                ),
              ),
            ],
          ),
        ),
        body: Stepper(
          currentStep: homeProviderTrue!.selectrdstep,
          steps: [
            Step(title: Text("Profile Picture"), content: TextField(),),
            Step(title: Text("Name"), content:TextField(),),
            Step(title: Text("Phone"), content:TextField(),),
            Step(title: Text("Email"), content: TextField(),),
            Step(title: Text("DOB"), content: TextField(),),
            Step(title: Text("Gender"), content: TextField(),),
            Step(title: Text("Current Location"), content: TextField(),),
            Step(title: Text("Nationalities"), content: TextField(),),
            Step(title: Text("Religion"), content: TextField(),),
            Step(title: Text("Language"), content: TextField(),),
            Step(title: Text("Biography"), content: TextField(),
            ),
          ],
          onStepContinue: () {
            homeProviderFalse!.nextstep();
          },
          onStepCancel: () {
            homeProviderFalse!.prevstep();
        },
        ),
     ),
    );
  }
 int i = 0;
}