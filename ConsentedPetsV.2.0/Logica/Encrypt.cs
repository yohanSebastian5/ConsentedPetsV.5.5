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
            byte[] initialVectoresBytes = Encoding.ASCII.GetBytes("123456789123456789");
            byte[] setValuesBytes = Encoding.ASCII.GetBytes("Encriptar_Proyecto");
            byte[] plaintextByte = Encoding.UTF8.GetBytes(texto);

            PasswordDeriveBytes password = new PasswordDeriveBytes("Encriptar_Proyecto", setValuesBytes, "sha1", 22);

            byte[] keyByes = password.GetBytes(128 / 8);
            RijndaelManaged smartkey = new RijndaelManaged();
            smartkey.Mode = CipherMode.CBC;

            ICryptoTransform encryptor = smartkey.CreateEncryptor(keyByes, initialVectoresBytes);
            MemoryStream memoristream = new MemoryStream();

            CryptoStream crypto = new CryptoStream(memoristream, encryptor, CryptoStreamMode.Write);
            crypto.Write(plaintextByte, 0, plaintextByte.Length);

            crypto.FlushFinalBlock();

            byte[] clp = memoristream.ToArray();
            memoristream.Close();
            crypto.Close();

            string textoCifrado = Convert.ToBase64String(clp);


            return textoCifrado;
        }

        public string descifrarTexto(string deci)
        {
            byte[] initialVectoresBytes = Encoding.ASCII.GetBytes("123456789123456789");
            byte[] setValuesBytes = Encoding.ASCII.GetBytes("Encriptar_Proyecto");

            byte[] ciperTextBytes = Convert.FromBase64String(deci);

            PasswordDeriveBytes password = new PasswordDeriveBytes("Encriptar_Proyecto", setValuesBytes, "SHA1", 22);

            byte[] keyByte = password.GetBytes(128 / 8);

            RijndaelManaged smartkey = new RijndaelManaged();
            smartkey.Mode = CipherMode.CBC;

            ICryptoTransform crypto = smartkey.CreateEncryptor(keyByte, initialVectoresBytes);
            MemoryStream memoristream = new MemoryStream(ciperTextBytes);

            CryptoStream cryptoStream = new CryptoStream(memoristream, crypto, CryptoStreamMode.Read);

            byte[] plainText = new byte[ciperTextBytes.Length];


            int decryptedbyte = cryptoStream.Read(plainText, 0, plainText.Length);


            memoristream.Close();
            cryptoStream.Close();

            string textoDecifradoFinal = Encoding.UTF8.GetString(plainText, 0, decryptedbyte);

            return textoDecifradoFinal;


        }




    }
}