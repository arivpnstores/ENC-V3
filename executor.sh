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
BZh91AY&SYV�8  �_�H0~���?���?���ADD@ P�s��Lֽ�%��A3Ebz�P��G��4��4=M4�SG� i� �LL�lS�Q�􌞣    @�	4��'��f�mL� `�d`M2a��)�z)�z&�z�4h3(�M � 	MBj��(�dh    @ H�&�9�����M%ra�JEFS@D��JJ[�����E�ZZLyE�k���h�N�t�PFE�2frؤ[mw  �A��A)��*/+V{�T6n�g&�A$.\�N|
��#�v-���[⺓�*�D���H�H�B����K�o|��O��b�5�3t���c>���L�v��䝁�b(�P��,��{��� E�=� LD�,ڡcGI�G�^�x()��V �������H�E�sI=��LS���!�{P�е�y�9�nȠ�6!IRSÇ!$� �@�S��J���<I\����	��z<t� 5B�Ɛ]���u(����9�[�ܕFOϚBǥ�P����E�P�1l��rsҊ$-�<IH<E�m<���C�k���ԅJ��Z�|�0��A���_	M�] �v$R) �!��s}���&*��KR@	�;ⴴ�a��\�s������D��j��_�h��+M�N�c�Q��o%8;�	&�*C�O0��d�Da@��j�)�(ߜ���� �&��Ý=i�f�q ��� �T#@c{
����E2��O�+�*�cϳHF>6�΅�����@��d�Je��FrˎՏj��9H%�n��!5�Az�)pō���bZ�d!\�@9	��dKjJ�,0��Q����'?aU9�9	��:QE��Z=���k����y�
�Q�N�J*S�Q\��0)�`��*�!�o��0�-9�"n[���4>��J(���� �=n�h�	g&���݉��cWD:�Qp��JQ��S�q�,�u�"%;�2h�©?s&�q't%Z$ 32ɨ��Q\*� �ȧ�9���
�j����A	���h�Xg�B�7 ��:�n~������x����7BZi��#������/<���a���8C3%���0ZI��"�(H�b 