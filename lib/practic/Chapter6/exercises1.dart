// void main() {
//   final user = User();
//   user.name;
//   user.id ;
//   print(user);
// }
// class User {
//   int id = 42;
//   String name = 'jay';
//
// @override
// String toString() {
//   return 'User(id: $id, name: $name)';
// }
// }

// void main() {
//
//   final pass = Password("yb36040585");
//   print(pass.isValid());
// }
//
// class Password{
//   String value;
//   Password(this.value);
//
//    bool isValid(){
//     if(value.length > 8){
//         return true;
//       }else{
//         return false;
//       }
//     // return isValid();
//   }
//
//   @override
//   String toString(){
//     return "$value";
//   }
// }


// void main(){
//   final user = User(42, 'Ray');
//   print(user);
// }
//
// class User {
//   User(int id, String name, {required fName}) {
//     this.id = id;
//     this.name = name;
//
//   }
//   int id = 0;
//   String name = '';
// // ...
// }