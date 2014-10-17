using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Threading;
using Microsoft.WindowsAPICodePack.Taskbar;

namespace MiniMediaPlayer
{
	/// <summary>
	/// MainWindow.xaml 的交互逻辑
	/// </summary>
	public partial class MainWindow : Window
	{

        DispatcherTimer Tm = new DispatcherTimer();
        DispatcherTimer Tm2 = new DispatcherTimer();
        TimeSpan _duration = new TimeSpan();
		public MainWindow()
		{
			this.InitializeComponent();

			// 在此点下面插入创建对象所需的代码。
		}



        void Tm_Tick(object sender, EventArgs e)
        {
            //初始化_duration
            //显示音量和时间
            if (MediaPlayer.NaturalDuration.HasTimeSpan)
            {
                _duration = MediaPlayer.NaturalDuration.TimeSpan;
                TbxTime.Text =
                    "Volume:" + (Int32)(SliderVolume.Value * 100)+"\n"+
                    MediaPlayer.Position.Hours.ToString("00")
                    + ":" + MediaPlayer.Position.Minutes.ToString("00")
                    + ":" + MediaPlayer.Position.Seconds.ToString("00")
                    + "/"
                    + string.Format("{0:00}:{1:00}:{2:00}", _duration.Hours, _duration.Minutes, _duration.Seconds);
                //音量调ToolTip
                SliderVolume.ToolTip = (Int32)(SliderVolume.Value * 100);
                SliderProgress.ToolTip = (Int32)(SliderProgress.Value * 100) + "%";
                //进度条同步
                SliderProgress.Value = MediaPlayer.Position.TotalSeconds / _duration.TotalSeconds;
            }

        }


        void Tm2_Tick(object sender, EventArgs e)
        {
            //用于同步任务栏进度条的时钟
            if (MediaPlayer.Source!=null)
            {
                TaskbarManager.Instance.SetProgressValue(Convert.ToInt32(SliderProgress.Value * 100), Convert.ToInt32(SliderProgress.Maximum * 100));
            }

        }

        private void BtnOpen_Click(object sender, RoutedEventArgs e)
        {
            //打开文件
            Microsoft.Win32.OpenFileDialog ofd = new Microsoft.Win32.OpenFileDialog();
            ofd.Filter = "All Files(*.*)|*.*|"+
                "WMV Files(*.wmv)|*.wmv|" +
                "WAV Files(*.wav)|*.wav|" +
                "WMA Files(*.wma)|*.wma|" +
                "MP4 Files(*.mp4)|*.mp4|" +
                "MP3 Files(*.mp3)|*.mp3|" +
                "AVI Files(*.avi)|*.avi";
            if ((bool)ofd.ShowDialog())
            {
                MediaPlayer.Source = new Uri(ofd.FileName);
                MediaPlayer.Play();
                BtnPlay.Content = "┃┃";
                SolidColorBrush mybrush = new SolidColorBrush(System.Windows.Media.Colors.Red);
                BtnPlay.Foreground = mybrush;
                this.Title = ofd.FileName;
                TaskbarManager.Instance.SetProgressState(TaskbarProgressBarState.Normal);
            }
        }

        private void BtnPlay_Click(object sender, RoutedEventArgs e)
        {
            if (MediaPlayer.Source != null)
            {
                //开始暂停按钮实现
                if (BtnPlay.Content.ToString() == "▶")
                {
                    MediaPlayer.Play();
                    BtnPlay.Content = "┃┃";
                    SolidColorBrush mybrush = new SolidColorBrush(System.Windows.Media.Colors.Red);
                    BtnPlay.Foreground = mybrush;
                    TaskbarManager.Instance.SetProgressState(TaskbarProgressBarState.Normal);
                }
                else
                {
                    MediaPlayer.Pause();
                    BtnPlay.Content = "▶";
                    SolidColorBrush mybrush = new SolidColorBrush(System.Windows.Media.Colors.Yellow);
                    BtnPlay.Foreground = mybrush;
                    TaskbarManager.Instance.SetProgressState(TaskbarProgressBarState.Paused);
                }
            }
            
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            //快退10秒
            TimeSpan ts = new TimeSpan(0, 0, 10);
            MediaPlayer.Position -= ts;
        }

