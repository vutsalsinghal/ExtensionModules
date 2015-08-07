from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

exts = [Extension("cryption", ["cryption.pyx"],)]

setup(
    cmdclass = {'build_ext': build_ext},
    ext_modules = exts,
)
