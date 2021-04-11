#!/bin/sh
if amixer sget Headphone | grep -q "\[on\]"; then
echo ''
else
echo 'ﳌ'
fi
