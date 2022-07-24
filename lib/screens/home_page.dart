import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xth_project/components/icon_button.dart';
import 'package:xth_project/models/app_state_manager.dart';

import '../utils/size_config.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Consumer<AppStateManager>(builder: (context, appState, child) {
      return Scaffold(
          appBar: AppBar(
            elevation: 0,
            actions: [
              IconButton(
                icon: Icon(
                  appState.isDarkMode
                      ? Icons.brightness_2_outlined
                      : Icons.brightness_2_outlined,
                  size: 20,
                  color: appState.isDarkMode ? Colors.white : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    appState.updateTheme(!appState.isDarkMode);
                  });
                },
              ),
            ],
          ),
          body: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: const Color(0xffff9300),
                                radius: SizeConfig.safeBlockHorizontal * 14,
                                child: CircleAvatar(
                                  backgroundColor: const Color(0xff261300),
                                  radius: SizeConfig.safeBlockHorizontal * 12.5,
                                  child: Icon(
                                    Icons.person_outline,
                                    color: const Color(0xffff9300),
                                    size: SizeConfig.safeBlockHorizontal * 14,
                                  ), //Text
                                ),
                              ),
                              Center(
                                child: Text(
                                  'John Doe',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Center(
                                child: Text(
                                  'john.doe@example.com',
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.safeBlockVertical * 1,
                              ),
                              SizedBox(
                                width: 200,
                                height: 40,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius
                                                    .circular(SizeConfig
                                                            .safeBlockHorizontal *
                                                        14),
                                                side: const BorderSide(
                                                    color: Colors.red)))),
                                    child: const Text('Upgrade to PRO')),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.safeBlockVertical * 1,
                          ),
                          const Button(
                              icon: Icons.privacy_tip_outlined,
                              title: 'Privacy'),
                          SizedBox(
                            height: SizeConfig.safeBlockVertical * 1,
                          ),
                          const Button(
                              icon: Icons.history_outlined,
                              title: 'Purchase History'),
                          SizedBox(
                            height: SizeConfig.safeBlockVertical * 1,
                          ),
                          const Button(
                              icon: Icons.help_outline,
                              title: 'Help & Support'),
                          SizedBox(
                            height: SizeConfig.safeBlockVertical * 1,
                          ),
                          const Button(
                              icon: Icons.settings_outlined, title: 'Settings'),
                          SizedBox(
                            height: SizeConfig.safeBlockVertical * 1,
                          ),
                          const Button(
                            icon: Icons.privacy_tip_outlined,
                            title: 'Invite a Friend',
                          ),
                          SizedBox(
                            height: SizeConfig.safeBlockVertical * 1,
                          ),
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: appState.isDarkMode
                                  ? ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      primary: Colors.white,
                                      onPrimary: Colors.black,
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold))
                                  : ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      primary: Colors.black,
                                      onPrimary: Colors.white,
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                              child: const Text('Logout'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ])));
    });
  }
}
