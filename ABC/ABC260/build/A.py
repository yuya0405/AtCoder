#!/usr/bin/env python
# coding: utf-8

# In[24]:


S = input()

import collections

C = collections.Counter(S)
for k, v in zip(list(C.keys()), list(C.values())):
    if v == 1:
        print (k)
        exit()
print (-1)


# In[ ]:




