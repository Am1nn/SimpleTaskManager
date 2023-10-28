using System;
using System.Collections.Generic;
using System.Diagnostics;
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

namespace SimpleTaskManager
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void CreateNewProcess_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Process.Start("cmd.exe");
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Xeta Bas Verdi:{ex.Message}");
            }
        }

        private void ShowProcesses_Click(object sender, RoutedEventArgs e)
        {
            processListBox.Items.Clear();
            Process[] processes = Process.GetProcesses();
            foreach (Process process in processes)
            {
                processListBox.Items.Add($"Process Id->>{process.Id} Process Name->>{process.ProcessName}");
            }
        }
        

        private void KillProcess_Click(object sender, RoutedEventArgs e)
        {
            if (processListBox.SelectedIndex >= 0)
            {
                string selectedItem = processListBox.SelectedItem.ToString()!;
                int processId = Convert.ToInt32(selectedItem.Split('-')[0].Trim());
                try
                {
                    Process process = Process.GetProcessById(processId);
                    process.Kill();
                    processListBox.Items.Remove(selectedItem);
                    MessageBox.Show("Prosess Ugurla Qapadildi");
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Xeta Bas Verdi:{ex.Message}");
                }
            }
            else
            {
                MessageBox.Show("Kill Olunacaq Prossesi Secin");
            }
        }
    }
}
