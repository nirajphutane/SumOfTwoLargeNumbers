void main(){
  String number1 = '3333311111111111';
  String number2 = '44422222221111';

  if(number1.length < number2.length){
    String tmp = number2;
    number2 = number1;
    number1 = tmp;
  }

  int lenDifference = number1.length-number2.length;
  for(int i = 0; i < (lenDifference); i++){
    number2 = '0' + number2;
  }
  String result = '', div = '';
  int carry = 0;
  for(int i = number1.length-1; i >= 0; i--){
    int sum = int.parse(number1[i]) + int.parse(number2[i]);
    sum = sum + carry;
    if(sum > 9){
      carry = sum~/10;
    } else {
      carry = 0;
    }
    sum = sum%10;
    result = '$sum'+result;
    div += '-';
  }
  if(carry != 0){
    result = carry.toString()+result;
    div += '-';
    number1 = ' '+number1;
    number2 = ' '+number2;
  }
  print('Addition:\n');
  print(number1);
  print(number2);
  print(div);
  print(result);
}
