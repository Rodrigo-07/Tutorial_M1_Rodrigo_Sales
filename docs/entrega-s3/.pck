GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex      �      &�y���ڞu;>��.p   res://Node2D.gd.remap   �      !       �����lꏑ�ZV�   res://Node2D.gdcP      y      �[>��}~�v�	�   res://Node2D.tscn   �      �      �]ګp�ﯻ������   res://default_env.tres  `      �       um�`�N��<*ỳ�8   res://icon.png  �      �      G1?��z�c��vN��   res://icon.png.import   �      �      ��fe��6�B��^ U�   res://project.binary�)      �      ��3crn����At4S            GDSC         (   �      ���ӄ�   ����������׶   �������ه�������Ҷ��   ���������������׶���   �������ׇ���   ���¶���   ���ض���   �������ل�������Ҷ��   ����������������׶��   ������   �����Ҷ�   �������ׄ���   �����ٶ�   �������ׅ���   �������م�������Ҷ��   �������������ٶ�   ���׶���   ������   �������ׂ���   �������ق�������Ҷ��   
   JavaScript        Python        PHP       C#        C++       ,         Olá, tudo bem?                          
                           	   "   
   #      $      3      4      5      ;      C      D      K      L      M      \      ]      ^      d      i      s      t      u      {            �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   3YYY;�  LMYYY0�  PQV�  �  ;�  LR�  R�  R�  R�  M�  �  �  W�  T�  �>  P�  T�  P�  QQYYY0�  PQV�  ;�  W�	  T�  �  �  �  T�
  P�  Q�  �  �  W�  T�  �>  P�  T�  P�  QQYYY0�  PQV�  ;�  �  �  W�  T�  �>  P�  QYYY0�  PQV�  �  PQYYY0�  PQV�  ;�  W�  T�  �  W�  T�  �>  P�  QYYY0�  PQV�  �  PQY`       [gd_scene load_steps=2 format=2]

[ext_resource path="res://Node2D.gd" type="Script" id=1]

[node name="Node2D" type="Node2D"]
script = ExtResource( 1 )
__meta__ = {
"_edit_horizontal_guides_": [ 76.0, 137.0, 288.0 ],
"_edit_vertical_guides_": [ 271.0, 548.0, 760.0 ]
}

[node name="Input1" type="LineEdit" parent="."]
margin_left = 365.213
margin_top = 105.671
margin_right = 435.213
margin_bottom = 130.671

[node name="Input2" type="LineEdit" parent="."]
margin_left = 856.0
margin_top = 103.0
margin_right = 927.0
margin_bottom = 131.0

[node name="Label" type="Label" parent="."]
margin_left = 344.0
margin_top = 15.0
margin_right = 664.0
margin_bottom = 29.0
rect_scale = Vector2( 1.14738, 1.72277 )
text = "Clique no botão para executar cada funcionalidade"

[node name="Label2" type="Label" parent="."]
margin_left = 41.0
margin_top = 77.0
margin_right = 206.0
margin_bottom = 94.0
rect_rotation = 0.534871
rect_scale = Vector2( 1.10873, 1.34498 )
text = "Cria uma lista preenchida"

[node name="Label3" type="Label" parent="."]
margin_left = 306.0
margin_top = 77.0
margin_right = 510.0
margin_bottom = 97.0
rect_scale = Vector2( 1.08411, 1.13333 )
text = "Adicione valores a uma lista"

[node name="Label4" type="Label" parent="."]
margin_left = 590.0
margin_top = 80.0
margin_right = 717.0
margin_bottom = 111.0
rect_scale = Vector2( 1.19776, 1.32943 )
rect_pivot_offset = Vector2( 50, 8 )
text = "Função que retorna 
um texto tela"
align = 1
valign = 1

[node name="Label5" type="Label" parent="."]
margin_left = 792.0
margin_top = 69.0
margin_right = 979.0
margin_bottom = 100.0
rect_scale = Vector2( 1.17103, 1.33383 )
rect_pivot_offset = Vector2( 50, 8 )
text = "Função que retorna seu input"
align = 1
valign = 1

[node name="Resposta1" type="RichTextLabel" parent="."]
margin_left = 50.0
margin_top = 297.0
margin_right = 231.0
margin_bottom = 372.0

[node name="Resposta2" type="RichTextLabel" parent="."]
margin_left = 324.0
margin_top = 299.0
margin_right = 491.0
margin_bottom = 350.0

[node name="Resposta3" type="RichTextLabel" parent="."]
margin_left = 586.0
margin_top = 297.0
margin_right = 729.0
margin_bottom = 353.0

[node name="Resposta4" type="RichTextLabel" parent="."]
margin_left = 809.0
margin_top = 296.0
margin_right = 974.0
margin_bottom = 355.0

[node name="Botão1" type="Button" parent="."]
margin_left = 60.0
margin_top = 140.0
margin_right = 197.0
margin_bottom = 177.0
text = "Lista preenchida"

[node name="Botão2" type="Button" parent="."]
margin_left = 329.0
margin_top = 140.0
margin_right = 469.0
margin_bottom = 174.0
text = "Input"

[node name="Botão3" type="Button" parent="."]
margin_left = 588.213
margin_top = 137.671
margin_right = 719.213
margin_bottom = 170.671
text = "Enter"

[node name="Botão4" type="Button" parent="."]
margin_left = 824.0
margin_top = 138.0
margin_right = 962.0
margin_bottom = 176.0
text = "Enter"

[connection signal="pressed" from="Botão1" to="." method="_on_Boto1_pressed"]
[connection signal="pressed" from="Botão2" to="." method="_on_Boto2_pressed"]
[connection signal="pressed" from="Botão3" to="." method="_on_Boto3_pressed"]
[connection signal="pressed" from="Botão4" to="." method="_on_Boto4_pressed"]
            [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Node2D.gdc"
               �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         Projeto Semana 3   application/run/main_scene         res://Node2D.tscn      application/config/icon         res://icon.png     display/window/stretch/mode         viewport   display/window/stretch/aspect         keep+   gui/common/drop_mouse_on_gui_input_disabled         )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres     