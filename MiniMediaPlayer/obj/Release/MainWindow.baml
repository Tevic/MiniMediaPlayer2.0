   M S B A M L   `   `   `  ���� L  HMiniMediaPlayer, Version=2.0.12.10, Culture=neutral, PublicKeyToken=null1clr-namespace:MiniMediaPlayerMiniMediaPlayer  d `PresentationFramework.Classic, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35jMclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.ClassicMicrosoft.Windows.Themes      MiniMediaPlayer.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     ,myclr-namespace:MiniMediaPlayer     rMicrosoft_Windows_ThemesMclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Classic     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -     �Name$  Window�� � Title$ MiniMediaPlayer��$	��800��$	��600�� � WindowStartupLocation$ CenterScreen=�$	��800��$	��600��
���   � � 
ResizeMode$ CanResizeWithGrip=�.��� -    �Name$ 
LayoutRoot��.+�� $��0,0,0,75q� � ColumnDefinitions �� $��0.478* ��� $��472.42 ��� $��0.522* � � RowDefinitions �� $��0.903* ��� $��0.097* �.+�r� -    r�Name$ MediaPlayer�� r� UnloadedBehavior$ Manual=�	 r� Volume$		 0.2Q�
 r� IsMuted
 .  $��3�� J� 	AllowDrop .   r� LoadedBehavior$ Manual=��� -    ��Name$ SliderVolume��$��	79,7,6,25q�$��1��   SimpleSlider#���    � LargeChange$	 0.1Q� � Maximum$ 1Q� � Minimum$ 0Q� � SmallChange$
 0.01Q�$��1�� � Value ��  �� Path$ Volume� �� ElementName$ MediaPlayer������  �� EndPoint$ 1,0.5&� �� 
StartPoint$ 0,0.5&�.���  � Color$	 Red�� � Offset$ 1Q�� $
 Blue���� -   $ SliderProgress��$��	79,27,7,7q�$��1��#���   $	 0.1Q�$ 1Q�$
 0.01Q�$��1��{�. ���� $ 1,0.5&�$ 0,0.5&�.��� $ 	#FF050AFA��$ 0Q�� $ White��$ 1Q��� -   $��	TbxVolume��$��1��$��	4,4,397,0q�$��Volume��$
��Bold"�$��Italic$�$��19.015��$	��Top=�$��1������ $ 0.5,1&�$ 0.5,0&�.��� $	 Red��$ 1Q�� $
 Blue���� -   $��TbxProgress��$��1��$��4,23.015,398,7q�$��Progress��$
��Bold"�$��Italic$�$��1������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFE5E5E5��$ 1Q�� $
 Blue���� -   $��TbxTime��$��1��$��38��$��
0,5,7.68,0q�$�� ��$	��Top=�
��� ���$��15(�$
��Bold"�$��2��� $��75��$��Bottom=� �� $
��0.5* ��� $	��600 ��� $
��0.5* �.+��� -	    ��Name$ BtnOpen��$	��▲��$��1��$��178,9.5,0,15.5q�  
BtnCostume#���  $��26.667(�
��� � �$��50��$
��Left=�$��50���� -
   $ BtnPlay��$	��▶��$��1��$��308,9.5,0,15.5q�  BtnCustome2#���  $��50��$��Microsoft YaHei)�$��24(�
��� ���$
��Bold"�$
��Left=�$��50��{�. �� -   $ 
BtnForward��$��>>��$��1��$��373,9.5,177,15.5q�#���  $��50��$��Microsoft YaHei)�$
��Bold"�$��26.667(����	#FF646464$��50���� -   $ BtnBack��$��<<��$��1��$��243,9.5,307,15.5q�#���  $��50��$��Microsoft YaHei)�$��26.667(����	#FF646464$
��Bold"��� -   $ BtnStop��$	��■��$��1��$��438,9.5,112,15.5q�#���  $��50��$��Microsoft YaHei)�$��32(�
���  ��$
��Bold"�$��50��$��Normal&��� -   $ BtnAbout��$��A��$��1��$��113,9.5,0,15.5q�#���  $��26.667(����	#FF646464$��50��$��50��$
��Left=