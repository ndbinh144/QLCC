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
        public QuanLyCanHo()
        {
            InitializeComponent();
            InitData();
        }

        private void InitData()
        {
            List<CanHo> listCanHo = new List<CanHo>();
            for(int i = 0; i < 20; ++i)
            {
                listCanHo.Add(new CanHo()
                {
                    IDCanHo = (i + 1).ToString(),
                    TenCanHo = "Căn hộ " + (i + 1).ToString(),
                    GiaCanHo = 10000000,
                    GiaTheoThang = 100000,
                    NgayThue = new DateTime(),
                    SoThangThue = 0,
                    TinhTrang = 1
                });
            }
            lvDanhSachChungCu.ItemsSource = listCanHo;
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