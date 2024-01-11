#! /bin/bash

#
# Usage:
# After build the image and then execute this on guest (binding host's $HOME)
#

pip install --user -r $(cd $(dirname $0); pwd)/requirements.txt
