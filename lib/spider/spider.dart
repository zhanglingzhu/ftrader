import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';

class Spider {
  // 构造请求头
  var header = {
    'user-agent': 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) ' +
        'AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36',
  };

  // 数据的请求
    requestData() async {
    var url = "https://www.mzitu.com/";

    var response = await http.get(url, headers: header);
    if (response.statusCode == 200) {
      return response.body;
    }
    return "";
  }
}
