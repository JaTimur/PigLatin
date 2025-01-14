//lowell hymn version starts on line 47
public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for(int n=0;n<sWord.length();n++){
    if(sWord.substring(n,n+1).equals("a")||sWord.substring(n,n+1).equals("e")||sWord.substring(n,n+1).equals("i")||sWord.substring(n,n+1).equals("o")||sWord.substring(n,n+1).equals("u")) return n;
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord)==0){
    return(sWord+"way");
  }
  else if(sWord.substring(0,2).equals("qu")){
    return(sWord.substring(2)+"quay");
  }
  else if(findFirstVowel(sWord)>0){
    return(sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord))+"ay");
  }
  else
  {
    return "ERROR!";
  }
}

/*public void setup() 
{
  String line = "With heads bared we stand In tribute to thee Our Alma-Mater Lowell All true to thee we'll be Unfurled red and white None shall thee decry They name we love Oh Lowell High ";
  ArrayList<String> words=new ArrayList<String>();
  int last=0;
  for (int i = 0 ; i < line.length(); i++) 
  {
    if(line.charAt(i)==' '){
      words.add(line.substring(last,i));
      last=i+1;
    }
  }
  for(int n=0;n<words.size();n++){
    System.out.print(pigLatin(words.get(n)).toLowerCase()+" ");
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for(int n=0;n<sWord.length();n++){
    if(sWord.substring(n,n+1).equals("a")||sWord.substring(n,n+1).equals("e")||sWord.substring(n,n+1).equals("i")||sWord.substring(n,n+1).equals("o")||sWord.substring(n,n+1).equals("u")) return n;
  }
  return -1;
}

public String pigLatin(String sWord){
  if(findFirstVowel(sWord)==-1){
    return(sWord+"ay");
  }
  else if(findFirstVowel(sWord)==0){
    return(sWord+"way");
  }
  else if(sWord.substring(0,2).equals("qu")){
    return(sWord.substring(2)+"quay");
  }
  else if(findFirstVowel(sWord)>0){
    return(sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord))+"ay");
  }
  else
  {
    return "ERROR!";
  }
}*/
