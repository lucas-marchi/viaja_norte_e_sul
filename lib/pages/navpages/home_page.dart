import 'package:flutter/material.dart';
import 'package:viaja_norte_e_sul/misc/colors.dart';
import 'package:viaja_norte_e_sul/widgets/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //texto menu
          Container(
            padding: const EdgeInsets.only(top:50, left: 20),
            child: Row(
              children: [
                Icon(Icons.menu, size:30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right:  20),
                  width: 50,
                  height: 50,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          //texto descubra
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText(text: "Descubra"),
          ),
          SizedBox(height: 30,),
          //tabbar
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicator(color: AppColors.mainColor, radius: 4),
                tabs: [
                  Tab(text: "Lugares"),
                  Tab(text: "Inspire-se"),
                  Tab(text: "Emocione-se"),
                ],
              ),
            )
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(
                        "img/copacabana.jpg"
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Text("Como vai?"),
                Text("Tchau")
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  @override
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius:radius);
  }


}

class _CirclePainter extends BoxPainter{
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, 
      ImageConfiguration configuration) {
      Paint _paint = Paint();
      _paint.color=color;
      _paint.isAntiAlias=true;
      final Offset circleOffset = Offset(configuration.size!.width/2 -radius/2, configuration.size!.height);
        
    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }

}