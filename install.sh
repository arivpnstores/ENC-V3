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
BZh91AY&SY#H��  �_�]P}���?��.����@D@ P�{����xhI�$�6���i����@CFA�@!����O�  �     @��MO!j�dd10���C���4ѓ9�##&�4!�!�   di��a�"�l�M&������mMC��G���ѠQ����`/�[tyaC�𾤽V�)^xt�Z#1���+��U|8���D��Bk�q)S!��@��j�<ޕI�h#��E�Ph8�YVB6FNv�#lco��џyME���'���8��ɼK3)+�D�LH��0��@����P!��E��AJ��X�*���{��5�ZH���XEna�������.�����)N�����l(MM��(����@+
@Q-1���/��{F�`jE�� M����\t_�Z%��%�C�Q�3�Ds�hՓ"��]fb j��^�"llm��"�o	�Z�����B{/��؁�w�պ_# �4F���k��Ӑ}{��zU��QVF��wK'/)M[��iqia9{o��3k����k�d ����~����{����l�3��G2�m�6&��J=B7��?��bD����%jM����iJ\�@��Z�>'��S�!�q+{�2�z\�R��NY�d_DdHRB2p�ё��h���A�+ m#�����}�B!�H��Yb۞�^e*��/,��j_��̲�k�7L���
bb݉�Nb0�!h�L�]Z4�1��/�)Y̝d�� �T��3Xd��11K���fS)�V^�VAo��Hv��OL��
�օ�B�C�1e�6�lY�a�<��З����x�1 ��ob��c\PX�C�B\��h�,�pͩ���dI1���RLȫF�N3E���#�c�J`��@���UY��;d[��e��O�)K�.���U����|s��1HMj�F`�,5���.@|z��OD#Y����2%�ϑf;zaG�˴ ���\��#�e�|��޻�B'�b\�T[�|�D���5���_�LAeE]5	�(�i�t6HQ��8�a2*ʁxG<*!�~�1�U*�P�u�*D�(�i���Ӏ�K�J]R<̞����[8�O'㠧���5 ��������J=��`��9�A��2	m�rE8P�#H��