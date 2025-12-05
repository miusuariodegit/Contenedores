// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Generador.java

package com.electronicos.generador;

import java.io.*;
import java.net.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Generador
{

    public Generador()
    {
    }

    public String descarga(String pagina)
    {
        try
        {
            StringBuilder result = new StringBuilder();
            URL url = new URL(pagina);
            HttpURLConnection conexion = (HttpURLConnection)url.openConnection();
            conexion.setRequestMethod("GET");
            BufferedReader rd = new BufferedReader(new InputStreamReader(conexion.getInputStream()));
            String line;
            while((line = rd.readLine()) != null) 
                result.append(line);
            rd.close();
            return result.toString();
        }
        catch(MalformedURLException ex)
        {
            ex.printStackTrace();
        }
        catch(IOException ex)
        {
            ex.printStackTrace();
        }
        return "";
    }

    public void escribeArchivo(String html, String ruta)
    {
        try
        {
            File archivo = new File(ruta);
            FileWriter filewriter = new FileWriter(archivo.getAbsoluteFile());
            BufferedWriter bufferedwriter = new BufferedWriter(filewriter);
            bufferedwriter.write(html);
            bufferedwriter.close();
            filewriter.close();
            System.out.println((new StringBuilder()).append("Escribiendo :").append(ruta).toString());
        }
        catch(IOException e)
        {
            e.printStackTrace();
        }
    }
}
