
void main(){
  String joaoEmail = 'joao@gmail.com';
  String mariaEmail = "Maria@gmail.com";

  enviarEmail(joaoEmail);
  enviarEmail(mariaEmail);
}

void enviarEmail(String email){
    print("Menasagem enviada para: $email");
  }