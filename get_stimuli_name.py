# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import os

def paths(condition, path, target):
    file_names = os.listdir(path)
    for i in range(len(file_names)):
        file_names[i] = condition + "\\\\" + target + "\\\\" + file_names[i]
        
        
        
    for j in range(len(file_names)):
        file_names[j] = 'bitmap { filename = ' + "\"" + file_names[j] + "\"" + '; preload = false; };'
    return file_names







happy = list()
for i in ['nontarget_target', 'nontarget', 'target']:
    temp = paths("happy_condition",
                        "C:\\Users\\YiuChung\\iCloudDrive\\Documents\\Neuro_exp\\Face Perception N170_copy\\Stimuli\\happy_condition" + '\\' + i, 
                        i )
    happy =  happy + temp
    
    
    
    
sad = list()
for i in ['nontarget_target', 'nontarget', 'target']:
    temp = paths("sad_condition",
                        "C:\\Users\\YiuChung\\iCloudDrive\\Documents\\Neuro_exp\\Face Perception N170_copy\\Stimuli\\sad_condition" + '\\' + i, 
                        i )
    sad =  sad + temp
    
    
    
neutral = list()
for i in ['nontarget_target', 'nontarget', 'target']:
    temp = paths("neutral_condition",
                        "C:\\Users\\YiuChung\\iCloudDrive\\Documents\\Neuro_exp\\Face Perception N170_copy\\Stimuli\\neutral_condition" + '\\' + i, 
                        i )
    neutral =  neutral + temp
    
    
    
identity = list()
for i in ['nontarget_filler', 'nontarget', 'target']:
    temp = paths("identity_condition",
                        "C:\\Users\\YiuChung\\iCloudDrive\\Documents\\Neuro_exp\\Face Perception N170_copy\\Stimuli\\identity_condition" + '\\' + i, 
                        i )
    identity =  identity + temp