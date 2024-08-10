import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/profile_page/coins_controller.dart';

class CoinHistoryScreen extends StatefulWidget {
  const CoinHistoryScreen({Key? key}) : super(key: key);

  @override
  State<CoinHistoryScreen> createState() => _CoinHistoryScreenState();
}

class _CoinHistoryScreenState extends State<CoinHistoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final CoinsController controller = Get.put(CoinsController());
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    controller.fetchCoinHistory();
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
        title: Text(
          'History',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        bottom: TabBar(
          dividerColor: Colors.black,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          controller: _tabController,
          tabs: [
            Tab(
              text: 'All',
            ),
            Tab(text: 'Gains'),
            Tab(text: 'Expenses'),
          ],
        ),
      ),
      body: Obx(
        () => TabBarView(
          controller: _tabController,
          children: [
            // Tab 1: All
            Center(
              child: buildTransactionList(controller.allTransactions),
            ),

            // Tab 2: Gains
            Center(child: buildTransactionList(controller.gains)),

            // Tab 3: Expenses
            Center(child: buildTransactionList(controller.expenses)),
          ],
        ),
      ),
    );
  }

  Widget buildTransactionList(List<dynamic> transactions) {
    return transactions.isNotEmpty
        ? ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              var transaction = transactions[index];
              return ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      color: Colors.black,
                    ),
                    image: DecorationImage(
                      image: NetworkImage(transaction['senderId'] ==
                              controller.loggedInUserId
                          ? "https://res.cloudinary.com/dk3hy0n39/image/upload/${transaction['senderProfile']["profileImage"]}"
                          : "https://res.cloudinary.com/dk3hy0n39/image/upload/${transaction['recieverProfile']["profileImage"]}"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                title: Text('Coins Transfer: ${transaction['coins']}'),
                subtitle: Text(
                    'Date: ${transaction['createdAt'].toString().substring(0, 10)}'),
                trailing: Text(
                    transaction['senderId'] == controller.loggedInUserId
                        ? 'Expense'
                        : 'Gain'),
              );
            },
          )
        : Center(child: Text('No Transactions'));
  }
}
