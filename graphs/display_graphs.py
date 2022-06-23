import numpy as np
import matplotlib.pyplot as plt
import collections
 
barWidth = 2.5
  
data20 = {
   105:    ( 0.6526, "green"), 
   244:    ( 0.5159, "green"),
   233:    ( 0.4677, "green"),
    56:    ( 0.4554, "green"),
   216:    ( 0.4466, "green"),
    47:    ( 0.4430, "green"),
    37:    ( 0.4419, "green"),
   138:    ( 0.4341, "green"),
   218:    ( 0.4270, "green"),
     4:    ( 0.4176, "green"),
  105:    ( 0.7556, "blue"), 
    4:    ( 0.5751,"blue"),
  106:    ( 0.5650,"blue"),
   72:    ( 0.4830,"blue"),
  145:    ( 0.4750,"blue"),
  109:    ( 0.4723,"blue"),
  187:    ( 0.4369,"blue"),
  244:    ( 0.4357,"blue"),
  216:    ( 0.4310,"blue"),
  177:    ( 0.4192,"blue"),
}

data50 = {
  59 :    ( 0.5884, "green" ), 
  244:    ( 0.4946, "green" ),
  216 :      ( 0.4717, "green" ),
   177:     ( 0.4398, "green" ),
   106:     ( 0.4022, "green" ),
   109:     ( 0.3938, "green" ),
   104:     ( 0.3926, "green" ),
   192:     ( 0.3291, "green" ),
   218:     ( 0.3212, "green" ),
   199:     ( 0.2908, "green" ),
   133:     ( 0.4610, "blue" ), 
   244:     ( 0.4547, "blue" ),
   104:     ( 0.3921, "blue" ),
   216:     ( 0.3719, "blue" ),
   199:     ( 0.3715, "blue" ),
   106:     ( 0.3709, "blue" ),
   189:     ( 0.3558, "blue" ),
   218:     ( 0.3493, "blue" ),
    59:     ( 0.3378, "blue" ),
   122:     ( 0.3221, "blue" ),
}

data80 = {

  59:       (  0.6804, "green"),  
  244:      (  0.4541, "green"), 
    36:      (  0.4271, "green"), 
   177:      (  0.3887, "green"), 
   141:      (  0.3697, "green"), 
   218:      (  0.2942, "green"), 
    40:      (  0.2840, "green"), 
   216:      (  0.2796, "green"), 
    49:      (  0.2737, "green"), 
   106:      (  0.2728, "green"), 
    59:      (  0.6804, "blue"), 
   244:      (  0.4541, "blue"),
    36:      (  0.4271, "blue"),
   177:      (  0.3887, "blue"),
   141:      (  0.3697, "blue"),
   218:      (  0.2942, "blue"),
    40:      (  0.2840, "blue"),
   216:      (  0.2796, "blue"),
    49:      (  0.2737, "blue"),
   106:      (  0.2728, "blue"),
}

data100 = {
  59  :   (    0.6587  , "green" ),  
  244 :   (   0.4138  , "green" ),
  36  :   (  0.3988  , "green" ),
  106 :   (   0.3499  , "green" ),
  141 :   (   0.3262  , "green" ),
  228 :   (   0.3006  , "green" ),
  177 :   (   0.2825  , "green" ),
  96  :   (  0.2687  , "green" ),
  99  :   (  0.2629  , "green" ),
  181 :   (   0.2585  , "green" ),
  59  :   (  0.6587  , "blue"),
  244 :   (   0.4138 , "blue"),
  36  :   (  0.3988 , "blue"),
  106 :   (   0.3499 , "blue"),
  141 :   (   0.3262 , "blue"),
  228 :   (   0.3006 , "blue"),
  177 :   (   0.2825 , "blue"),
  96  :   (  0.2687 , "blue"),
  99  :   (  0.2629 , "blue"),
  181 :   (   0.2585 , "blue"),
}

ordered_dict = collections.OrderedDict(sorted(data20.items())) 

data_x = list(ordered_dict.keys())
values = ordered_dict.values()
data_y = [] 
colors = []

for x in values:
  data_y.append(x[0])
  colors.append(x[1]) 

plott = plt.bar(data_x, data_y, color = colors, width = barWidth,
        edgecolor ='grey')
ix = 0
for bar in plott:
  height = bar.get_height()
  plt.annotate('{}'.format(data_x[ix]),
              xy=(bar.get_x() + bar.get_width() / 2, height),
              xytext=(0, 3), # 3 points vertical offset
              textcoords="offset points",
              ha='center', va='bottom')
  ix += 1


plt.xlabel("Dokument")
plt.ylabel("Moc poizvedbe")
plt.title("Uporabljenih 20 lastnih vrednosti, iskalni niz: milk")

plt.show()
