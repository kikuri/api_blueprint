#!/bin/bash
 
cd `dirname $0`
 
files=()
files+=('../src/messenger.md')
files+=('../src/line.md')
files+=('../src/emotion.md')
 
echo 'FORMAT: 1A' &amp;gt; ../api.md || exit $?
cat ${files[@]} | sed -e '/^FORMAT: 1A/d' &amp;gt;&amp;gt; ../api.md || exit $?
mkdir -p ../output 2&amp;gt;/dev/null
aglio -i ../api.md -o ../output/api.html || exit $?
 
exit 0