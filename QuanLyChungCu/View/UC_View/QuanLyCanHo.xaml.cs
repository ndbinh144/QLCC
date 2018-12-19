using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace QuanLyChungCu.View.UC_View
{
    /// <summary>
    /// Interaction logic for QuanLyCanHo.xaml
    /// </summary>
    public partial class QuanLyCanHo : UserControl
    {
        MySqlConnection conn;
        string connectionString;
        public QuanLyCanHo()
        {
            InitializeComponent();
            InitData();
        }

        private void InitData()
        {
            connectionString = "SERVER=127.0.0.1;PORT=3306;DATABASE=bookcar;UID=root;PASSWORD=''";
            try
            {
                conn = new MySqlConnection();
                conn.ConnectionString = connectionString;
                conn.Open();
                string query = "SELECT * FROM listbooks";
                // Create command
                MySqlCommand cmd = new MySqlCommand(query, conn);
                MySqlDataReader dataReader = cmd.ExecuteReader();
                while(dataReader.Read())
                {
                   MessageBox.Show(dataReader["ID"] + "");
                }
                conn.Close();
            } catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void Button_Xem_DichVu(object sender, RoutedEventArgs e)
        {
            
        }
    }

    public class CanHo
    {
        public string IDCanHo { get; set; }
        public string TenCanHo { get; set; }
        public Double GiaCanHo { get; set; }
        public Double GiaTheoThang { get; set; }
        public DateTime NgayThue { get; set; }
        public int SoThangThue { get; set; }
        public int TinhTrang { get; set; }
    }
}