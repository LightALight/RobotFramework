#!/usr/bin/env python
# -*- coding:utf-8 -*-
# @Time    : 2018/11/16 16:12
# @Author  : Administrator
# @Site    :
# @File    : ValidateImageCode.py
# @Software: PyCharm

"""
-----------------------------------------------------
Function:


-----------------------------------------------------
"""
from PIL import Image
import pytesseract


class ValidateImageCode(object):
    """图片转换成字符串"""

    def __int__(self):
        pass

    def Image_to_String(self, image_address):
        """图片转换成字符串.

        获取图片地址，返回图片上的文字

        Example :
        | ${string} = | Image_to_String | ${image_address}
        """

        text = pytesseract.image_to_string(Image.open(image_address))
        # image.load()  # 加载一下图片，防止报错，此处可省略
        # image.show()  # 调用show来展示图片，调试用，可省略
        print(text)
