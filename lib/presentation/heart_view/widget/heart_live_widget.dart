import 'package:flutter/material.dart';
class HeartLiveWidget extends StatelessWidget {
  const HeartLiveWidget({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .4,
      width: MediaQuery.of(context).size.width * .92,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/heart.png',
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          Positioned(
            // top:,
            left: MediaQuery.of(context).size.width * .08,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/2815/bb75/21b5dcaf90cdb04906904db9f4be7aff?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SvKz0FR6blRCJm~WZqv5Ts2vCkfUfVCWV0j0cJvIfjd7N4MODX1KBkcGyqnn0D~81A04dk6C0tq5babu8Xvxg-WD-vee4WYA90-1vM1PQeK5mf4VWiIxg3eAUhPF7~OEOuClYC8mwp8u1qq8KsBGeF9pL9R1ziKpyvxcI-61uzhD~1VPO99b5EKCaJN8121oMrGuvXqmVnS69D~XsZwbBOgKb7jJGRFZupkeXtuQkxEXrDHI8GwIz2i2Dxy21~jyemKC-nSvjvVuOtszA-mi6wlD~I6Y0vPtzDnQ~tmgXuYF~MklCrm0KKrh0oBFNmxgrmFy3qC-lCN6IZydBVJlOw__'),
            ),
          ),
          Positioned(
            // top:,
            right: MediaQuery.of(context).size.width * .08,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/2815/bb75/21b5dcaf90cdb04906904db9f4be7aff?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SvKz0FR6blRCJm~WZqv5Ts2vCkfUfVCWV0j0cJvIfjd7N4MODX1KBkcGyqnn0D~81A04dk6C0tq5babu8Xvxg-WD-vee4WYA90-1vM1PQeK5mf4VWiIxg3eAUhPF7~OEOuClYC8mwp8u1qq8KsBGeF9pL9R1ziKpyvxcI-61uzhD~1VPO99b5EKCaJN8121oMrGuvXqmVnS69D~XsZwbBOgKb7jJGRFZupkeXtuQkxEXrDHI8GwIz2i2Dxy21~jyemKC-nSvjvVuOtszA-mi6wlD~I6Y0vPtzDnQ~tmgXuYF~MklCrm0KKrh0oBFNmxgrmFy3qC-lCN6IZydBVJlOw__'),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .05,
            left: MediaQuery.of(context).size.width * .4,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/2815/bb75/21b5dcaf90cdb04906904db9f4be7aff?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SvKz0FR6blRCJm~WZqv5Ts2vCkfUfVCWV0j0cJvIfjd7N4MODX1KBkcGyqnn0D~81A04dk6C0tq5babu8Xvxg-WD-vee4WYA90-1vM1PQeK5mf4VWiIxg3eAUhPF7~OEOuClYC8mwp8u1qq8KsBGeF9pL9R1ziKpyvxcI-61uzhD~1VPO99b5EKCaJN8121oMrGuvXqmVnS69D~XsZwbBOgKb7jJGRFZupkeXtuQkxEXrDHI8GwIz2i2Dxy21~jyemKC-nSvjvVuOtszA-mi6wlD~I6Y0vPtzDnQ~tmgXuYF~MklCrm0KKrh0oBFNmxgrmFy3qC-lCN6IZydBVJlOw__'),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .08,
            left: MediaQuery.of(context).size.width * .02,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/2815/bb75/21b5dcaf90cdb04906904db9f4be7aff?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SvKz0FR6blRCJm~WZqv5Ts2vCkfUfVCWV0j0cJvIfjd7N4MODX1KBkcGyqnn0D~81A04dk6C0tq5babu8Xvxg-WD-vee4WYA90-1vM1PQeK5mf4VWiIxg3eAUhPF7~OEOuClYC8mwp8u1qq8KsBGeF9pL9R1ziKpyvxcI-61uzhD~1VPO99b5EKCaJN8121oMrGuvXqmVnS69D~XsZwbBOgKb7jJGRFZupkeXtuQkxEXrDHI8GwIz2i2Dxy21~jyemKC-nSvjvVuOtszA-mi6wlD~I6Y0vPtzDnQ~tmgXuYF~MklCrm0KKrh0oBFNmxgrmFy3qC-lCN6IZydBVJlOw__'),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .08,
            right: MediaQuery.of(context).size.width * .02,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/2815/bb75/21b5dcaf90cdb04906904db9f4be7aff?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SvKz0FR6blRCJm~WZqv5Ts2vCkfUfVCWV0j0cJvIfjd7N4MODX1KBkcGyqnn0D~81A04dk6C0tq5babu8Xvxg-WD-vee4WYA90-1vM1PQeK5mf4VWiIxg3eAUhPF7~OEOuClYC8mwp8u1qq8KsBGeF9pL9R1ziKpyvxcI-61uzhD~1VPO99b5EKCaJN8121oMrGuvXqmVnS69D~XsZwbBOgKb7jJGRFZupkeXtuQkxEXrDHI8GwIz2i2Dxy21~jyemKC-nSvjvVuOtszA-mi6wlD~I6Y0vPtzDnQ~tmgXuYF~MklCrm0KKrh0oBFNmxgrmFy3qC-lCN6IZydBVJlOw__'),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .18,
            left: MediaQuery.of(context).size.width * .06,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/2815/bb75/21b5dcaf90cdb04906904db9f4be7aff?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SvKz0FR6blRCJm~WZqv5Ts2vCkfUfVCWV0j0cJvIfjd7N4MODX1KBkcGyqnn0D~81A04dk6C0tq5babu8Xvxg-WD-vee4WYA90-1vM1PQeK5mf4VWiIxg3eAUhPF7~OEOuClYC8mwp8u1qq8KsBGeF9pL9R1ziKpyvxcI-61uzhD~1VPO99b5EKCaJN8121oMrGuvXqmVnS69D~XsZwbBOgKb7jJGRFZupkeXtuQkxEXrDHI8GwIz2i2Dxy21~jyemKC-nSvjvVuOtszA-mi6wlD~I6Y0vPtzDnQ~tmgXuYF~MklCrm0KKrh0oBFNmxgrmFy3qC-lCN6IZydBVJlOw__'),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .18,
            right: MediaQuery.of(context).size.width * .06,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/2815/bb75/21b5dcaf90cdb04906904db9f4be7aff?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SvKz0FR6blRCJm~WZqv5Ts2vCkfUfVCWV0j0cJvIfjd7N4MODX1KBkcGyqnn0D~81A04dk6C0tq5babu8Xvxg-WD-vee4WYA90-1vM1PQeK5mf4VWiIxg3eAUhPF7~OEOuClYC8mwp8u1qq8KsBGeF9pL9R1ziKpyvxcI-61uzhD~1VPO99b5EKCaJN8121oMrGuvXqmVnS69D~XsZwbBOgKb7jJGRFZupkeXtuQkxEXrDHI8GwIz2i2Dxy21~jyemKC-nSvjvVuOtszA-mi6wlD~I6Y0vPtzDnQ~tmgXuYF~MklCrm0KKrh0oBFNmxgrmFy3qC-lCN6IZydBVJlOw__'),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .25,
            left: MediaQuery.of(context).size.width * .25,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/2815/bb75/21b5dcaf90cdb04906904db9f4be7aff?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SvKz0FR6blRCJm~WZqv5Ts2vCkfUfVCWV0j0cJvIfjd7N4MODX1KBkcGyqnn0D~81A04dk6C0tq5babu8Xvxg-WD-vee4WYA90-1vM1PQeK5mf4VWiIxg3eAUhPF7~OEOuClYC8mwp8u1qq8KsBGeF9pL9R1ziKpyvxcI-61uzhD~1VPO99b5EKCaJN8121oMrGuvXqmVnS69D~XsZwbBOgKb7jJGRFZupkeXtuQkxEXrDHI8GwIz2i2Dxy21~jyemKC-nSvjvVuOtszA-mi6wlD~I6Y0vPtzDnQ~tmgXuYF~MklCrm0KKrh0oBFNmxgrmFy3qC-lCN6IZydBVJlOw__'),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .25,
            right: MediaQuery.of(context).size.width * .25,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/2815/bb75/21b5dcaf90cdb04906904db9f4be7aff?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SvKz0FR6blRCJm~WZqv5Ts2vCkfUfVCWV0j0cJvIfjd7N4MODX1KBkcGyqnn0D~81A04dk6C0tq5babu8Xvxg-WD-vee4WYA90-1vM1PQeK5mf4VWiIxg3eAUhPF7~OEOuClYC8mwp8u1qq8KsBGeF9pL9R1ziKpyvxcI-61uzhD~1VPO99b5EKCaJN8121oMrGuvXqmVnS69D~XsZwbBOgKb7jJGRFZupkeXtuQkxEXrDHI8GwIz2i2Dxy21~jyemKC-nSvjvVuOtszA-mi6wlD~I6Y0vPtzDnQ~tmgXuYF~MklCrm0KKrh0oBFNmxgrmFy3qC-lCN6IZydBVJlOw__'),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .35,
            right: MediaQuery.of(context).size.width * .4,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/2815/bb75/21b5dcaf90cdb04906904db9f4be7aff?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SvKz0FR6blRCJm~WZqv5Ts2vCkfUfVCWV0j0cJvIfjd7N4MODX1KBkcGyqnn0D~81A04dk6C0tq5babu8Xvxg-WD-vee4WYA90-1vM1PQeK5mf4VWiIxg3eAUhPF7~OEOuClYC8mwp8u1qq8KsBGeF9pL9R1ziKpyvxcI-61uzhD~1VPO99b5EKCaJN8121oMrGuvXqmVnS69D~XsZwbBOgKb7jJGRFZupkeXtuQkxEXrDHI8GwIz2i2Dxy21~jyemKC-nSvjvVuOtszA-mi6wlD~I6Y0vPtzDnQ~tmgXuYF~MklCrm0KKrh0oBFNmxgrmFy3qC-lCN6IZydBVJlOw__'),
            ),
          ),
        ],
      ),
    );
  }
}
