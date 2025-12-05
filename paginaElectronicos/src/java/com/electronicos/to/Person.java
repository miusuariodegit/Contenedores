// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Person.java

package com.electronicos.to;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Person
    implements Serializable
{

    public Person(String name, String email, int age)
    {
        this.name = name;
        this.email = email;
        this.age = age;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public int getAge()
    {
        return age;
    }

    public void setAge(int age)
    {
        this.age = age;
    }

    public String toString()
    {
        return String.format("Person [name = %s, email = %s, age = %d]", new Object[] {
            name, email, Integer.valueOf(age)
        });
    }

    public static List createPersons()
    {
        List persons = new ArrayList();
        persons.add(new Person("Tousif", "tousif@mail.com", 32));
        persons.add(new Person("Asif", "asif@mail.com", 28));
        persons.add(new Person("Ramiz", "ramiz@mail.com", 26));
        persons.add(new Person("Rizwan", "rizwan@mail.com", 32));
        persons.add(new Person("Amol", "amol@mail.com", 33));
        persons.add(new Person("Ramdas", "ramdas@mail.com", 31));
        return persons;
    }

    private String name;
    private String email;
    private int age;
}
