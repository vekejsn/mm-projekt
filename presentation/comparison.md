# Comparssion by number of singular values used

## If we use 20 singular values

```octave
Enter search query: milk
Naive method:
ans =

   105.0000     0.6526
   244.0000     0.5159
   233.0000     0.4677
    56.0000     0.4554
   216.0000     0.4466
    47.0000     0.4430
    37.0000     0.4419
   138.0000     0.4341
   218.0000     0.4270
     4.0000     0.4176

Better method:
ans =

   105.0000     0.7556
     4.0000     0.5751
   106.0000     0.5650
    72.0000     0.4830
   145.0000     0.4750
   109.0000     0.4723
   187.0000     0.4369
   244.0000     0.4357
   216.0000     0.4310
   177.0000     0.4192
```

## If we use 50 singular values

```octave
Enter search query: milk
Naive method:
ans =

    59.0000     0.5884
   244.0000     0.4946
   216.0000     0.4717
   177.0000     0.4398
   106.0000     0.4022
   109.0000     0.3938
   104.0000     0.3926
   192.0000     0.3291
   218.0000     0.3212
   199.0000     0.2908

Better method:
ans =

   133.0000     0.4610
   244.0000     0.4547
   104.0000     0.3921
   216.0000     0.3719
   199.0000     0.3715
   106.0000     0.3709
   189.0000     0.3558
   218.0000     0.3493
    59.0000     0.3378
   122.0000     0.3221
```

## If we use 80 singular values
```octave
Enter search query: milk
Naive method:
ans =

    59.0000     0.6804
   244.0000     0.4541
    36.0000     0.4271
   177.0000     0.3887
   141.0000     0.3697
   218.0000     0.2942
    40.0000     0.2840
   216.0000     0.2796
    49.0000     0.2737
   106.0000     0.2728

Better method:
ans =

    59.0000     0.4751
   244.0000     0.3838
    36.0000     0.3781
   141.0000     0.3773
    40.0000     0.3559
   133.0000     0.3009
   182.0000     0.3009
   106.0000     0.2714
   181.0000     0.2664
   218.0000     0.2616

```
## If we use 100 singular values

```octave
Enter search query: milk
Naive method:
ans =

    59.0000     0.6587
   244.0000     0.4138
    36.0000     0.3988
   106.0000     0.3499
   141.0000     0.3262
   228.0000     0.3006
   177.0000     0.2825
    96.0000     0.2687
    99.0000     0.2629
   181.0000     0.2585

Better method:
ans =

    36.0000     0.4444
    59.0000     0.4013
   141.0000     0.3785
   244.0000     0.3332
    96.0000     0.3206
   181.0000     0.2747
   103.0000     0.2538
   247.0000     0.2526
    99.0000     0.2499
    62.0000     0.2480
```

