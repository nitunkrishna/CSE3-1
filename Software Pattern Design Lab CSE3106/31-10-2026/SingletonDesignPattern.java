/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.singleton.design.pattern;

/**
 *
 * @author nitunkrishna
 */
public class SingletonDesignPattern
{
    public static void main(String[] args)
    {
        University u1 = University.getInstance();
        University u2 = University.getInstance();
        University u3 = University.getInstance();

        System.out.println(u1 == u2);
        System.out.println(u2 == u3);
        System.out.println(u1 == u3);
    }
}

class University
{
    private static University instance;
    private University()
    {
        System.out.println("University Object Created!");
    }
    public static University getInstance()
    {
        if (instance == null)
        {
            instance = new University();
        }
        return instance;
    }
}