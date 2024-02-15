class MembersClass {
  const MembersClass(
      {this.name,
      this.nickName,
      this.image,
      this.blood,
      this.age,
      this.height,
      this.address,
      this.designation});
  final String? name;
  final String? nickName;
  final String? image;
  final String? blood;
  final String? age;
  final String? height;
  final String? address;
  final String? designation;
}

const List<MembersClass> memberList = <MembersClass>[
  MembersClass(
      address: '27PW+Q99, Metal Box Rd, Amrita Nagar, Edappally, Ernakulam',
      name: 'Noah Miller',
      age: '30',
      blood: 'B+',
      nickName: 'Milli',
      image: 'assets/images/profile-1.jpg',
      designation: 'Lawyer'),
  MembersClass(
      address: 'Palarivattom ,Opp , Jeevan TV, X8X7+F22, Chakkalakkal',
      name: 'William Nguyen',
      image: 'assets/images/profile-2.jpg',
      blood: 'A+',
      age: '45',
      nickName: 'William',
      designation: 'Lawyer'),
  MembersClass(
      address: 'Kuzhivelippady, Kochi, Kerala 683561, India',
      name: 'Ethan Lee',
      image: 'assets/images/profile-3.jpg',
      age: '43',
      blood: "B-",
      nickName: 'Lee',
      designation: 'Doctor'),
  MembersClass(
      address: '29W7+MM8, Edappally - Pukkattupady Rd',
      name: 'Aaliyah Khan',
      image: 'assets/images/profile-5.jpg',
      age: '31',
      blood: "B-",
      nickName: 'Khan',
      designation: 'Engineer'),
  MembersClass(
      address: 'PGQ8+VHR, Kuruppanthara, Kerala 686001, India',
      name: 'Isabella Hernandez',
      image: 'assets/images/profile-6.jpg',
      age: '27',
      blood: "A-",
      nickName: 'Isabel',
      designation: 'Teacher'),
  MembersClass(
      address: '28WX+2Q2, Maradu, Ernakulam, Kerala 682037, India',
      name: 'Lucas Brown',
      image: 'assets/images/profile-7.jpg',
      age: '50',
      blood: "AB+",
      nickName: 'Luscas',
      designation: 'Driver'),
];
