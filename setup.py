#!/usr/bin/python

from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize
from Cython.Distutils import build_ext

ext_modules = [
	Extension("hello", ["helloworld.pyx"])
]

setup(
    name = "cytify",
    cmdclass = {"build_ext": build_ext},
    ext_modules = ext_modules,
)