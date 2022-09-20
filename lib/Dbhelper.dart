import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Dbhelper{

  Future copydatabase() async {

    final dbpath = await getDatabasesPath();
    final path = join(dbpath,"font");
    
    final exits = await databaseExists(path);
    
    if(exits){
      
      print("db alredy exits");
    }
    else
      {
        print("creating a copy from assets");

        try{
          
          await Directory(dirname(path)).create(recursive: true);
        }catch(_){
          ByteData data = await rootBundle.load(join("assets","font"));
          List<int> bytes = data.buffer.asUint8List(data.offsetInBytes,data.lengthInBytes);

          await File(path).writeAsBytes(bytes,flush: true);

          print("db.copid");

        }
        await openDatabase(path);
        
      }

  }


}