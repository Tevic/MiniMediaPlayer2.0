   M S B A M L   `   `   `  ����  MiniMediaPlayer    MiniMediaPlayer.App   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        �� 	Resources  5       �� MergedDictionaries �� Source   
BtnCostume �� 
TargetType �� 	Resources  Key �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value	   EasingFunction0  *System.Windows.Media.Animation.ElasticEase7  1System.Windows.Media.Animation.EasingFunctionBase
   
EasingMode �� Property �� Value �� 
TargetType �Name'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   GeneratedDuration	   To   
Storyboard g� RepeatBehavior g� AutoReverse8  2System.Windows.Media.Animation.EasingColorKeyFrame �� KeyTime �� Value   EasingFunction.  (System.Windows.Media.Animation.CubicEase   States 	  System.Windows.VisualState ��Name �� RadiusY �� RadiusX �� EndPoint � MappingMode �� 
StartPoint  � Color! � Offset" J� SnapsToDevicePixels# �� Triggers$ P� Property% P� Value& �� Triggers' :� RoutedEvent( ��Name  OnMouseLeave1  OnMouseEnter1  BtnCustome2) A�Name* :� 
SourceName�� 5       5      �� 5	      $ Simple Styles.xaml?�6   %�  &	        7  7  &	 �    7  7  �� 5      " ��6    5      ���� 5      OnMouseEnter1 .��5      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6&    6�   Z� .\�5   	     $ 0��6   $ 1Q�6*   	 5   
     5      $
 EaseOut=�6   5   
     5   	   $ 0:0:0.6��6   $	 1.5Q�60   	 5   
     5      $
 EaseOut=�6   5   
   5   	   U� 5      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6&    6�   Z� .\�5   	     $ 0��6   $ 1Q�6*   	 5   
     5      $
 EaseOut=�6   5    
     5!   	   $ 0:0:0.6��6   $	 1.5Q�60   	 5"   
     5#      $
 EaseOut=�6   5%   
   5&   	   5'      �� 5(      OnMouseLeave1 .��5)      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6&    6�   Z� .\�5*   	     $ 0��6   $	 1.5Q�6*   	 5+   
     5,      $
 EaseOut=�6   5.   
     5/   	   $ 0:0:0.6��6   $ 1Q�60   	 50   
     51      $
 EaseOut=�6   53   
   54   	   U� 55      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6&    6�   Z� .\�56   	     $ 0��6   $	 1.5Q�6*   	 57   
     58      $
 EaseOut=�6   5:   
     5;   	   $ 0:0:0.6��6   $ 1Q�60   	 5<   
     5=      $
 EaseOut=�6   5?   
   5@   	   5A      5B      .�5C      ��  � �� 5D      �� 5E      " ��6   .R�5F   	   � $
 grid��6    5G   
     5H      CommonStates�� 5I        5J      $ 0D�6   $ 	MouseOver��64   . 5K      �� $ Forever��6    .  .��5L      �� $H B(Shape.Fill).(GradientBrush.GradientStops)[0].(GradientStop.Color)�6,   $ 	rectangle��6�   .g�5M        $ 0��6$   $ Black��60    5N        5O      $
 EaseOut=�6   5Q        5R      $ 0:0:1.5��6$   $ White��66    5S        5T      $
 EaseOut=�6   5V        5W      $ 0:0:3��6$   $ Black��64    5X        5Y      $
 EaseOut=�6   5[      5\      5]      5^      . 5`      	  
