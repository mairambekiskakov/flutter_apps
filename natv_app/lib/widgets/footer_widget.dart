import 'package:flutter/material.dart';
import 'package:natv_app/core/themes/colors.dart';
import 'package:natv_app/screens/about_project.dart';

import 'package:natv_app/screens/legal_entities.dart';
import 'package:natv_app/screens/payment_methods.dart';

import 'package:natv_app/screens/question_answer.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 2,
            color: AppColors.gray,
          ),
        ),
        color: AppColors.backgroundColor,
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AboutProjectWidget()),
              );
            },
            child: const Text('O проекте',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: AppColors.red)),
          ),
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PaymentMethodsWidget()),
              );
            },
            child: const Text('Способы оплаты',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: AppColors.red)),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LegalEntitiesWidget()),
              );
            },
            child: const Text('Для юридических лиц',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: AppColors.red)),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const QuestionAnswerWidget()),
              );
            },
            child: const Text('Вопрос-ответ',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: AppColors.red)),
          ),
          const SizedBox(height: 8),
          const Text('Видеоинструкция по размещению',
              style: TextStyle(
                  decoration: TextDecoration.underline, color: AppColors.red)),
          const SizedBox(height: 8),
          const Text('Договор публичной оферты',
              style: TextStyle(
                  decoration: TextDecoration.underline, color: AppColors.red)),
          const SizedBox(height: 8),
          const Text('Правила заполнения текста',
              style: TextStyle(
                  decoration: TextDecoration.underline, color: AppColors.red)),
          const SizedBox(height: 20),
          const Text('По вопросам сотрудничества: info@natvkg'),
          const SizedBox(height: 20),
          const Text('©2017. Сервис предоставляется ОсОО "НаТВ"'),
          const SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/mtc.gif', width: 45, height: 45),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/optimabank.gif',
                        width: 45, height: 45),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/optima24.gif',
                        width: 45, height: 45),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/terempay.gif',
                        width: 45, height: 40),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/quickpay.gif',
                        width: 45, height: 45),
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/images/odengi.gif',
                        width: 45, height: 45),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/balance.gif',
                        width: 45, height: 45),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/kyrgyzpochta.gif',
                        width: 45, height: 45),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/elsom.gif',
                        width: 45, height: 45),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/kassa24.gif',
                        width: 45, height: 45),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
