import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/widgets/shared/custom_background_container.dart';
import 'package:responsive_dashboard_app/widgets/invoice/latest_transaction.dart';
import 'package:responsive_dashboard_app/widgets/invoice/quick_invoice_form.dart';
import 'package:responsive_dashboard_app/widgets/invoice/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          // line with padding 24 from top and bottom
          Divider(
            height: 48,
            color: Color(0xFFF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
