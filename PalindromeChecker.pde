public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String k = new String();
  String m = new String();
  String o = new String();
  
  String lowercase =word.toLowerCase();
 
 for(int n=0; n<lowercase.length();n++)
  {
    if(Character.isLetter(lowercase.charAt(n))==true )
    {
      k=k+ lowercase.charAt(n);
      m=m+ lowercase.charAt(n);
      
    }
  }

 int last= k.length()-1;
 for(int i=last; i>=0; i--)
    {
      o= o+k.substring(i,i+1);
    }
   if(o.equals(m))
    {
    return true;
    }
   //System.out.println(o);
  // System.out.println(m);  
    return false;

}
