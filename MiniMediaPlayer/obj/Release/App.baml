   M S B A M L   `   `   `  ����   MiniMediaPlayer    MiniMediaPlayer.App   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       �� 	Resources   �� MergedDictionaries �� Source   
BtnCostume �� 
TargetType �� 	Resources  Key �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value	   EasingFunction0  *System.Windows.Media.Animation.ElasticEase7  1System.Windows.Media.Animation.EasingFunctionBase
   
EasingMode �� Property �� Value �� 
TargetType �Name'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   GeneratedDuration	   To   
Storyboard8  2System.Windows.Media.Animation.EasingColorKeyFrame �� KeyTime �� Value   EasingFunction.  (System.Windows.Media.Animation.CubicEase   States 	  System.Windows.VisualState ��Name �� RadiusY �� RadiusX �� EndPoint � MappingMode �� 
StartPoint � Color � Offset  J� SnapsToDevicePixels! �� Triggers" P� Property# P� Value$ �� Triggers% :� RoutedEvent& ��Name  OnMouseLeave1  OnMouseEnter1  BtnCustome2' A�Name( :� 
SourceName��  �� $ Simple Styles.xaml?�%�  &	        7  7  &	 J    7  7  �� " �� ���� OnMouseEnter1 .��U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)� Z� .\�  $ 0��$ 1Q�	   $
 EaseOut=�  $ 0:0:0.6��$	 1.5Q�	   $
 EaseOut=�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)� Z� .\�  $ 0��$ 1Q�	   $
 EaseOut=�  $ 0:0:0.6��$	 1.5Q�	   $
 EaseOut=��� OnMouseLeave1 .��U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)� Z� .\�  $ 0��$	 1.5Q�	   $
 EaseOut=�  $ 0:0:0.6��$ 1Q�	   $
 EaseOut=�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)� Z� .\�  $ 0��$	 1.5Q�	   $
 EaseOut=�  $ 0:0:0.6��$ 1Q�	   $
 EaseOut=�.���  � �� �� " ��.R�� $
 grid��   CommonStates��   $ 0D�$ 	MouseOver��. �� .���� $H B(Shape.Fill).(GradientBrush.GradientStops)[0].(GradientStop.Color)�$ 	rectangle��.g�  $ 0��$ Black��   $
 EaseOut=�  $ 0:0:0.2��$ White��   $
 EaseOut=�  $ 0:0:0.4��$ Black��   $
 EaseOut=�. 	  
Normal��	  	MouseOver��	  Pressed��	  Disabled��.+��� $ 	rectangle��$	 7.5��$	 7.5����Z� ���� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ Black��� $ 	#FF0564FA��$ 1Q��� #��z����. #  z  #��z��! P� " �@J�	IsFocused# . P� " �@��IsDefaulted# . P� " �@J�IsMouseOver# . P� " � ��# . P� " � {�# .  ��  �@J�RenderTransformOrigin$ 0.5,0.5&���  � z� V� .~��� �� �� T� $ :� $% Mouse.MouseLeave��.[��� $#& OnMouseLeave1_BeginStoryboard��8��  :� $% Mouse.MouseEnter��.[��� 8�� �� " �� ���� OnMouseEnter1 .��U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)� Z� .\�  $ 0��$ 1Q�	   $
 EaseOut=�  $ 0:0:0.6��$	 1.5Q�	   $
 EaseOut=�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)� Z� .\�  $ 0��$ 1Q�	   $
 EaseOut=�  $ 0:0:0.6��$	 1.5Q�	   $
 EaseOut=��� OnMouseLeave1 .��U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)� Z� .\�  $ 0��$	 1.5Q�	   $
 EaseOut=�  $ 0:0:0.6��$ 1Q�	   $
 EaseOut=�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)� Z� .\�  $ 0��$	 1.5Q�	   $
 EaseOut=�  $ 0:0:0.6��$ 1Q�	   $
 EaseOut=�.���  � �� �� " ��.R��    CommonStates��   $ 0D�$ 	MouseOver��. �� .���� $H B(Shape.Fill).(GradientBrush.GradientStops)[0].(GradientStop.Color)�$ ellipse��.g�  $ 0��$ Black��   $
 EaseOut=�  $ 0:0:0.2��$ White��   $
 EaseOut=�  $ 0:0:0.4��$ Black��   $
 EaseOut=�. 	  
Normal��	  	MouseOver��	  Pressed��	  Disabled��.+�A� $' ellipse������ $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ Black��� $ 	#FF0564FA��$ 1Q��� #��z����. #  z  #��z��! :� $% FrameworkElement.Loaded��$( ellipse��P� " �@J�	IsFocused# . P� " �@��IsDefaulted# . P� " �@J�IsMouseOver# . P� " � ��# . P� " � {�# .  ��  �@J�RenderTransformOrigin$ 0.5,0.5&���  � z� V� .~��� �� �� T� $ :� $% Mouse.MouseEnter��.[��� 8��  :� $% Mouse.MouseLeave��.[��� $#& OnMouseLeave1_BeginStoryboard��8�� 