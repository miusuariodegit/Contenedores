 // Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   EnviaCorreo.java
package com.electronicos.correo;

import com.electronicos.to.PersonaTO;
import com.electronicos.to.ProductoTO;
import java.io.PrintStream;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

// Referenced classes of package com.electronicos.correo:
//            DatosCorreo
public class EnviaCorreo {

    public EnviaCorreo() {
        props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
    }

    public void enviaMensaje(DatosCorreo datos) {
        Session session = Session.getInstance(props, new Authenticator() {

            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("jjcreell@gmail.com", "dejendeestarmechingando");
            }

        }
        );
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("jjcreell@gmail.com"));
            message.setRecipients(javax.mail.Message.RecipientType.TO, InternetAddress.parse("jjcreell@gmail.com"));
            message.setSubject("Nueva Venta de mipaginaweb");
            message.setContent(datos.getMensaje(), "text/html");
            Transport.send(message);
            System.out.println("Correo Enviado----->jjcreell@gmail.com");
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

    public static void main(String args[]) {
        EnviaCorreo ec = new EnviaCorreo();
        java.util.List lista = ProductoTO.consultaProductosPorCategoria(1);
        ec.enviaMensaje(new DatosCorreo(new PersonaTO(), lista));
    }

    Properties props;
    final String username = "jjcreell@gmail.com";
    final String password = "&YLB.-ZF";
    final String destino = "jjcreell@hotmail.com";
    final String titulo = "Nueva Venta de mipaginaweb";
}
