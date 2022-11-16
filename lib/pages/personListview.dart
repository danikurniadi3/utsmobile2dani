import 'package:tugasflutterdani/widgets/itemList.dart';
import 'package:tugasflutterdani/model/personModel.dart';
import 'package:flutter/material.dart';

class personListview extends StatefulWidget {
  const personListview({super.key});
  @override
  State<StatefulWidget> createState() => personListviewState();
}

class personListviewState extends State<personListview> {
  List<personModel> data = [
    personModel(1, "AH", "Annisa Hafitria", "TIF RM 20"),
    personModel(2, "CH", "Candra Herdiansyah", "TIF RM 20"),
    personModel(3, "DK", "Dani Kurniadi", "TIF RM 20"),
    personModel(4, "GR", "Gilang Restandi", "TIF RM 20"),
    personModel(5, "HR", "Haryanto Riswanda", "TIF RM 20"),
    personModel(6, "FAA", "Fahri Agil Anderson", "TIF RM 20"),
    personModel(7, "SJ", "Siti Julaeha", "TIF RM 20"),
    personModel(8, "IHN", "Ihsan Hadi Nugraha", "TIF RM 20"),
    personModel(9, "NNS", "Nadiya Nurimara Sumbada", "TIF RM 20"),
    personModel(10, "MMS", "Muhammad Mulki Sukmana", "TIF RM 20"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          "Contact",
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListView.builder(
            padding: EdgeInsets.only(bottom: 24),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemUser(index, data[index], (dataModel) {
                onListClick(dataModel);
              });
            }),
      ),
    );
  }

  onListClick(personModel dataUser) {
    print("Data: " + dataUser.name);
  }
}
