import 'package:add_2_calendar/add_2_calendar.dart';

void ajouterCalandar(String jour, String mois) {
  Event evenement = Event(
    title: 'darwin evenement',
    startDate: DateTime.parse(
      "2022-" + mois.toString() + "-" + mois.toString(),
    ),
    endDate: DateTime.parse(
      "2022-" + mois.toString() + "-" + mois.toString(),
    ),
  );

  Add2Calendar.addEvent2Cal(evenement);
  print("Bien ajouter");
}
