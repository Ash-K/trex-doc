#! /bin/bash

echo Repository is deprecated, please use 'doc' directory of trex-core.
exit 1

waf=waf-1.9.3
p2=${PYTHON:-${PYTHON2:-python2.7}}

if which $p2 &> /dev/null; then
    $p2 $waf $@
else
    echo "Required Python 2.7 (Asciidoc requirement)"
    exit 1
fi

