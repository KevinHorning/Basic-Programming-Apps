// creates a sha256 hash from a given input string

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Security.Cryptography;

namespace HashTest
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(GenerateSHA256String("3"));
            Console.ReadKey();
        }


        public static string GenerateSHA256String(string inputString)
        {
            SHA256 sha256Hash = SHA256.Create();
            byte[] data = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(inputString));

            StringBuilder result = new StringBuilder();
            for (int i = 0; i < data.Length; i++)
            {
                result.Append(data[i].ToString("X2"));
            }

            return result.ToString();
        }


    }
}
