# -*- coding: utf-8 -*-
"""
Example module that says 'Hello World!'

This demonstrates how to produce a simple custom module.
"""


class Py3status:

    format = '{percentage}'

    def light(self):
        #data = {'percentage': self.py3.command_output('/home/sencho/bin/fancy-light')}
        data = {'percentage': self.py3.command_output('echo')}
        return {
            'full_text': self.py3.safe_format(self.format, data),
            'cached_until': self.py3.time_in(5),
        }

