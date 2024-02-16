import 'package:flutter/material.dart';

import 'alert_dialog_widget.dart';

class LiveTopWidget extends StatelessWidget {
  const LiveTopWidget({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.50,
          child: Row(children: [
            Stack(
              children: [
                Positioned(
                  top: 12,
                  left: 8,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        // 'https://s3-alpha-sig.figma.com/img/0e07/315f/035f39e227a82d3bcaf9df33331532c6?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=kXUU~nfIjGZkiT34zIf4p0S~6YYhiOVl5k51feFKFIcjMHIUpLuh8AnPYE0AluCQiC2XU0THQxE4T1BvfTPe1bA2PA4dJZg7pzRkTu~HF0pxuH2JZWti6QssbQLjQPGwmOTAyF7-xdRVDEJyQIkEgJ76o-wVPyfZ1srDWhN462vr4LmPTCel9OAQsmw02Q8NodnsDmPJv3jRRofYTVge0LpclmK5On7vicHMPriNXbpAor8E5cXWLKEVG3RGc~eWUTY1Uu-DphxSXn-0nzcV6qQP4xeYk8FitMqDEGBNMUTobw0W1hHZRWPxUiQZFuHwk16VSUyqHI~tRmRY6P~KEw__'
                        'https://s3-alpha-sig.figma.com/img/4808/eeda/1e024d21ec7e518248fa33817288de3e?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Ky5AQ3ualPiEuztOHnRtSEOzV2GQULEYC2wYk2uzMzR6iPDJU4caDMfpOiY5wMY7XIvVrpkQvK6dZwj1cKdgDwMQCFDh64izUQMzmplFkGVRXQsxu-SJBEq0cexvGJEdLG9LEHCuolNn4v3yEGt2X9JqUd0u2huXRIn~gbNofml1sCfyOSaSzqUyMRsgSzmpLm5aU6qULOFEJp0ZDHLf2Z2zD~pU2VXzG45SMKF-cK1H-tdM2WVr-8TtMnfA6iUexgWEDXEnsrsXptXBFdjwZ0T4z3LUIjhPSPkl3RHUfB71jaeiLsDk5H7orzh5aSr9uofS3mpCOAmRQzQBuq3Qbg__'),
                    radius: 10,
                    // child: ,
                  ),
                ),
                Image.network(
                  'https://s3-alpha-sig.figma.com/img/0e07/315f/035f39e227a82d3bcaf9df33331532c6?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=kXUU~nfIjGZkiT34zIf4p0S~6YYhiOVl5k51feFKFIcjMHIUpLuh8AnPYE0AluCQiC2XU0THQxE4T1BvfTPe1bA2PA4dJZg7pzRkTu~HF0pxuH2JZWti6QssbQLjQPGwmOTAyF7-xdRVDEJyQIkEgJ76o-wVPyfZ1srDWhN462vr4LmPTCel9OAQsmw02Q8NodnsDmPJv3jRRofYTVge0LpclmK5On7vicHMPriNXbpAor8E5cXWLKEVG3RGc~eWUTY1Uu-DphxSXn-0nzcV6qQP4xeYk8FitMqDEGBNMUTobw0W1hHZRWPxUiQZFuHwk16VSUyqHI~tRmRY6P~KEw__',
                  height: 40,
                ),
              ],
            ),
            SizedBox(
              width: 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Empress Huh',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Row(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/592c/d0b3/3be8c92aa97b1435a2d50d9905642ffa?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fMxWHm32uC7vtERyiclU-1Tvmjrle6iSFOZBlda5XcGGkgoNQpWhYZD~FUoe9ShmIHH-bECJ8Pu-cm7YRT0NGuAtnYl6Iy72dEE7mUNELtrtLydhLzIDyzdQN17PKT7~VM-tP6T0GHNRiyz5ORgfwi~unCW87n0kzf1Rp6KOsoVuDQKuJlLuZGMlfYsWZpaTAtykcSiLxZOKY4mjLUcrhElXuZKKxoXw9a7de8VjBPaLY9TlYGJ45RDitnc~Bi2rt1B74Uql1~QX7zIbtLQ1W42Athx4X4VVmJwpLNKdDFiu3NRrju3FthPMNRltVZwsFYYT7n-iTf-stF1j37IU1A__'),
                      height: 10,
                    ),
                    Text(
                      '20,000',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  // color: Colors.
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xffF5EC21),
                        Color(0xff119645),
                      ])),
              child: Icon(Icons.add, color: Colors.white),
            )
          ]),
        ),
        Container(
          child: Row(
            children: [
              Image(image: AssetImage('assets/images/Group 1000004154.png')),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/f849/d5ea/f656a3ed9e177ba7af1177a9e5a63277?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dF7OlMLQjOm~sqXRyeFSKFk-64xKA9gZ331eUcHzHJfQ~AWPMd1fVB7olQ6wDtEppHpoe0-zOaf5mbdPN2wpuVH~J8mOHODxc-udXvt1BEdNK9kUy-zb8UMGbEFWDpIu79K8uXu8yylKYsP-YUwRh13xduvo488yPB5-M0ssg8SMKc5OjcU0LS4DTmS7UX4DpCJ~OknqC6dqQ2lrSQgmtLETWs2Ll-Q1gGUA~-SA1loZvNQB6ligLOrqiAyfsbwJzAWgwPNWCZpVABWIDZPxV3Br~54TmZyP1vAFOCnmdZWph8ymHhXkfHoS-Jt6lS5G~mabrAeNYQ5O5FLIo1SDyQ__'),
                radius: 10,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/f1e7/28c8/1136025699e45e2aa64331f575901c84?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=eUGJI5fSyWBhBuSyynfFLTT3GAANSpO4wj2Ts8rGmWI2UyUU~cack11AjnHhabLXtUzlHFKO2Rg-QzsN2GLPPYxuEUXwkbdvYeWAedGWmcj8RdmEK4JR03r4IXfusdYqj8hd74ANE0nXz-OhGg3t4mjT4x~3RXzCvF~fGjBC1PlZ-x0yksePy0iGBoK0k~wHuN~~-1em139v8yf35P0G7y11fg3oCLIvgbkF0eL6ouYpr~DZeFZb1N0uZEDRWfSVs3V-JC1Zn07nJwTLRxO-3oGr7rB1U-6YNMZRGFEc7lpfgAN541hX09AOyLG8D2KI4lowGwTMwbFvzIgzEIUPAg__'),
                radius: 10,
              ),
              Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    '200',
                    style: TextStyle(color: Colors.white),
                  )),
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialogWidget();
                      },
                    );
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
