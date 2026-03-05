import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/views/dashboard_view.dart';

void main() {
  runApp(const InvoiceDashboard());
}

class InvoiceDashboard extends StatelessWidget {
  const InvoiceDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DashboardView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
