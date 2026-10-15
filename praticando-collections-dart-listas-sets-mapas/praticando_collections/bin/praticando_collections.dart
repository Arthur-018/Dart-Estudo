
void main(){
  // List<String> listaEmail = ["joao@gmail.com", "maria@gmail.com"];

  // listaEmail.add("enzo@gmail.com");

  // if(listaEmail.contains("enzo@gmail.com") == false){
  //   listaEmail.add("enzo@gmail.com");
  // }

  // for(String email in listaEmail){
  //   enviarEmail(email);
  // }

  // Set<String> setEmails = {"joao@gmail.com", "maria@gmail.com"};

  // setEmails.add("enzo@gmail.com");

  // for(String email in setEmails){
  //   print(email);
  // }

  // if(setEmails.contains("enzo@gmail.com") == true) {
  //   print("Email de enzo dentro do set");
  // } else {
  //   print("nao esta dentro do set");
  // }

  Map<String,String>pessoasEmails = {
    'Joao':'joao@gmail.com',
    'Maria':'maria@gmail.com',
  };

pessoasEmails['enzo'] = 'enzo@gmail.com';

for(String email in pessoasEmails.values){
  enviarEmail(email);
}

}

void enviarEmail(String email){
    print("Menasagem enviada para: $email");
  }