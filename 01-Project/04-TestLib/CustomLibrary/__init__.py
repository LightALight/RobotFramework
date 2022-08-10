#!/usr/bin/env python
# -*- coding:utf-8 -*-
# @Time    : 2018/11/16 16:10
# @Author  : Administrator
# @Site    : 
# @File    : __init__.py.py
# @Software: PyCharm

"""
-----------------------------------------------------
Function:


-----------------------------------------------------
"""

from .ValidateImageCode import ValidateImageCode

__version__ = '0.1'  # 版本号


class CustomLibrary(ValidateImageCode):
    """这是一个CustomLibrary库，提供自定义系统关键字。"""

    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
