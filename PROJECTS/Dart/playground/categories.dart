import 'dart:io';

int max = 3;

//Lists the contents of the array
dynamic menu(List options){
  int i=1;
  for (var op in options) {
    print("$i. $op");
    i++;
  }
}


//Adding to the list
dynamic add_option(List option){
  print("Enter custom option name: ");
  String? new_option = stdin.readLineSync();
  String return_value = new_option.toString().toLowerCase();
  if(option.contains(return_value)){
    print("This option already exists in the list.");
    return;
  }
  else{
    print("Custom option added!");
  }
  return return_value;
}


//Function to select the choices
dynamic select(List options){
  int count = 1, max_choice = options.length, value=0; var sel = []; 
  dawn: while(count<=max){
   print("Choice $count");
    value = int.parse(stdin.readLineSync().toString());

    if(value>0 && value<=max_choice){
      if((sel.contains(value))){
        print("You have already selected this. Choose new one.");
        continue dawn;
      }
      else{
      count++;
      sel.add(value);
      }
    }
    else{
      print("Invalid choice. Enter the correct number corresponding to your choice");
      continue dawn;
    }
  }
  return sel;
}


main(){

  List<String?> options = ['medicine', 'veggies', 'fruits', 'bots'];


  //Main code
  while(true){
    print("\nDo you find your desired options below?\n");
    menu(options); 
    print("\nReply Y/N ");
    var found_choice = stdin.readLineSync();

    if(found_choice =='y' || found_choice =='Y'){
      print("\nSelect three choices from the above list by entering their numbers. ");
      var selections = select(options);
      print("You have selected $selections");
    }

    else{
      print("\nWould you like to add your custom choice? --- [Y/N]");
      var add_choice = stdin.readLineSync();
      if(add_choice=='y' || add_choice=='Y'){
        String? ret = add_option(options);
        if(ret != null){
          options.add(ret);  
        }
        else{
          continue;
        }       
      }
      else{
        print("No custom choice added");
      }
    }
  }
}