        private void BtnForward_Click(object sender, RoutedEventArgs e)
        {
            //快进10秒
            TimeSpan ts = new TimeSpan(0, 0, 10);
            MediaPlayer.Position += ts;
        }

        private void BtnStop_Click(object sender, RoutedEventArgs e)
        {
            //停止播放
            MediaPlayer.Stop();
            BtnPlay.Content = "▶";
            SolidColorBrush mybrush = new SolidColorBrush(System.Windows.Media.Colors.Yellow);
            BtnPlay.Foreground = mybrush;
            TaskbarManager.Instance.SetProgressState(TaskbarProgressBarState.Normal);
        }

        private void BtnAbout_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Thanks Using MiniMediaPlayer !\nWritten By Tevic.TT\nE-Mail : Tevic.TT@Gmail.Com", "About MiniMediaPlayer", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            //启用全透明效果
            GlassWindow.Aero.ApplyAero(this);

            //启动计时器
            Tm.Tick += new EventHandler(Tm_Tick);
            Tm.Interval = System.TimeSpan.FromSeconds(1.0);
            Tm.Start();
            Tm2.Tick += new EventHandler(Tm2_Tick);
            Tm2.Interval = System.TimeSpan.FromMilliseconds(100);
            Tm2.Start();
        }


        private void SliderProgress_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (MediaPlayer.Source != null)
            {
                Tm.Stop();
                MediaPlayer.Pause();
            }
        }

        private void SliderProgress_PreviewMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            if (MediaPlayer.Source != null)
            {
                //进度条同步 
                BtnPlay.Content = "┃┃";
                SolidColorBrush mybrush = new SolidColorBrush(System.Windows.Media.Colors.Red);
                BtnPlay.Foreground = mybrush;
                this.MediaPlayer.Position = new TimeSpan((long)(MediaPlayer.NaturalDuration.TimeSpan.Ticks * this.SliderProgress.Value));
                Tm.Start();
                MediaPlayer.Play();
                TaskbarManager.Instance.SetProgressState(TaskbarProgressBarState.Normal);
            }
        }

        private void SliderVolume_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //音量调节
            MediaPlayer.IsMuted = false;
            TbxVolume.Text = "Volume";
            TbxVolume.ToolTip = "Click To Mute";
        }

        private void TbxVolume_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //静音功能
            if (!MediaPlayer.IsMuted)
            {
                MediaPlayer.IsMuted = true;
                TbxVolume.Text = "Muted";
                TbxVolume.ToolTip = "Volume";
            }
            else
            {
                MediaPlayer.IsMuted = false;
                TbxVolume.Text = "Volume";
                TbxVolume.ToolTip = "Click To Mute";
            }
        }

        private void MediaPlayer_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (MediaPlayer.Source != null)
            {
                //开始暂停按钮实现
                if (BtnPlay.Content.ToString() == "▶")
                {
                    MediaPlayer.Play();
                    BtnPlay.Content = "┃┃";
                    SolidColorBrush mybrush = new SolidColorBrush(System.Windows.Media.Colors.Red);
                    BtnPlay.Foreground = mybrush;
                    TaskbarManager.Instance.SetProgressState(TaskbarProgressBarState.Normal);
                }
                else
                {
                    MediaPlayer.Pause();
                    BtnPlay.Content = "▶";
                    SolidColorBrush mybrush = new SolidColorBrush(System.Windows.Media.Colors.Yellow);
                    BtnPlay.Foreground = mybrush;
                    TaskbarManager.Instance.SetProgressState(TaskbarProgressBarState.Paused);
                }
            }
        }

        private void Window_Drop(object sender, DragEventArgs e)
        {
            //文件拖拽播放功能
            string fileName = ((System.Array)e.Data.GetData(DataFormats.FileDrop)).GetValue(0).ToString();
            MediaPlayer.Source = new Uri(fileName);
            MediaPlayer.Play();
            BtnPlay.Content = "┃┃";
            SolidColorBrush mybrush = new SolidColorBrush(System.Windows.Media.Colors.Red);
            BtnPlay.Foreground = mybrush;
            this.Title = fileName;
            TaskbarManager.Instance.SetProgressState(TaskbarProgressBarState.Normal);
        }

	}
}