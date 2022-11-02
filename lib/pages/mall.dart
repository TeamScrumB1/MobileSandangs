import 'package:flutter/material.dart';
import 'package:sandangs/constant.dart';
import 'package:sandangs/widget/gridview/produk_gridview.dart';
import 'package:sandangs/widget/kategori/kategori_produk.dart';
import 'package:sandangs/widget/slideview/slideview.dart';
import 'package:sandangs/pages/cart_screen.dart';
import 'package:sandangs/widget/provider/cart_provider.dart';
import 'package:badges/badges.dart';
import 'package:provider/provider.dart';


class Mall extends StatefulWidget {

  const Mall({Key? key}) : super(key: key);

  @override
  State<Mall> createState() => _MallState();
}

class _MallState extends State<Mall> {

  @override
  Widget build(BuildContext context) {
    var keranjang = Provider.of<KeranjangProv>(context, listen: true);
    keranjang.jumlahplus();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          color: secondaryColor,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Sandangs Mall",
          style: tittleDark,
        ),
        actions: [
          Center(
            child: keranjang.jumlah > 0 ? Badge(
              badgeColor: Colors.orange,
              animationType: BadgeAnimationType.slide,
              borderSide: BorderSide(color: Colors.white),
              badgeContent: Text(
                keranjang.jumlah.toString(),
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              position: BadgePosition.topEnd(top: 0, end: 5),
              child: IconButton(
                icon  : Icon(
                  Icons.shopping_cart,
                  size: 25,
                  color: secondaryColor,
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CartScreen()
                    ),
                  );
                },
              ),
            ) : IconButton(
              icon  : Icon(
                Icons.shopping_cart,
                size: 25,
                color: secondaryColor,
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CartScreen()
                  ),
                );
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SlideView(),
              Container(
                margin: EdgeInsets.only(top: 10),
              ),
              KategoriProduk(),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25, top: 10),
                child: Row(
                  children: [
                    Text('Recommended',
                        style: TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        )),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text('View All',
                          style: TextStyle(
                            color: secondaryColor,
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          )),
                    ),
                  ],
                ),
              ),
              ProdukGridview(),
            ],
          )),
    );
  }
}
