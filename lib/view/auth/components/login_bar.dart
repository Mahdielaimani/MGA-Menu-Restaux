part of 'pack_components.dart';

class LoginBar extends StatefulWidget {
  const LoginBar({super.key});

  @override
  State<LoginBar> createState() => _LoginBarState();
}

class _LoginBarState extends State<LoginBar> {
  String _selectedLanguage = 'English';

  List<String> _languages = ['English', 'Arabic', 'French'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 70,
          height: 60,
          child: Image.asset(AppAssets.kLogo),
        ),
        const Text(
          'Restaux',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.red,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Container(
          child: DropdownButton<String>(
            focusColor: AppColors.transpColor,
            underline: Container(
              color: AppColors.transpColor,
            ),
            value: _selectedLanguage,
            icon: const Icon(Icons.arrow_drop_down),
            style: const TextStyle(
                color: AppColors.kPurpleColor,
                fontSize: 14,
                fontWeight: FontWeight.w400),
            onChanged: (String? newValue) {
              setState(() {
                _selectedLanguage = newValue!;
              });
            },
            items: _languages.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: SizedBox(
                  child: Center(
                    child: Text(value),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
