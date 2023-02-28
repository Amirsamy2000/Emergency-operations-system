
import 'package:flutter/material.dart';
class reportsupplies extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     appBar: AppBar(
       title: Text('Reports on Medical Supplies'),
       centerTitle: true,
     ),
     body: Container(),
   );
  }

}
new_element({required String title, required IconData icon, onclick}) {
  const color = Colors.white;
  const hovercolor = Colors.white70;
  return ListTile(
    title: Text(
      title,
      style: const TextStyle(color: color,fontSize: 18),
    ),
    leading: Icon(
      icon,
      color: color,
      size: 30,
    ),
    onTap: onclick,
  );
}

move_to_page(BuildContext ctx, index) {
  Navigator.of(ctx).pop();
  switch (index) {
    case 0:
      () {};
      break;
    case 1:
      Navigator.of(ctx)
          .push(MaterialPageRoute(builder: (_) => reportsupplies()));
      break;
    case 2:
      () {};
      break;
  }
}

Drawer_add(BuildContext ctx) {
  return Material(
   color: Colors.blue,
    child: ListView(
      children: [
        const SizedBox(height: 10),
        headDrawer(),
        const SizedBox(height: 20),
         const Divider(color: Colors.white,thickness: 2,indent: 10,endIndent: 10),
         
            const SizedBox(height: 30),
            
        searchFiled(),
       const SizedBox(height: 10),
       search_button(),
        const SizedBox(height: 20),
       
        new_element(
            title: ' Reports of Medicines',
            icon: Icons.medication_liquid,
            onclick: () => move_to_page(ctx, 1)),
       const SizedBox(height: 20),
        new_element(
            title: ' Add New Medicine',
            icon: Icons.add,
            onclick: () => move_to_page(ctx, 2)),
      ],
    ),
  );
}

searchFiled() {
  return    TextField(  

   
    decoration: InputDecoration(
    fillColor:  Colors.white.withOpacity(0.5),
    filled: true,
        enabledBorder: OutlineInputBorder(

          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2,
          )
         
        ),
        hintText: 'Search For Medicine',
        hintStyle: TextStyle(color: Colors.white) ,
        prefixIcon: Icon(Icons.search,size: 30,),
        prefixIconColor: Colors.white,
        labelText: 'Medicine',
        labelStyle: TextStyle(color: Colors.white)
        ),
  );
}

headDrawer() {
  return Container(
width: double.infinity,
height: 200,
    decoration: BoxDecoration(
      color:Colors.blue ,
  //  image:DecorationImage(image: AssetImage('assets/Medicine.jpg')) ,
      borderRadius: BorderRadius.circular(20),
      image: const DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/Medicine.jpg',
        
      ),

      ),
    ),
    child: Column(children: const [
   Text(' ')
    ]),
    // child: Column(
    //   children: [
    //     Image.asset(
    //   'assets/Medicine.jpg',
    //   fit: BoxFit.cover,
    // ),
     
    

  );
}
search_button(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
    child: ElevatedButton(
 style: ElevatedButton.styleFrom(
     primary: Color.fromARGB(255, 38, 129, 174),
     padding: EdgeInsets.all(15)
 
 ),
      onPressed: (){},
      child: const Text('Search'),
      
    ),
  );
}