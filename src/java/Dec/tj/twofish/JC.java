

package Dec.tj.twofish;

import javax.crypto.spec.*;
import java.security.*;
import javax.crypto.*;
//import org.bouncycastle.util.encoders.Hex;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
import java.io.FileNotFoundException;


class JC {
 
    public static void encrypt(String PlaintextFile,String Key,String CiphertextFile) {
        try {
            byte[] KeyData = Key.getBytes();
            SecretKeySpec KS = new SecretKeySpec(KeyData, "Blowfish");
            Cipher cipher = Cipher.getInstance("Blowfish");
            cipher.init(Cipher.ENCRYPT_MODE, KS);
            FileInputStream fis = new FileInputStream(PlaintextFile);
            CipherInputStream cis = new CipherInputStream(fis, cipher);
            FileOutputStream fos = new FileOutputStream(CiphertextFile);
            byte[] b = new byte[1024];
            int i = cis.read(b);
            while (i != -1) {
                fos.write(b, 0, i);
                i = cis.read(b);
            }
            fos.flush();
            fos.close();
            fis.close();
            cis.close();
            System.out.println("Encryption Successfull !!!");
        }
        catch (Exception ex) {
            System.out.println(ex);
        }
    }
 
    public static void decrypt(String CiphertextFile, String Key, String DecipheredFile) {
        try {
        	         	
            byte[] KeyData = Key.getBytes();
            SecretKeySpec KS = new SecretKeySpec(KeyData, "Blowfish");
            Cipher cipher = Cipher.getInstance("Blowfish");
            cipher.init(Cipher.DECRYPT_MODE, KS);
            FileInputStream fis = new FileInputStream(CiphertextFile);
            FileOutputStream fos = new FileOutputStream(DecipheredFile);
            CipherOutputStream cos = new CipherOutputStream(fos, cipher);
            byte[] b = new byte[1024];
            int i = fis.read(b);
            while (i != -1) {
                cos.write(b, 0, i);
                i = fis.read(b);
            }
            fos.flush();
            fos.close();
            fis.close();
            cos.flush();
            cos.close();
            System.out.println("Decryption Successfull !!!");
        } catch (Exception ex) {
           
            System.out.println(ex);
        }
    }
}
