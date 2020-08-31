class FileStore{

  // 数据的储存
  void save_data() async{
    var data = await html_parse();

    var json_str = json.encode({'items':data});
    // 将json写入文件中
    await File('data.json').writeAsString(json_str,flush: true);
  }

}