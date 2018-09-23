package com.company;
import java.util.*;
public class sieve {
    void sieve(int n){
        boolean []arr=new boolean[n+1];
        for(int i=2;i<=n;i++)
            arr[i]=true;
        for (int p=2;p*p<=n;p++){
            if(arr[p]==true){
                for(int j=p*2;j<=n;j+=p)
                    arr[j]=false;
            }
        }
        for( int i=2;i<n;i++){
            if(arr[i]==true)
                System.out.println(i);
        }
    }
    public static void main(String []args){
        sieve s=new sieve();
        Scanner scan=new Scanner(System.in);
        int n= scan.nextInt();
        s.sieve(n);
    }
}
