import 'package:flutter/material.dart';

class PkImageTopCard extends StatelessWidget {
  const PkImageTopCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // he
      decoration: BoxDecoration(
          color: Color(0xff0F0E0E), borderRadius: BorderRadius.circular(20)),
      child: Row(children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            'https://s3-alpha-sig.figma.com/img/0e07/315f/035f39e227a82d3bcaf9df33331532c6?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=kXUU~nfIjGZkiT34zIf4p0S~6YYhiOVl5k51feFKFIcjMHIUpLuh8AnPYE0AluCQiC2XU0THQxE4T1BvfTPe1bA2PA4dJZg7pzRkTu~HF0pxuH2JZWti6QssbQLjQPGwmOTAyF7-xdRVDEJyQIkEgJ76o-wVPyfZ1srDWhN462vr4LmPTCel9OAQsmw02Q8NodnsDmPJv3jRRofYTVge0LpclmK5On7vicHMPriNXbpAor8E5cXWLKEVG3RGc~eWUTY1Uu-DphxSXn-0nzcV6qQP4xeYk8FitMqDEGBNMUTobw0W1hHZRWPxUiQZFuHwk16VSUyqHI~tRmRY6P~KEw__',
          ),
          radius: 10,
          // child: ,
        ),
      
        SizedBox(
          width: 2,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Empress Huh',
              style: TextStyle(color: Colors.white, fontSize: 8),
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
                  style: TextStyle(color: Colors.white, fontSize: 8),
                )
              ],
            )
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 6),
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
    );
  }
}
