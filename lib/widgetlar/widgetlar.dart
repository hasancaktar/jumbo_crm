import 'package:flutter/material.dart';
import 'package:jumbo_crm/sayfalar/Gruplar/demolar.dart';
import 'package:jumbo_crm/sayfalar/Gruplar/hostingler.dart';
import 'package:jumbo_crm/sayfalar/Gruplar/musteriler.dart';
import 'package:jumbo_crm/sayfalar/Gruplar/projeler.dart';
import 'package:jumbo_crm/sayfalar/kullanici_yonetimi.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.deepPurple),
            accountName: Text("Hasan Sancaktar"),
            accountEmail: Text("hasan@essentebilisim.com"),
            currentAccountPicture: CircleAvatar(
              child: Text("HS",style: TextStyle(fontSize: 30),),
              backgroundColor: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard_customize),
            title: Text("Gosterge Paneli"),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today_outlined),
            title: Text("Takvim"),
          ),
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Müşteri Yönetimi"),
          ),
          ListTile(
            leading: Icon(Icons.all_inbox_rounded),
            title: Text("Kaynaklar"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Müşteriler"),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Musteriler()));},
          ),
          // ListTile(
          //   leading: Icon(Icons.check_box_outlined),
          //   title: Text("Onay Bekleyen Müşteriler"),
          // ),
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Hostingler"),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text("Hostingler"),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Hosting()));},
          ),
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Proje Yönetimi"),
          ),
          ListTile(
            leading: Icon(Icons.account_tree),
            title: Text("Projelerim"),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Projeler()));},
          ),
          // ListTile(
          //   leading: Icon(Icons.check),
          //   title: Text("Oynay Bekleyen Projeler"),
          // ),
          // ListTile(
          //   leading: Icon(Icons.arrow_forward_rounded),
          //   title: Text("Devam Eden Projeler"),
          // ),
          // ListTile(
          //   leading: Icon(Icons.check_box),
          //   title: Text("Tamamlanan Projeler"),
          // ),
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Kullanıcı Yönetimi"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Kullanıcı Yönetimi"),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>KullaniciYonetimi()));},
          ),
          ListTile(
            leading: Icon(Icons.settings_applications),
            title: Text("Kullanıcı Rol Ayarları"),
          ),
          ListTile(
            leading: Icon(Icons.developer_mode),
            title: Text("Demo Havuzu"),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Demolar()));},
          ),
          ListTile(
            leading: Icon(Icons.pending),
            title: Text("Blog"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Genel Ayarlar"),
          )
        ],
      ),
    );
  }
}