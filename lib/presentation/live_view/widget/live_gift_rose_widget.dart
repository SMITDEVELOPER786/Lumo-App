import 'package:flutter/material.dart';

class LiveGiftRoseWidget extends StatelessWidget {
  const LiveGiftRoseWidget({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      width: MediaQuery.of(context).size.width * .25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: AssetImage('assets/images/Dizzy.png')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Image(image: AssetImage('assets/images/Rose (1).png')),
              ),
              Image(image: AssetImage('assets/images/Bouquet.png')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Image(image: AssetImage('assets/images/Rose (5).png')),
              ),
              Image(image: AssetImage('assets/images/Rose (4).png')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Image(image: AssetImage('assets/images/Rose (3).png')),
              ),
              Image(image: AssetImage('assets/images/Rose (2).png')),
            ],
          ),
          Image(
              image: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/7bce/5cfc/452c4d0ea76481024d93e9176c944517?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mJC2JA2ozKMXxUHZNm8Kdih10YOR9VGxKpNhDhKWDg3beT~e3iKf3rSfplH4ddtqQTmBkeLG96Ms7xcmqPvIEsQridFwXYwRefGjplxVGwn5eNViMB3ctR4dHMGyXZ092nm7YvgSAAvSxxa7M9b1eY7ogpODZgutnnhuVAF-giYr1zIe9RShsag5G68kGBRr-1o8e7OmeQm9vh24B5NI8NWEIjgSSqEuNIzJMqg1AptDZKwZ7ox4hTZCQOxtCBTZaqVsER3mfZCq2KWbWX1BtOixqSTNhDlPjXtTEJotjwLkInrGeIUxMXGMEqQYhWfJGgUwUDcPuYG5wvv~crulWw__')),
        ],
      ),
    );
  }
}
