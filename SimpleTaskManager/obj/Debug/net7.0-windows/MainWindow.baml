   M S B A M L   `   `   `  ����L  HSimpleTaskManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:SimpleTaskManagerSimpleTaskManager  5   	   "    SimpleTaskManager.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:SimpleTaskManager     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��600��6)   .��5	      � .+�5
   
   �� $��/Photo/cpu.jpg��6   $
��Fill=�6)   � 5   
    � RowDefinitions 5      �� 5      $��2* �6    �� 5      $��* �6    .+�5      �� -   5        $��processListBox��5      $��Center=�6,   $	��Top=�6I   $	��550��6b   $	��220��6n   $��0,20,0,0q�6{   �� 5      $��1��6    �� Orientation$ 
Horizontal=�6'   $��Center=�6@   .+�5      �� -   5        
��� � �
�������$��30��5   ?   $	��100��6K   $��Show Processes��6W   6p   �� 5      -   5        
��� � �
�������$��30��5   ?   $	��100��6K   $��60,0,0,0q�6W   $��New Process��6i   6   �� 5      -   5        
��� � �
�������$��30��5   ?   $	��100��6K   $��60,0,0,0q�6W   $��Kill Process��6i   6�   5      5      5      5      