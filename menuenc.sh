#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
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
BZh91AY&SYX+$H  �_�Y0~���?�߮����PD@  P��֗gu�b���a$�OP�m#ɦ��@��jmF4��&����$�0CD��M4h�F� =M�A�b*y@��  �4ѣ    Ɔ��L�4i��  @i� Ih�(��5 �F��@=#&��A(`nx&m���V_�s���� ��&��t_}T��L��[}��讓���A9�{��U<C
PK'#�
����΢���F�4�H؎Q��#vUd��*��Ў��,�X�w��Ks�>��ǥ�C�b���/o���Y�f2�7��Q�3��?>C��y��E��3�#�ȜaR8$G䭢�-ɫ]���Y"�8+B�$��$�b�m6��3������k����!��QE$
$pt̷&�L�Oey\و�����r�F���_E��3�U{1ڡc�zH���f�"����d���-Y֪�[�?�l]9���ڻd�IqYk0A���d�E$T	&*7XFLM.w����l�9T���t�f�EL�絺���r���`l����~���81W�Ϲ���r%φ��Xx���4�1���*h%8pr��F����lF	���	s��n�<�CL��p�Y�V��F0z/a��Ɇ�b'�D�y�>2ެ�m91a�~y��Ix,�k
E$	�%��$UΩ�D�E��F�`]$RRű<ܐ�@��}�CA��1�^�k-�ږd	o\�WP�21E�P�	�0jv�f��(�
�<�F<�D��;�VU���? ^�ն�u��^�=A�\a�2�GF��i�A��DpA�r�M,��a����C���X��"�;^?w)���iS4Me��
ي�lP6�x"���6a3X��Ψ4�0`B�l�rrREBoR��HǆG���Eh�����Ք*�P��A2"�IW�D칌g(4�rTMb.�gD��[ga��ph=�#�QV̭0�Ƒ���k�!y(aL2�Ӊ�֖�.]���Ui��c�T���i*j!F�]u�ZY�7_t	�"-|�d�ێ��&���N����l�c�/24�켉""j,�'�n�SU.�>�+ޤ+�>oR({�Wi�b0���5E��u��@ɔ��L�]���d���0�D�Ƀ7v#_�g�\�wa�iC��ԍHI e�EG�� ������.�p� �VH