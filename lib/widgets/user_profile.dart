import 'package:flutter/material.dart';
import 'package:circular_placeholder/circular_placeholder.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      bottomNavigationBar: const BottomBar(),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              TopSettingsSearchEdit(),
              UserInfoMenu(),
              SizedBox(
                height: 35,
                width: 375,
              ),
              GroupAddAccount(),
              SizedBox(height: 35, width: 375),
              MenuWidget(),
              SizedBox(height: 35, width: 375),
              SeconMenuWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class GroupAddAccount extends StatelessWidget {
  const GroupAddAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: Colors.black12),
          bottom: BorderSide(width: 1, color: Colors.black12),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15),
            width: 375,
            height: 44,
            child: Row(
              children: [
                SizedBox(
                  width: 29,
                  height: 29,
                  child: CircularPlaceholder(
                    color: Colors.green,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text('Jacob Design', style: TextStyle(fontSize: 17)),
                )
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
              top: BorderSide(width: 1, color: Colors.black12),
            )),
            padding: const EdgeInsets.only(left: 15),
            width: 375,
            height: 44,
            child: Row(
              children: const [
                Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 21.5),
                  child: Text(
                    'Add Account',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                        fontSize: 17),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserInfoMenu extends StatelessWidget {
  const UserInfoMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1, color: Colors.black12),
      )),
      padding: const EdgeInsets.only(left: 15),
      height: 92,
      width: 375,
      child: Row(
        children: [
          SizedBox(
            height: 66,
            width: 66,
            child: Padding(
              padding: const EdgeInsets.only(right: 13),
              child: CircularPlaceholder(
                color: Colors.orange,
                strokeWidth: 3,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Jacob W.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              Text(
                '+1 202 555 0147.',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '@jacob_d',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          Spacer(
            flex: 2,
          ),
          const Expanded(
              child: Icon(
            Icons.chevron_right,
            color: Color(0xff3C3C434D),
          ))
        ],
      ),
    );
  }
}

class TopSettingsSearchEdit extends StatelessWidget {
  const TopSettingsSearchEdit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: 375,
      height: 142,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 54),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(''),
                Container(
                  padding: const EdgeInsets.only(left: 50),
                  child: const Text(
                    'Settings',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 16),
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              width: 355,
              height: 36,
              color: Colors.grey.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.search),
                  Text(
                    'Search',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => setState((() => currentIndex = index)),
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      iconSize: 29,
      selectedFontSize: 12, // =>
      unselectedFontSize: 12, //изменяемое, для анимации
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/pathd.png',
          ),
          label: 'Contacts',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/calls.png',
          ),
          label: 'Calls',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/chats.png',
          ),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            width: 29,
            height: 29,
            child: CircularPlaceholder(
              color: Colors.orange,
            ),
          ),
          label: 'Settings',
        ),
      ],
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
        top: BorderSide(width: 1, color: Colors.black12),
        bottom: BorderSide(width: 1, color: Colors.black12),
      )),
      width: 375,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(width: 1, color: Colors.black12),
            )),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.5, horizontal: 15),
              child: Row(
                children: [
                  // Icon(
                  //   Icons.save_alt,
                  //   color: Colors.blue,
                  Image.asset(
                    'assets/images/Icon.png',
                    width: 29,
                    height: 29,
                  ),

                  const SizedBox(width: 15),
                  const Expanded(
                      child: Text(
                    'Saved Messages',
                    style: TextStyle(fontSize: 17),
                  )),
                  const Icon(Icons.chevron_right, color: Color(0xff3C3C434D))
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(width: 1, color: Colors.black12),
            )),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.5, horizontal: 15),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/call.png',
                    width: 29,
                    height: 29,
                  ),
                  const SizedBox(width: 15),
                  const Expanded(
                      child: Text(
                    'Recent Calls',
                    style: TextStyle(fontSize: 17),
                  )),
                  const Icon(Icons.chevron_right, color: Color(0xff3C3C434D))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7.5, horizontal: 15),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/stickers.png',
                  width: 29,
                  height: 29,
                ),
                const SizedBox(width: 15),
                const Expanded(
                    child: Text(
                  'Stickers',
                  style: TextStyle(fontSize: 17),
                )),
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                        width: 26,
                        alignment: Alignment.center,
                        color: Colors.blue,
                        child: const Text(
                          '15',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ))),
                const Icon(Icons.chevron_right, color: Color(0xff3C3C434D))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SeconMenuWidget extends StatelessWidget {
  const SeconMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
        top: BorderSide(width: 1, color: Colors.black12),
        bottom: BorderSide(width: 1, color: Colors.black12),
      )),
      width: 375,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(width: 1, color: Colors.black12),
            )),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.5, horizontal: 15),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/notific.png',
                    width: 29,
                    height: 29,
                  ),
                  const SizedBox(width: 15),
                  const Expanded(
                      child: Text(
                    'Notifications and Sounds',
                    style: TextStyle(fontSize: 17),
                  )),
                  const Icon(Icons.chevron_right, color: Color(0xff3C3C434D))
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(width: 1, color: Colors.black12),
            )),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.5, horizontal: 15),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/privacy.png',
                    width: 29,
                    height: 29,
                  ),
                  const SizedBox(width: 15),
                  const Expanded(
                      child: Text(
                    'Privacy and Security',
                    style: TextStyle(fontSize: 17),
                  )),
                  const Icon(Icons.chevron_right, color: Color(0xff3C3C434D))
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(width: 1, color: Colors.black12),
            )),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.5, horizontal: 15),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/data.png',
                    width: 29,
                    height: 29,
                  ),
                  const SizedBox(width: 15),
                  const Expanded(
                      child: Text(
                    'Data and Storage',
                    style: TextStyle(fontSize: 17),
                  )),
                  const Icon(Icons.chevron_right, color: Color(0xff3C3C434D))
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(width: 1, color: Colors.black12),
            )),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.5, horizontal: 15),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/appear.png',
                    width: 29,
                    height: 29,
                  ),
                  const SizedBox(width: 15),
                  const Expanded(
                      child: Text(
                    'Appearance',
                    style: TextStyle(fontSize: 17),
                  )),
                  const Icon(Icons.chevron_right, color: Color(0xff3C3C434D))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//  Container(
//                 decoration: const BoxDecoration(
//                     border: Border(
//                   top: BorderSide(width: 1, color: Colors.black12),
//                   bottom: BorderSide(width: 1, color: Colors.black12),
//                 )),
//                 width: 375,
//                 height: 132,
//                 child: Container(
//                   padding: const EdgeInsets.only(left: 15),
//                   child: Column(children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
//                       child: Row(
//                         children: const [
//                           Icon(Icons.save_alt),
//                           SizedBox(width: 15),
//                           Expanded(
//                               child: Text('Saved Messages',
//                                   style: TextStyle(fontSize: 17))),
//                           Icon(Icons.chevron_right)
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 7.5, bottom: 10),
//                       child: Row(
//                         children: const [
//                           Icon(Icons.call),
//                           SizedBox(width: 15),
//                           Expanded(
//                               child: Text('Recent Calls',
//                                   style: TextStyle(fontSize: 17))),
//                           Icon(Icons.chevron_right)
//                         ],
//                       ),
//                     ),
//                     Row(
//                       children: const [
//                         Icon(Icons.sticky_note_2),
//                         SizedBox(width: 15),
//                         Expanded(
//                             child: Text('Stickers',
//                                 style: TextStyle(fontSize: 17))),
//                         Icon(Icons.chevron_right)
//                       ],
//                     ),
//                   ]),
//                 ))
