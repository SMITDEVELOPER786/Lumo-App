import 'package:flutter/material.dart';

class CoinHistoryScreen extends StatefulWidget {
  const CoinHistoryScreen({Key? key}) : super(key: key);

  @override
  State<CoinHistoryScreen> createState() => _CoinHistoryScreenState();
}

class _CoinHistoryScreenState extends State<CoinHistoryScreen>  with SingleTickerProviderStateMixin{
  late TabController _tabController;
    @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('History',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15

        ),),
        bottom: TabBar(
          dividerColor: Colors.black,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          controller: _tabController,
          
          tabs: [
            Tab(text: 'All',
            ),
            Tab(text: 'Gains'),
            Tab(text: 'Expenses'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Tab 1: All
          Center(child: Text('All Gains and Expenses')),

          // Tab 2: Gains
          Center(child: Text('Gains')),

          // Tab 3: Expenses
          Center(child: Text('Expenses')),
        ],
      ),
    );
  }
}