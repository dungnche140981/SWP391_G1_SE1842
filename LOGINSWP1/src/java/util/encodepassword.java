/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.math.BigInteger;
import java.security.MessageDigest;

/**
 *
 * @author Steam
 */
public class encodepassword {
    public static String getMd5(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashedBytes = md.digest(input.getBytes());
            BigInteger no = new BigInteger(1, hashedBytes);
            String hashtext = no.toString(16);
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

