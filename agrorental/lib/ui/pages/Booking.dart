import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReservationPage extends StatefulWidget {
  @override
  _ReservationPageState createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  TextEditingController _startDateController = TextEditingController();
  TextEditingController _endDateController = TextEditingController();
  TextEditingController _locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Effectuer une réservation',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  child: Image(
                    image: NetworkImage("https://picsum.photos/200/300"),
                    fit: BoxFit.cover,
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "New Orleans",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "This a is a super fast car with many eq",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.grey),
              ),
              const SizedBox(
                height: 8,
              ),
              const Divider(
                  thickness: 1, indent: 12, endIndent: 12, color: Colors.grey),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Information de Location",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.grey),
              ),
              const SizedBox(
                height: 8,
              ),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                      controller: _startDateController,
                      onTap: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        ).then((pickedDate) {
                          if (pickedDate != null) {
                            final formattedDate =
                                DateFormat('MM/dd').format(pickedDate);

                            setState(() {
                              _startDateController.text = formattedDate;
                            });
                          }
                        });
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.calendar_month,
                          color: Colors.grey,
                        ),
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.onSecondary,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        hintText: "Date de debut",
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.grey, fontSize: 12),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Veuillez sélectionner une date";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                      controller: _endDateController,
                      onTap: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        ).then((pickedDate) {
                          if (pickedDate != null) {
                            final formattedDate =
                                DateFormat('MM/dd').format(pickedDate);
                            setState(() {
                              _endDateController.text = formattedDate;
                            });
                          }
                        });
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.calendar_month),
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.onSecondary,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        hintText: "Date de remise",
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.grey, fontSize: 12),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Veuillez sélectionner une date";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _locationController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.onSecondary,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(width: 1, color: Colors.white),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(14))),
                  suffixIcon: Icon(
                    Icons.local_shipping,
                    color: Colors.grey,
                  ),
                  hintText: "Adresse de Livraison",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey, fontSize: 16),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Veuillez choisir  une adresse de livraison";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Text(
                  "Information de Paiement",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.grey),
                ),
              ),
            ]),
      )),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: TextButton(
          child: Text(
            "Envoyer la demande",
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
