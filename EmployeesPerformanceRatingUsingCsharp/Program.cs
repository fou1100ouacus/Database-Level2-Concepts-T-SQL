using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeesPerformanceRatingUsingCsharp
{
    internal class Program
    {
        public static string Connection = "server=.;database=C21_DB1;user id=sa; password=sa123456";
        public static DataTable Info()
        {
            DataTable dt = new DataTable();
            using (SqlConnection connection = new SqlConnection(Connection))
            {
                string query = "select * from Employees2";
                SqlCommand command = new SqlCommand(query, connection);
                try
                {
                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            dt.Load(reader);
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }

            }
            return dt;
        }
        
        public static void printInfo()
        {
            DataTable dt = Info();
            Console.WriteLine("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");

            Console.WriteLine("Name "+ "       |    " + "Departement" + "   |       " + " Salary " + "    |           " + "PerformanceRating");
            Console.WriteLine("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            foreach (DataRow row in dt.Rows)
            {
                Console.WriteLine(row[0] +"    |   " + row[1] + "         |       "  +  row[2]  + "     |             "+row[3]);
            }

        }
     

        public static void EmployyeesPerformanceRatingWithoutTSQL_CASE()
        {    // conditions
            //WHEN PerformanceRating >= 80 THEN 'High'
            //WHEN PerformanceRating >= 60 THEN 'Medium'
            //ELSE 'Low'
            DataTable dt = Info();
            foreach (DataRow row in dt.Rows)
            { 
                int rate = Convert.ToInt32(row["PerformanceRating"]);

                switch(rate)
                {
                    case rate>=80 :

                    case rate >= 60:

                    default:
                        break;
                }

            }
        }
        


        static void Main(string[] args)
        {
           



        }
    }
}
