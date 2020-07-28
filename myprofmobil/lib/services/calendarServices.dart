import 'package:date_util/date_util.dart';

class CalendarServices {
  DateUtil myUtilityDate = DateUtil();
  int daysBeforeStart(String day) {
    int index = 0;
    switch (day) {
      case "Monday":
        index = 0;
        break;
      case "Tuesday":
        index = 1;
        break;
      case "Wednesday":
        index = 2;
        break;
      case "Thursday":
        index = 3;
        break;
      case "Friday":
        index = 4;
        break;
      case "Saturday":
        index = 5;
        break;
      case "Sunday":
        index = 6;
        break;
      default:
        index = 0;
    }
    // print("Nombre de jour avent le debut du moi $index");
    return index;
  }

  List<DateTime> generateAgendat(DateTime myDate) {
    List<DateTime> myCalendar = [];
    var myDateUtility = DateUtil();
    var nbrDayInMonth = myDateUtility.daysInMonth(myDate.month, myDate.year);
    DateTime lastMonth = DateTime(myDate.year, myDate.month - 1);
    var nbrDayLastMonth =
        myDateUtility.daysInMonth(lastMonth.month, lastMonth.year);
    var totalDayFirst = myDateUtility.totalLengthOfDays(
        myDate.month, (nbrDayInMonth - nbrDayInMonth + 1), myDate.year);
    var totalDayLast = myDateUtility.totalLengthOfDays(
        myDate.month, nbrDayInMonth, myDate.year);
    String startDay = myDateUtility.day(totalDayFirst);
    String endDay = myDateUtility.day(totalDayLast);

    // Creation du debut du calendrier (les dates du mois precedant)
    for (var i = 0; i < daysBeforeStart(startDay); i++) {
      DateTime newDate =
          DateTime(myDate.year, myDate.month - 1, nbrDayLastMonth - i);
      myCalendar.insert(0, newDate);
    }
    //Contenu du calendrier (les date du moi courent )
    for (var i = 0; i < nbrDayInMonth; i++) {
      DateTime newDate = DateTime(myDate.year, myDate.month, i + 1);
      myCalendar.add(newDate);
    }
    //Fin du calendrier (les dates du moin suivent )
    for (var i = 0;
        i < (42 - (nbrDayInMonth + daysBeforeStart(startDay)));
        i++) {
      DateTime newDate = DateTime(myDate.year, myDate.month + 1, i + 1);
      myCalendar.add(newDate);
    }
    // print("Taille du Calendrier ${myCalendar.length}");
    // print("End Calendar Function $myCalendar");
    return myCalendar;
  }

  List<DateTime> generateWeek(DateTime myDate,int weekIndex){
    List<DateTime> myWeekList = [];
    List<DateTime> myCalandarList = this.generateAgendat(myDate);
    switch (weekIndex) {
      case 1:
        for(int i=0;i<7;i++){
          myWeekList.add(myCalandarList[i]);
        }
        break;
      case 2:
        for(int i=0;i<7;i++){
          myWeekList.add(myCalandarList[7+i]);
        }
        break;
      case 3:
        for(int i=0;i<7;i++){
          myWeekList.add(myCalandarList[2*7+i]);
        }
        break;
      case 4:
        for(int i=0;i<7;i++){
          myWeekList.add(myCalandarList[3*7+i]);
        }
        break;
      case 5:
        for(int i=0;i<7;i++){
          myWeekList.add(myCalandarList[4*7+i]);
        }
        break;
      case 6:
        for(int i=0;i<7;i++){
          myWeekList.add(myCalandarList[5*7+i]);
        }
        break;
      default:
    }
    return myWeekList;
  }
  bool isToday(DateTime myDate){
    DateTime today = DateTime.now();
    return today.day == myDate.day && today.month == myDate.month && today.year == myDate.year;
  }

  bool isMonth(DateTime myDate){
    DateTime today = DateTime.now();
    return today.day == myDate.day && today.month == myDate.month ;
  }
  String strMonth(DateTime myDate){
    return myUtilityDate.month(myDate.month);
  }
  String strDay(DateTime myDate){
    return myUtilityDate.day(myUtilityDate.totalLengthOfDays(myDate.month, myDate.day, myDate.year));
  }
}
