﻿using QuanLyChungCu.View.UC_View;
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
using System.Windows.Shapes;

namespace QuanLyChungCu.View
{
    /// <summary>
    /// Interaction logic for ManHinhChinh.xaml
    /// </summary>
    public partial class ManHinhChinh : Window
    {
        public ManHinhChinh()
        {
            InitializeComponent();
            TieuDe.Text = " QUẢN LÝ CĂN HỘ";
            QuanLyCanHo QLCH = new QuanLyCanHo();
            GridMain.Children.Add(QLCH);
        }
        // SelectionChanged="ListViewMenu_SelectionChanged"
    }
}
