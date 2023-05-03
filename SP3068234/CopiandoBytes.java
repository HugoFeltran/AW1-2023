import java.io.FileOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Scanner;


public class CopiandoBytes
{
    public static void main (String args[])  
    {
         Scanner scan = new Scanner(System.in);
         boolean condicao = true;
         do{

        try{
            System.out.println("digite o nome do arquivo:");
            String resposta = scan.nextLine();

           FileInputStream in = new FileInputStream( resposta );
           FileOutputStream out = new FileOutputStream("saida.txt");
           condicao = false;
        }
        catch(FileNotFoundException e){
         System.out.println("Não foi encontrado!!");   
        }

     }while(condicao);
     

    }
    
    }
