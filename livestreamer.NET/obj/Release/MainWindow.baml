   M S B A M L   `   `   `  ���� K  Glivestreamer.NET, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:livestreamer.NET.ViewModelslivestreamer.NET.ViewModels  !    livestreamer.NET.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     8vm)clr-namespace:livestreamer.NET.ViewModels       � Title$  livestreamer.NET��$	��180��$	��435�����	#FF0B61A4 � UseLayoutRounding .  � 
ResizeMode$ CanMinimize=� � WindowStartupLocation$ CenterScreen=� � 	Resources 5  /livestreamer.NET.ViewModels.MainWindowViewModel   MainWindowViewModel �� 
TargetType �� Property �� Value �� Padding	 �� Triggers
 P� Property P� Value �� 
TargetName N� EnterActions �� 
TargetName �� TargetProperty	 t� To g� Duration N� ExitActions  
PlayButton �� 
TargetType F�Name �� Stretch ��Name  NormalButton��%�  &	        '��      '�� W     &	 �    &	 u      �� " ��.���  �@��TabStripPlacement$
 Left=���  � ��$ 1,0,0,0q��� " ��.���  � �� �� .R��� $��Border�����	#00FFFFFF$��	-2,-2,0,1q�._��� $��Header��#��z�����	#FFFFFFFF$��Center=�$
��Left=�$ 20,0,0,0q�$��14(�	 P� 
 �@J�IsMouseOver . . ��� $ Border�� � �� �	#FF66A3D2P� 
 �@��
IsSelected . . ��� $ Border�� � �� �	#FF25567B �� .���� .��t� $ Header��$ Padding�$ 
42.5,0,0,0X�$ 0:0:0.25D� �� .���� .��t� $ Header��$ Padding�$ 20,0,0,0X�$ 0:0:0.25D���  �@�FocusVisualStyle Z� ��  � ��$ 40����  � ��$	 150����  �@�UseLayoutRounding . �� " ��.���  � �� �	#FF66A3D2��  � ��
 �������  � ��$ 15(���  � ��$ ./#Segoe UI)���  �@J�SnapsToDevicePixels . ��  � �� �� " ��.R��� #��z��._�� .+�F� $ PathIcon��$��15��$��25��$
 Fill=�
�������$
��Left=�$��17,0,0,0q�4�������<R���=�x�O���Tn5����<R�� $ MyContentPresenter��#��z��$��Center=�$��Center=�$��0,0,0,0q�	 P� 
 �@J�IsMouseOver . . ���  � �� �#E59400��  � ��
 ������� $ PathIcon�� � ��
 �   �P� 
 � {� .  . ���  � �� �#626262P� 
 � �� . . ���  � ��
 � E����  � ��
 ������� " ��.���  � �� �	#FF66A3D2��  � ��
 �������  � ��$ 15(���  � ��$ ./#Segoe UI)���  �@J�SnapsToDevicePixels . ��  � �� �� " ��.R��� #��z��._�� .+��� $ MyContentPresenter��#��z��$��Center=�$��Center=�$��0,0,0,0q�	 P� 
 �@J�IsMouseOver . . ���  � �� �#E59400��  � ��
 �����P� 
 � {� .  . ���  � �� �#626262P� 
 � �� . . ���  � ��
 � E����  � ��
 �����.���  � DataContext# [  .+��� .@��� $��Stream��.���� .+��� $	��Top=�$
��Left=�$��2,2,0,0q�$��0,0,0,1q����#B5B5B7._��� $��Stream��$��24(�$��4q����#008000��  �� 
IsEditable . $��10,10,10,10q� �� Text �� *Stream+ �� UpdateSourceTrigger$ PropertyChanged=����� *	History+$ PropertyChanged=� J� InputBindings �� 
 �� Key$ Enter�� �� Command �� *Watch+�� #��[ $��50��$��	10,0,10,0q����� *Watch+���� .+��� $��	Watch Now��$��20(��� $��on twitch.tv��$��12(�
��������� $��Settings��.���� .+��� $	��Top=�$
��Left=�$��2,2,0,0q�$��0,0,0,1q����#B5B5B7._��� $��Settings��$��24(�$��4q����#008000]� $��
10,10,10,5q�.+��� $��	0,2.5,0,0q�$��Available streams:���� $��10,0,0,0q����� *QualityOptions+ �� SelectedItem �� *SelectedQualityOption+�� $��	10,0,10,0q�$
��Chat�� d� 	IsChecked �� *
OpenChat+�� #��[ $��
10,10,10,0q�$��30��$��Clear History������ *ClearHistory+�� $��Console��.���� .+��� $	��Top=�$
��Left=�$��2,2,0,0q�$��0,0,0,1q����#B5B5B7._��� $��Console��$��24(�$��4q����#008000�� $��
10,10,10,0q�$��80������ *	Console+