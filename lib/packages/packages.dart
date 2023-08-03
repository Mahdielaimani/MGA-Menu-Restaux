import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:uuid/uuid.dart';
import '../core/constant/assets.dart';
import '../core/logic/blocs/menu/menu_event.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'dart:convert';
import 'package:get_storage/get_storage.dart';

import '../data/model/payment_model.dart';
import '../routes.dart';

//constantes
part '../core/constant/colors.dart';
part '../core/constant/extension.dart';
part '../core/constant/icons.dart';

//functions
part '../core/functions/functions.dart';

//logic
part '../core/logic/blocs/menu/menu_bloc.dart';
part '../core/logic/blocs/menu/menu_state.dart';

//ui
part '../core/ui/responsive_condition.dart';

//api
part '../data/api/api.dart';

//model
part '../data/model/menu_model.dart';

//login

part '../view/screens/auth/login_components.dart';
part '../view/screens/auth/login_screen.dart';
part '../view/customs/custom_botton.dart';
part '../view/customs/custom_card.dart';

//customers

part '../view/screens/customers/customers_components.dart';
part '../view/screens/customers/customers_screen.dart';

//dashboard
part '../view/screens/dashboard/dashboard_screen.dart';

//fedbacks
part '../view/screens/feedbacks/feedbacks_components.dart';
part '../view/screens/feedbacks/feedbacks_screen.dart';

//menu
part '../view/screens/menu/menu_screen.dart';
part '../view/screens/menu/scratch_menu.dart';
part '../view/screens/menu/menu_components.dart';

//menuContainer
part '../view/screens/menu/container/create_menu_container.dart';
part '../view/screens/menu/container/item_container.dart';
part '../view/screens/menu/container/section_container.dart';

//menuPages
part '../view/screens/menu/pages/list_menu_items.dart';
part '../view/screens/menu/pages/modifers.dart';
part '../view/screens/menu/pages/code_promo.dart';
part '../view/screens/menu/pages/archive.dart';
part '../view/screens/menu/pages/promotion.dart';

//orders
part '../view/screens/orders/orders_screen.dart';
part '../view/screens/orders/orders_components.dart';

//paymentSystem
part '../view/screens/payment/payment_screen.dart.dart';
part '../view/screens/payment/payment_components.dart';

//recomendations
part '../view/screens/recommendations/recommendation_screen.dart';
part '../view/screens/recommendations/recomendation_components.dart';

//reports
part '../view/screens/reports/reports_screen.dart';
part '../view/screens/reports/reports_components.dart';

//transaltions
part '../view/screens/translation/translate_screen.dart';
part '../view/screens/translation/translation_components.dart';

//venuSettings
part '../view/screens/venuesettings/venue_settings_screen.dart';

//widgets
part '../view/widgets/side_menubar.dart';
part '../view/widgets/appbars.dart';
part '../view/widgets/topcards_icons.dart';
