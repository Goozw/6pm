//INSERT TEST ENTRIES INTO MATCHEDSESSION, UNMATCHEDSESSION, PROFILE
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InitDBWidget extends StatelessWidget {
  final CollectionReference profileCollection =
      Firestore.instance.collection('Profile');
  final CollectionReference unmatchedCollection =
      Firestore.instance.collection('UnmatchedSession');
  final CollectionReference matchedCollection =
      Firestore.instance.collection('MatchedSession');

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> profileList = new List();
    List<Map<String, Object>> unmatchedList = new List();
    List<Map<String, Object>> matchedList = new List();
    Map<String, Object> data;

//Profiles
    data = <String, Object>{
      'DOB': '1991-01-01',
      'currentRating': 4.67,
      'email': 'testing@gmail.com',
      'firstName': 'Alex',
      'gender': 'male',
      'hourSum': 10,
      'interest': 'Programming',
      'strength': 'Programming',
      'lastName': 'Ang',
      'level': 'Pro',
      'numOfSession': 5,
      'username': 'Alex123',
    };
    profileList.add(data);
    data = <String, Object>{
      'DOB': '1994-04-04',
      'currentRating': 5,
      'email': 'testing2@gmail.com',
      'firstName': 'Betty',
      'gender': 'female',
      'hourSum': 0,
      'interest': 'Exercise',
      'strength': 'Yoga, Workout',
      'lastName': 'Boop',
      'level': 'Newbie',
      'numOfSession': 0,
      'username': 'BBoop',
    };
    profileList.add(data);
    data = <String, Object>{
      'DOB': '1993-03-03',
      'currentRating': 2.5,
      'email': 'testing3@gmail.com',
      'firstName': 'Charlie',
      'gender': 'male',
      'hourSum': 2,
      'interest': 'Gaming',
      'strength': 'Studying',
      'lastName': 'Cooper',
      'level': 'Newbie',
      'numOfSession': 2,
      'username': 'Charli3',
    };
    profileList.add(data);
    data = <String, Object>{
      'DOB': '1997-06-01',
      'currentRating': 4.9,
      'email': 'testing4@gmail.com',
      'firstName': 'Debbie',
      'gender': 'female',
      'hourSum': 8,
      'interest': 'Movies, Music',
      'strength': 'Everything',
      'lastName': 'Danvers',
      'level': 'Newbie',
      'numOfSession': 3,
      'username': 'DebDan',
    };
    profileList.add(data);
//Unmatched Sessions
    data = <String, Object>{
      'ID': '1',
      'location': 'ClubFITT - Bedok',
      'startTime': '13:00',
      'endTime': '14:00',
      'date': '03/04/2019',
      'startDateTime': DateTime.parse('2019-04-03 13:00:00'),
      'level': 'Newbie',
      'focus': 'HIIT',
      'sameGender': false,
      'userID': 'UCAaloSVi7VYLhfCKnIQA3AbLsw2',
      'userGender': 'male',
      'isMatched': false,
      'numHour': 1,
    };
    unmatchedList.add(data);
    data = <String, Object>{
      'ID': '2',
      'location': 'Bikram Yoga',
      'startTime': '15:00',
      'endTime': '17:00',
      'date': '04/04/2019',
      'startDateTime': DateTime.parse('2019-04-04 15:00:00'),
      'level': 'Newbie',
      'focus': 'Yoga',
      'sameGender': true,
      'userID': 'pojzyU9QGNXigpTpCzMWI0Z4TaJ3',
      'userGender': 'female',
      'isMatched': false,
      'numHour': 2,
    };
    unmatchedList.add(data);
    data = <String, Object>{
      'ID': '3',
      'location': 'Jagsport',
      'startTime': '11:00',
      'endTime': '13:00',
      'date': '03/04/2019',
      'startDateTime': DateTime.parse('2019-04-03 11:00:00'),
      'level': 'Pro',
      'focus': 'Boxing',
      'sameGender': false,
      'userID': 'Fw4CaMn15mhgEz9OOoav2OEc8cF3',
      'userGender': 'male',
      'isMatched': false,
      'numHour': 2,
    };
    unmatchedList.add(data);
    data = <String, Object>{
      'ID': '4',
      'location': 'Pilates Flow',
      'startTime': '10:00',
      'endTime': '11:00',
      'date': '04/04/2019',
      'startDateTime': DateTime.parse('2019-04-04 10:00:00'),
      'level': 'Newbie',
      'focus': 'Aerobics',
      'sameGender': true,
      'userID': 'MGIRsDXZWvMAmhDARzFSQyu4MbI3',
      'userGender': 'female',
      'isMatched': false,
      'numHour': 1,
    };
    unmatchedList.add(data);
    data = <String, Object>{
      'ID': '5',
      'location': 'The Pit',
      'startTime': '10:00',
      'endTime': '12:00',
      'date': '04/04/2019',
      'startDateTime': DateTime.parse('2019-04-04 10:00:00'),
      'level': 'Pro',
      'focus': 'Strength',
      'sameGender': false,
      'userID': 'UCAaloSVi7VYLhfCKnIQA3AbLsw2',
      'userGender': 'male',
      'isMatched': false,
      'numHour': 2,
    };
    unmatchedList.add(data);
    data = <String, Object>{
      'ID': '6',
      'location': 'Yaatra',
      'startTime': '16:00',
      'endTime': '17:00',
      'date': '03/04/2019',
      'startDateTime': DateTime.parse('2019-04-03 16:00:00'),
      'level': 'Pro',
      'focus': 'Burpees',
      'sameGender': true,
      'userID': 'UCAaloSVi7VYLhfCKnIQA3AbLsw2',
      'userGender': 'male',
      'isMatched': false,
      'numHour': 1,
    };
    unmatchedList.add(data);
    data = <String, Object>{
      'ID': '7',
      'location': 'True Fitness - Suntec City',
      'startTime': '06:00',
      'endTime': '10:00',
      'date': '04/04/2019',
      'startDateTime': DateTime.parse('2019-04-04 06:00:00'),
      'level': 'Pro',
      'focus': 'HIIT',
      'sameGender': false,
      'userID': 'pojzyU9QGNXigpTpCzMWI0Z4TaJ3',
      'userGender': 'female',
      'isMatched': false,
      'numHour': 4,
    };
    unmatchedList.add(data);
    data = <String, Object>{
      'ID': '8',
      'location': 'Platinum Yoga',
      'startTime': '19:00',
      'endTime': '21:00',
      'date': '03/04/2019',
      'startDateTime': DateTime.parse('2019-04-03 19:00:00'),
      'level': 'Pro',
      'focus': 'Yoga',
      'sameGender': true,
      'userID': 'pojzyU9QGNXigpTpCzMWI0Z4TaJ3',
      'userGender': 'female',
      'isMatched': false,
      'numHour': 2,
    };
    unmatchedList.add(data);
    data = <String, Object>{
      'ID': '9',
      'location': 'Impakt Singapore',
      'startTime': '11:30',
      'endTime': '1:00',
      'date': '03/04/2019',
      'startDateTime': DateTime.parse('2019-04-03 11:30:00'),
      'level': 'Newbie',
      'focus': 'Strength',
      'sameGender': false,
      'userID': 'Fw4CaMn15mhgEz9OOoav2OEc8cF3',
      'userGender': 'male',
      'isMatched': false,
      'numHour': 1.5,
    };
    unmatchedList.add(data);
    data = <String, Object>{
      'ID': '10',
      'location': 'Evolve MMA - POMO Mall',
      'startTime': '11:30',
      'endTime': '12:30',
      'date': '03/04/2019',
      'startDateTime': DateTime.parse('2019-04-03 11:30:00'),
      'level': 'Pro',
      'focus': 'Strength',
      'sameGender': true,
      'userID': 'MGIRsDXZWvMAmhDARzFSQyu4MbI3',
      'userGender': 'female',
      'isMatched': false,
      'numHour': 1,
    };
    unmatchedList.add(data);

    //Matched Sessions
    data = <String, Object>{
      'ID': '1',
      'location': 'ClubFITT - Bedok',
      'startTime': '13:00',
      'endTime': '15:00',
      'date': '31/03/2019',
      'startDateTime': DateTime.parse('2019-03-31 13:00:00'),
      'focus': 'HIIT',
      'completed': true,
      'userID1': 'MGIRsDXZWvMAmhDARzFSQyu4MbI3',
      'userID2': 'UCAaloSVi7VYLhfCKnIQA3AbLsw2',
      'hasCheckIn1' : true,
      'hasCheckIn2' : true,
      'rate1': 5,
      'rate2': 5,
      'feedback1': 'I\'m so glad I found Alex through this app!',
      'feedback2': 'Debbie is a pretty good partner',
      'numHour': 2,
    };
    matchedList.add(data);
    data = <String, Object>{
      'ID': '2',
      'location': 'Absolute Yoga',
      'startTime': '12:00',
      'endTime': '14:00',
      'date': '01/04/2019',
      'startDateTime': DateTime.parse('2019-04-01 12:00:00'),
      'focus': 'Yoga',
      'completed': true,
      'userID1': 'UCAaloSVi7VYLhfCKnIQA3AbLsw2',
      'userID2': 'MGIRsDXZWvMAmhDARzFSQyu4MbI3',
      'hasCheckIn1' : true,
      'hasCheckIn2' : true,
      'rate1': 4,
      'rate2': 5,
      'feedback1': 'Debbie is pretty decent',
      'feedback2': 'Alex is highly recommended!',
      'numHour': 2,
    };
    matchedList.add(data);
    data = <String, Object>{
      'ID': '3',
      'location': 'Central Pilates',
      'startTime': '10:00',
      'endTime': '14:00',
      'date': '01/04/2019',
      'startDateTime': DateTime.parse('2019-04-01 10:00:00'),
      'focus': 'Aerobics',
      'completed': true,
      'userID1': 'UCAaloSVi7VYLhfCKnIQA3AbLsw2',
      'userID2': 'MGIRsDXZWvMAmhDARzFSQyu4MbI3',
      'hasCheckIn1' : true,
      'hasCheckIn2' : true,
      'rate1': 5,
      'rate2': 5,
      'feedback1': 'I really enjoy doing aerobics with Debbie',
      'feedback2': 'Alex is the best trainer ever',
      'numHour': 4,
    };
    matchedList.add(data);
    data = <String, Object>{
      'ID': '4',
      'location': 'ClubFITT - Tampines',
      'startTime': '13:00',
      'endTime': '14:00',
      'date': '30/03/2019',
      'startDateTime': DateTime.parse('2019-03-30 13:00:00'),
      'focus': 'Boxing',
      'completed': true,
      'userID1': 'UCAaloSVi7VYLhfCKnIQA3AbLsw2',
      'userID2': 'Fw4CaMn15mhgEz9OOoav2OEc8cF3',
      'hasCheckIn1' : true,
      'hasCheckIn2' : true,
      'rate1': 2,
      'rate2': 5,
      'feedback1': 'Charlie kinda sucks',
      'feedback2': 'Alex is a God',
      'numHour': 1,
    };
    matchedList.add(data);
    data = <String, Object>{
      'ID': '5',
      'location': 'Physical ABuse',
      'startTime': '09:00',
      'endTime': '10:00',
      'date': '01/04/2019',
      'startDateTime': DateTime.parse('2019-04-01 09:00:00'),
      'focus': 'Strength',
      'completed': true,
      'userID1': 'UCAaloSVi7VYLhfCKnIQA3AbLsw2',
      'userID2': 'Fw4CaMn15mhgEz9OOoav2OEc8cF3',
      'hasCheckIn1' : true,
      'hasCheckIn2' : true,
      'rate1': 3,
      'rate2': 5,
      'feedback1': 'Charlie could use some improvement',
      'feedback2': 'Alex is amazing',
      'numHour': 1,
    };
    matchedList.add(data);

    return Container(
      padding: EdgeInsets.fromLTRB(50, 20, 0, 0),
      height: 50,
      width: 100,
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        shadowColor: Colors.blueAccent,
        color: Colors.blue,
        elevation: 7.0,
        child: InkWell(
          onTap: () {

            //Insert Safe-State Data
            DocumentReference docToAdd;
            //insert unmatched sessions
            for (int i = 1; i <= 10; i++) {
              docToAdd =
                  Firestore.instance.document('UnmatchedSession/session$i');
              docToAdd.setData(unmatchedList[i-1]).whenComplete(() {
                print("UnmatchedSession/session$i added");
              }).catchError((e) => print(e));
            }
            //insert matched sessions
            for (int i = 1; i <= 5; i++) {
              docToAdd =
                  Firestore.instance.document('MatchedSession/session$i');
              docToAdd.setData(matchedList[i-1]).whenComplete(() {
                print("MatchedSession/session$i added");
              }).catchError((e) => print(e));
            }

            //insert profiles
            docToAdd = Firestore.instance
                .document('Profile/UCAaloSVi7VYLhfCKnIQA3AbLsw2');
            docToAdd.setData(profileList[0]).whenComplete(() {
              print("Profile/UCAaloSVi7VYLhfCKnIQA3AbLsw2 added");
            }).catchError((e) => print(e));

            docToAdd = Firestore.instance
                .document('Profile/pojzyU9QGNXigpTpCzMWI0Z4TaJ3');
            docToAdd.setData(profileList[1]).whenComplete(() {
              print("Profile/pojzyU9QGNXigpTpCzMWI0Z4TaJ3 added");
            }).catchError((e) => print(e));

            docToAdd = Firestore.instance
                .document('Profile/Fw4CaMn15mhgEz9OOoav2OEc8cF3');
            docToAdd.setData(profileList[2]).whenComplete(() {
              print("Profile/Fw4CaMn15mhgEz9OOoav2OEc8cF3 added");
            }).catchError((e) => print(e));

            docToAdd = Firestore.instance
                .document('Profile/MGIRsDXZWvMAmhDARzFSQyu4MbI3');
            docToAdd.setData(profileList[3]).whenComplete(() {
              print("Profile/MGIRsDXZWvMAmhDARzFSQyu4MbI3 added");
            }).catchError((e) => print(e));

            
          },
          child: Center(
              child: Text(
            'InitDB',
            style: TextStyle(
                color: Colors.white, fontSize: 10, fontFamily: 'Montserrat'),
          )),
        ),
      ),
    );
  }
}
