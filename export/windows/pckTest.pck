GDPC                                                                                   res://default_env.tres  �      �       um�`�N��<*ỳ�8   res://icon.png          v      ge��@o�7�|AZ   res://project.binary�-      9      �F,3աDT�e>B�    res://src/Main/Control.gd.remap 0      +       0es@i�~<n{�
�`   res://src/Main/Control.gdc  P      V      ����J�p������   res://src/Main/Main.gd.remap`      (       T֑%�*�LT%���`�   res://src/Main/Main.gdc �	      �      �%R���/]�&�k�)/   res://src/Main/Main.tscnp            9�
�.C����@�eE    res://src/scenes/GreenScene.tscn�      i      �"	����!9���$   res://src/scripts/PckLoader.gd.remap�      0       E�����O�Ē���V    res://src/scripts/PckLoader.gdc        d      D����`(��]���(   res://src/scripts/SceneLoader.gd.remap  �      2       ;E�]�R*�TXFx��D$   res://src/scripts/SceneLoader.gdc   p      �      s�&r���{@��$���[gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC         '   �      ������ڶ   ��������������Ӷ   ���������޶�   ������������ݶ��   �������Ӷ���   ��������������¶   ��������Ӷ��   ������������¶��   ��������������Ķ   �������¶���   �������Ӷ���   �����϶�   ��������������������Ӷ��   ��������������������Ҷ��   ����������ڶ   ���¶���   ������������������Ҷ   �����������Ӷ���   ����Ӷ��   ���Ӷ���   ��������������¶   ն��   �����������ض���   ���������Ӷ�   ������������Ҷ��(   �����������������������������������Ҷ���   ���Ӷ���   ��������Ӷ��      SceneTextEdit         PckTextEdit       SceneContainer        Viewport      want_load_scene       want_load_pck      	   add_child                      	                        "      +   	   6   
   7      8      @      D      E      F      N      W      X      Y      a      j      k      l      w            �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   3YYB�  P�  QYB�  P�  QYY5;�  �  PQY5;�  �  P�  QY5;�  �  P�  QY5;�	  �  T�
  P�  QYYY0�  PQX=V�  �  PQYYY0�  PQX=V�  �  P�  R�  T�  QYYY0�  PQX=V�  �  P�  R�  T�  QYYY0�  P�  V�  QX=V�  &�	  T�  PQV�  )�  �	  T�  PQV�  �  T�  PQ�  �  �	  T�  P�  R�  QYYY0�  PQV�  �  PQYYY0�  PQX=V�  �	  T�  �  T�  �  Y`          GDSC            ^      ���Ӷ���   ������ڶ   ������ڶ   �����϶�   ������¶   ������������������Ӷ   ���������޶�   ����Ӷ��   ����������Ķ   ���������Ӷ�   �����������Ӷ���   ����������������ݶ��   �������Ӷ���   ��������Ķ��   �������ݶ���      want_load_scene       _on_want_load_scene       want_load_pck         _on_want_load_pck                      
                              *   	   +   
   ,      7      A      H      I      J      U      \      3YY5;�  W�  YYY0�  PQX=V�  �  T�  PRR�  Q�  �  T�  P�  RR�  QYYY0�  P�  V�  QX=V�  ;�  �  T�	  P�  Q�  �  T�
  P�  QYYY0�  P�  V�  QX=V�  �  T�  P�  QY`         [gd_scene load_steps=3 format=2]

[ext_resource path="res://src/Main/Main.gd" type="Script" id=1]
[ext_resource path="res://src/Main/Control.gd" type="Script" id=2]

[node name="Main" type="Node"]
script = ExtResource( 1 )

[node name="Control" type="Control" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="MarginContainer" type="MarginContainer" parent="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
custom_constants/margin_right = 120
custom_constants/margin_top = 40
custom_constants/margin_left = 120
custom_constants/margin_bottom = 40
__meta__ = {
"_edit_use_anchors_": false
}

[node name="VBoxContainer" type="VBoxContainer" parent="Control/MarginContainer"]
margin_left = 120.0
margin_top = 40.0
margin_right = 600.0
margin_bottom = 380.0
custom_constants/separation = 40

[node name="Label" type="Label" parent="Control/MarginContainer/VBoxContainer"]
margin_right = 480.0
margin_bottom = 14.0
text = "This is Scenes manager"
align = 1

[node name="VBoxContainer" type="VBoxContainer" parent="Control/MarginContainer/VBoxContainer"]
margin_top = 54.0
margin_right = 480.0
margin_bottom = 92.0

[node name="Label" type="Label" parent="Control/MarginContainer/VBoxContainer/VBoxContainer"]
margin_right = 480.0
margin_bottom = 14.0
text = "Scene path:"

[node name="HBoxContainer" type="HBoxContainer" parent="Control/MarginContainer/VBoxContainer/VBoxContainer"]
margin_top = 18.0
margin_right = 480.0
margin_bottom = 38.0

[node name="SceneTextEdit" type="TextEdit" parent="Control/MarginContainer/VBoxContainer/VBoxContainer/HBoxContainer"]
margin_right = 427.0
margin_bottom = 20.0
size_flags_horizontal = 3

[node name="LoadScene" type="Button" parent="Control/MarginContainer/VBoxContainer/VBoxContainer/HBoxContainer"]
margin_left = 431.0
margin_right = 480.0
margin_bottom = 20.0
text = "LOAD"

[node name="VBoxContainer2" type="VBoxContainer" parent="Control/MarginContainer/VBoxContainer"]
margin_top = 132.0
margin_right = 480.0
margin_bottom = 170.0

[node name="Label" type="Label" parent="Control/MarginContainer/VBoxContainer/VBoxContainer2"]
margin_right = 480.0
margin_bottom = 14.0
text = "PCK file name:"

[node name="HBoxContainer" type="HBoxContainer" parent="Control/MarginContainer/VBoxContainer/VBoxContainer2"]
margin_top = 18.0
margin_right = 480.0
margin_bottom = 38.0

[node name="PckTextEdit" type="TextEdit" parent="Control/MarginContainer/VBoxContainer/VBoxContainer2/HBoxContainer"]
margin_right = 427.0
margin_bottom = 20.0
size_flags_horizontal = 3

[node name="LoadPck" type="Button" parent="Control/MarginContainer/VBoxContainer/VBoxContainer2/HBoxContainer"]
margin_left = 431.0
margin_right = 480.0
margin_bottom = 20.0
text = "LOAD"

[node name="SceneContainer" type="ViewportContainer" parent="Control/MarginContainer/VBoxContainer"]
margin_top = 210.0
margin_right = 480.0
margin_bottom = 340.0
size_flags_horizontal = 3
size_flags_vertical = 3

[node name="Viewport" type="Viewport" parent="Control/MarginContainer/VBoxContainer/SceneContainer"]
handle_input_locally = false
render_target_update_mode = 3
[connection signal="pressed" from="Control/MarginContainer/VBoxContainer/VBoxContainer/HBoxContainer/LoadScene" to="Control" method="_on_LoadScene_pressed"]
[connection signal="pressed" from="Control/MarginContainer/VBoxContainer/VBoxContainer2/HBoxContainer/LoadPck" to="Control" method="_on_LoadPck_pressed"]
[connection signal="item_rect_changed" from="Control/MarginContainer/VBoxContainer/SceneContainer" to="Control" method="_on_SceneContainer_item_rect_changed"]
  [gd_scene format=2]

[node name="Control" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ColorRect" type="ColorRect" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
rect_min_size = Vector2( 100, 100 )
color = Color( 0.0941176, 0.580392, 0.101961, 1 )
__meta__ = {
"_edit_use_anchors_": false
}
       GDSC         
   +      ���Ӷ���   �������ݶ���   �������Ӷ���   ��������������Ŷ   �����������������ݶ�      Loading pck with name:     #   Error while loading pck with name:                                             !      (   	   )   
   3YYY0�  P�  V�  QX=V�  �?  PR�  QY�  &�  T�  P�  QV�  �E  P�  �  Q�  Y`            GDSC            >      ���Ӷ���   ���������Ӷ�   ���������޶�   ����Ӷ��   ����   �������Ӷ���      Loading scene from path:           %   Error while loading scene from path:                                                         	   &   
   -      4      5      <      3YYY0�  P�  V�  QXV�  �?  PR�  Q�  �  ;�  �L  P�  Q�  �  &�  �  V�  �E  P�  �  Q�  .T�  PQ�  �  .�  T�  PQY`       [remap]

path="res://src/Main/Control.gdc"
     [remap]

path="res://src/Main/Main.gdc"
        [remap]

path="res://src/scripts/PckLoader.gdc"
[remap]

path="res://src/scripts/SceneLoader.gdc"
              �PNG

   IHDR   @   @   �iq�   sRGB ���  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�          ECFG      _global_script_classes             _global_script_class_icons             application/config/name         pckTest    application/run/main_scene          res://src/Main/Main.tscn   application/config/icon         res://icon.png     autoload/PckLoader(         *res://src/scripts/PckLoader.gd    autoload/SceneLoader,      !   *res://src/scripts/SceneLoader.gd      display/window/size/width      �     display/window/size/height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         expand  $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres         