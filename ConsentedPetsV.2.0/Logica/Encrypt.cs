using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace ConsentedPets.Logica
{
    public class Encrypt
    {
        public string cifrarT(string texto)
        {
            byte[] initialvectorBytes = Encoding.ASCII.GetBytes("1234567891234567");
            byte[] SaltValueBytes = Encoding.ASCII.GetBytes("Encriptacion_Exposicion");
            byte[] plainTextBytes = Encoding.ASCII.GetBytes(texto);

            PasswordDeriveBytes password = new PasswordDeriveBytes("Encriptacion_Exposicion", SaltValueBytes, "sha1", 22);

            byte[] keybyttes = password.GetBytes(128 / 8);
            RijndaelManaged symetrikey = new RijndaelManaged();
            symetrikey.Mode = CipherMode.CBC;
            ICryptoTransform encrytar = symetrikey.CreateEncryptor(keybyttes, initialvectorBytes);
            MemoryStream memoryStream = new MemoryStream();
            CryptoStream cryptoStream = new CryptoStream(memoryStream, encrytar, CryptoStreamMode.Write);
            cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
            cryptoStream.FlushFinalBlock();
            byte[] ivBytes = memoryStream.ToArray();
            memoryStream.Close();
            cryptoStream.Close();
            string textocifrado = Convert.ToBase64String(ivBytes);
            return textocifrado;
        }

        public string descifrarTexto(string deci)
        {
            byte[] initialvectorBytes = Encoding.ASCII.GetBytes("1234567891234567");
            byte[] SaltValueBytes = Encoding.ASCII.GetBytes("Encriptacion_Exposicion");
            byte[] ciphertextBytes = Convert.FromBase64String(deci);
            PasswordDeriveBytes password = new PasswordDeriveBytes("Encriptacion_Exposicion", SaltValueBytes, "SHA1", 22);
            byte[] keybytes = password.GetBytes(128 / 8);
            RijndaelManaged symetrikey = new RijndaelManaged();
            symetrikey.Mode = CipherMode.CBC;
            ICryptoTransform decryptor = symetrikey.CreateDecryptor(keybytes, initialvectorBytes);
            MemoryStream memoryStream = new MemoryStream(ciphertextBytes);
            CryptoStream cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read);
            byte[] plaintextBytes = new byte[ciphertextBytes.Length];
            int decryptedBytescount = cryptoStream.Read(plaintextBytes, 0, plaintextBytes.Length);
            memoryStream.Close();
            cryptoStream.Close();
            string textoDescrifrado = Encoding.UTF8.GetString(plaintextBytes, 0, decryptedBytescount);

            return textoDescrifrado;


        }




    }
}