using System;
using System.Windows.Forms;
public class Hello :　Form
{
  public static void Main()
  {
    System.Console.WriteLine("Hello, World! C#");
    Hello h1 = new Hello();
     Application.Run(h1);
  }

}