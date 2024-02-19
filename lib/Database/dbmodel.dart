class UserModel {
  final int? id;
  final String? fName;
  final String? lName;
  final String? email;

  UserModel(
      {this.id, required this.fName, required this.lName, required this.email});


  // factory UserModel.fromJson(Map<String,dynamic> dataget) => UserModel(
  //   id: dataget['id'],
  //   fName: dataget['fName'],
  //   lName: dataget['lName'],
  //   email: dataget['email'],
  // );

  Map<String,dynamic> toMap() => {
    'fName':fName,'lName':lName,'email':email
  };

}