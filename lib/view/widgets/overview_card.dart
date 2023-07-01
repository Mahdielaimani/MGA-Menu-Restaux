part of 'pack_widgets.dart';

class OverviewCardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 200,
      width: 400,
      child: Column(
        children: [
          InfoCard(
            title: "OverviewCards",
            value: "1",
            onTap: () {},
            isActive: true,
          ),
          SizedBox(
            height: _width / 64,
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final bool isActive;
  final Function onTap;

  const InfoCard(
      {Key? key,
      required this.title,
      required this.value,
      this.isActive = false,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(),
        child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color:
                      isActive ? Colors.green : Colors.orange.withOpacity(0.3),
                  width: 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: title,
                  size: 24,
                  fontWeight: FontWeight.w300,
                  color: isActive ? Colors.black : Colors.grey,
                ),
                CustomText(
                  text: value,
                  size: 24,
                  fontWeight: FontWeight.w300,
                  color: isActive ? Colors.black : Colors.grey,
                )
              ],
            )),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;
  const CustomText(
      {Key? key, required this.text, this.size, this.color, this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.black,
        fontSize: size ?? 16,
      ),
    );
  }
}
