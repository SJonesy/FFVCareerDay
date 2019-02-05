# -*- coding: utf-8 -*-

import pandas as pd 
import random
from abc import ABC, abstractmethod
from fuzzywuzzy import fuzz
import math

df_item_id = pd.read_csv('item_id.csv',index_col='item_id',dtype=str)
df_magic_id = pd.read_csv('magic_id.csv',index_col='magic_id',dtype=str)
df_crystal_id = pd.read_csv('crystal_id.csv',index_col='crystal_id',dtype=str)
df_ability_id = pd.read_csv('ability_id.csv',index_col='ability_id',dtype=str)

class Collectible(ABC):
    def __init__(self, reward_id, reward_name, reward_value, related_jobs,
                 max_count, valid = None):
        #pandas imports a blank field as a float nan. This is the easiest way to none it.
        if type(max_count) is float:
            self.max_count = None
        else:
            self.max_count = int(max_count)
        self.reward_id = reward_id
        self.reward_name = reward_name
        self.reward_value = reward_value
        self.related_jobs = [x.replace('"', '').replace(' ', '')
                              .replace('“', '').replace('”', '')
                             for x in related_jobs]
        if valid is None:
            self.valid = True
        else:
            self.valid = valid == "TRUE"
        self.place_weight = 1

class Item(Collectible):
    reward_type = '40'
    def __init__(self,item_id):
        data = df_item_id.loc[item_id]
        self.type = data['type']
        self.subtype = data['subtype']
        related_jobs = data['related_jobs'].strip('][').split(',')
        super().__init__(item_id, data['readable_name'], int(data['value']),
                         related_jobs, data['max_count'], data['valid'])
        
class Magic(Collectible):
    reward_type = '20'
    def __init__(self,magic_id):
        data = df_magic_id.loc[magic_id]
        self.type = data['type']
        related_jobs = data['related_jobs'].strip('][').split(',')
        super().__init__(magic_id, data['readable_name'], int(data['value']),
                         related_jobs, data['max_count'])

class Crystal(Collectible):
    reward_type = '50'
    def __init__(self,crystal_id):
        data = df_crystal_id.loc[crystal_id]
        self.shop_id = data['shop_id']
        related_jobs = data['related_jobs'].strip('][').split(',')
        super().__init__(crystal_id, data['readable_name'], int(data['value']),
                         related_jobs, data['max_count'])
        
class Ability(Collectible):
    reward_type = '60'
    def __init__(self,ability_id):
        data = df_ability_id.loc[ability_id]
        related_jobs = data['related_jobs'].strip('][').split(',')
        super().__init__(ability_id, data['readable_name'], int(data['value']),
                         related_jobs, data['max_count'], data['valid'])

class CollectibleManager():
    def __init__(self, collectibles=None):
        if collectibles is None:
            items = [Item(x) for x in df_item_id.index.values]
            magics = [Magic(x) for x in df_magic_id.index.values]
            crystals = [Crystal(x) for x in df_crystal_id.index.values]
            abilities = [Ability(x) for x in df_ability_id.index.values]
            self.collectibles = items + magics + crystals + abilities
        else:
            self.collectibles = collectibles
        self.placement_history = {}

    def get_by_name(self, name):
        best_match = None
        for i in self.collectibles:
            ratio = fuzz.partial_ratio(i.reward_name, name)
            if best_match is None or best_match[1] < ratio:
                best_match = (i, ratio)

        if best_match[1] > 0:
            return best_match[0]
        else:
            raise KeyError("Collectible name: " + name + " was not found " \
                       "in list of collectibles")

    def get_by_id_and_type(self, reward_id, reward_type):
        for i in self.collectibles:
            if i.reward_type == reward_type and i.reward_id == reward_id and i.valid:
                return i
        return None
        #raising this was causing too many issues, returning None is much easier to work with
        '''raise KeyError("Collectible with id: " + reward_id + " and type: " \
                       + reward_type + " was not found in list of collectibles")'''

    def get_all_of_type(self, t):
        return [x for x in self.collectibles if type(x) is t]

    def get_random_collectible(self, random_engine, respect_weight=False, monitor_counts=False):
        if monitor_counts is True:
            search_list = [x for x in self.collectibles if x.valid and
               (x not in self.placement_history.keys() or
                x.max_count is None or
                x.max_count < self.placement_history[x])]
        else:
            search_list = [x for x in self.collectibles if x.valid]
        
        if respect_weight is False:
            choice = random_engine.choice(search_list)
        else:
            choice = random_engine.choices(search_list, [y.place_weight for y in search_list])[0]

        if monitor_counts is True:
            self.add_to_placement_history(choice)

        return choice
    
    def add_to_placement_history(self, collectible):
        if collectible in self.placement_history.keys():
            self.placement_history[collectible] = self.placement_history[collectible] + 1
        else:
            self.placement_history[collectible] = 1
            
    def reset_placement_history(self):
        self.placement_history = {}
