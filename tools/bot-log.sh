#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`mktemp gztmpXXXXX -p /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY&f�� ����������������������������������ݧ��q�C�]�@wa����| 7��g7ǲ�y� � �  ���=��|�^w>���DbzT�SSѓ@�bzOA4���OI����f����6F����4�I香2L��4HG����@i�A�����i��2dT�FM4��F��4ѣ@�  	�<iO#*zO(=#�h�24�PѠ  � �      ��dOMOM���52��T���Mi��� �@�~�䞦�M4ѡ���4� 4   L ѦL#CA�@ ���!4&Sh�'���j2���@=&��4 h4��   4�� �4 h�h4A��$'��4�䇵M�C� ����44Pz����hi� �Q�j h�  hOP�   4D�@!�����M'�2FMFb�SOP��h�'�����z�@�f��h���z@Ѧ�h�C@L i�h2��4#�Ð��2�Ws�}#QD<�Z��{�Gc�O�0B�u��Ƈŏ�7�"��xЋ>���<*��7���3�v9e�$F�������u���Q�8����E���a��[�|N�UKV"�7aּ:��"��r���8��F=��H��Mg6�9ά�1�'"$��CZ�oӢ%멢$�^<����I�s�i=�"S��³�BG�_�js�Vp��_�3W'�n��w��M�,���հ�4�3Y4����s[*��`
ĉ�kb��##e��z���;R&���������,q�k��?[`�]�p�QB�%��l�e���%T��=�)[���}�H��ZN>���&ݼ��K80mt�ż��h��弧�Ǿ��s�*�,���8Y�S,� h�( q[a&��p��-~.+/'C�d�%'�hc�0�� ���2�E��y��]�H"�^�ց������O½�K�8��R���46-RQ�ũ��q������S���I��$����/W��!)_�A���e�����\7[E��5I�`�C\�"����Dn��Q�Q�ڱ�f}�R�J���-M�����3�M��u��d�^"�l /_�G��ai���nv�QEyJ���V����Z/�[�%͍%�DƛZUOhm��I�E��,�̔��{�d�8��,��1K�esU'��\-�]�k]
�7):�f]�����+�H��ŵ��Y���xN�0�^�d ��:�H;f��A���CHI6�{� 5�@]ci���I���ccm�a ���c�I�b��X�FJ�'㯫���6J���R�zfX�3{�Y�Q'IR��9�53�L3L��b�fl A|�Rb�ш���"8�m���LZ��lVF� C A�)���]@�jCN���qF$M�DІ�a6LN�%r� �]����b8`�S�� aqz9�$��&���`�[	1#� �ir,�X�� 4�ƴlRk!�'I0]c�g ����M�2���k�ᇟ�`ԉ �$
$`�ň��2�s���U�Nv�s�g��;���P�`�m��H��� ���ׄTk���z�|<-����]�bѓ(IAX�dL���Mb���\Y��ڑx*<$�Sb����I�F$�%���u<�!�Y��檲l���$ș�JL�D�I1�h�KO�������v�i��ՠ��{}�Y:;;>O�K���Z�)����ޮ$�B�s���']����l}��Y�8�n����w�X�teiLl���Ŏ�������)<��wy����O錕;zr(��wg1�S1�,"NQ��o���N׭��z��;�px �h7� ��.����,����Ǹw�ЦD4�&��6��9�y��35�&Q���H�Z��,4�T%߽_�v@��[g�+~�G����_!�59��e����Pp!CWӛ*��,�y��:.˻�s�=��u[O5�6�����i��p��'f\$�6$��[�t
���	�m�c`��B�L;U y5�FDC7���,����R!#
��)]ۋ]��(<�(�A�"�xjM��f�b���|��ߦ�c�R���<W��<����\<LýC��V��d�~�7ڈ8�Vil�Ue��ǜ����<�~o���mKxe�q�۹r����P�AF|�D�Q�����N��e]���w��K�{���A����c��G �k�=#=a�>e�6{�u�W'[�t�d�3�2�@��==� AJ
Hɐ�Yiz(�d�|�Z정����7�z��)�!�03�X㢠N���qE��rod_�.��%�l,�٬����:�����TQ����L[nJ4dVƫ@P=���o�TrHH�8��Iqm�,�x4�e.����W�����MO�]:y�0rD��?HJ�B�}tIpO�
$����3���'9�s��9�ӧM���k�"�b[��S�����5e\r��6�y���b &`MQ�Nw     b�9�ކ,P"�P�N���&H)��q�KU�y��|����B���j��p�N	�7����'�����Z�%�U���eL%��+Y� �5i�_�ӳ�2�[�������}'E�T���g�4M�F���������4"~���Ҵ|L+f�ϩ|���֖,<2f��\QS|�K�G�'�`����b�����iN�b,s� �9�c�Z��1_�=��k5>x�u��)qV��f��W�r����S�����-3�u�Ө=>�d�,Y�=�J���A��� ƀ�������q<=��-�K�������0���]����z��V�B��7��2E�pM��Vr�4�Hϼ����~Ndܯ��c4���<��<V�R�$w�t�x
O֮PƦgs"m;�\��G=q�=�BV3J�*���7�#�tl�	���l�r���N�B�s�&��ؤ�"*v���L�߀��2�K�*c�K4��G�mO�5���҇�*h�'CXՎ#\�U+��P۾M�R�M�h�U��ӸgW_&�P��Lʨ�P�y���*N��j[|wj�9�:�d�tMǟž�rM�6��Y�J�u�T��஭�M:�h�DW��lH�i���mHN.�Ӵ����/�h�ĩEe�����m��4�ҭ(��������;*B�(�.
mq!��ʬO1S?w�rvxC����p��{�k�~̺yA�<_Ӟs���N�:Yڰ;V�0�?��w����n�_���������g_S/k����I$�I$�I$�I$�IW`W]s�Ci� �L���ubh�����&�}�X�X�偀�D� %<�p�����w������7�Ū��rG�����5vGx��?�����m^
A������	���R@�\�ۦ��N�����*�]]�_ @<��K��.���6�@-����p�'���.N,a��q�����4�`�f�dq���R�r�YQ�lp��n���A3�M�IC��7b�m��u轺'�?˦-?"Y9�����~���(��E�����G���5o9�B}-v������f�A�3�wN�q3��׹JP4D�!k�i�cc���$Li�$d2!�OO$O1���d���}� �s_�����_,�j���Z~�:�C�|�_�^�-Ԁإ�\	"�aK���bf���ב�2R�zĒ4Y�y�{�LH�
\jV�fqH�*���C����{
�9�Ve��{���S��n��`5,+$.�\�tj�}�:?QK�D����#�Hd�9f�������qG��'�\�� 0�꼝�=�U��� IVck�-f��c� u
S�J<) !�0���Jg!��k/JJB&�b��o���}85o[OF�I
�4�����A�A9L��3XY�����*\;�H"�@�C�b�1���`�'S�w&6��C.�ꭎ�CNAlꕛ�f�� @f�x�&6"X�f���dT�����Vk�:�˩��x�v� �|�C(�A2��Lmk�ȁװ�>J���8I��8�V|y)Xr0P�+�j���S3�`dhYp�jDHE8TK�w�ۦ�@��L3�k݌��
Gn�i,;���V'�qy���s{m�!��l9���x�Slj� \����w[��^���Ӵ�Aw���Y�������!�io�
M;��%����7Us��`���%��GYR��>rFKjX+U8R�d��b�y5U�D�� $�EsL2]Qn�|T��~Y����n?��cmF�|u�d��+���ql���b{��2��K�<����Ys'��<�o�����������2߷��f;�B���5˿C��p�:�i��;�����W�;����
}G�����TS��N>�sjf�i�wn_X�ޠ�zh�N�*��f��~K�e����*�NFG����;�#��(
Ui�9wm�t!gO/��X���}��Z�/Кh��<Q��n��͆\��1�$2�{S���:��]Eг״�<�"P����mi�^�"���%�mF3���pi;����1�vZ��Q�%��|;��b4�$�3s�t��c��Z)�.$os�Y����6j����15i������F�UClS�W	�����Jg�m*�
�1��н"���k@0sK�!ugê��Q5+p�$T��|�"�ͱ&2U�d�R�*�r�i�I���O56 ��l6�o�F.�� �� t�@@a8���3.P�i,X��&>�*���13@-�(��4���G���g⁾�5�)ț3V�2���dB���{6��כZ�6�BFjl�^��t�Ũ��a�t�<����0�0���s<U m���\��yd)��$ǜ��	<�A>h�ekc�<�sH���eg��GxtQ�>t�_n�Z/%�y9�@��_�؂�C �=s�4�&_�1V�AnF���P�t�f��r]j����LsT�gĬ�-2�D&\T��9(�Q�A����w�������L�.��~��>�}K/Iy�7�7������~�,H�Ͷ�m��m��m��m�ܤ�I� �C�Ӏ�MiN짶�Qְ����6u�$~aA�l�zL��T�����-��g��'��x����ӑ z��v�[8a�����5GN���|�'[U��܃`�o�z�(�"�in�9��Ӹ`ܮ��b͢g�p#	�⋇�ֹ|
"�Z*ʽ5$�Օ�>��@�v�N�݂+�(���Ω!0`o�W�{
�Jd�f��� �#�D@(7�@�֐�^V��5kR�~A?7vSz��{*��p,ArVݦ?�>�遖�!i合�㿢���q0O�R�'�v]5$7B�ﾼ �J�S�	B�Yf�"����e=ƃ�V��>�.���h�#
�C���X=����ײ|4e{,�᪾�\�5_Ԇ����ff|w˓��0��.����>����N�  ��_$d)s=oRV:��i>㌪3�`���Q�YRŃת��S���h�5��j2��{&�f�
��g�6d����˟>#ϗ����R���Tݟ@�)c~�	�q��A�Վf�ЀB��4rN��`Ch��p�=�)�b�X�в�� �,.+��"L���pm��.��.z\{�rY�ƭ/N>���I<���_mןBN}��l�9��y�b+F-6��dҕ#,ey��s�e�����f�KPvd���]��*B���+���$�d�B֙�t�s^�:7˄�a+T���i9/�~���D��
ԯ��y�N�P�S�O�P5��뾴�7R.d�!�Z �p>�5CYx�6��:��R���0h�9Є�*̚!���&PFH�3�Ʈ͸����AGX����-��2֙`L�0:��hąhġVN02%�rb��)jl��uc�.��s�l��y�k�$]z]�j_�S( ۰�'��I�4D0��Pk߳"��8Y�t��b��لi�ݭ��OHŪ�<0�,7�1�9���S�QD �s3��ʍ���E������Q��\�3K(�X�?ǯT������^ڜ(��.cf�A��fɿv�����p�)h�4 n�|4	ۥ�nc�2DŸ�(ݜ-mڈ��Ȧ8��4�o&P}��î(HR�C�z�u�0H�����2�$���-�HP����0��7* �4�}lY�YX\$X'L6t��38��7��������o���}C��{8�ĉ�����$[�[��G+���
�� ��j�4�͉��@D�WH�3l�l&=ON��"1 �Z(�v|��K��Gq�'����ֹ��̂2wo��W�;PgAڻy�i�	x� �f�YZv�_�G�
���_��Wx�ݢ^k����[�{�L��]�$��Z��k���^s��l�iŞ�[�l�ˆi�Z	w�;A�z7�H��=0�w_#�e��C{&Y�x�^����CAKh��Y�-��^�0Ni�gx�����b�.#����z���^۞Vt��ߣ���FR9٧(�V �&v	�"����=����,�����ht�Λ�8X�A�r>l��#�r��p�UDʵ�	��0��s�A`��`�s��&למY�Jh��~6%.{d[��fV9��G�u�so���KR���Ƒ0�o���Kk��\���`�8�1�tMIۦX�y("{m[%:L�M���J��0wx3c��[���RҨ0��4.�d4�#� �0(caa�Z����n nX�:�$Cr�0"M�K��3yb�v!�Q��ғ#%�\v~d$7)�
��� ��	/n4�Jh�?���)HƧթ�L��5���ۿ�m�?Q	��lF��g3.��W�Qso��\}\g��SS��ID�Q��z�wS�)�0B�(�-LI
�G��3��H�N�=Y�f뚁	��MA%�#	j*E:Ԉ|� h�
2�5hJ���Q�% /Q�ES��Ӝ��^1s�9���l���ҭ V�G���9i��k:�����u#��X�a����b}�Q�������Vgd^�8f�(��gO���!&_����n,zmT}U9_*df��Ɉ���'b�s@R[a9�-Q��۾���^.��Xu��5$ؓh�*���|+qELMv��zswSy@�SԄ�Y$ ���!��%��w�Π��bV��tA4��&�i݅Y�qv*��d�7�៲O3E���| ��8/^�R�vK�ET�-K/�����;��>�3	l+��o�u�,�5~a�I:��0X�xu
/.����rQ�q�3A�²S�t˙���q�\����\��AEi����H"���D>4U���@DI'0<�xj�ad�-�i��x��!G�̹��s�j�:N���\ǭa�-i)�]�YI d	�6���j�
0�A�hd��Vrm���r���<�q�����%.d"�c��a@I�LP� ��0cm��]��t<'c�j�Vkp�5����d$��#E��qMq�i+M8���8�bTH�<���E�L�A{.��C���|�v?�������u���,O���:{w��6�S J'.��mM�%U�̪vX��&������h<�W�����a�M#�F�=֓l�&K=W"B_���N�]45����x�%�cp$�+S�.Z��g���)ʑ|{f[����j��)n�x�4�'�0%�@`Ef���%��1x�;��5O�;[��o#��dU��ӷ�sK��e_/*�.���ފ�ҋ=������e�[��P��Yqd�
pT]�Mߜ��"�=�$6ɵ�����;[|x�b�K�}݋j=ŗ��ڼ��7l2�x�8ς����;�M�;���^�(u�;�d!B�ffK�]��I$�L�xυ�"|�GqE�&�2����s��0��4�����a��	,��Z	�i%:�ݝ @� BL�!@x33��g��dt�PP���G?U�ʽH2��c!I�ܣ%�Cy<F7�6��B'��i`55�T���C'i�a0�K%����c�ٌ�a6��R$���!��*�s���
Ɗ�{�)v*>Ⱦy�:�Z,�탒͵T�޼D��̔cFEz��e«ː����$��^�2�}F�:�+�z�W0�XDHH�0�&d��,
b��G�8F��.��p���d�2U  ��2go"�j?&T��gN��ׯ^�z����rE8P�&f��