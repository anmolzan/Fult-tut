/*import 'package:fluttter_tutorial/models/Catalog.dart';

class Cartmodel{

 CatalogModel _catalog;
final List<int>_itemIds=[];
CartModel get catalog => _catalog;
set catalog(CatalogModel newCatalog){
  assert (newCatalog!=null);
  _catalog=newCatalog;
}
List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();
num get totality =>items.fold(0, (total, current) => total+current.price);
void add (Item item){
  _itemIds.add(item.id);
}
void remove(Item item){
  _itemIds.remove(item.id);*/
//}
//}

import 'package:fluttter_tutorial/models/Catalog.dart';
import 'Catalog.dart';

class CartModel {
  static final cartModel=CartModel._internal();
  CartModel._internal();
  factory CartModel()=>cartModel;
  // catalog field
  late CatalogModel _catalog;

  // Collection of IDs - store Ids of each item
  final List<int> _itemIds = [];

  // Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart
  List get items => _itemIds.map((id) => _catalog.getbyId(id)).toList();

  // Get total price
  num? get totalPrice =>
      items.fold(0, (total, current) => total! + current.price);

  // Add Item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove Item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
