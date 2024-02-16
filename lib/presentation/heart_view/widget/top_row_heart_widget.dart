import 'package:flutter/material.dart';

class TopRowHeartWidget extends StatelessWidget {
  const TopRowHeartWidget({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .92,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(20),
                )),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/2815/bb75/21b5dcaf90cdb04906904db9f4be7aff?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SvKz0FR6blRCJm~WZqv5Ts2vCkfUfVCWV0j0cJvIfjd7N4MODX1KBkcGyqnn0D~81A04dk6C0tq5babu8Xvxg-WD-vee4WYA90-1vM1PQeK5mf4VWiIxg3eAUhPF7~OEOuClYC8mwp8u1qq8KsBGeF9pL9R1ziKpyvxcI-61uzhD~1VPO99b5EKCaJN8121oMrGuvXqmVnS69D~XsZwbBOgKb7jJGRFZupkeXtuQkxEXrDHI8GwIz2i2Dxy21~jyemKC-nSvjvVuOtszA-mi6wlD~I6Y0vPtzDnQ~tmgXuYF~MklCrm0KKrh0oBFNmxgrmFy3qC-lCN6IZydBVJlOw__'),
                    width: 20,
                    height: 20,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Text(
                      'Dream gi..',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                      overflow: TextOverflow.clip,
                    ),
                    Text(
                      'ID 022222',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                      overflow: TextOverflow.clip,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  padding: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.white))),
                  child: Stack(
                    children: [
                      Image(
                        image: AssetImage('assets/images/purple_heart.png'),
                        width: 20,
                      ),
                      Positioned(
                        left: 6,
                        child: Center(
                          child: Text(
                            '+',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://s3-alpha-sig.figma.com/img/2815/bb75/21b5dcaf90cdb04906904db9f4be7aff?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SvKz0FR6blRCJm~WZqv5Ts2vCkfUfVCWV0j0cJvIfjd7N4MODX1KBkcGyqnn0D~81A04dk6C0tq5babu8Xvxg-WD-vee4WYA90-1vM1PQeK5mf4VWiIxg3eAUhPF7~OEOuClYC8mwp8u1qq8KsBGeF9pL9R1ziKpyvxcI-61uzhD~1VPO99b5EKCaJN8121oMrGuvXqmVnS69D~XsZwbBOgKb7jJGRFZupkeXtuQkxEXrDHI8GwIz2i2Dxy21~jyemKC-nSvjvVuOtszA-mi6wlD~I6Y0vPtzDnQ~tmgXuYF~MklCrm0KKrh0oBFNmxgrmFy3qC-lCN6IZydBVJlOw__'),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://s3-alpha-sig.figma.com/img/2815/bb75/21b5dcaf90cdb04906904db9f4be7aff?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SvKz0FR6blRCJm~WZqv5Ts2vCkfUfVCWV0j0cJvIfjd7N4MODX1KBkcGyqnn0D~81A04dk6C0tq5babu8Xvxg-WD-vee4WYA90-1vM1PQeK5mf4VWiIxg3eAUhPF7~OEOuClYC8mwp8u1qq8KsBGeF9pL9R1ziKpyvxcI-61uzhD~1VPO99b5EKCaJN8121oMrGuvXqmVnS69D~XsZwbBOgKb7jJGRFZupkeXtuQkxEXrDHI8GwIz2i2Dxy21~jyemKC-nSvjvVuOtszA-mi6wlD~I6Y0vPtzDnQ~tmgXuYF~MklCrm0KKrh0oBFNmxgrmFy3qC-lCN6IZydBVJlOw__'),
          ),
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: Color.fromARGB(255, 196, 183, 14)),
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                Text('12', style: TextStyle(fontSize: 12, color: Colors.white))
              ],
            ),
          )
        ],
      ),
    );
  }
}
