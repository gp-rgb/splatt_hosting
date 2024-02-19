#!/bin/bash
source config.txt
cd /home/ubuntu/georgia/splatt/
git clone https://github.com/antimatter15/splat.git
cd splat
pip install plyfile argparse  
python convert.py ${MODEL_PATH}
python -m http.server ${PORT_NUMBER}
