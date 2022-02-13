class Item { // modelação de item da lista
  late String title; // título/nome do item
  late bool isDone; // se o item está feito ou não

  Item ({ // construtor
    required this.title,
    required this.isDone
  });

  Item.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    isDone = json['isDone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    
    data['title'] = this.title;
    data['isDone'] = this.isDone;
    
    return data;
  }

  /*
    Para construir mais facilmente esse toJson e FromJson, utilize o JSON to Dart no Google.
  */
}