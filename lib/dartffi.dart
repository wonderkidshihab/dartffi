import 'dart:ffi';
import 'dart:io' show Platform, Directory;
import "package:path/path.dart" as path;

typedef add_func = Int Function(Int, Int);
typedef Add = int Function(int, int);

void main(List<String> args) {
var libraryPath = path.join(Directory.current.path, 'hello_library',
 'libhello.so');
if (Platform.isMacOS) { 
  libraryPath = path.join(Directory.current.path, 'hello_library', 
   'libhello.dylib');
} else if (Platform.isWindows) { 
  libraryPath = path.join(Directory.current.path, 'hello_library', 
   'Debug', 'hello.dll');
} 
  final dylib = DynamicLibrary.open(libraryPath);

  final add = dylib.lookupFunction<add_func, Add>('add');
  print(add(1, 2));

}

