import sys

import os
from os import listdir
from os.path import isfile, join

def rm_main():
  sourceDir = 'C:\\Projekte\\image-classification\\covid-test\\data\\normal\\'
  # destDir = "/scanned"
  imgFiles = [join(sourceDir, f) for f in listdir(sourceDir) if isfile(join(sourceDir, f))]
  return imgFiles