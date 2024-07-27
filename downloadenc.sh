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
BZh91AY&SY7�� 0_�ư����������`�V  � @ `��Ӿ��sj�<��n����U^�	$�!���I�M��H����̃H6S�x����M $���iO�Oh�)�h�mF�4�Q�����dz�  Кih���MOI�j�hɦ@hjLCL@hb"M��by&���44 � �   p  4  dhd    #  �$�i��jyOD�j�&����j������@�0 ���{�Ứ����^ʝ��'��@������P��*��.$�%�+K55�9��j��S#�I���E��ʩ>f�!���MK-�:�g�q� ryZ"P$\=�җ���T�s�o9��͊v�d%���0�\��W���#��R1�����+AS�Q����d�9�I|��0a��a�O�o,���ĸ�Ŋ��������n��q9.�����l�W��C����M%SX��W�l�L6d�6_��(����:�m�]~��V���_p�0׵&d����Ї��(3g���z��v�'+ǣ���Dͫ���I����{E�b\��LVuL��@��3=Dh�P�u\���1�s3��_��}�u��pk�`#!��!
k�ы˄��E�Ȝ꙲6x��Q0(J&��ֺ�{Wa^��M�30+u�T���׏�.HiҰ�d
KED>5А{4q�Ku����&0�01:R�&uJ�al�[�t��^�w�����\2����;,�g�O�n�ވ\I��lZV��7��jAg���l� ��2Cbw��݂T]�J>y_p�0�D���P`뺗�B�:��}&�g3�Ä���#"ڤ�3��h�`[(h�����!�62���77�e�m�x$���&CޅVy���"Wު/�ϙ�
���v�9�Q��Fr2>�o����yE<t㩴r��5_�=�5 �zA`�X�[��'1z�r�s%MA|F� ��4�9N�9hDI������3[f��ҟ{3'\\�qp�]��Q�2�����W���e3�qZ07����l֕�|\��H��//|��3c<�������af2D&-wVZ=��L���h޴��c�q�o�*i���i��P�f�r���EKG��j���\��c�:��- ҍ����i�\�)�"�O�W���pN�	�H��A �D�"O@#�{+k���u"���̓1�Y�V)�����ˋ���f��>葀�O|�����MW��m�emY����'Ae�*�T��Y�o���hm�q0�1��^Ե6���&�{�X�3�A
r*�����ٰ��O"��cֻ /�쒞��da=d"x0�eQ��]����c*���L"��.�糀\�1	`�Mj~;w#(�$GQ�It�g'����Ah�*4Fi�|eB^.A�J�Sodp���&KK*�8E�bގ�i%���n]]�S�� �,d�sH�x�՝l�]�=����$�YL�Y$3VABBH ��~�O�\�c2���Ѡ&�Qz/NS����=��3y!y���e]�3nR��i�P2�`�æs%�9q]�[�T,] ��-�,��1U-B��^X��"A�R̎)�،����Z)����r@/6J��i�7�;5��R~jچyϺ�j�J1��U�	��:u�
^�&�D��n��A�a��DN��<_A�R{-�By�N�C��L{���N��&5*��ftBeMLiA��)
�2KR"�p�x���*!p���{m�
�����}���<%H&�LDC�fY���k��+���Ab��N�4,����7-z6�ڧ�R��� F��]˥��`֔$��.����h�q+J��ǹH�e���R��@�&z��V+��1�U�N�1b��=���.��)ƽҀ��h��"A�Y�g�DQ��OJا��=1u��6RQ)���"t�<r`�(n�q�4IT�σ�Z�v7]~p�15���'���B��b)3�ˠ�p1ݭ��m�G`.V�K��הqt����e�8i8����4��}ѓ�O��Y>�G���I�)o�na�)�|���V�����R�W].|?TQi�@ ��!��ޗ��.�$���`��o�$#9�^{2���s�ܑN$����