Normal��6   	  5a      	MouseOver��6   	  5b      Pressed��6   	  5c      Disabled��6   5d      .+�5f   
   �� $ 	rectangle��6   $	 7.5��6'   $	 7.5��65   ��6C   Z� ��5g      �� 5h      $ 0.5,1&�6    $ RelativeToBoundingBox=�61   $ 0.5,0&�6U   .��5i      � $  Black��6   � 5j      $  	#FF0564FA��6   $! 1Q�6,   5k      5m      �� 5n   
   #��z��6   ��. #" z" 6y   #��z��6�   5o   
   # 5p   	   P� 5q   
   $ �@J�	IsFocused% . 6'   P� 5r   
   $ �@��IsDefaulted% . 6)   P� 5s   
   $ �@J�IsMouseOver% . 6)   P� 5t   
   $ � ��% . 6'   P� 5u   
   $ � {�% .  6'   5w   	   5y      �� 5z       �@J�RenderTransformOrigin$ 0.5,0.5&�6.   �� 5{       � z� 5|      V� 5}      .~�5~   	   �� �� 5   	   �� 5�   	   T� 5�   	   5�   	   5�      & 5�      :� 5�      $' Mouse.MouseLeave��6   .[�5�      �� $#( OnMouseLeave1_BeginStoryboard��6   8��  6?   5�      :� 5�      $' Mouse.MouseEnter��6   .[�5�      �� 8�� 6   5�      5�      �� 5�      " ��6    5�      ���� 5�      OnMouseEnter1 .��5�      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6&    6�   Z� .\�5�   	     $ 0��6   $ 1Q�6*   	 5�   
     5�      $
 EaseOut=�6   5�   
     5�   	   $ 0:0:0.6��6   $	 1.5Q�60   	 5�   
     5�      $
 EaseOut=�6   5�   
   5�   	   U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6&    6�   Z� .\�5�   	     $ 0��6   $ 1Q�6*   	 5�   
     5�      $
 EaseOut=�6   5�   
     5�   	   $ 0:0:0.6��6   $	 1.5Q�60   	 5�   
     5�      $
 EaseOut=�6   5�   
   5�   	   5�      �� 5�      OnMouseLeave1 .��5�      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6&    6�   Z� .\�5�   	     $ 0��6   $	 1.5Q�6*   	 5�   
     5�      $
 EaseOut=�6   5�   
     5�   	   $ 0:0:0.6��6   $ 1Q�60   	 5�   
     5�      $
 EaseOut=�6   5�   
   5�   	   U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6&    6�   Z� .\�5�   	     $ 0��6   $	 1.5Q�6*   	 5�   
     5�      $
 EaseOut=�6   5�   
     5�   	   $ 0:0:0.6��6   $ 1Q�60   	 5�   
     5�      $
 EaseOut=�6   5�   
   5�   	   5�      5�      .�5�      ��  � �� 5�      �� 5�      " ��6   .R�5�   	   �  5�   
     5�      CommonStates�� 5�        5�      $ 0D�6   $ 	MouseOver��64   . 5�      �� $ Forever��6   .��5�      �� $H B(Shape.Fill).(GradientBrush.GradientStops)[0].(GradientStop.Color)�6,   $ ellipse��6�   .g�5�        $ 0��6$   $ Black��60    5�        5�      $
 EaseOut=�6   5�        5�      $ 0:0:1.5��6$   $ White��66    5�        5�      $
 EaseOut=�6   5�        5�      $ 0:0:3��6$   $ Black��64    5�        5�      $
 EaseOut=�6   5�      5�      5�      5�      . 5�      	  
Normal��6   	  5�      	MouseOver��6   	  5�      Pressed��6   	  5�      Disabled��6   5�      .+�5�   
   A� $) ellipse��6   ��5�      �� 5�      $ 0.5,1&�6    $ RelativeToBoundingBox=�61   $ 0.5,0&�6U   .��5�      � $  Black��6   � 5�      $  	#FF0564FA��6   $! 1Q�6,   5�      5�      �� 5�   
   #��z��6   ��. #" z" 6y   #��z��6�   5�   
   # 5�   	   :� 5�   
   $' FrameworkElement.Loaded��6   $* ellipse��6=   P� 5�   
   $ �@J�	IsFocused% . 6'   P� 5�   
   $ �@��IsDefaulted% . 6)   P� 5�   
   $ �@J�IsMouseOver% . 6)   P� 5�   
   $ � ��% . 6'   P� 5�   
   $ � {�% .  6'   5�   	   5�      �� 5�       �@J�RenderTransformOrigin$ 0.5,0.5&�6.   �� 5�       � z� 5�      V� 5      .~�5  	   �� �� 5  	   �� 5  	   T� 5  	   5  	   5     & 5     :� 5	     $' Mouse.MouseEnter��6   .[�5
     �� 8��  6   5     :� 5     $' Mouse.MouseLeave��6   .[�5     �� $#( OnMouseLeave1_BeginStoryboard��6   8�� 6?   5     5     5     5     