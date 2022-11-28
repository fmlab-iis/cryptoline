(* quine: cv -v -isafety sha256.cl
Parsing CryptoLine file:    [OK]    0.158306 seconds
Checking well-formedness:   [OK]    0.029637 seconds
Transforming to SSA form:   [OK]    0.029717 seconds
Normalizing specification:    [OK]    0.041780 seconds
Rewriting assignments:      [OK]    0.035923 seconds
Verifying program safety:   
   Cut 0
       Round 1 (3408 safety conditions, timeout = 300 seconds)
     Safety condition #0  [OK]
     Safety condition #2  [OK]
     Safety condition #1  [OK]
     Safety condition #3  [OK]
     Safety condition #4  [OK]
     Safety condition #6  [OK]
     Safety condition #7  [OK]
     Safety condition #5  [OK]
     Safety condition #8  [OK]
     Safety condition #10 [OK]
     Safety condition #9  [OK]
     Safety condition #11 [OK]
     Safety condition #12 [OK]
     Safety condition #15 [OK]
     Safety condition #14 [OK]
     Safety condition #13 [OK]
     Safety condition #17 [OK]
     Safety condition #16 [OK]
     Safety condition #18 [OK]
     Safety condition #19 [OK]
     Safety condition #21 [OK]
     Safety condition #20 [OK]
     Safety condition #23 [OK]
     Safety condition #22 [OK]
     Safety condition #27 [OK]
     Safety condition #24 [OK]
     Safety condition #25 [OK]
     Safety condition #26 [OK]
     Safety condition #29 [OK]
     Safety condition #28 [OK]
     Safety condition #30 [OK]
     Safety condition #31 [OK]
     Safety condition #33 [OK]
     Safety condition #32 [OK]
     Safety condition #34 [OK]
     Safety condition #35 [OK]
     Safety condition #38 [OK]
     Safety condition #36 [OK]
     Safety condition #37 [OK]
     Safety condition #39 [OK]
     Safety condition #40 [OK]
     Safety condition #42 [OK]
     Safety condition #43 [OK]
     Safety condition #41 [OK]
     Safety condition #44 [OK]
     Safety condition #46 [OK]
     Safety condition #45 [OK]
     Safety condition #47 [OK]
     Safety condition #48 [OK]
     Safety condition #50 [OK]
     Safety condition #49 [OK]
     Safety condition #51 [OK]
     Safety condition #52 [OK]
     Safety condition #53 [OK]
     Safety condition #54 [OK]
     Safety condition #55 [OK]
     Safety condition #58 [OK]
     Safety condition #56 [OK]
     Safety condition #57 [OK]
     Safety condition #59 [OK]
     Safety condition #60 [OK]
     Safety condition #61 [OK]
     Safety condition #63 [OK]
     Safety condition #62 [OK]
     Safety condition #65 [OK]
     Safety condition #66 [OK]
     Safety condition #67 [OK]
     Safety condition #64 [OK]
     Safety condition #69 [OK]
     Safety condition #70 [OK]
     Safety condition #71 [OK]
     Safety condition #68 [OK]
     Safety condition #73 [OK]
     Safety condition #72 [OK]
     Safety condition #74 [OK]
     Safety condition #75 [OK]
     Safety condition #78 [OK]
     Safety condition #79 [OK]
     Safety condition #76 [OK]
     Safety condition #77 [OK]
     Safety condition #83 [OK]
     Safety condition #81 [OK]
     Safety condition #82 [OK]
     Safety condition #80 [OK]
     Safety condition #84 [OK]
     Safety condition #87 [OK]
     Safety condition #85 [OK]
     Safety condition #86 [OK]
     Safety condition #89 [OK]
     Safety condition #91 [OK]
     Safety condition #88 [OK]
     Safety condition #90 [OK]
     Safety condition #93 [OK]
     Safety condition #92 [OK]
     Safety condition #95 [OK]
     Safety condition #94 [OK]
     Safety condition #97 [OK]
     Safety condition #99 [OK]
     Safety condition #96 [OK]
     Safety condition #98 [OK]
     Safety condition #101  [OK]
     Safety condition #100  [OK]
     Safety condition #103  [OK]
     Safety condition #102  [OK]
     Safety condition #106  [OK]
     Safety condition #104  [OK]
     Safety condition #107  [OK]
     Safety condition #105  [OK]
     Safety condition #108  [OK]
     Safety condition #110  [OK]
     Safety condition #109  [OK]
     Safety condition #111  [OK]
     Safety condition #112  [OK]
     Safety condition #113  [OK]
     Safety condition #114  [OK]
     Safety condition #115  [OK]
     Safety condition #116  [OK]
     Safety condition #118  [OK]
     Safety condition #119  [OK]
     Safety condition #117  [OK]
     Safety condition #120  [OK]
     Safety condition #122  [OK]
     Safety condition #121  [OK]
     Safety condition #123  [OK]
     Safety condition #126  [OK]
     Safety condition #124  [OK]
     Safety condition #125  [OK]
     Safety condition #127  [OK]
     Safety condition #128  [OK]
     Safety condition #131  [OK]
     Safety condition #130  [OK]
     Safety condition #129  [OK]
     Safety condition #133  [OK]
     Safety condition #135  [OK]
     Safety condition #134  [OK]
     Safety condition #132  [OK]
     Safety condition #139  [OK]
     Safety condition #136  [OK]
     Safety condition #137  [OK]
     Safety condition #138  [OK]
     Safety condition #143  [OK]
     Safety condition #141  [OK]
     Safety condition #142  [OK]
     Safety condition #140  [OK]
     Safety condition #147  [OK]
     Safety condition #145  [OK]
     Safety condition #144  [OK]
     Safety condition #146  [OK]
     Safety condition #149  [OK]
     Safety condition #151  [OK]
     Safety condition #148  [OK]
     Safety condition #150  [OK]
     Safety condition #153  [OK]
     Safety condition #152  [OK]
     Safety condition #154  [OK]
     Safety condition #155  [OK]
     Safety condition #159  [OK]
     Safety condition #157  [OK]
     Safety condition #156  [OK]
     Safety condition #158  [OK]
     Safety condition #161  [OK]
     Safety condition #163  [OK]
     Safety condition #162  [OK]
     Safety condition #160  [OK]
     Safety condition #167  [OK]
     Safety condition #165  [OK]
     Safety condition #166  [OK]
     Safety condition #164  [OK]
     Safety condition #170  [OK]
     Safety condition #169  [OK]
     Safety condition #168  [OK]
     Safety condition #171  [OK]
     Safety condition #172  [OK]
     Safety condition #174  [OK]
     Safety condition #173  [OK]
     Safety condition #175  [OK]
     Safety condition #176  [OK]
     Safety condition #177  [OK]
     Safety condition #178  [OK]
     Safety condition #179  [OK]
     Safety condition #180  [OK]
     Safety condition #182  [OK]
     Safety condition #181  [OK]
     Safety condition #183  [OK]
     Safety condition #184  [OK]
     Safety condition #187  [OK]
     Safety condition #186  [OK]
     Safety condition #185  [OK]
     Safety condition #188  [OK]
     Safety condition #190  [OK]
     Safety condition #189  [OK]
     Safety condition #191  [OK]
     Safety condition #192  [OK]
     Safety condition #194  [OK]
     Safety condition #193  [OK]
     Safety condition #195  [OK]
     Safety condition #196  [OK]
     Safety condition #198  [OK]
     Safety condition #199  [OK]
     Safety condition #197  [OK]
     Safety condition #200  [OK]
     Safety condition #202  [OK]
     Safety condition #201  [OK]
     Safety condition #203  [OK]
     Safety condition #204  [OK]
     Safety condition #205  [OK]
     Safety condition #207  [OK]
     Safety condition #206  [OK]
     Safety condition #211  [OK]
     Safety condition #209  [OK]
     Safety condition #210  [OK]
     Safety condition #208  [OK]
     Safety condition #213  [OK]
     Safety condition #215  [OK]
     Safety condition #212  [OK]
     Safety condition #214  [OK]
     Safety condition #219  [OK]
     Safety condition #217  [OK]
     Safety condition #216  [OK]
     Safety condition #218  [OK]
     Safety condition #221  [OK]
     Safety condition #223  [OK]
     Safety condition #220  [OK]
     Safety condition #222  [OK]
     Safety condition #227  [OK]
     Safety condition #226  [OK]
     Safety condition #225  [OK]
     Safety condition #224  [OK]
     Safety condition #229  [OK]
     Safety condition #228  [OK]
     Safety condition #231  [OK]
     Safety condition #230  [OK]
     Safety condition #233  [OK]
     Safety condition #235  [OK]
     Safety condition #232  [OK]
     Safety condition #234  [OK]
     Safety condition #237  [OK]
     Safety condition #239  [OK]
     Safety condition #238  [OK]
     Safety condition #236  [OK]
     Safety condition #241  [OK]
     Safety condition #243  [OK]
     Safety condition #242  [OK]
     Safety condition #240  [OK]
     Safety condition #245  [OK]
     Safety condition #244  [OK]
     Safety condition #247  [OK]
     Safety condition #246  [OK]
     Safety condition #248  [OK]
     Safety condition #250  [OK]
     Safety condition #251  [OK]
     Safety condition #249  [OK]
     Safety condition #252  [OK]
     Safety condition #253  [OK]
     Safety condition #255  [OK]
     Safety condition #254  [OK]
     Safety condition #256  [OK]
     Safety condition #258  [OK]
     Safety condition #259  [OK]
     Safety condition #257  [OK]
     Safety condition #260  [OK]
     Safety condition #262  [OK]
     Safety condition #261  [OK]
     Safety condition #263  [OK]
     Safety condition #264  [OK]
     Safety condition #265  [OK]
     Safety condition #266  [OK]
     Safety condition #267  [OK]
     Safety condition #268  [OK]
     Safety condition #269  [OK]
     Safety condition #270  [OK]
     Safety condition #271  [OK]
     Safety condition #272  [OK]
     Safety condition #274  [OK]
     Safety condition #275  [OK]
     Safety condition #273  [OK]
     Safety condition #278  [OK]
     Safety condition #276  [OK]
     Safety condition #279  [OK]
     Safety condition #277  [OK]
     Safety condition #280  [OK]
     Safety condition #282  [OK]
     Safety condition #283  [OK]
     Safety condition #281  [OK]
     Safety condition #285  [OK]
     Safety condition #284  [OK]
     Safety condition #287  [OK]
     Safety condition #286  [OK]
     Safety condition #289  [OK]
     Safety condition #291  [OK]
     Safety condition #290  [OK]
     Safety condition #288  [OK]
     Safety condition #293  [OK]
     Safety condition #292  [OK]
     Safety condition #295  [OK]
     Safety condition #294  [OK]
     Safety condition #299  [OK]
     Safety condition #297  [OK]
     Safety condition #298  [OK]
     Safety condition #296  [OK]
     Safety condition #303  [OK]
     Safety condition #301  [OK]
     Safety condition #300  [OK]
     Safety condition #302  [OK]
     Safety condition #305  [OK]
     Safety condition #307  [OK]
     Safety condition #304  [OK]
     Safety condition #306  [OK]
     Safety condition #309  [OK]
     Safety condition #311  [OK]
     Safety condition #308  [OK]
     Safety condition #310  [OK]
     Safety condition #313  [OK]
     Safety condition #314  [OK]
     Safety condition #312  [OK]
     Safety condition #315  [OK]
     Safety condition #317  [OK]
     Safety condition #319  [OK]
     Safety condition #316  [OK]
     Safety condition #318  [OK]
     Safety condition #321  [OK]
     Safety condition #320  [OK]
     Safety condition #323  [OK]
     Safety condition #322  [OK]
     Safety condition #325  [OK]
     Safety condition #326  [OK]
     Safety condition #327  [OK]
     Safety condition #324  [OK]
     Safety condition #328  [OK]
     Safety condition #330  [OK]
     Safety condition #329  [OK]
     Safety condition #331  [OK]
     Safety condition #332  [OK]
     Safety condition #334  [OK]
     Safety condition #333  [OK]
     Safety condition #335  [OK]
     Safety condition #336  [OK]
     Safety condition #338  [OK]
     Safety condition #339  [OK]
     Safety condition #337  [OK]
     Safety condition #340  [OK]
     Safety condition #343  [OK]
     Safety condition #342  [OK]
     Safety condition #341  [OK]
     Safety condition #344  [OK]
     Safety condition #346  [OK]
     Safety condition #345  [OK]
     Safety condition #347  [OK]
     Safety condition #348  [OK]
     Safety condition #350  [OK]
     Safety condition #351  [OK]
     Safety condition #349  [OK]
     Safety condition #352  [OK]
     Safety condition #354  [OK]
     Safety condition #355  [OK]
     Safety condition #353  [OK]
     Safety condition #356  [OK]
     Safety condition #359  [OK]
     Safety condition #357  [OK]
     Safety condition #358  [OK]
     Safety condition #360  [OK]
     Safety condition #362  [OK]
     Safety condition #363  [OK]
     Safety condition #361  [OK]
     Safety condition #365  [OK]
     Safety condition #367  [OK]
     Safety condition #364  [OK]
     Safety condition #366  [OK]
     Safety condition #371  [OK]
     Safety condition #369  [OK]
     Safety condition #368  [OK]
     Safety condition #370  [OK]
     Safety condition #373  [OK]
     Safety condition #372  [OK]
     Safety condition #375  [OK]
     Safety condition #374  [OK]
     Safety condition #377  [OK]
     Safety condition #376  [OK]
     Safety condition #379  [OK]
     Safety condition #378  [OK]
     Safety condition #381  [OK]
     Safety condition #380  [OK]
     Safety condition #383  [OK]
     Safety condition #382  [OK]
     Safety condition #385  [OK]
     Safety condition #387  [OK]
     Safety condition #384  [OK]
     Safety condition #386  [OK]
     Safety condition #389  [OK]
     Safety condition #391  [OK]
     Safety condition #388  [OK]
     Safety condition #390  [OK]
     Safety condition #393  [OK]
     Safety condition #395  [OK]
     Safety condition #394  [OK]
     Safety condition #392  [OK]
     Safety condition #399  [OK]
     Safety condition #397  [OK]
     Safety condition #396  [OK]
     Safety condition #398  [OK]
     Safety condition #401  [OK]
     Safety condition #403  [OK]
     Safety condition #402  [OK]
     Safety condition #400  [OK]
     Safety condition #404  [OK]
     Safety condition #406  [OK]
     Safety condition #405  [OK]
     Safety condition #407  [OK]
     Safety condition #408  [OK]
     Safety condition #410  [OK]
     Safety condition #411  [OK]
     Safety condition #409  [OK]
     Safety condition #412  [OK]
     Safety condition #414  [OK]
     Safety condition #415  [OK]
     Safety condition #413  [OK]
     Safety condition #416  [OK]
     Safety condition #418  [OK]
     Safety condition #417  [OK]
     Safety condition #419  [OK]
     Safety condition #420  [OK]
     Safety condition #422  [OK]
     Safety condition #421  [OK]
     Safety condition #423  [OK]
     Safety condition #424  [OK]
     Safety condition #426  [OK]
     Safety condition #427  [OK]
     Safety condition #425  [OK]
     Safety condition #428  [OK]
     Safety condition #430  [OK]
     Safety condition #429  [OK]
     Safety condition #431  [OK]
     Safety condition #432  [OK]
     Safety condition #434  [OK]
     Safety condition #435  [OK]
     Safety condition #433  [OK]
     Safety condition #436  [OK]
     Safety condition #438  [OK]
     Safety condition #439  [OK]
     Safety condition #437  [OK]
     Safety condition #440  [OK]
     Safety condition #441  [OK]
     Safety condition #443  [OK]
     Safety condition #442  [OK]
     Safety condition #445  [OK]
     Safety condition #447  [OK]
     Safety condition #446  [OK]
     Safety condition #444  [OK]
     Safety condition #449  [OK]
     Safety condition #451  [OK]
     Safety condition #448  [OK]
     Safety condition #450  [OK]
     Safety condition #453  [OK]
     Safety condition #455  [OK]
     Safety condition #452  [OK]
     Safety condition #454  [OK]
     Safety condition #457  [OK]
     Safety condition #459  [OK]
     Safety condition #456  [OK]
     Safety condition #458  [OK]
     Safety condition #463  [OK]
     Safety condition #461  [OK]
     Safety condition #460  [OK]
     Safety condition #462  [OK]
     Safety condition #467  [OK]
     Safety condition #465  [OK]
     Safety condition #466  [OK]
     Safety condition #464  [OK]
     Safety condition #469  [OK]
     Safety condition #471  [OK]
     Safety condition #470  [OK]
     Safety condition #468  [OK]
     Safety condition #473  [OK]
     Safety condition #475  [OK]
     Safety condition #472  [OK]
     Safety condition #474  [OK]
     Safety condition #477  [OK]
     Safety condition #479  [OK]
     Safety condition #476  [OK]
     Safety condition #478  [OK]
     Safety condition #482  [OK]
     Safety condition #481  [OK]
     Safety condition #483  [OK]
     Safety condition #480  [OK]
     Safety condition #484  [OK]
     Safety condition #486  [OK]
     Safety condition #485  [OK]
     Safety condition #487  [OK]
     Safety condition #488  [OK]
     Safety condition #490  [OK]
     Safety condition #489  [OK]
     Safety condition #491  [OK]
     Safety condition #492  [OK]
     Safety condition #494  [OK]
     Safety condition #495  [OK]
     Safety condition #493  [OK]
     Safety condition #496  [OK]
     Safety condition #498  [OK]
     Safety condition #499  [OK]
     Safety condition #497  [OK]
     Safety condition #500  [OK]
     Safety condition #502  [OK]
     Safety condition #503  [OK]
     Safety condition #501  [OK]
     Safety condition #504  [OK]
     Safety condition #505  [OK]
     Safety condition #506  [OK]
     Safety condition #507  [OK]
     Safety condition #508  [OK]
     Safety condition #510  [OK]
     Safety condition #509  [OK]
     Safety condition #511  [OK]
     Safety condition #512  [OK]
     Safety condition #514  [OK]
     Safety condition #513  [OK]
     Safety condition #515  [OK]
     Safety condition #516  [OK]
     Safety condition #518  [OK]
     Safety condition #519  [OK]
     Safety condition #517  [OK]
     Safety condition #523  [OK]
     Safety condition #521  [OK]
     Safety condition #522  [OK]
     Safety condition #520  [OK]
     Safety condition #527  [OK]
     Safety condition #525  [OK]
     Safety condition #524  [OK]
     Safety condition #526  [OK]
     Safety condition #529  [OK]
     Safety condition #531  [OK]
     Safety condition #528  [OK]
     Safety condition #530  [OK]
     Safety condition #533  [OK]
     Safety condition #535  [OK]
     Safety condition #532  [OK]
     Safety condition #534  [OK]
     Safety condition #537  [OK]
     Safety condition #539  [OK]
     Safety condition #538  [OK]
     Safety condition #536  [OK]
     Safety condition #541  [OK]
     Safety condition #543  [OK]
     Safety condition #540  [OK]
     Safety condition #542  [OK]
     Safety condition #545  [OK]
     Safety condition #547  [OK]
     Safety condition #546  [OK]
     Safety condition #544  [OK]
     Safety condition #549  [OK]
     Safety condition #551  [OK]
     Safety condition #548  [OK]
     Safety condition #550  [OK]
     Safety condition #553  [OK]
     Safety condition #555  [OK]
     Safety condition #554  [OK]
     Safety condition #552  [OK]
     Safety condition #557  [OK]
     Safety condition #559  [OK]
     Safety condition #556  [OK]
     Safety condition #558  [OK]
     Safety condition #560  [OK]
     Safety condition #562  [OK]
     Safety condition #563  [OK]
     Safety condition #561  [OK]
     Safety condition #564  [OK]
     Safety condition #566  [OK]
     Safety condition #565  [OK]
     Safety condition #567  [OK]
     Safety condition #568  [OK]
     Safety condition #570  [OK]
     Safety condition #571  [OK]
     Safety condition #569  [OK]
     Safety condition #574  [OK]
     Safety condition #572  [OK]
     Safety condition #573  [OK]
     Safety condition #575  [OK]
     Safety condition #576  [OK]
     Safety condition #577  [OK]
     Safety condition #578  [OK]
     Safety condition #579  [OK]
     Safety condition #580  [OK]
     Safety condition #582  [OK]
     Safety condition #583  [OK]
     Safety condition #581  [OK]
     Safety condition #586  [OK]
     Safety condition #584  [OK]
     Safety condition #585  [OK]
     Safety condition #587  [OK]
     Safety condition #588  [OK]
     Safety condition #590  [OK]
     Safety condition #591  [OK]
     Safety condition #589  [OK]
     Safety condition #592  [OK]
     Safety condition #594  [OK]
     Safety condition #593  [OK]
     Safety condition #595  [OK]
     Safety condition #596  [OK]
     Safety condition #599  [OK]
     Safety condition #597  [OK]
     Safety condition #598  [OK]
     Safety condition #601  [OK]
     Safety condition #603  [OK]
     Safety condition #602  [OK]
     Safety condition #600  [OK]
     Safety condition #605  [OK]
     Safety condition #607  [OK]
     Safety condition #604  [OK]
     Safety condition #606  [OK]
     Safety condition #609  [OK]
     Safety condition #611  [OK]
     Safety condition #608  [OK]
     Safety condition #610  [OK]
     Safety condition #613  [OK]
     Safety condition #615  [OK]
     Safety condition #612  [OK]
     Safety condition #614  [OK]
     Safety condition #617  [OK]
     Safety condition #619  [OK]
     Safety condition #616  [OK]
     Safety condition #618  [OK]
     Safety condition #621  [OK]
     Safety condition #623  [OK]
     Safety condition #620  [OK]
     Safety condition #622  [OK]
     Safety condition #625  [OK]
     Safety condition #627  [OK]
     Safety condition #624  [OK]
     Safety condition #626  [OK]
     Safety condition #629  [OK]
     Safety condition #631  [OK]
     Safety condition #630  [OK]
     Safety condition #628  [OK]
     Safety condition #633  [OK]
     Safety condition #635  [OK]
     Safety condition #632  [OK]
     Safety condition #634  [OK]
     Safety condition #637  [OK]
     Safety condition #638  [OK]
     Safety condition #636  [OK]
     Safety condition #639  [OK]
     Safety condition #640  [OK]
     Safety condition #642  [OK]
     Safety condition #643  [OK]
     Safety condition #641  [OK]
     Safety condition #644  [OK]
     Safety condition #646  [OK]
     Safety condition #647  [OK]
     Safety condition #645  [OK]
     Safety condition #648  [OK]
     Safety condition #650  [OK]
     Safety condition #649  [OK]
     Safety condition #651  [OK]
     Safety condition #652  [OK]
     Safety condition #655  [OK]
     Safety condition #654  [OK]
     Safety condition #653  [OK]
     Safety condition #656  [OK]
     Safety condition #658  [OK]
     Safety condition #657  [OK]
     Safety condition #659  [OK]
     Safety condition #660  [OK]
     Safety condition #661  [OK]
     Safety condition #662  [OK]
     Safety condition #663  [OK]
     Safety condition #664  [OK]
     Safety condition #666  [OK]
     Safety condition #665  [OK]
     Safety condition #667  [OK]
     Safety condition #668  [OK]
     Safety condition #670  [OK]
     Safety condition #671  [OK]
     Safety condition #669  [OK]
     Safety condition #672  [OK]
     Safety condition #675  [OK]
     Safety condition #674  [OK]
     Safety condition #673  [OK]
     Safety condition #677  [OK]
     Safety condition #679  [OK]
     Safety condition #676  [OK]
     Safety condition #678  [OK]
     Safety condition #681  [OK]
     Safety condition #683  [OK]
     Safety condition #680  [OK]
     Safety condition #682  [OK]
     Safety condition #685  [OK]
     Safety condition #687  [OK]
     Safety condition #684  [OK]
     Safety condition #686  [OK]
     Safety condition #689  [OK]
     Safety condition #691  [OK]
     Safety condition #690  [OK]
     Safety condition #688  [OK]
     Safety condition #693  [OK]
     Safety condition #695  [OK]
     Safety condition #694  [OK]
     Safety condition #692  [OK]
     Safety condition #697  [OK]
     Safety condition #699  [OK]
     Safety condition #696  [OK]
     Safety condition #698  [OK]
     Safety condition #701  [OK]
     Safety condition #703  [OK]
     Safety condition #700  [OK]
     Safety condition #702  [OK]
     Safety condition #705  [OK]
     Safety condition #707  [OK]
     Safety condition #706  [OK]
     Safety condition #704  [OK]
     Safety condition #709  [OK]
     Safety condition #711  [OK]
     Safety condition #708  [OK]
     Safety condition #710  [OK]
     Safety condition #713  [OK]
     Safety condition #715  [OK]
     Safety condition #712  [OK]
     Safety condition #714  [OK]
     Safety condition #716  [OK]
     Safety condition #718  [OK]
     Safety condition #719  [OK]
     Safety condition #717  [OK]
     Safety condition #722  [OK]
     Safety condition #720  [OK]
     Safety condition #721  [OK]
     Safety condition #723  [OK]
     Safety condition #724  [OK]
     Safety condition #726  [OK]
     Safety condition #725  [OK]
     Safety condition #727  [OK]
     Safety condition #728  [OK]
     Safety condition #730  [OK]
     Safety condition #729  [OK]
     Safety condition #731  [OK]
     Safety condition #732  [OK]
     Safety condition #734  [OK]
     Safety condition #733  [OK]
     Safety condition #735  [OK]
     Safety condition #738  [OK]
     Safety condition #736  [OK]
     Safety condition #739  [OK]
     Safety condition #737  [OK]
     Safety condition #742  [OK]
     Safety condition #740  [OK]
     Safety condition #741  [OK]
     Safety condition #743  [OK]
     Safety condition #744  [OK]
     Safety condition #746  [OK]
     Safety condition #745  [OK]
     Safety condition #747  [OK]
     Safety condition #748  [OK]
     Safety condition #750  [OK]
     Safety condition #749  [OK]
     Safety condition #751  [OK]
     Safety condition #752  [OK]
     Safety condition #755  [OK]
     Safety condition #753  [OK]
     Safety condition #754  [OK]
     Safety condition #757  [OK]
     Safety condition #759  [OK]
     Safety condition #756  [OK]
     Safety condition #758  [OK]
     Safety condition #761  [OK]
     Safety condition #763  [OK]
     Safety condition #762  [OK]
     Safety condition #760  [OK]
     Safety condition #765  [OK]
     Safety condition #767  [OK]
     Safety condition #766  [OK]
     Safety condition #764  [OK]
     Safety condition #769  [OK]
     Safety condition #771  [OK]
     Safety condition #770  [OK]
     Safety condition #768  [OK]
     Safety condition #773  [OK]
     Safety condition #775  [OK]
     Safety condition #772  [OK]
     Safety condition #774  [OK]
     Safety condition #777  [OK]
     Safety condition #779  [OK]
     Safety condition #776  [OK]
     Safety condition #778  [OK]
     Safety condition #781  [OK]
     Safety condition #783  [OK]
     Safety condition #782  [OK]
     Safety condition #780  [OK]
     Safety condition #785  [OK]
     Safety condition #787  [OK]
     Safety condition #786  [OK]
     Safety condition #784  [OK]
     Safety condition #789  [OK]
     Safety condition #791  [OK]
     Safety condition #790  [OK]
     Safety condition #788  [OK]
     Safety condition #793  [OK]
     Safety condition #794  [OK]
     Safety condition #795  [OK]
     Safety condition #792  [OK]
     Safety condition #796  [OK]
     Safety condition #798  [OK]
     Safety condition #797  [OK]
     Safety condition #799  [OK]
     Safety condition #800  [OK]
     Safety condition #802  [OK]
     Safety condition #801  [OK]
     Safety condition #803  [OK]
     Safety condition #804  [OK]
     Safety condition #806  [OK]
     Safety condition #805  [OK]
     Safety condition #807  [OK]
     Safety condition #808  [OK]
     Safety condition #810  [OK]
     Safety condition #811  [OK]
     Safety condition #809  [OK]
     Safety condition #812  [OK]
     Safety condition #814  [OK]
     Safety condition #813  [OK]
     Safety condition #815  [OK]
     Safety condition #817  [OK]
     Safety condition #818  [OK]
     Safety condition #816  [OK]
     Safety condition #819  [OK]
     Safety condition #820  [OK]
     Safety condition #822  [OK]
     Safety condition #821  [OK]
     Safety condition #823  [OK]
     Safety condition #824  [OK]
     Safety condition #826  [OK]
     Safety condition #827  [OK]
     Safety condition #825  [OK]
     Safety condition #828  [OK]
     Safety condition #830  [OK]
     Safety condition #831  [OK]
     Safety condition #829  [OK]
     Safety condition #833  [OK]
     Safety condition #835  [OK]
     Safety condition #832  [OK]
     Safety condition #834  [OK]
     Safety condition #837  [OK]
     Safety condition #839  [OK]
     Safety condition #836  [OK]
     Safety condition #838  [OK]
     Safety condition #841  [OK]
     Safety condition #843  [OK]
     Safety condition #842  [OK]
     Safety condition #840  [OK]
     Safety condition #845  [OK]
     Safety condition #847  [OK]
     Safety condition #846  [OK]
     Safety condition #844  [OK]
     Safety condition #849  [OK]
     Safety condition #851  [OK]
     Safety condition #850  [OK]
     Safety condition #848  [OK]
     Safety condition #853  [OK]
     Safety condition #855  [OK]
     Safety condition #854  [OK]
     Safety condition #852  [OK]
     Safety condition #857  [OK]
     Safety condition #859  [OK]
     Safety condition #856  [OK]
     Safety condition #858  [OK]
     Safety condition #861  [OK]
     Safety condition #863  [OK]
     Safety condition #860  [OK]
     Safety condition #862  [OK]
     Safety condition #867  [OK]
     Safety condition #865  [OK]
     Safety condition #864  [OK]
     Safety condition #866  [OK]
     Safety condition #869  [OK]
     Safety condition #871  [OK]
     Safety condition #868  [OK]
     Safety condition #870  [OK]
     Safety condition #874  [OK]
     Safety condition #872  [OK]
     Safety condition #873  [OK]
     Safety condition #875  [OK]
     Safety condition #876  [OK]
     Safety condition #878  [OK]
     Safety condition #879  [OK]
     Safety condition #877  [OK]
     Safety condition #880  [OK]
     Safety condition #882  [OK]
     Safety condition #881  [OK]
     Safety condition #883  [OK]
     Safety condition #884  [OK]
     Safety condition #886  [OK]
     Safety condition #885  [OK]
     Safety condition #887  [OK]
     Safety condition #888  [OK]
     Safety condition #890  [OK]
     Safety condition #889  [OK]
     Safety condition #891  [OK]
     Safety condition #892  [OK]
     Safety condition #894  [OK]
     Safety condition #895  [OK]
     Safety condition #893  [OK]
     Safety condition #896  [OK]
     Safety condition #898  [OK]
     Safety condition #897  [OK]
     Safety condition #899  [OK]
     Safety condition #900  [OK]
     Safety condition #902  [OK]
     Safety condition #903  [OK]
     Safety condition #901  [OK]
     Safety condition #904  [OK]
     Safety condition #906  [OK]
     Safety condition #907  [OK]
     Safety condition #905  [OK]
     Safety condition #908  [OK]
     Safety condition #911  [OK]
     Safety condition #909  [OK]
     Safety condition #910  [OK]
     Safety condition #913  [OK]
     Safety condition #915  [OK]
     Safety condition #912  [OK]
     Safety condition #914  [OK]
     Safety condition #917  [OK]
     Safety condition #919  [OK]
     Safety condition #916  [OK]
     Safety condition #918  [OK]
     Safety condition #921  [OK]
     Safety condition #923  [OK]
     Safety condition #920  [OK]
     Safety condition #922  [OK]
     Safety condition #925  [OK]
     Safety condition #927  [OK]
     Safety condition #924  [OK]
     Safety condition #926  [OK]
     Safety condition #929  [OK]
     Safety condition #931  [OK]
     Safety condition #930  [OK]
     Safety condition #928  [OK]
     Safety condition #935  [OK]
     Safety condition #933  [OK]
     Safety condition #932  [OK]
     Safety condition #934  [OK]
     Safety condition #937  [OK]
     Safety condition #939  [OK]
     Safety condition #936  [OK]
     Safety condition #938  [OK]
     Safety condition #941  [OK]
     Safety condition #943  [OK]
     Safety condition #942  [OK]
     Safety condition #940  [OK]
     Safety condition #945  [OK]
     Safety condition #947  [OK]
     Safety condition #944  [OK]
     Safety condition #946  [OK]
     Safety condition #949  [OK]
     Safety condition #950  [OK]
     Safety condition #948  [OK]
     Safety condition #951  [OK]
     Safety condition #952  [OK]
     Safety condition #954  [OK]
     Safety condition #953  [OK]
     Safety condition #955  [OK]
     Safety condition #956  [OK]
     Safety condition #958  [OK]
     Safety condition #959  [OK]
     Safety condition #957  [OK]
     Safety condition #960  [OK]
     Safety condition #962  [OK]
     Safety condition #963  [OK]
     Safety condition #961  [OK]
     Safety condition #964  [OK]
     Safety condition #967  [OK]
     Safety condition #966  [OK]
     Safety condition #965  [OK]
     Safety condition #968  [OK]
     Safety condition #970  [OK]
     Safety condition #971  [OK]
     Safety condition #969  [OK]
     Safety condition #972  [OK]
     Safety condition #974  [OK]
     Safety condition #973  [OK]
     Safety condition #975  [OK]
     Safety condition #976  [OK]
     Safety condition #978  [OK]
     Safety condition #977  [OK]
     Safety condition #979  [OK]
     Safety condition #980  [OK]
     Safety condition #982  [OK]
     Safety condition #983  [OK]
     Safety condition #981  [OK]
     Safety condition #984  [OK]
     Safety condition #986  [OK]
     Safety condition #987  [OK]
     Safety condition #985  [OK]
     Safety condition #991  [OK]
     Safety condition #989  [OK]
     Safety condition #988  [OK]
     Safety condition #990  [OK]
     Safety condition #995  [OK]
     Safety condition #993  [OK]
     Safety condition #994  [OK]
     Safety condition #992  [OK]
     Safety condition #997  [OK]
     Safety condition #999  [OK]
     Safety condition #998  [OK]
     Safety condition #996  [OK]
     Safety condition #1001 [OK]
     Safety condition #1003 [OK]
     Safety condition #1000 [OK]
     Safety condition #1002 [OK]
     Safety condition #1005 [OK]
     Safety condition #1007 [OK]
     Safety condition #1004 [OK]
     Safety condition #1006 [OK]
     Safety condition #1009 [OK]
     Safety condition #1011 [OK]
     Safety condition #1010 [OK]
     Safety condition #1008 [OK]
     Safety condition #1012 [OK]
     Safety condition #1014 [OK]
     Safety condition #1013 [OK]
     Safety condition #1015 [OK]
     Safety condition #1016 [OK]
     Safety condition #1018 [OK]
     Safety condition #1017 [OK]
     Safety condition #1019 [OK]
     Safety condition #1020 [OK]
     Safety condition #1022 [OK]
     Safety condition #1021 [OK]
     Safety condition #1023 [OK]
     Safety condition #1024 [OK]
     Safety condition #1026 [OK]
     Safety condition #1025 [OK]
     Safety condition #1027 [OK]
     Safety condition #1028 [OK]
     Safety condition #1030 [OK]
     Safety condition #1029 [OK]
     Safety condition #1031 [OK]
     Safety condition #1032 [OK]
     Safety condition #1034 [OK]
     Safety condition #1035 [OK]
     Safety condition #1033 [OK]
     Safety condition #1037 [OK]
     Safety condition #1039 [OK]
     Safety condition #1036 [OK]
     Safety condition #1038 [OK]
     Safety condition #1041 [OK]
     Safety condition #1043 [OK]
     Safety condition #1042 [OK]
     Safety condition #1040 [OK]
     Safety condition #1045 [OK]
     Safety condition #1047 [OK]
     Safety condition #1044 [OK]
     Safety condition #1046 [OK]
     Safety condition #1049 [OK]
     Safety condition #1051 [OK]
     Safety condition #1050 [OK]
     Safety condition #1048 [OK]
     Safety condition #1053 [OK]
     Safety condition #1054 [OK]
     Safety condition #1055 [OK]
     Safety condition #1052 [OK]
     Safety condition #1057 [OK]
     Safety condition #1059 [OK]
     Safety condition #1058 [OK]
     Safety condition #1056 [OK]
     Safety condition #1060 [OK]
     Safety condition #1063 [OK]
     Safety condition #1061 [OK]
     Safety condition #1062 [OK]
     Safety condition #1067 [OK]
     Safety condition #1065 [OK]
     Safety condition #1064 [OK]
     Safety condition #1066 [OK]
     Safety condition #1069 [OK]
     Safety condition #1071 [OK]
     Safety condition #1068 [OK]
     Safety condition #1070 [OK]
     Safety condition #1073 [OK]
     Safety condition #1074 [OK]
     Safety condition #1072 [OK]
     Safety condition #1075 [OK]
     Safety condition #1076 [OK]
     Safety condition #1078 [OK]
     Safety condition #1079 [OK]
     Safety condition #1077 [OK]
     Safety condition #1080 [OK]
     Safety condition #1082 [OK]
     Safety condition #1081 [OK]
     Safety condition #1083 [OK]
     Safety condition #1084 [OK]
     Safety condition #1086 [OK]
     Safety condition #1085 [OK]
     Safety condition #1087 [OK]
     Safety condition #1088 [OK]
     Safety condition #1090 [OK]
     Safety condition #1091 [OK]
     Safety condition #1089 [OK]
     Safety condition #1092 [OK]
     Safety condition #1094 [OK]
     Safety condition #1095 [OK]
     Safety condition #1093 [OK]
     Safety condition #1096 [OK]
     Safety condition #1099 [OK]
     Safety condition #1098 [OK]
     Safety condition #1097 [OK]
     Safety condition #1101 [OK]
     Safety condition #1103 [OK]
     Safety condition #1102 [OK]
     Safety condition #1100 [OK]
     Safety condition #1105 [OK]
     Safety condition #1107 [OK]
     Safety condition #1104 [OK]
     Safety condition #1106 [OK]
     Safety condition #1109 [OK]
     Safety condition #1111 [OK]
     Safety condition #1110 [OK]
     Safety condition #1108 [OK]
     Safety condition #1113 [OK]
     Safety condition #1115 [OK]
     Safety condition #1112 [OK]
     Safety condition #1114 [OK]
     Safety condition #1117 [OK]
     Safety condition #1119 [OK]
     Safety condition #1116 [OK]
     Safety condition #1118 [OK]
     Safety condition #1121 [OK]
     Safety condition #1123 [OK]
     Safety condition #1120 [OK]
     Safety condition #1122 [OK]
     Safety condition #1124 [OK]
     Safety condition #1126 [OK]
     Safety condition #1125 [OK]
     Safety condition #1127 [OK]
     Safety condition #1128 [OK]
     Safety condition #1130 [OK]
     Safety condition #1129 [OK]
     Safety condition #1131 [OK]
     Safety condition #1132 [OK]
     Safety condition #1134 [OK]
     Safety condition #1135 [OK]
     Safety condition #1133 [OK]
     Safety condition #1136 [OK]
     Safety condition #1138 [OK]
     Safety condition #1137 [OK]
     Safety condition #1139 [OK]
     Safety condition #1142 [OK]
     Safety condition #1140 [OK]
     Safety condition #1141 [OK]
     Safety condition #1143 [OK]
     Safety condition #1144 [OK]
     Safety condition #1146 [OK]
     Safety condition #1145 [OK]
     Safety condition #1147 [OK]
     Safety condition #1148 [OK]
     Safety condition #1149 [OK]
     Safety condition #1151 [OK]
     Safety condition #1150 [OK]
     Safety condition #1153 [OK]
     Safety condition #1155 [OK]
     Safety condition #1154 [OK]
     Safety condition #1152 [OK]
     Safety condition #1157 [OK]
     Safety condition #1159 [OK]
     Safety condition #1156 [OK]
     Safety condition #1158 [OK]
     Safety condition #1161 [OK]
     Safety condition #1163 [OK]
     Safety condition #1162 [OK]
     Safety condition #1160 [OK]
     Safety condition #1165 [OK]
     Safety condition #1167 [OK]
     Safety condition #1164 [OK]
     Safety condition #1166 [OK]
     Safety condition #1169 [OK]
     Safety condition #1171 [OK]
     Safety condition #1170 [OK]
     Safety condition #1168 [OK]
     Safety condition #1173 [OK]
     Safety condition #1174 [OK]
     Safety condition #1175 [OK]
     Safety condition #1172 [OK]
     Safety condition #1176 [OK]
     Safety condition #1178 [OK]
     Safety condition #1179 [OK]
     Safety condition #1177 [OK]
     Safety condition #1180 [OK]
     Safety condition #1182 [OK]
     Safety condition #1183 [OK]
     Safety condition #1181 [OK]
     Safety condition #1184 [OK]
     Safety condition #1186 [OK]
     Safety condition #1185 [OK]
     Safety condition #1187 [OK]
     Safety condition #1188 [OK]
     Safety condition #1190 [OK]
     Safety condition #1191 [OK]
     Safety condition #1189 [OK]
     Safety condition #1192 [OK]
     Safety condition #1194 [OK]
     Safety condition #1193 [OK]
     Safety condition #1195 [OK]
     Safety condition #1196 [OK]
     Safety condition #1199 [OK]
     Safety condition #1198 [OK]
     Safety condition #1197 [OK]
     Safety condition #1201 [OK]
     Safety condition #1203 [OK]
     Safety condition #1200 [OK]
     Safety condition #1202 [OK]
     Safety condition #1205 [OK]
     Safety condition #1207 [OK]
     Safety condition #1206 [OK]
     Safety condition #1204 [OK]
     Safety condition #1209 [OK]
     Safety condition #1211 [OK]
     Safety condition #1208 [OK]
     Safety condition #1210 [OK]
     Safety condition #1213 [OK]
     Safety condition #1215 [OK]
     Safety condition #1212 [OK]
     Safety condition #1214 [OK]
     Safety condition #1219 [OK]
     Safety condition #1217 [OK]
     Safety condition #1218 [OK]
     Safety condition #1216 [OK]
     Safety condition #1221 [OK]
     Safety condition #1223 [OK]
     Safety condition #1220 [OK]
     Safety condition #1222 [OK]
     Safety condition #1227 [OK]
     Safety condition #1225 [OK]
     Safety condition #1224 [OK]
     Safety condition #1226 [OK]
     Safety condition #1229 [OK]
     Safety condition #1231 [OK]
     Safety condition #1230 [OK]
     Safety condition #1228 [OK]
     Safety condition #1233 [OK]
     Safety condition #1235 [OK]
     Safety condition #1234 [OK]
     Safety condition #1232 [OK]
     Safety condition #1237 [OK]
     Safety condition #1239 [OK]
     Safety condition #1238 [OK]
     Safety condition #1236 [OK]
     Safety condition #1240 [OK]
     Safety condition #1242 [OK]
     Safety condition #1241 [OK]
     Safety condition #1243 [OK]
     Safety condition #1246 [OK]
     Safety condition #1244 [OK]
     Safety condition #1245 [OK]
     Safety condition #1247 [OK]
     Safety condition #1250 [OK]
     Safety condition #1248 [OK]
     Safety condition #1249 [OK]
     Safety condition #1251 [OK]
     Safety condition #1252 [OK]
     Safety condition #1254 [OK]
     Safety condition #1253 [OK]
     Safety condition #1255 [OK]
     Safety condition #1256 [OK]
     Safety condition #1258 [OK]
     Safety condition #1259 [OK]
     Safety condition #1257 [OK]
     Safety condition #1260 [OK]
     Safety condition #1262 [OK]
     Safety condition #1261 [OK]
     Safety condition #1263 [OK]
     Safety condition #1264 [OK]
     Safety condition #1267 [OK]
     Safety condition #1265 [OK]
     Safety condition #1266 [OK]
     Safety condition #1269 [OK]
     Safety condition #1271 [OK]
     Safety condition #1270 [OK]
     Safety condition #1268 [OK]
     Safety condition #1273 [OK]
     Safety condition #1275 [OK]
     Safety condition #1272 [OK]
     Safety condition #1274 [OK]
     Safety condition #1277 [OK]
     Safety condition #1279 [OK]
     Safety condition #1276 [OK]
     Safety condition #1278 [OK]
     Safety condition #1281 [OK]
     Safety condition #1283 [OK]
     Safety condition #1280 [OK]
     Safety condition #1282 [OK]
     Safety condition #1285 [OK]
     Safety condition #1287 [OK]
     Safety condition #1286 [OK]
     Safety condition #1284 [OK]
     Safety condition #1291 [OK]
     Safety condition #1289 [OK]
     Safety condition #1290 [OK]
     Safety condition #1288 [OK]
     Safety condition #1293 [OK]
     Safety condition #1295 [OK]
     Safety condition #1292 [OK]
     Safety condition #1294 [OK]
     Safety condition #1297 [OK]
     Safety condition #1299 [OK]
     Safety condition #1298 [OK]
     Safety condition #1296 [OK]
     Safety condition #1303 [OK]
     Safety condition #1301 [OK]
     Safety condition #1300 [OK]
     Safety condition #1302 [OK]
     Safety condition #1305 [OK]
     Safety condition #1306 [OK]
     Safety condition #1304 [OK]
     Safety condition #1307 [OK]
     Safety condition #1308 [OK]
     Safety condition #1310 [OK]
     Safety condition #1311 [OK]
     Safety condition #1309 [OK]
     Safety condition #1312 [OK]
     Safety condition #1314 [OK]
     Safety condition #1313 [OK]
     Safety condition #1315 [OK]
     Safety condition #1316 [OK]
     Safety condition #1318 [OK]
     Safety condition #1319 [OK]
     Safety condition #1317 [OK]
     Safety condition #1323 [OK]
     Safety condition #1320 [OK]
     Safety condition #1322 [OK]
     Safety condition #1321 [OK]
     Safety condition #1324 [OK]
     Safety condition #1326 [OK]
     Safety condition #1327 [OK]
     Safety condition #1325 [OK]
     Safety condition #1328 [OK]
     Safety condition #1330 [OK]
     Safety condition #1329 [OK]
     Safety condition #1331 [OK]
     Safety condition #1332 [OK]
     Safety condition #1334 [OK]
     Safety condition #1333 [OK]
     Safety condition #1335 [OK]
     Safety condition #1336 [OK]
     Safety condition #1338 [OK]
     Safety condition #1339 [OK]
     Safety condition #1337 [OK]
     Safety condition #1340 [OK]
     Safety condition #1343 [OK]
     Safety condition #1342 [OK]
     Safety condition #1341 [OK]
     Safety condition #1345 [OK]
     Safety condition #1347 [OK]
     Safety condition #1344 [OK]
     Safety condition #1346 [OK]
     Safety condition #1349 [OK]
     Safety condition #1351 [OK]
     Safety condition #1350 [OK]
     Safety condition #1348 [OK]
     Safety condition #1353 [OK]
     Safety condition #1355 [OK]
     Safety condition #1352 [OK]
     Safety condition #1354 [OK]
     Safety condition #1357 [OK]
     Safety condition #1359 [OK]
     Safety condition #1358 [OK]
     Safety condition #1356 [OK]
     Safety condition #1363 [OK]
     Safety condition #1361 [OK]
     Safety condition #1362 [OK]
     Safety condition #1360 [OK]
     Safety condition #1365 [OK]
     Safety condition #1367 [OK]
     Safety condition #1364 [OK]
     Safety condition #1366 [OK]
     Safety condition #1369 [OK]
     Safety condition #1371 [OK]
     Safety condition #1370 [OK]
     Safety condition #1368 [OK]
     Safety condition #1373 [OK]
     Safety condition #1375 [OK]
     Safety condition #1372 [OK]
     Safety condition #1374 [OK]
     Safety condition #1377 [OK]
     Safety condition #1379 [OK]
     Safety condition #1376 [OK]
     Safety condition #1378 [OK]
     Safety condition #1381 [OK]
     Safety condition #1383 [OK]
     Safety condition #1380 [OK]
     Safety condition #1382 [OK]
     Safety condition #1384 [OK]
     Safety condition #1386 [OK]
     Safety condition #1385 [OK]
     Safety condition #1387 [OK]
     Safety condition #1388 [OK]
     Safety condition #1390 [OK]
     Safety condition #1389 [OK]
     Safety condition #1391 [OK]
     Safety condition #1394 [OK]
     Safety condition #1392 [OK]
     Safety condition #1393 [OK]
     Safety condition #1395 [OK]
     Safety condition #1396 [OK]
     Safety condition #1398 [OK]
     Safety condition #1397 [OK]
     Safety condition #1399 [OK]
     Safety condition #1400 [OK]
     Safety condition #1402 [OK]
     Safety condition #1401 [OK]
     Safety condition #1403 [OK]
     Safety condition #1404 [OK]
     Safety condition #1406 [OK]
     Safety condition #1407 [OK]
     Safety condition #1405 [OK]
     Safety condition #1408 [OK]
     Safety condition #1410 [OK]
     Safety condition #1409 [OK]
     Safety condition #1411 [OK]
     Safety condition #1412 [OK]
     Safety condition #1414 [OK]
     Safety condition #1415 [OK]
     Safety condition #1413 [OK]
     Safety condition #1416 [OK]
     Safety condition #1418 [OK]
     Safety condition #1417 [OK]
     Safety condition #1419 [OK]
     Safety condition #1420 [OK]
     Safety condition #1421 [OK]
     Safety condition #1423 [OK]
     Safety condition #1422 [OK]
     Safety condition #1425 [OK]
     Safety condition #1427 [OK]
     Safety condition #1424 [OK]
     Safety condition #1426 [OK]
     Safety condition #1429 [OK]
     Safety condition #1431 [OK]
     Safety condition #1430 [OK]
     Safety condition #1428 [OK]
     Safety condition #1433 [OK]
     Safety condition #1435 [OK]
     Safety condition #1434 [OK]
     Safety condition #1432 [OK]
     Safety condition #1437 [OK]
     Safety condition #1439 [OK]
     Safety condition #1436 [OK]
     Safety condition #1438 [OK]
     Safety condition #1441 [OK]
     Safety condition #1443 [OK]
     Safety condition #1440 [OK]
     Safety condition #1442 [OK]
     Safety condition #1445 [OK]
     Safety condition #1447 [OK]
     Safety condition #1444 [OK]
     Safety condition #1446 [OK]
     Safety condition #1449 [OK]
     Safety condition #1451 [OK]
     Safety condition #1450 [OK]
     Safety condition #1448 [OK]
     Safety condition #1453 [OK]
     Safety condition #1455 [OK]
     Safety condition #1452 [OK]
     Safety condition #1454 [OK]
     Safety condition #1457 [OK]
     Safety condition #1459 [OK]
     Safety condition #1458 [OK]
     Safety condition #1456 [OK]
     Safety condition #1462 [OK]
     Safety condition #1461 [OK]
     Safety condition #1463 [OK]
     Safety condition #1460 [OK]
     Safety condition #1464 [OK]
     Safety condition #1466 [OK]
     Safety condition #1465 [OK]
     Safety condition #1467 [OK]
     Safety condition #1468 [OK]
     Safety condition #1470 [OK]
     Safety condition #1469 [OK]
     Safety condition #1471 [OK]
     Safety condition #1472 [OK]
     Safety condition #1474 [OK]
     Safety condition #1473 [OK]
     Safety condition #1475 [OK]
     Safety condition #1476 [OK]
     Safety condition #1478 [OK]
     Safety condition #1479 [OK]
     Safety condition #1477 [OK]
     Safety condition #1480 [OK]
     Safety condition #1482 [OK]
     Safety condition #1483 [OK]
     Safety condition #1481 [OK]
     Safety condition #1484 [OK]
     Safety condition #1485 [OK]
     Safety condition #1486 [OK]
     Safety condition #1487 [OK]
     Safety condition #1488 [OK]
     Safety condition #1490 [OK]
     Safety condition #1491 [OK]
     Safety condition #1489 [OK]
     Safety condition #1492 [OK]
     Safety condition #1494 [OK]
     Safety condition #1493 [OK]
     Safety condition #1495 [OK]
     Safety condition #1496 [OK]
     Safety condition #1499 [OK]
     Safety condition #1498 [OK]
     Safety condition #1497 [OK]
     Safety condition #1501 [OK]
     Safety condition #1503 [OK]
     Safety condition #1502 [OK]
     Safety condition #1500 [OK]
     Safety condition #1505 [OK]
     Safety condition #1507 [OK]
     Safety condition #1506 [OK]
     Safety condition #1504 [OK]
     Safety condition #1509 [OK]
     Safety condition #1511 [OK]
     Safety condition #1508 [OK]
     Safety condition #1510 [OK]
     Safety condition #1513 [OK]
     Safety condition #1515 [OK]
     Safety condition #1512 [OK]
     Safety condition #1514 [OK]
     Safety condition #1517 [OK]
     Safety condition #1519 [OK]
     Safety condition #1516 [OK]
     Safety condition #1518 [OK]
     Safety condition #1521 [OK]
     Safety condition #1523 [OK]
     Safety condition #1520 [OK]
     Safety condition #1522 [OK]
     Safety condition #1527 [OK]
     Safety condition #1525 [OK]
     Safety condition #1524 [OK]
     Safety condition #1526 [OK]
     Safety condition #1529 [OK]
     Safety condition #1531 [OK]
     Safety condition #1530 [OK]
     Safety condition #1528 [OK]
     Safety condition #1533 [OK]
     Safety condition #1535 [OK]
     Safety condition #1534 [OK]
     Safety condition #1532 [OK]
     Safety condition #1537 [OK]
     Safety condition #1539 [OK]
     Safety condition #1536 [OK]
     Safety condition #1538 [OK]
     Safety condition #1540 [OK]
     Safety condition #1542 [OK]
     Safety condition #1543 [OK]
     Safety condition #1541 [OK]
     Safety condition #1544 [OK]
     Safety condition #1546 [OK]
     Safety condition #1545 [OK]
     Safety condition #1547 [OK]
     Safety condition #1548 [OK]
     Safety condition #1550 [OK]
     Safety condition #1549 [OK]
     Safety condition #1551 [OK]
     Safety condition #1552 [OK]
     Safety condition #1554 [OK]
     Safety condition #1555 [OK]
     Safety condition #1553 [OK]
     Safety condition #1557 [OK]
     Safety condition #1556 [OK]
     Safety condition #1558 [OK]
     Safety condition #1559 [OK]
     Safety condition #1560 [OK]
     Safety condition #1563 [OK]
     Safety condition #1562 [OK]
     Safety condition #1561 [OK]
     Safety condition #1564 [OK]
     Safety condition #1566 [OK]
     Safety condition #1565 [OK]
     Safety condition #1567 [OK]
     Safety condition #1568 [OK]
     Safety condition #1570 [OK]
     Safety condition #1571 [OK]
     Safety condition #1569 [OK]
     Safety condition #1572 [OK]
     Safety condition #1574 [OK]
     Safety condition #1573 [OK]
     Safety condition #1575 [OK]
     Safety condition #1577 [OK]
     Safety condition #1576 [OK]
     Safety condition #1579 [OK]
     Safety condition #1578 [OK]
     Safety condition #1581 [OK]
     Safety condition #1583 [OK]
     Safety condition #1580 [OK]
     Safety condition #1582 [OK]
     Safety condition #1585 [OK]
     Safety condition #1587 [OK]
     Safety condition #1586 [OK]
     Safety condition #1584 [OK]
     Safety condition #1589 [OK]
     Safety condition #1591 [OK]
     Safety condition #1588 [OK]
     Safety condition #1590 [OK]
     Safety condition #1593 [OK]
     Safety condition #1595 [OK]
     Safety condition #1592 [OK]
     Safety condition #1594 [OK]
     Safety condition #1597 [OK]
     Safety condition #1599 [OK]
     Safety condition #1596 [OK]
     Safety condition #1598 [OK]
     Safety condition #1601 [OK]
     Safety condition #1603 [OK]
     Safety condition #1602 [OK]
     Safety condition #1600 [OK]
     Safety condition #1605 [OK]
     Safety condition #1607 [OK]
     Safety condition #1604 [OK]
     Safety condition #1606 [OK]
     Safety condition #1609 [OK]
     Safety condition #1611 [OK]
     Safety condition #1608 [OK]
     Safety condition #1610 [OK]
     Safety condition #1613 [OK]
     Safety condition #1615 [OK]
     Safety condition #1612 [OK]
     Safety condition #1614 [OK]
     Safety condition #1617 [OK]
     Safety condition #1618 [OK]
     Safety condition #1619 [OK]
     Safety condition #1616 [OK]
     Safety condition #1620 [OK]
     Safety condition #1622 [OK]
     Safety condition #1621 [OK]
     Safety condition #1623 [OK]
     Safety condition #1624 [OK]
     Safety condition #1626 [OK]
     Safety condition #1627 [OK]
     Safety condition #1625 [OK]
     Safety condition #1628 [OK]
     Safety condition #1630 [OK]
     Safety condition #1629 [OK]
     Safety condition #1631 [OK]
     Safety condition #1635 [OK]
     Safety condition #1632 [OK]
     Safety condition #1634 [OK]
     Safety condition #1633 [OK]
     Safety condition #1638 [OK]
     Safety condition #1636 [OK]
     Safety condition #1639 [OK]
     Safety condition #1637 [OK]
     Safety condition #1640 [OK]
     Safety condition #1642 [OK]
     Safety condition #1641 [OK]
     Safety condition #1643 [OK]
     Safety condition #1644 [OK]
     Safety condition #1646 [OK]
     Safety condition #1647 [OK]
     Safety condition #1645 [OK]
     Safety condition #1648 [OK]
     Safety condition #1650 [OK]
     Safety condition #1649 [OK]
     Safety condition #1651 [OK]
     Safety condition #1652 [OK]
     Safety condition #1655 [OK]
     Safety condition #1654 [OK]
     Safety condition #1653 [OK]
     Safety condition #1657 [OK]
     Safety condition #1659 [OK]
     Safety condition #1656 [OK]
     Safety condition #1658 [OK]
     Safety condition #1661 [OK]
     Safety condition #1663 [OK]
     Safety condition #1662 [OK]
     Safety condition #1660 [OK]
     Safety condition #1665 [OK]
     Safety condition #1667 [OK]
     Safety condition #1666 [OK]
     Safety condition #1664 [OK]
     Safety condition #1669 [OK]
     Safety condition #1671 [OK]
     Safety condition #1668 [OK]
     Safety condition #1670 [OK]
     Safety condition #1673 [OK]
     Safety condition #1675 [OK]
     Safety condition #1672 [OK]
     Safety condition #1674 [OK]
     Safety condition #1677 [OK]
     Safety condition #1679 [OK]
     Safety condition #1676 [OK]
     Safety condition #1678 [OK]
     Safety condition #1681 [OK]
     Safety condition #1683 [OK]
     Safety condition #1680 [OK]
     Safety condition #1682 [OK]
     Safety condition #1687 [OK]
     Safety condition #1685 [OK]
     Safety condition #1684 [OK]
     Safety condition #1686 [OK]
     Safety condition #1689 [OK]
     Safety condition #1691 [OK]
     Safety condition #1690 [OK]
     Safety condition #1688 [OK]
     Safety condition #1693 [OK]
     Safety condition #1695 [OK]
     Safety condition #1692 [OK]
     Safety condition #1694 [OK]
     Safety condition #1696 [OK]
     Safety condition #1698 [OK]
     Safety condition #1697 [OK]
     Safety condition #1699 [OK]
     Safety condition #1700 [OK]
     Safety condition #1702 [OK]
     Safety condition #1701 [OK]
     Safety condition #1703 [OK]
     Safety condition #1704 [OK]
     Safety condition #1706 [OK]
     Safety condition #1707 [OK]
     Safety condition #1705 [OK]
     Safety condition #1708 [OK]
     Safety condition #1710 [OK]
     Safety condition #1711 [OK]
     Safety condition #1709 [OK]
     Safety condition #1713 [OK]
     Safety condition #1712 [OK]
     Safety condition #1714 [OK]
     Safety condition #1715 [OK]
     Safety condition #1716 [OK]
     Safety condition #1719 [OK]
     Safety condition #1718 [OK]
     Safety condition #1717 [OK]
     Safety condition #1720 [OK]
     Safety condition #1722 [OK]
     Safety condition #1723 [OK]
     Safety condition #1721 [OK]
     Safety condition #1724 [OK]
     Safety condition #1726 [OK]
     Safety condition #1725 [OK]
     Safety condition #1727 [OK]
     Safety condition #1728 [OK]
     Safety condition #1730 [OK]
     Safety condition #1729 [OK]
     Safety condition #1731 [OK]
     Safety condition #1733 [OK]
     Safety condition #1735 [OK]
     Safety condition #1732 [OK]
     Safety condition #1734 [OK]
     Safety condition #1737 [OK]
     Safety condition #1739 [OK]
     Safety condition #1736 [OK]
     Safety condition #1738 [OK]
     Safety condition #1741 [OK]
     Safety condition #1743 [OK]
     Safety condition #1742 [OK]
     Safety condition #1740 [OK]
     Safety condition #1745 [OK]
     Safety condition #1747 [OK]
     Safety condition #1744 [OK]
     Safety condition #1746 [OK]
     Safety condition #1749 [OK]
     Safety condition #1751 [OK]
     Safety condition #1748 [OK]
     Safety condition #1750 [OK]
     Safety condition #1753 [OK]
     Safety condition #1755 [OK]
     Safety condition #1752 [OK]
     Safety condition #1754 [OK]
     Safety condition #1757 [OK]
     Safety condition #1759 [OK]
     Safety condition #1758 [OK]
     Safety condition #1756 [OK]
     Safety condition #1761 [OK]
     Safety condition #1763 [OK]
     Safety condition #1760 [OK]
     Safety condition #1762 [OK]
     Safety condition #1765 [OK]
     Safety condition #1767 [OK]
     Safety condition #1764 [OK]
     Safety condition #1766 [OK]
     Safety condition #1769 [OK]
     Safety condition #1771 [OK]
     Safety condition #1770 [OK]
     Safety condition #1768 [OK]
     Safety condition #1774 [OK]
     Safety condition #1773 [OK]
     Safety condition #1772 [OK]
     Safety condition #1775 [OK]
     Safety condition #1776 [OK]
     Safety condition #1778 [OK]
     Safety condition #1779 [OK]
     Safety condition #1777 [OK]
     Safety condition #1780 [OK]
     Safety condition #1782 [OK]
     Safety condition #1783 [OK]
     Safety condition #1781 [OK]
     Safety condition #1784 [OK]
     Safety condition #1786 [OK]
     Safety condition #1787 [OK]
     Safety condition #1785 [OK]
     Safety condition #1788 [OK]
     Safety condition #1790 [OK]
     Safety condition #1791 [OK]
     Safety condition #1789 [OK]
     Safety condition #1794 [OK]
     Safety condition #1792 [OK]
     Safety condition #1795 [OK]
     Safety condition #1793 [OK]
     Safety condition #1796 [OK]
     Safety condition #1797 [OK]
     Safety condition #1798 [OK]
     Safety condition #1799 [OK]
     Safety condition #1802 [OK]
     Safety condition #1800 [OK]
     Safety condition #1803 [OK]
     Safety condition #1801 [OK]
     Safety condition #1804 [OK]
     Safety condition #1806 [OK]
     Safety condition #1805 [OK]
     Safety condition #1807 [OK]
     Safety condition #1811 [OK]
     Safety condition #1808 [OK]
     Safety condition #1810 [OK]
     Safety condition #1809 [OK]
     Safety condition #1813 [OK]
     Safety condition #1815 [OK]
     Safety condition #1812 [OK]
     Safety condition #1814 [OK]
     Safety condition #1817 [OK]
     Safety condition #1819 [OK]
     Safety condition #1816 [OK]
     Safety condition #1818 [OK]
     Safety condition #1821 [OK]
     Safety condition #1823 [OK]
     Safety condition #1820 [OK]
     Safety condition #1822 [OK]
     Safety condition #1825 [OK]
     Safety condition #1827 [OK]
     Safety condition #1826 [OK]
     Safety condition #1824 [OK]
     Safety condition #1829 [OK]
     Safety condition #1831 [OK]
     Safety condition #1828 [OK]
     Safety condition #1830 [OK]
     Safety condition #1833 [OK]
     Safety condition #1835 [OK]
     Safety condition #1832 [OK]
     Safety condition #1834 [OK]
     Safety condition #1837 [OK]
     Safety condition #1839 [OK]
     Safety condition #1838 [OK]
     Safety condition #1836 [OK]
     Safety condition #1841 [OK]
     Safety condition #1843 [OK]
     Safety condition #1842 [OK]
     Safety condition #1840 [OK]
     Safety condition #1845 [OK]
     Safety condition #1847 [OK]
     Safety condition #1844 [OK]
     Safety condition #1846 [OK]
     Safety condition #1849 [OK]
     Safety condition #1851 [OK]
     Safety condition #1850 [OK]
     Safety condition #1848 [OK]
     Safety condition #1852 [OK]
     Safety condition #1854 [OK]
     Safety condition #1855 [OK]
     Safety condition #1853 [OK]
     Safety condition #1856 [OK]
     Safety condition #1858 [OK]
     Safety condition #1857 [OK]
     Safety condition #1859 [OK]
     Safety condition #1860 [OK]
     Safety condition #1862 [OK]
     Safety condition #1863 [OK]
     Safety condition #1861 [OK]
     Safety condition #1864 [OK]
     Safety condition #1866 [OK]
     Safety condition #1867 [OK]
     Safety condition #1865 [OK]
     Safety condition #1868 [OK]
     Safety condition #1869 [OK]
     Safety condition #1870 [OK]
     Safety condition #1871 [OK]
     Safety condition #1872 [OK]
     Safety condition #1874 [OK]
     Safety condition #1875 [OK]
     Safety condition #1873 [OK]
     Safety condition #1876 [OK]
     Safety condition #1878 [OK]
     Safety condition #1879 [OK]
     Safety condition #1877 [OK]
     Safety condition #1880 [OK]
     Safety condition #1882 [OK]
     Safety condition #1881 [OK]
     Safety condition #1883 [OK]
     Safety condition #1884 [OK]
     Safety condition #1886 [OK]
     Safety condition #1885 [OK]
     Safety condition #1887 [OK]
     Safety condition #1888 [OK]
     Safety condition #1889 [OK]
     Safety condition #1891 [OK]
     Safety condition #1890 [OK]
     Safety condition #1893 [OK]
     Safety condition #1895 [OK]
     Safety condition #1894 [OK]
     Safety condition #1892 [OK]
     Safety condition #1897 [OK]
     Safety condition #1899 [OK]
     Safety condition #1898 [OK]
     Safety condition #1896 [OK]
     Safety condition #1901 [OK]
     Safety condition #1903 [OK]
     Safety condition #1902 [OK]
     Safety condition #1900 [OK]
     Safety condition #1905 [OK]
     Safety condition #1907 [OK]
     Safety condition #1906 [OK]
     Safety condition #1904 [OK]
     Safety condition #1909 [OK]
     Safety condition #1911 [OK]
     Safety condition #1908 [OK]
     Safety condition #1910 [OK]
     Safety condition #1913 [OK]
     Safety condition #1915 [OK]
     Safety condition #1912 [OK]
     Safety condition #1914 [OK]
     Safety condition #1917 [OK]
     Safety condition #1919 [OK]
     Safety condition #1916 [OK]
     Safety condition #1918 [OK]
     Safety condition #1921 [OK]
     Safety condition #1923 [OK]
     Safety condition #1922 [OK]
     Safety condition #1920 [OK]
     Safety condition #1925 [OK]
     Safety condition #1927 [OK]
     Safety condition #1926 [OK]
     Safety condition #1924 [OK]
     Safety condition #1929 [OK]
     Safety condition #1930 [OK]
     Safety condition #1928 [OK]
     Safety condition #1931 [OK]
     Safety condition #1934 [OK]
     Safety condition #1932 [OK]
     Safety condition #1933 [OK]
     Safety condition #1935 [OK]
     Safety condition #1936 [OK]
     Safety condition #1938 [OK]
     Safety condition #1937 [OK]
     Safety condition #1939 [OK]
     Safety condition #1940 [OK]
     Safety condition #1942 [OK]
     Safety condition #1941 [OK]
     Safety condition #1943 [OK]
     Safety condition #1944 [OK]
     Safety condition #1946 [OK]
     Safety condition #1947 [OK]
     Safety condition #1945 [OK]
     Safety condition #1948 [OK]
     Safety condition #1950 [OK]
     Safety condition #1951 [OK]
     Safety condition #1949 [OK]
     Safety condition #1953 [OK]
     Safety condition #1952 [OK]
     Safety condition #1954 [OK]
     Safety condition #1955 [OK]
     Safety condition #1956 [OK]
     Safety condition #1958 [OK]
     Safety condition #1959 [OK]
     Safety condition #1957 [OK]
     Safety condition #1960 [OK]
     Safety condition #1962 [OK]
     Safety condition #1963 [OK]
     Safety condition #1961 [OK]
     Safety condition #1964 [OK]
     Safety condition #1966 [OK]
     Safety condition #1967 [OK]
     Safety condition #1965 [OK]
     Safety condition #1969 [OK]
     Safety condition #1971 [OK]
     Safety condition #1968 [OK]
     Safety condition #1970 [OK]
     Safety condition #1973 [OK]
     Safety condition #1975 [OK]
     Safety condition #1972 [OK]
     Safety condition #1974 [OK]
     Safety condition #1977 [OK]
     Safety condition #1979 [OK]
     Safety condition #1978 [OK]
     Safety condition #1976 [OK]
     Safety condition #1981 [OK]
     Safety condition #1983 [OK]
     Safety condition #1982 [OK]
     Safety condition #1980 [OK]
     Safety condition #1985 [OK]
     Safety condition #1987 [OK]
     Safety condition #1984 [OK]
     Safety condition #1986 [OK]
     Safety condition #1989 [OK]
     Safety condition #1991 [OK]
     Safety condition #1988 [OK]
     Safety condition #1990 [OK]
     Safety condition #1993 [OK]
     Safety condition #1995 [OK]
     Safety condition #1992 [OK]
     Safety condition #1994 [OK]
     Safety condition #1997 [OK]
     Safety condition #1999 [OK]
     Safety condition #1998 [OK]
     Safety condition #1996 [OK]
     Safety condition #2001 [OK]
     Safety condition #2003 [OK]
     Safety condition #2000 [OK]
     Safety condition #2002 [OK]
     Safety condition #2007 [OK]
     Safety condition #2005 [OK]
     Safety condition #2006 [OK]
     Safety condition #2004 [OK]
     Safety condition #2008 [OK]
     Safety condition #2010 [OK]
     Safety condition #2011 [OK]
     Safety condition #2009 [OK]
     Safety condition #2012 [OK]
     Safety condition #2014 [OK]
     Safety condition #2015 [OK]
     Safety condition #2013 [OK]
     Safety condition #2016 [OK]
     Safety condition #2018 [OK]
     Safety condition #2017 [OK]
     Safety condition #2019 [OK]
     Safety condition #2020 [OK]
     Safety condition #2022 [OK]
     Safety condition #2023 [OK]
     Safety condition #2021 [OK]
     Safety condition #2024 [OK]
     Safety condition #2025 [OK]
     Safety condition #2026 [OK]
     Safety condition #2027 [OK]
     Safety condition #2028 [OK]
     Safety condition #2030 [OK]
     Safety condition #2031 [OK]
     Safety condition #2029 [OK]
     Safety condition #2032 [OK]
     Safety condition #2034 [OK]
     Safety condition #2033 [OK]
     Safety condition #2035 [OK]
     Safety condition #2038 [OK]
     Safety condition #2036 [OK]
     Safety condition #2039 [OK]
     Safety condition #2037 [OK]
     Safety condition #2040 [OK]
     Safety condition #2042 [OK]
     Safety condition #2043 [OK]
     Safety condition #2041 [OK]
     Safety condition #2045 [OK]
     Safety condition #2044 [OK]
     Safety condition #2047 [OK]
     Safety condition #2046 [OK]
     Safety condition #2049 [OK]
     Safety condition #2051 [OK]
     Safety condition #2050 [OK]
     Safety condition #2048 [OK]
     Safety condition #2053 [OK]
     Safety condition #2055 [OK]
     Safety condition #2054 [OK]
     Safety condition #2052 [OK]
     Safety condition #2057 [OK]
     Safety condition #2059 [OK]
     Safety condition #2058 [OK]
     Safety condition #2056 [OK]
     Safety condition #2061 [OK]
     Safety condition #2063 [OK]
     Safety condition #2060 [OK]
     Safety condition #2062 [OK]
     Safety condition #2065 [OK]
     Safety condition #2067 [OK]
     Safety condition #2066 [OK]
     Safety condition #2064 [OK]
     Safety condition #2069 [OK]
     Safety condition #2071 [OK]
     Safety condition #2070 [OK]
     Safety condition #2068 [OK]
     Safety condition #2073 [OK]
     Safety condition #2075 [OK]
     Safety condition #2074 [OK]
     Safety condition #2072 [OK]
     Safety condition #2077 [OK]
     Safety condition #2079 [OK]
     Safety condition #2078 [OK]
     Safety condition #2076 [OK]
     Safety condition #2081 [OK]
     Safety condition #2083 [OK]
     Safety condition #2080 [OK]
     Safety condition #2082 [OK]
     Safety condition #2085 [OK]
     Safety condition #2086 [OK]
     Safety condition #2087 [OK]
     Safety condition #2084 [OK]
     Safety condition #2088 [OK]
     Safety condition #2090 [OK]
     Safety condition #2089 [OK]
     Safety condition #2091 [OK]
     Safety condition #2092 [OK]
     Safety condition #2094 [OK]
     Safety condition #2093 [OK]
     Safety condition #2095 [OK]
     Safety condition #2098 [OK]
     Safety condition #2096 [OK]
     Safety condition #2097 [OK]
     Safety condition #2099 [OK]
     Safety condition #2100 [OK]
     Safety condition #2103 [OK]
     Safety condition #2102 [OK]
     Safety condition #2101 [OK]
     Safety condition #2104 [OK]
     Safety condition #2106 [OK]
     Safety condition #2107 [OK]
     Safety condition #2105 [OK]
     Safety condition #2108 [OK]
     Safety condition #2110 [OK]
     Safety condition #2109 [OK]
     Safety condition #2111 [OK]
     Safety condition #2112 [OK]
     Safety condition #2114 [OK]
     Safety condition #2113 [OK]
     Safety condition #2115 [OK]
     Safety condition #2116 [OK]
     Safety condition #2118 [OK]
     Safety condition #2117 [OK]
     Safety condition #2119 [OK]
     Safety condition #2120 [OK]
     Safety condition #2123 [OK]
     Safety condition #2122 [OK]
     Safety condition #2121 [OK]
     Safety condition #2125 [OK]
     Safety condition #2127 [OK]
     Safety condition #2126 [OK]
     Safety condition #2124 [OK]
     Safety condition #2129 [OK]
     Safety condition #2131 [OK]
     Safety condition #2128 [OK]
     Safety condition #2130 [OK]
     Safety condition #2135 [OK]
     Safety condition #2133 [OK]
     Safety condition #2132 [OK]
     Safety condition #2134 [OK]
     Safety condition #2137 [OK]
     Safety condition #2139 [OK]
     Safety condition #2138 [OK]
     Safety condition #2136 [OK]
     Safety condition #2141 [OK]
     Safety condition #2143 [OK]
     Safety condition #2142 [OK]
     Safety condition #2140 [OK]
     Safety condition #2145 [OK]
     Safety condition #2147 [OK]
     Safety condition #2144 [OK]
     Safety condition #2146 [OK]
     Safety condition #2148 [OK]
     Safety condition #2150 [OK]
     Safety condition #2149 [OK]
     Safety condition #2151 [OK]
     Safety condition #2152 [OK]
     Safety condition #2154 [OK]
     Safety condition #2153 [OK]
     Safety condition #2155 [OK]
     Safety condition #2156 [OK]
     Safety condition #2158 [OK]
     Safety condition #2159 [OK]
     Safety condition #2157 [OK]
     Safety condition #2160 [OK]
     Safety condition #2162 [OK]
     Safety condition #2161 [OK]
     Safety condition #2163 [OK]
     Safety condition #2166 [OK]
     Safety condition #2164 [OK]
     Safety condition #2165 [OK]
     Safety condition #2167 [OK]
     Safety condition #2168 [OK]
     Safety condition #2170 [OK]
     Safety condition #2171 [OK]
     Safety condition #2169 [OK]
     Safety condition #2172 [OK]
     Safety condition #2173 [OK]
     Safety condition #2175 [OK]
     Safety condition #2174 [OK]
     Safety condition #2177 [OK]
     Safety condition #2179 [OK]
     Safety condition #2178 [OK]
     Safety condition #2176 [OK]
     Safety condition #2181 [OK]
     Safety condition #2183 [OK]
     Safety condition #2182 [OK]
     Safety condition #2180 [OK]
     Safety condition #2185 [OK]
     Safety condition #2187 [OK]
     Safety condition #2184 [OK]
     Safety condition #2186 [OK]
     Safety condition #2189 [OK]
     Safety condition #2190 [OK]
     Safety condition #2191 [OK]
     Safety condition #2188 [OK]
     Safety condition #2193 [OK]
     Safety condition #2195 [OK]
     Safety condition #2194 [OK]
     Safety condition #2192 [OK]
     Safety condition #2196 [OK]
     Safety condition #2199 [OK]
     Safety condition #2197 [OK]
     Safety condition #2198 [OK]
     Safety condition #2201 [OK]
     Safety condition #2203 [OK]
     Safety condition #2200 [OK]
     Safety condition #2202 [OK]
     Safety condition #2205 [OK]
     Safety condition #2207 [OK]
     Safety condition #2204 [OK]
     Safety condition #2206 [OK]
     Safety condition #2209 [OK]
     Safety condition #2210 [OK]
     Safety condition #2208 [OK]
     Safety condition #2211 [OK]
     Safety condition #2212 [OK]
     Safety condition #2214 [OK]
     Safety condition #2213 [OK]
     Safety condition #2215 [OK]
     Safety condition #2216 [OK]
     Safety condition #2218 [OK]
     Safety condition #2219 [OK]
     Safety condition #2217 [OK]
     Safety condition #2220 [OK]
     Safety condition #2222 [OK]
     Safety condition #2223 [OK]
     Safety condition #2221 [OK]
     Safety condition #2224 [OK]
     Safety condition #2226 [OK]
     Safety condition #2227 [OK]
     Safety condition #2225 [OK]
     Safety condition #2228 [OK]
     Safety condition #2230 [OK]
     Safety condition #2231 [OK]
     Safety condition #2229 [OK]
     Safety condition #2232 [OK]
     Safety condition #2234 [OK]
     Safety condition #2235 [OK]
     Safety condition #2233 [OK]
     Safety condition #2237 [OK]
     Safety condition #2239 [OK]
     Safety condition #2238 [OK]
     Safety condition #2236 [OK]
     Safety condition #2241 [OK]
     Safety condition #2243 [OK]
     Safety condition #2242 [OK]
     Safety condition #2240 [OK]
     Safety condition #2245 [OK]
     Safety condition #2247 [OK]
     Safety condition #2246 [OK]
     Safety condition #2244 [OK]
     Safety condition #2249 [OK]
     Safety condition #2251 [OK]
     Safety condition #2248 [OK]
     Safety condition #2250 [OK]
     Safety condition #2253 [OK]
     Safety condition #2255 [OK]
     Safety condition #2254 [OK]
     Safety condition #2252 [OK]
     Safety condition #2257 [OK]
     Safety condition #2259 [OK]
     Safety condition #2256 [OK]
     Safety condition #2258 [OK]
     Safety condition #2260 [OK]
     Safety condition #2262 [OK]
     Safety condition #2261 [OK]
     Safety condition #2263 [OK]
     Safety condition #2264 [OK]
     Safety condition #2266 [OK]
     Safety condition #2267 [OK]
     Safety condition #2265 [OK]
     Safety condition #2268 [OK]
     Safety condition #2270 [OK]
     Safety condition #2269 [OK]
     Safety condition #2271 [OK]
     Safety condition #2272 [OK]
     Safety condition #2274 [OK]
     Safety condition #2275 [OK]
     Safety condition #2273 [OK]
     Safety condition #2276 [OK]
     Safety condition #2278 [OK]
     Safety condition #2277 [OK]
     Safety condition #2279 [OK]
     Safety condition #2280 [OK]
     Safety condition #2282 [OK]
     Safety condition #2283 [OK]
     Safety condition #2281 [OK]
     Safety condition #2284 [OK]
     Safety condition #2285 [OK]
     Safety condition #2287 [OK]
     Safety condition #2286 [OK]
     Safety condition #2289 [OK]
     Safety condition #2291 [OK]
     Safety condition #2290 [OK]
     Safety condition #2288 [OK]
     Safety condition #2293 [OK]
     Safety condition #2295 [OK]
     Safety condition #2292 [OK]
     Safety condition #2294 [OK]
     Safety condition #2297 [OK]
     Safety condition #2299 [OK]
     Safety condition #2298 [OK]
     Safety condition #2296 [OK]
     Safety condition #2301 [OK]
     Safety condition #2303 [OK]
     Safety condition #2300 [OK]
     Safety condition #2302 [OK]
     Safety condition #2305 [OK]
     Safety condition #2307 [OK]
     Safety condition #2304 [OK]
     Safety condition #2306 [OK]
     Safety condition #2309 [OK]
     Safety condition #2310 [OK]
     Safety condition #2308 [OK]
     Safety condition #2311 [OK]
     Safety condition #2312 [OK]
     Safety condition #2314 [OK]
     Safety condition #2315 [OK]
     Safety condition #2313 [OK]
     Safety condition #2316 [OK]
     Safety condition #2318 [OK]
     Safety condition #2317 [OK]
     Safety condition #2319 [OK]
     Safety condition #2320 [OK]
     Safety condition #2322 [OK]
     Safety condition #2321 [OK]
     Safety condition #2323 [OK]
     Safety condition #2324 [OK]
     Safety condition #2326 [OK]
     Safety condition #2325 [OK]
     Safety condition #2327 [OK]
     Safety condition #2328 [OK]
     Safety condition #2330 [OK]
     Safety condition #2329 [OK]
     Safety condition #2331 [OK]
     Safety condition #2332 [OK]
     Safety condition #2335 [OK]
     Safety condition #2334 [OK]
     Safety condition #2333 [OK]
     Safety condition #2337 [OK]
     Safety condition #2339 [OK]
     Safety condition #2338 [OK]
     Safety condition #2336 [OK]
     Safety condition #2341 [OK]
     Safety condition #2343 [OK]
     Safety condition #2342 [OK]
     Safety condition #2340 [OK]
     Safety condition #2345 [OK]
     Safety condition #2347 [OK]
     Safety condition #2344 [OK]
     Safety condition #2346 [OK]
     Safety condition #2349 [OK]
     Safety condition #2351 [OK]
     Safety condition #2348 [OK]
     Safety condition #2350 [OK]
     Safety condition #2353 [OK]
     Safety condition #2355 [OK]
     Safety condition #2354 [OK]
     Safety condition #2352 [OK]
     Safety condition #2357 [OK]
     Safety condition #2359 [OK]
     Safety condition #2356 [OK]
     Safety condition #2358 [OK]
     Safety condition #2361 [OK]
     Safety condition #2363 [OK]
     Safety condition #2362 [OK]
     Safety condition #2360 [OK]
     Safety condition #2365 [OK]
     Safety condition #2367 [OK]
     Safety condition #2364 [OK]
     Safety condition #2366 [OK]
     Safety condition #2369 [OK]
     Safety condition #2371 [OK]
     Safety condition #2368 [OK]
     Safety condition #2370 [OK]
     Safety condition #2373 [OK]
     Safety condition #2375 [OK]
     Safety condition #2372 [OK]
     Safety condition #2374 [OK]
     Safety condition #2376 [OK]
     Safety condition #2378 [OK]
     Safety condition #2379 [OK]
     Safety condition #2377 [OK]
     Safety condition #2380 [OK]
     Safety condition #2382 [OK]
     Safety condition #2381 [OK]
     Safety condition #2383 [OK]
     Safety condition #2384 [OK]
     Safety condition #2386 [OK]
     Safety condition #2385 [OK]
     Safety condition #2387 [OK]
     Safety condition #2388 [OK]
     Safety condition #2390 [OK]
     Safety condition #2389 [OK]
     Safety condition #2391 [OK]
     Safety condition #2394 [OK]
     Safety condition #2392 [OK]
     Safety condition #2395 [OK]
     Safety condition #2393 [OK]
     Safety condition #2396 [OK]
     Safety condition #2398 [OK]
     Safety condition #2399 [OK]
     Safety condition #2397 [OK]
     Safety condition #2400 [OK]
     Safety condition #2403 [OK]
     Safety condition #2401 [OK]
     Safety condition #2402 [OK]
     Safety condition #2405 [OK]
     Safety condition #2407 [OK]
     Safety condition #2404 [OK]
     Safety condition #2406 [OK]
     Safety condition #2409 [OK]
     Safety condition #2411 [OK]
     Safety condition #2408 [OK]
     Safety condition #2410 [OK]
     Safety condition #2413 [OK]
     Safety condition #2415 [OK]
     Safety condition #2414 [OK]
     Safety condition #2412 [OK]
     Safety condition #2417 [OK]
     Safety condition #2419 [OK]
     Safety condition #2418 [OK]
     Safety condition #2416 [OK]
     Safety condition #2421 [OK]
     Safety condition #2423 [OK]
     Safety condition #2420 [OK]
     Safety condition #2422 [OK]
     Safety condition #2425 [OK]
     Safety condition #2427 [OK]
     Safety condition #2424 [OK]
     Safety condition #2426 [OK]
     Safety condition #2429 [OK]
     Safety condition #2431 [OK]
     Safety condition #2428 [OK]
     Safety condition #2430 [OK]
     Safety condition #2433 [OK]
     Safety condition #2435 [OK]
     Safety condition #2432 [OK]
     Safety condition #2434 [OK]
     Safety condition #2439 [OK]
     Safety condition #2437 [OK]
     Safety condition #2438 [OK]
     Safety condition #2436 [OK]
     Safety condition #2441 [OK]
     Safety condition #2442 [OK]
     Safety condition #2440 [OK]
     Safety condition #2443 [OK]
     Safety condition #2444 [OK]
     Safety condition #2446 [OK]
     Safety condition #2445 [OK]
     Safety condition #2447 [OK]
     Safety condition #2448 [OK]
     Safety condition #2450 [OK]
     Safety condition #2449 [OK]
     Safety condition #2451 [OK]
     Safety condition #2452 [OK]
     Safety condition #2454 [OK]
     Safety condition #2453 [OK]
     Safety condition #2455 [OK]
     Safety condition #2456 [OK]
     Safety condition #2459 [OK]
     Safety condition #2458 [OK]
     Safety condition #2457 [OK]
     Safety condition #2460 [OK]
     Safety condition #2462 [OK]
     Safety condition #2461 [OK]
     Safety condition #2463 [OK]
     Safety condition #2464 [OK]
     Safety condition #2465 [OK]
     Safety condition #2466 [OK]
     Safety condition #2467 [OK]
     Safety condition #2468 [OK]
     Safety condition #2470 [OK]
     Safety condition #2471 [OK]
     Safety condition #2469 [OK]
     Safety condition #2472 [OK]
     Safety condition #2474 [OK]
     Safety condition #2473 [OK]
     Safety condition #2475 [OK]
     Safety condition #2478 [OK]
     Safety condition #2476 [OK]
     Safety condition #2479 [OK]
     Safety condition #2477 [OK]
     Safety condition #2481 [OK]
     Safety condition #2483 [OK]
     Safety condition #2480 [OK]
     Safety condition #2482 [OK]
     Safety condition #2485 [OK]
     Safety condition #2487 [OK]
     Safety condition #2486 [OK]
     Safety condition #2484 [OK]
     Safety condition #2489 [OK]
     Safety condition #2491 [OK]
     Safety condition #2488 [OK]
     Safety condition #2490 [OK]
     Safety condition #2493 [OK]
     Safety condition #2495 [OK]
     Safety condition #2492 [OK]
     Safety condition #2494 [OK]
     Safety condition #2497 [OK]
     Safety condition #2499 [OK]
     Safety condition #2498 [OK]
     Safety condition #2496 [OK]
     Safety condition #2503 [OK]
     Safety condition #2501 [OK]
     Safety condition #2502 [OK]
     Safety condition #2500 [OK]
     Safety condition #2505 [OK]
     Safety condition #2507 [OK]
     Safety condition #2504 [OK]
     Safety condition #2506 [OK]
     Safety condition #2511 [OK]
     Safety condition #2509 [OK]
     Safety condition #2508 [OK]
     Safety condition #2510 [OK]
     Safety condition #2515 [OK]
     Safety condition #2513 [OK]
     Safety condition #2512 [OK]
     Safety condition #2514 [OK]
     Safety condition #2517 [OK]
     Safety condition #2519 [OK]
     Safety condition #2516 [OK]
     Safety condition #2518 [OK]
     Safety condition #2520 [OK]
     Safety condition #2522 [OK]
     Safety condition #2521 [OK]
     Safety condition #2523 [OK]
     Safety condition #2524 [OK]
     Safety condition #2526 [OK]
     Safety condition #2525 [OK]
     Safety condition #2527 [OK]
     Safety condition #2528 [OK]
     Safety condition #2530 [OK]
     Safety condition #2531 [OK]
     Safety condition #2529 [OK]
     Safety condition #2532 [OK]
     Safety condition #2534 [OK]
     Safety condition #2533 [OK]
     Safety condition #2535 [OK]
     Safety condition #2536 [OK]
     Safety condition #2538 [OK]
     Safety condition #2537 [OK]
     Safety condition #2539 [OK]
     Safety condition #2543 [OK]
     Safety condition #2542 [OK]
     Safety condition #2540 [OK]
     Safety condition #2541 [OK]
     Safety condition #2544 [OK]
     Safety condition #2546 [OK]
     Safety condition #2545 [OK]
     Safety condition #2547 [OK]
     Safety condition #2548 [OK]
     Safety condition #2550 [OK]
     Safety condition #2551 [OK]
     Safety condition #2549 [OK]
     Safety condition #2552 [OK]
     Safety condition #2554 [OK]
     Safety condition #2553 [OK]
     Safety condition #2555 [OK]
     Safety condition #2556 [OK]
     Safety condition #2559 [OK]
     Safety condition #2557 [OK]
     Safety condition #2558 [OK]
     Safety condition #2561 [OK]
     Safety condition #2563 [OK]
     Safety condition #2562 [OK]
     Safety condition #2560 [OK]
     Safety condition #2565 [OK]
     Safety condition #2567 [OK]
     Safety condition #2566 [OK]
     Safety condition #2564 [OK]
     Safety condition #2569 [OK]
     Safety condition #2571 [OK]
     Safety condition #2568 [OK]
     Safety condition #2570 [OK]
     Safety condition #2573 [OK]
     Safety condition #2575 [OK]
     Safety condition #2574 [OK]
     Safety condition #2572 [OK]
     Safety condition #2577 [OK]
     Safety condition #2579 [OK]
     Safety condition #2578 [OK]
     Safety condition #2576 [OK]
     Safety condition #2583 [OK]
     Safety condition #2581 [OK]
     Safety condition #2582 [OK]
     Safety condition #2580 [OK]
     Safety condition #2585 [OK]
     Safety condition #2587 [OK]
     Safety condition #2586 [OK]
     Safety condition #2584 [OK]
     Safety condition #2589 [OK]
     Safety condition #2591 [OK]
     Safety condition #2588 [OK]
     Safety condition #2590 [OK]
     Safety condition #2595 [OK]
     Safety condition #2593 [OK]
     Safety condition #2594 [OK]
     Safety condition #2592 [OK]
     Safety condition #2597 [OK]
     Safety condition #2598 [OK]
     Safety condition #2599 [OK]
     Safety condition #2596 [OK]
     Safety condition #2600 [OK]
     Safety condition #2602 [OK]
     Safety condition #2601 [OK]
     Safety condition #2603 [OK]
     Safety condition #2604 [OK]
     Safety condition #2606 [OK]
     Safety condition #2607 [OK]
     Safety condition #2605 [OK]
     Safety condition #2608 [OK]
     Safety condition #2610 [OK]
     Safety condition #2611 [OK]
     Safety condition #2609 [OK]
     Safety condition #2612 [OK]
     Safety condition #2614 [OK]
     Safety condition #2615 [OK]
     Safety condition #2613 [OK]
     Safety condition #2618 [OK]
     Safety condition #2616 [OK]
     Safety condition #2619 [OK]
     Safety condition #2617 [OK]
     Safety condition #2621 [OK]
     Safety condition #2620 [OK]
     Safety condition #2622 [OK]
     Safety condition #2623 [OK]
     Safety condition #2626 [OK]
     Safety condition #2624 [OK]
     Safety condition #2625 [OK]
     Safety condition #2627 [OK]
     Safety condition #2628 [OK]
     Safety condition #2630 [OK]
     Safety condition #2629 [OK]
     Safety condition #2631 [OK]
     Safety condition #2634 [OK]
     Safety condition #2632 [OK]
     Safety condition #2635 [OK]
     Safety condition #2633 [OK]
     Safety condition #2637 [OK]
     Safety condition #2639 [OK]
     Safety condition #2638 [OK]
     Safety condition #2636 [OK]
     Safety condition #2641 [OK]
     Safety condition #2643 [OK]
     Safety condition #2640 [OK]
     Safety condition #2642 [OK]
     Safety condition #2645 [OK]
     Safety condition #2647 [OK]
     Safety condition #2646 [OK]
     Safety condition #2644 [OK]
     Safety condition #2649 [OK]
     Safety condition #2651 [OK]
     Safety condition #2648 [OK]
     Safety condition #2650 [OK]
     Safety condition #2653 [OK]
     Safety condition #2655 [OK]
     Safety condition #2652 [OK]
     Safety condition #2654 [OK]
     Safety condition #2657 [OK]
     Safety condition #2659 [OK]
     Safety condition #2656 [OK]
     Safety condition #2658 [OK]
     Safety condition #2661 [OK]
     Safety condition #2663 [OK]
     Safety condition #2662 [OK]
     Safety condition #2660 [OK]
     Safety condition #2665 [OK]
     Safety condition #2667 [OK]
     Safety condition #2664 [OK]
     Safety condition #2666 [OK]
     Safety condition #2669 [OK]
     Safety condition #2671 [OK]
     Safety condition #2668 [OK]
     Safety condition #2670 [OK]
     Safety condition #2673 [OK]
     Safety condition #2675 [OK]
     Safety condition #2674 [OK]
     Safety condition #2672 [OK]
     Safety condition #2676 [OK]
     Safety condition #2678 [OK]
     Safety condition #2679 [OK]
     Safety condition #2677 [OK]
     Safety condition #2680 [OK]
     Safety condition #2682 [OK]
     Safety condition #2683 [OK]
     Safety condition #2681 [OK]
     Safety condition #2684 [OK]
     Safety condition #2686 [OK]
     Safety condition #2685 [OK]
     Safety condition #2687 [OK]
     Safety condition #2688 [OK]
     Safety condition #2690 [OK]
     Safety condition #2691 [OK]
     Safety condition #2689 [OK]
     Safety condition #2693 [OK]
     Safety condition #2692 [OK]
     Safety condition #2694 [OK]
     Safety condition #2695 [OK]
     Safety condition #2696 [OK]
     Safety condition #2698 [OK]
     Safety condition #2699 [OK]
     Safety condition #2697 [OK]
     Safety condition #2702 [OK]
     Safety condition #2700 [OK]
     Safety condition #2703 [OK]
     Safety condition #2701 [OK]
     Safety condition #2704 [OK]
     Safety condition #2706 [OK]
     Safety condition #2705 [OK]
     Safety condition #2707 [OK]
     Safety condition #2708 [OK]
     Safety condition #2710 [OK]
     Safety condition #2709 [OK]
     Safety condition #2711 [OK]
     Safety condition #2712 [OK]
     Safety condition #2715 [OK]
     Safety condition #2713 [OK]
     Safety condition #2714 [OK]
     Safety condition #2717 [OK]
     Safety condition #2719 [OK]
     Safety condition #2718 [OK]
     Safety condition #2716 [OK]
     Safety condition #2723 [OK]
     Safety condition #2721 [OK]
     Safety condition #2722 [OK]
     Safety condition #2720 [OK]
     Safety condition #2725 [OK]
     Safety condition #2727 [OK]
     Safety condition #2726 [OK]
     Safety condition #2724 [OK]
     Safety condition #2729 [OK]
     Safety condition #2731 [OK]
     Safety condition #2730 [OK]
     Safety condition #2728 [OK]
     Safety condition #2733 [OK]
     Safety condition #2735 [OK]
     Safety condition #2734 [OK]
     Safety condition #2732 [OK]
     Safety condition #2737 [OK]
     Safety condition #2739 [OK]
     Safety condition #2738 [OK]
     Safety condition #2736 [OK]
     Safety condition #2741 [OK]
     Safety condition #2743 [OK]
     Safety condition #2742 [OK]
     Safety condition #2740 [OK]
     Safety condition #2745 [OK]
     Safety condition #2747 [OK]
     Safety condition #2744 [OK]
     Safety condition #2746 [OK]
     Safety condition #2749 [OK]
     Safety condition #2751 [OK]
     Safety condition #2748 [OK]
     Safety condition #2750 [OK]
     Safety condition #2754 [OK]
     Safety condition #2753 [OK]
     Safety condition #2752 [OK]
     Safety condition #2755 [OK]
     Safety condition #2756 [OK]
     Safety condition #2758 [OK]
     Safety condition #2759 [OK]
     Safety condition #2757 [OK]
     Safety condition #2760 [OK]
     Safety condition #2762 [OK]
     Safety condition #2761 [OK]
     Safety condition #2763 [OK]
     Safety condition #2764 [OK]
     Safety condition #2766 [OK]
     Safety condition #2767 [OK]
     Safety condition #2765 [OK]
     Safety condition #2768 [OK]
     Safety condition #2770 [OK]
     Safety condition #2771 [OK]
     Safety condition #2769 [OK]
     Safety condition #2772 [OK]
     Safety condition #2774 [OK]
     Safety condition #2773 [OK]
     Safety condition #2775 [OK]
     Safety condition #2776 [OK]
     Safety condition #2777 [OK]
     Safety condition #2778 [OK]
     Safety condition #2779 [OK]
     Safety condition #2780 [OK]
     Safety condition #2782 [OK]
     Safety condition #2783 [OK]
     Safety condition #2781 [OK]
     Safety condition #2784 [OK]
     Safety condition #2786 [OK]
     Safety condition #2785 [OK]
     Safety condition #2787 [OK]
     Safety condition #2788 [OK]
     Safety condition #2791 [OK]
     Safety condition #2790 [OK]
     Safety condition #2789 [OK]
     Safety condition #2793 [OK]
     Safety condition #2795 [OK]
     Safety condition #2794 [OK]
     Safety condition #2792 [OK]
     Safety condition #2797 [OK]
     Safety condition #2799 [OK]
     Safety condition #2796 [OK]
     Safety condition #2798 [OK]
     Safety condition #2801 [OK]
     Safety condition #2803 [OK]
     Safety condition #2802 [OK]
     Safety condition #2800 [OK]
     Safety condition #2805 [OK]
     Safety condition #2807 [OK]
     Safety condition #2806 [OK]
     Safety condition #2804 [OK]
     Safety condition #2809 [OK]
     Safety condition #2811 [OK]
     Safety condition #2810 [OK]
     Safety condition #2808 [OK]
     Safety condition #2813 [OK]
     Safety condition #2815 [OK]
     Safety condition #2814 [OK]
     Safety condition #2812 [OK]
     Safety condition #2817 [OK]
     Safety condition #2819 [OK]
     Safety condition #2816 [OK]
     Safety condition #2818 [OK]
     Safety condition #2821 [OK]
     Safety condition #2823 [OK]
     Safety condition #2820 [OK]
     Safety condition #2822 [OK]
     Safety condition #2825 [OK]
     Safety condition #2827 [OK]
     Safety condition #2824 [OK]
     Safety condition #2826 [OK]
     Safety condition #2829 [OK]
     Safety condition #2831 [OK]
     Safety condition #2830 [OK]
     Safety condition #2828 [OK]
     Safety condition #2832 [OK]
     Safety condition #2834 [OK]
     Safety condition #2835 [OK]
     Safety condition #2833 [OK]
     Safety condition #2836 [OK]
     Safety condition #2838 [OK]
     Safety condition #2837 [OK]
     Safety condition #2839 [OK]
     Safety condition #2840 [OK]
     Safety condition #2842 [OK]
     Safety condition #2843 [OK]
     Safety condition #2841 [OK]
     Safety condition #2846 [OK]
     Safety condition #2844 [OK]
     Safety condition #2847 [OK]
     Safety condition #2845 [OK]
     Safety condition #2848 [OK]
     Safety condition #2849 [OK]
     Safety condition #2850 [OK]
     Safety condition #2851 [OK]
     Safety condition #2852 [OK]
     Safety condition #2854 [OK]
     Safety condition #2855 [OK]
     Safety condition #2853 [OK]
     Safety condition #2858 [OK]
     Safety condition #2856 [OK]
     Safety condition #2857 [OK]
     Safety condition #2859 [OK]
     Safety condition #2860 [OK]
     Safety condition #2862 [OK]
     Safety condition #2861 [OK]
     Safety condition #2863 [OK]
     Safety condition #2864 [OK]
     Safety condition #2866 [OK]
     Safety condition #2865 [OK]
     Safety condition #2867 [OK]
     Safety condition #2868 [OK]
     Safety condition #2871 [OK]
     Safety condition #2869 [OK]
     Safety condition #2870 [OK]
     Safety condition #2873 [OK]
     Safety condition #2875 [OK]
     Safety condition #2872 [OK]
     Safety condition #2874 [OK]
     Safety condition #2877 [OK]
     Safety condition #2879 [OK]
     Safety condition #2878 [OK]
     Safety condition #2876 [OK]
     Safety condition #2881 [OK]
     Safety condition #2883 [OK]
     Safety condition #2882 [OK]
     Safety condition #2880 [OK]
     Safety condition #2885 [OK]
     Safety condition #2887 [OK]
     Safety condition #2886 [OK]
     Safety condition #2884 [OK]
     Safety condition #2889 [OK]
     Safety condition #2891 [OK]
     Safety condition #2890 [OK]
     Safety condition #2888 [OK]
     Safety condition #2893 [OK]
     Safety condition #2895 [OK]
     Safety condition #2894 [OK]
     Safety condition #2892 [OK]
     Safety condition #2897 [OK]
     Safety condition #2899 [OK]
     Safety condition #2898 [OK]
     Safety condition #2896 [OK]
     Safety condition #2901 [OK]
     Safety condition #2903 [OK]
     Safety condition #2900 [OK]
     Safety condition #2902 [OK]
     Safety condition #2905 [OK]
     Safety condition #2907 [OK]
     Safety condition #2904 [OK]
     Safety condition #2906 [OK]
     Safety condition #2909 [OK]
     Safety condition #2910 [OK]
     Safety condition #2911 [OK]
     Safety condition #2908 [OK]
     Safety condition #2912 [OK]
     Safety condition #2914 [OK]
     Safety condition #2915 [OK]
     Safety condition #2913 [OK]
     Safety condition #2916 [OK]
     Safety condition #2918 [OK]
     Safety condition #2917 [OK]
     Safety condition #2919 [OK]
     Safety condition #2920 [OK]
     Safety condition #2922 [OK]
     Safety condition #2923 [OK]
     Safety condition #2921 [OK]
     Safety condition #2924 [OK]
     Safety condition #2926 [OK]
     Safety condition #2927 [OK]
     Safety condition #2925 [OK]
     Safety condition #2928 [OK]
     Safety condition #2930 [OK]
     Safety condition #2931 [OK]
     Safety condition #2929 [OK]
     Safety condition #2932 [OK]
     Safety condition #2933 [OK]
     Safety condition #2934 [OK]
     Safety condition #2935 [OK]
     Safety condition #2936 [OK]
     Safety condition #2938 [OK]
     Safety condition #2939 [OK]
     Safety condition #2937 [OK]
     Safety condition #2940 [OK]
     Safety condition #2942 [OK]
     Safety condition #2943 [OK]
     Safety condition #2941 [OK]
     Safety condition #2944 [OK]
     Safety condition #2946 [OK]
     Safety condition #2947 [OK]
     Safety condition #2945 [OK]
     Safety condition #2949 [OK]
     Safety condition #2951 [OK]
     Safety condition #2950 [OK]
     Safety condition #2948 [OK]
     Safety condition #2953 [OK]
     Safety condition #2955 [OK]
     Safety condition #2954 [OK]
     Safety condition #2952 [OK]
     Safety condition #2957 [OK]
     Safety condition #2959 [OK]
     Safety condition #2958 [OK]
     Safety condition #2956 [OK]
     Safety condition #2961 [OK]
     Safety condition #2963 [OK]
     Safety condition #2962 [OK]
     Safety condition #2960 [OK]
     Safety condition #2965 [OK]
     Safety condition #2967 [OK]
     Safety condition #2966 [OK]
     Safety condition #2964 [OK]
     Safety condition #2969 [OK]
     Safety condition #2971 [OK]
     Safety condition #2970 [OK]
     Safety condition #2968 [OK]
     Safety condition #2973 [OK]
     Safety condition #2975 [OK]
     Safety condition #2974 [OK]
     Safety condition #2972 [OK]
     Safety condition #2977 [OK]
     Safety condition #2979 [OK]
     Safety condition #2978 [OK]
     Safety condition #2976 [OK]
     Safety condition #2981 [OK]
     Safety condition #2983 [OK]
     Safety condition #2982 [OK]
     Safety condition #2980 [OK]
     Safety condition #2985 [OK]
     Safety condition #2987 [OK]
     Safety condition #2986 [OK]
     Safety condition #2984 [OK]
     Safety condition #2988 [OK]
     Safety condition #2990 [OK]
     Safety condition #2991 [OK]
     Safety condition #2989 [OK]
     Safety condition #2992 [OK]
     Safety condition #2994 [OK]
     Safety condition #2995 [OK]
     Safety condition #2993 [OK]
     Safety condition #2996 [OK]
     Safety condition #2998 [OK]
     Safety condition #2999 [OK]
     Safety condition #2997 [OK]
     Safety condition #3000 [OK]
     Safety condition #3002 [OK]
     Safety condition #3003 [OK]
     Safety condition #3001 [OK]
     Safety condition #3004 [OK]
     Safety condition #3005 [OK]
     Safety condition #3006 [OK]
     Safety condition #3007 [OK]
     Safety condition #3008 [OK]
     Safety condition #3010 [OK]
     Safety condition #3011 [OK]
     Safety condition #3009 [OK]
     Safety condition #3012 [OK]
     Safety condition #3014 [OK]
     Safety condition #3015 [OK]
     Safety condition #3013 [OK]
     Safety condition #3016 [OK]
     Safety condition #3018 [OK]
     Safety condition #3019 [OK]
     Safety condition #3017 [OK]
     Safety condition #3020 [OK]
     Safety condition #3022 [OK]
     Safety condition #3023 [OK]
     Safety condition #3021 [OK]
     Safety condition #3025 [OK]
     Safety condition #3027 [OK]
     Safety condition #3024 [OK]
     Safety condition #3026 [OK]
     Safety condition #3029 [OK]
     Safety condition #3031 [OK]
     Safety condition #3030 [OK]
     Safety condition #3028 [OK]
     Safety condition #3033 [OK]
     Safety condition #3035 [OK]
     Safety condition #3034 [OK]
     Safety condition #3032 [OK]
     Safety condition #3037 [OK]
     Safety condition #3039 [OK]
     Safety condition #3038 [OK]
     Safety condition #3036 [OK]
     Safety condition #3041 [OK]
     Safety condition #3043 [OK]
     Safety condition #3042 [OK]
     Safety condition #3040 [OK]
     Safety condition #3045 [OK]
     Safety condition #3047 [OK]
     Safety condition #3046 [OK]
     Safety condition #3044 [OK]
     Safety condition #3049 [OK]
     Safety condition #3051 [OK]
     Safety condition #3050 [OK]
     Safety condition #3048 [OK]
     Safety condition #3053 [OK]
     Safety condition #3055 [OK]
     Safety condition #3054 [OK]
     Safety condition #3052 [OK]
     Safety condition #3057 [OK]
     Safety condition #3059 [OK]
     Safety condition #3058 [OK]
     Safety condition #3056 [OK]
     Safety condition #3061 [OK]
     Safety condition #3063 [OK]
     Safety condition #3062 [OK]
     Safety condition #3060 [OK]
     Safety condition #3065 [OK]
     Safety condition #3066 [OK]
     Safety condition #3067 [OK]
     Safety condition #3064 [OK]
     Safety condition #3068 [OK]
     Safety condition #3070 [OK]
     Safety condition #3071 [OK]
     Safety condition #3069 [OK]
     Safety condition #3072 [OK]
     Safety condition #3074 [OK]
     Safety condition #3075 [OK]
     Safety condition #3073 [OK]
     Safety condition #3076 [OK]
     Safety condition #3078 [OK]
     Safety condition #3079 [OK]
     Safety condition #3077 [OK]
     Safety condition #3080 [OK]
     Safety condition #3083 [OK]
     Safety condition #3082 [OK]
     Safety condition #3081 [OK]
     Safety condition #3084 [OK]
     Safety condition #3086 [OK]
     Safety condition #3087 [OK]
     Safety condition #3085 [OK]
     Safety condition #3088 [OK]
     Safety condition #3089 [OK]
     Safety condition #3090 [OK]
     Safety condition #3091 [OK]
     Safety condition #3092 [OK]
     Safety condition #3094 [OK]
     Safety condition #3095 [OK]
     Safety condition #3093 [OK]
     Safety condition #3096 [OK]
     Safety condition #3098 [OK]
     Safety condition #3099 [OK]
     Safety condition #3097 [OK]
     Safety condition #3100 [OK]
     Safety condition #3103 [OK]
     Safety condition #3102 [OK]
     Safety condition #3101 [OK]
     Safety condition #3105 [OK]
     Safety condition #3107 [OK]
     Safety condition #3106 [OK]
     Safety condition #3104 [OK]
     Safety condition #3109 [OK]
     Safety condition #3111 [OK]
     Safety condition #3110 [OK]
     Safety condition #3108 [OK]
     Safety condition #3113 [OK]
     Safety condition #3115 [OK]
     Safety condition #3114 [OK]
     Safety condition #3112 [OK]
     Safety condition #3117 [OK]
     Safety condition #3119 [OK]
     Safety condition #3118 [OK]
     Safety condition #3116 [OK]
     Safety condition #3121 [OK]
     Safety condition #3123 [OK]
     Safety condition #3122 [OK]
     Safety condition #3120 [OK]
     Safety condition #3125 [OK]
     Safety condition #3127 [OK]
     Safety condition #3126 [OK]
     Safety condition #3124 [OK]
     Safety condition #3129 [OK]
     Safety condition #3131 [OK]
     Safety condition #3130 [OK]
     Safety condition #3128 [OK]
     Safety condition #3133 [OK]
     Safety condition #3135 [OK]
     Safety condition #3134 [OK]
     Safety condition #3132 [OK]
     Safety condition #3137 [OK]
     Safety condition #3139 [OK]
     Safety condition #3138 [OK]
     Safety condition #3136 [OK]
     Safety condition #3141 [OK]
     Safety condition #3143 [OK]
     Safety condition #3140 [OK]
     Safety condition #3142 [OK]
     Safety condition #3144 [OK]
     Safety condition #3146 [OK]
     Safety condition #3147 [OK]
     Safety condition #3145 [OK]
     Safety condition #3148 [OK]
     Safety condition #3150 [OK]
     Safety condition #3149 [OK]
     Safety condition #3151 [OK]
     Safety condition #3152 [OK]
     Safety condition #3154 [OK]
     Safety condition #3155 [OK]
     Safety condition #3153 [OK]
     Safety condition #3156 [OK]
     Safety condition #3158 [OK]
     Safety condition #3159 [OK]
     Safety condition #3157 [OK]
     Safety condition #3161 [OK]
     Safety condition #3162 [OK]
     Safety condition #3160 [OK]
     Safety condition #3163 [OK]
     Safety condition #3164 [OK]
     Safety condition #3166 [OK]
     Safety condition #3167 [OK]
     Safety condition #3165 [OK]
     Safety condition #3168 [OK]
     Safety condition #3170 [OK]
     Safety condition #3171 [OK]
     Safety condition #3169 [OK]
     Safety condition #3172 [OK]
     Safety condition #3174 [OK]
     Safety condition #3175 [OK]
     Safety condition #3173 [OK]
     Safety condition #3176 [OK]
     Safety condition #3178 [OK]
     Safety condition #3179 [OK]
     Safety condition #3177 [OK]
     Safety condition #3180 [OK]
     Safety condition #3183 [OK]
     Safety condition #3181 [OK]
     Safety condition #3182 [OK]
     Safety condition #3185 [OK]
     Safety condition #3187 [OK]
     Safety condition #3186 [OK]
     Safety condition #3184 [OK]
     Safety condition #3189 [OK]
     Safety condition #3191 [OK]
     Safety condition #3190 [OK]
     Safety condition #3188 [OK]
     Safety condition #3193 [OK]
     Safety condition #3195 [OK]
     Safety condition #3194 [OK]
     Safety condition #3192 [OK]
     Safety condition #3197 [OK]
     Safety condition #3199 [OK]
     Safety condition #3198 [OK]
     Safety condition #3196 [OK]
     Safety condition #3201 [OK]
     Safety condition #3203 [OK]
     Safety condition #3202 [OK]
     Safety condition #3200 [OK]
     Safety condition #3205 [OK]
     Safety condition #3207 [OK]
     Safety condition #3206 [OK]
     Safety condition #3204 [OK]
     Safety condition #3209 [OK]
     Safety condition #3211 [OK]
     Safety condition #3208 [OK]
     Safety condition #3210 [OK]
     Safety condition #3213 [OK]
     Safety condition #3215 [OK]
     Safety condition #3214 [OK]
     Safety condition #3212 [OK]
     Safety condition #3217 [OK]
     Safety condition #3219 [OK]
     Safety condition #3218 [OK]
     Safety condition #3216 [OK]
     Safety condition #3221 [OK]
     Safety condition #3222 [OK]
     Safety condition #3223 [OK]
     Safety condition #3220 [OK]
     Safety condition #3224 [OK]
     Safety condition #3226 [OK]
     Safety condition #3225 [OK]
     Safety condition #3227 [OK]
     Safety condition #3228 [OK]
     Safety condition #3230 [OK]
     Safety condition #3229 [OK]
     Safety condition #3231 [OK]
     Safety condition #3232 [OK]
     Safety condition #3234 [OK]
     Safety condition #3235 [OK]
     Safety condition #3233 [OK]
     Safety condition #3236 [OK]
     Safety condition #3238 [OK]
     Safety condition #3239 [OK]
     Safety condition #3237 [OK]
     Safety condition #3240 [OK]
     Safety condition #3242 [OK]
     Safety condition #3243 [OK]
     Safety condition #3241 [OK]
     Safety condition #3245 [OK]
     Safety condition #3244 [OK]
     Safety condition #3246 [OK]
     Safety condition #3247 [OK]
     Safety condition #3248 [OK]
     Safety condition #3250 [OK]
     Safety condition #3249 [OK]
     Safety condition #3251 [OK]
     Safety condition #3252 [OK]
     Safety condition #3254 [OK]
     Safety condition #3255 [OK]
     Safety condition #3253 [OK]
     Safety condition #3256 [OK]
     Safety condition #3258 [OK]
     Safety condition #3259 [OK]
     Safety condition #3257 [OK]
     Safety condition #3261 [OK]
     Safety condition #3263 [OK]
     Safety condition #3260 [OK]
     Safety condition #3262 [OK]
     Safety condition #3265 [OK]
     Safety condition #3267 [OK]
     Safety condition #3266 [OK]
     Safety condition #3264 [OK]
     Safety condition #3269 [OK]
     Safety condition #3271 [OK]
     Safety condition #3270 [OK]
     Safety condition #3268 [OK]
     Safety condition #3273 [OK]
     Safety condition #3275 [OK]
     Safety condition #3274 [OK]
     Safety condition #3272 [OK]
     Safety condition #3277 [OK]
     Safety condition #3279 [OK]
     Safety condition #3278 [OK]
     Safety condition #3276 [OK]
     Safety condition #3281 [OK]
     Safety condition #3283 [OK]
     Safety condition #3282 [OK]
     Safety condition #3280 [OK]
     Safety condition #3284 [OK]
     Safety condition #3286 [OK]
     Safety condition #3287 [OK]
     Safety condition #3285 [OK]
     Safety condition #3288 [OK]
     Safety condition #3290 [OK]
     Safety condition #3291 [OK]
     Safety condition #3289 [OK]
     Safety condition #3292 [OK]
     Safety condition #3294 [OK]
     Safety condition #3295 [OK]
     Safety condition #3293 [OK]
     Safety condition #3296 [OK]
     Safety condition #3298 [OK]
     Safety condition #3299 [OK]
     Safety condition #3297 [OK]
     Safety condition #3300 [OK]
     Safety condition #3302 [OK]
     Safety condition #3303 [OK]
     Safety condition #3301 [OK]
     Safety condition #3304 [OK]
     Safety condition #3306 [OK]
     Safety condition #3307 [OK]
     Safety condition #3305 [OK]
     Safety condition #3309 [OK]
     Safety condition #3308 [OK]
     Safety condition #3311 [OK]
     Safety condition #3310 [OK]
     Safety condition #3313 [OK]
     Safety condition #3315 [OK]
     Safety condition #3314 [OK]
     Safety condition #3312 [OK]
     Safety condition #3317 [OK]
     Safety condition #3319 [OK]
     Safety condition #3318 [OK]
     Safety condition #3316 [OK]
     Safety condition #3321 [OK]
     Safety condition #3323 [OK]
     Safety condition #3320 [OK]
     Safety condition #3322 [OK]
     Safety condition #3325 [OK]
     Safety condition #3326 [OK]
     Safety condition #3327 [OK]
     Safety condition #3324 [OK]
     Safety condition #3329 [OK]
     Safety condition #3331 [OK]
     Safety condition #3330 [OK]
     Safety condition #3328 [OK]
     Safety condition #3332 [OK]
     Safety condition #3333 [OK]
     Safety condition #3335 [OK]
     Safety condition #3334 [OK]
     Safety condition #3337 [OK]
     Safety condition #3339 [OK]
     Safety condition #3338 [OK]
     Safety condition #3336 [OK]
     Safety condition #3341 [OK]
     Safety condition #3343 [OK]
     Safety condition #3342 [OK]
     Safety condition #3340 [OK]
     Safety condition #3345 [OK]
     Safety condition #3346 [OK]
     Safety condition #3347 [OK]
     Safety condition #3344 [OK]
     Safety condition #3348 [OK]
     Safety condition #3350 [OK]
     Safety condition #3351 [OK]
     Safety condition #3349 [OK]
     Safety condition #3352 [OK]
     Safety condition #3354 [OK]
     Safety condition #3353 [OK]
     Safety condition #3355 [OK]
     Safety condition #3356 [OK]
     Safety condition #3358 [OK]
     Safety condition #3359 [OK]
     Safety condition #3357 [OK]
     Safety condition #3360 [OK]
     Safety condition #3362 [OK]
     Safety condition #3363 [OK]
     Safety condition #3361 [OK]
     Safety condition #3364 [OK]
     Safety condition #3366 [OK]
     Safety condition #3367 [OK]
     Safety condition #3365 [OK]
     Safety condition #3368 [OK]
     Safety condition #3370 [OK]
     Safety condition #3371 [OK]
     Safety condition #3369 [OK]
     Safety condition #3373 [OK]
     Safety condition #3375 [OK]
     Safety condition #3374 [OK]
     Safety condition #3372 [OK]
     Safety condition #3377 [OK]
     Safety condition #3379 [OK]
     Safety condition #3378 [OK]
     Safety condition #3376 [OK]
     Safety condition #3381 [OK]
     Safety condition #3383 [OK]
     Safety condition #3382 [OK]
     Safety condition #3380 [OK]
     Safety condition #3385 [OK]
     Safety condition #3387 [OK]
     Safety condition #3386 [OK]
     Safety condition #3384 [OK]
     Safety condition #3389 [OK]
     Safety condition #3391 [OK]
     Safety condition #3390 [OK]
     Safety condition #3388 [OK]
     Safety condition #3393 [OK]
     Safety condition #3395 [OK]
     Safety condition #3394 [OK]
     Safety condition #3392 [OK]
     Safety condition #3396 [OK]
     Safety condition #3398 [OK]
     Safety condition #3397 [OK]
     Safety condition #3399 [OK]
     Safety condition #3400 [OK]
     Safety condition #3402 [OK]
     Safety condition #3403 [OK]
     Safety condition #3401 [OK]
     Safety condition #3404 [OK]
     Safety condition #3406 [OK]
     Safety condition #3405 [OK]
     Safety condition #3407 [OK]
   Overall      [OK]    511.566017 seconds
Verifying range specification:    [OK]    0.011105 seconds
Rewriting value-preserved casting:  [OK]    0.004695 seconds
Verifying algebraic specification:  [OK]    0.004213 seconds
Verification result:      [OK]    511.896091 seconds
*)
proc main () =
{
  true
  &&
  true
}

nondet rsp@uint64;
nondet rdi@uint64;
nondet rsi@uint64;
nondet rdx@uint64;
nondet eax@uint32;
nondet ecx@uint32;

(* sha256: *)
#sha256:;
(* #! -> SP = 0x7fffffffd9b8 *)
#! 0x7fffffffd9b8 = 0x7fffffffd9b8;
(* push   %rbp                                     #! EA = L0x7fffffffd9b0; PC = 0x401166 *)
(* push rbp *)
nop;
(* mov    %rsp,%rbp                                #! PC = 0x401167 *)
mov rbp rsp;
(* sub    $0x20,%rsp                               #! PC = 0x40116a *)
subb carry rsp rsp 0x20@uint64;
(* mov    %rdi,-0x8(%rbp)                          #! EA = L0x7fffffffd9a8; PC = 0x40116e *)
mov L0x7fffffffd9a8 rdi;
(* mov    %rsi,-0x10(%rbp)                         #! EA = L0x7fffffffd9a0; PC = 0x401172 *)
mov L0x7fffffffd9a0 rsi;
(* mov    %rdx,-0x18(%rbp)                         #! EA = L0x7fffffffd998; PC = 0x401176 *)
mov L0x7fffffffd998 rdx;

(* mov *)
mov L0x7fffffffd998 0x00007fffffffda50@uint64;

(* mov    -0x18(%rbp),%rcx                         #! EA = L0x7fffffffd998; Value = 0x00007fffffffda50; PC = 0x40117a *)
mov rcx L0x7fffffffd998;

(* mov *)
mov L0x7fffffffd9a0 0x00007fffffffd9c0@uint64;

(* mov    -0x10(%rbp),%rax                         #! EA = L0x7fffffffd9a0; Value = 0x00007fffffffd9c0; PC = 0x40117e *)
mov rax L0x7fffffffd9a0;
(* mov    $0x80,%edx                               #! PC = 0x401182 *)
mov edx 0x80@uint64;
(* mov    %rcx,%rsi                                #! PC = 0x401187 *)
mov rsi rcx;
(* mov    %rax,%rdi                                #! PC = 0x40118a *)
mov rdi rax;
(* #call   0x401290 <SHA256_Update>                #! PC = 0x40118d *)
#call   0x401290 <SHA256_Update>                #! 0x40118d = 0x40118d;
(* #! -> SP = 0x7fffffffd988 *)
#! 0x7fffffffd988 = 0x7fffffffd988;
(* test   %rdx,%rdx                                #! PC = 0x401290 *)
subb zero dontcare rdx 1@uint64;
(* #je     0x4013d0 <SHA256_Update+320>            #! PC = 0x401293 *)
#je     0x4013d0 <SHA256_Update+320>            #! 0x401293 = 0x401293;
(* push   %r15                                     #! EA = L0x7fffffffd980; PC = 0x401299 *)
(* push r15 *)
nop;
(* lea    0x0(,%rdx,8),%eax                        #! PC = 0x40129b *)
(* lea EA, eax *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd978; PC = 0x4012a2 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd970; PC = 0x4012a4 *)
(* push r13 *)
nop;
(* mov    %edx,%r13d                               #! PC = 0x4012a6 *)
mov r13d edx;
(* push   %r12                                     #! EA = L0x7fffffffd968; PC = 0x4012a9 *)
(* push r12 *)
nop;
(* mov    %rsi,%r12                                #! PC = 0x4012ab *)
mov r12 rsi;
(* push   %rbp                                     #! EA = L0x7fffffffd960; PC = 0x4012ae *)
(* push rbp *)
nop;
(* mov    %rdx,%rbp                                #! PC = 0x4012af *)
mov rbp rdx;
(* push   %rbx                                     #! EA = L0x7fffffffd958; PC = 0x4012b2 *)
(* push rbx *)
nop;
(* mov    %rbp,%rcx                                #! PC = 0x4012b3 *)
mov rcx rbp;
(* mov    %rdi,%rbx                                #! PC = 0x4012b6 *)
mov rbx rdi;
(* sub    $0x8,%rsp                                #! PC = 0x4012b9 *)
subb carry rsp rsp 0x8@uint64;

(* mov *)
mov L0x7fffffffd9e0 0x0@uint32;
mov L0x7fffffffd9e4 0x0@uint32;

(* mov    0x24(%rdi),%edx                          #! EA = L0x7fffffffd9e4; Value = 0x0000000000000000; PC = 0x4012bd *)
mov edx L0x7fffffffd9e4;
(* add    0x20(%rdi),%eax                          #! EA = L0x7fffffffd9e0; Value = 0x0000000000000000; PC = 0x4012c0 *)
adds carry eax eax L0x7fffffffd9e0;
(* mov    %eax,0x20(%rdi)                          #! EA = L0x7fffffffd9e0; PC = 0x4012c3 *)
mov L0x7fffffffd9e0 eax;

(* mov *)
mov L0x7fffffffda28 0x0@uint64;

(* mov    0x68(%rdi),%eax                          #! EA = L0x7fffffffda28; Value = 0x0000002000000000; PC = 0x4012c6 *)
mov eax L0x7fffffffda28;
(* adc    $0x0,%edx                                #! PC = 0x4012c9 *)
adcs carry edx edx 0x0@uint32 carry;
(* shr    $0x1d,%rcx                               #! PC = 0x4012cc *)
(* shr rcx rcx 0x1d *)
split rcx dc rcx 0x1d;
(* add    %ecx,%edx                                #! PC = 0x4012d0 *)
adds carry edx edx ecx;
(* mov    %edx,0x24(%rdi)                          #! EA = L0x7fffffffd9e4; PC = 0x4012d2 *)
mov L0x7fffffffd9e4 edx;
(* test   %rax,%rax                                #! PC = 0x4012d5 *)
subb zero dontcare rax 1@uint64;
(* #jne    0x401310 <SHA256_Update+128>            #! PC = 0x4012d8 *)
#jne    0x401310 <SHA256_Update+128>            #! 0x4012d8 = 0x4012d8;
(* cmp    $0x3f,%rbp                               #! PC = 0x4012da *)
subb carry tmp rbp 0x3f@uint64;
subb zero tmp tmp 1@uint64;
(* #ja     0x401398 <SHA256_Update+264>            #! PC = 0x4012de *)
#ja     0x401398 <SHA256_Update+264>            #! 0x4012de = 0x4012de;
(* mov    %rbp,%rdx                                #! PC = 0x401398 *)
mov rdx rbp;
(* mov    %r12,%rsi                                #! PC = 0x40139b *)
mov rsi r12;
(* mov    %rbx,%rdi                                #! PC = 0x40139e *)
mov rdi rbx;
(* shr    $0x6,%rdx                                #! PC = 0x4013a1 *)
(* shr rdx rdx 0x6 *)
split rdx dc rdx 0x6;
(* #call   0x401c00 <sha256_block_data_order>      #! PC = 0x4013a5 *)
#call   0x401c00 <sha256_block_data_order>      #! 0x4013a5 = 0x4013a5;
(* #! -> SP = 0x7fffffffd948 *)
#! 0x7fffffffd948 = 0x7fffffffd948;
(* lea    0x7429(%rip),%r11        # 0x409030 <OPENSSL_ia32cap_P>#! PC = 0x401c00 *)
(* lea EA, r11 *)
nop;

(* mov *)
mov L0x409030 0x78bffff@uint64;

(* mov    (%r11),%r9d                              #! EA = L0x409030; Value = 0x7ed8320b078bffff; PC = 0x401c07 *)
mov r9d L0x409030;

(* mov *)
mov L0x409034 0x7ed8320b@uint64;

(* mov    0x4(%r11),%r10d                          #! EA = L0x409034; Value = 0x219c97a97ed8320b; PC = 0x401c0a *)
mov r10d L0x409034;

(* mov *)
mov L0x409038 0x219c97a9@uint64;

(* mov    0x8(%r11),%r11d                          #! EA = L0x409038; Value = 0x0040069c219c97a9; PC = 0x401c0e *)
mov r11d L0x409038;
(* test   $0x20000000,%r11d                        #! PC = 0x401c12 *)
and tmp@uint64 0x20000000@uint64 r11d;
subb zero dontcare tmp 0x20000000@uint64;
(* #jne    0x4030c0 <sha256_block_data_order_shaext>#! PC = 0x401c19 *)
#jne    0x4030c0 <sha256_block_data_order_shaext>#! 0x401c19 = 0x401c19;
(* lea    -0x247(%rip),%rcx        # 0x402e80 <K256+128>#! PC = 0x4030c0 *)
(* lea EA, rcx *)
nop;

(* mov *)
mov L0x7fffffffd9c0 0xa54ff53a3c6ef372bb67ae856a09e667@uint128;

(* movdqu (%rdi),%xmm1                             #! EA = L0x7fffffffd9c0; Value_l = 0xbb67ae856a09e667; Value_h = 0xa54ff53a3c6ef372; PC = 0x4030c7 *)
mov xmm1 L0x7fffffffd9c0;

(* mov *)
mov L0x7fffffffd9d0 0x5be0cd191f83d9ab9b05688c510e527f@uint128;

(* movdqu 0x10(%rdi),%xmm2                         #! EA = L0x7fffffffd9d0; Value_l = 0x9b05688c510e527f; Value_h = 0x5be0cd191f83d9ab; PC = 0x4030cb *)
mov xmm2 L0x7fffffffd9d0;

(* mov *)
mov L0x403000 0x405060700010203@uint64;
mov L0x403008 0xc0d0e0f08090a0b@uint64;

(* movdqa 0x180(%rcx),%xmm7                        #! EA = L0x403000; Value_l = 0x0405060700010203; Value_h = 0x0c0d0e0f08090a0b; PC = 0x4030d0 *)
mov xmm7_l L0x403000;
mov xmm7_h L0x403008;
join xmm7 xmm7_h xmm7_l;
(* pshufd $0x1b,%xmm1,%xmm0                        #! PC = 0x4030d8 *)
(* 00 01 10 11 *)
(* shr u1 u1 96 *)
split u1 dc xmm1 96;
(* shr u2 u2 64 *)
split u2 dc xmm1 64;
(* shr u3 u3 32 *)
split u3 dc xmm1 32;
mov u4 xmm1;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* pshufd $0xb1,%xmm1,%xmm1                        #! PC = 0x4030dd *)
(* 10 11 00 01 *)
(* shr u1 u1 64 *)
split u1 dc xmm1 64;
(* shr u2 u2 96*)
split u2 dc xmm1 96;
mov u3 xmm1;
(* shr u4 u4 32 *)
split u4 dc xmm1 32;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm1 uu1 uu2;
(* pshufd $0x1b,%xmm2,%xmm2                        #! PC = 0x4030e2 *)
(* 00 01 10 11 *)
(* shr u1 u1 96 *)
split u1 dc xmm2 96;
(* shr u2 u2 64 *)
split u2 dc xmm2 64;
(* shr u3 u3 32 *)
split u3 dc xmm2 32;
mov u4 xmm2;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm2 uu1 uu2;
(* movdqa %xmm7,%xmm8                              #! PC = 0x4030e7 *)
mov xmm8 xmm7;
(* palignr $0x8,%xmm2,%xmm1                        #! PC = 0x4030ec *)
(* shr xmm2 xmm1 64 *)
split xmm2 dc xmm1 64;
(* punpcklqdq %xmm0,%xmm2                          #! PC = 0x4030f2 *)
spl xmm2_0 xmm2_1 xmm2 64;
spl xmm0_0 xmm0_1 xmm0 64;
mov lqdq_l xmm2_0;
mov lqdq_h xmm0_0;
join xmm2 lqdq_h lqdq_l;
(* #jmp    0x403100 <sha256_block_data_order_shaext+64>#! PC = 0x4030f6 *)
#jmp    0x403100 <sha256_block_data_order_shaext+64>#! 0x4030f6 = 0x4030f6;

(* mov *)
mov L0x7fffffffda50 0x100000@uint128;

(* movdqu (%rsi),%xmm3                             #! EA = L0x7fffffffda50; Value_l = 0x0000000000100000; Value_h = 0x0000000000000000; PC = 0x403100 *)
mov xmm3 L0x7fffffffda50;

(* mov *)
mov L0x7fffffffda60 0x0@uint128;

(* movdqu 0x10(%rsi),%xmm4                         #! EA = L0x7fffffffda60; Value_l = 0x0000000000000000; Value_h = 0x0000000000000000; PC = 0x403104 *)
mov xmm4 L0x7fffffffda60;

(* mov *)
mov L0x7fffffffda70 0x50000000190000000000000000@uint128;

(* movdqu 0x20(%rsi),%xmm5                         #! EA = L0x7fffffffda70; Value_l = 0x0000000000000000; Value_h = 0x0000005000000019; PC = 0x403109 *)
mov xmm5 L0x7fffffffda70;
(* pshufb %xmm7,%xmm3                              #! PC = 0x40310e *)
(* split temp *)
spl temp_h temp_l xmm7 64;
spl temp_hh temp_hl temp_h 32;
spl temp_hhh temp_hhl temp_hh 16;
spl temp15 temp14 temp_hhh 8;
spl temp13 temp12 temp_hhl 8;
spl temp_hlh temp_hll temp_hl 16;
spl temp11 temp10 temp_hlh 8;
spl temp09 temp08 temp_hll 8;
spl temp_lh temp_ll temp_l 32;
spl temp_lhh temp_lhl temp_lh 16;
spl temp07 temp06 temp_lhh 8;
spl temp05 temp04 temp_lhl 8;
spl temp_llh temp_lll temp_ll 16;
spl temp03 temp02 temp_llh 8;
spl temp01 temp00 temp_lll 8;
(* split src *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_hhh src_hhl src_hh 16;
spl src15 src14 src_hhh 8;
spl src13 src12 src_hhl 8;
spl src_hlh src_hll src_hl 16;
spl src11 src10 src_hlh 8;
spl src09 src08 src_hll 8;
spl src_lh src_ll src_l 32;
spl src_lhh src_lhl src_lh 16;
spl src07 src06 src_lhh 8;
spl src05 src04 src_lhl 8;
spl src_llh src_lll src_ll 16;
spl src03 src02 src_llh 8;
spl src01 src00 src_lll 8;
(* i = 00 *)
nondet dest00@uint8;
and not_to_zero@uint8 src00 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src00 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest00 carry temp00 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp01 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp02 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp03 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp04 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp05 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp06 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp07 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp08 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp09 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp10 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp11 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp12 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp13 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp14 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp15 dest00;
(* = 0 *)
cmov dest00 not_to_zero dest00 0@uint8;
(* i = 01 *)
nondet dest01@uint8;
and not_to_zero@uint8 src01 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src01 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest01 carry temp00 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp01 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp02 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp03 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp04 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp05 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp06 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp07 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp08 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp09 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp10 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp11 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp12 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp13 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp14 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp15 dest01;
(* = 0 *)
cmov dest01 not_to_zero dest01 0@uint8;
(* i = 02 *)
nondet dest02@uint8;
and not_to_zero@uint8 src02 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src02 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest02 carry temp00 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp01 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp02 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp03 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp04 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp05 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp06 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp07 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp08 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp09 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp10 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp11 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp12 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp13 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp14 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp15 dest02;
(* = 0 *)
cmov dest02 not_to_zero dest02 0@uint8;
(* i = 03 *)
nondet dest03@uint8;
and not_to_zero@uint8 src03 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src03 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest03 carry temp00 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp01 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp02 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp03 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp04 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp05 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp06 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp07 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp08 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp09 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp10 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp11 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp12 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp13 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp14 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp15 dest03;
(* = 0 *)
cmov dest03 not_to_zero dest03 0@uint8;
(* i = 04 *)
nondet dest04@uint8;
and not_to_zero@uint8 src04 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src04 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest04 carry temp00 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp01 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp02 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp03 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp04 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp05 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp06 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp07 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp08 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp09 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp10 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp11 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp12 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp13 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp14 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp15 dest04;
(* = 0 *)
cmov dest04 not_to_zero dest04 0@uint8;
(* i = 05 *)
nondet dest05@uint8;
and not_to_zero@uint8 src05 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src05 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest05 carry temp00 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp01 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp02 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp03 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp04 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp05 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp06 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp07 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp08 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp09 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp10 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp11 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp12 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp13 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp14 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp15 dest05;
(* = 0 *)
cmov dest05 not_to_zero dest05 0@uint8;
(* i = 06 *)
nondet dest06@uint8;
and not_to_zero@uint8 src06 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src06 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest06 carry temp00 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp01 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp02 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp03 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp04 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp05 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp06 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp07 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp08 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp09 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp10 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp11 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp12 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp13 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp14 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp15 dest06;
(* = 0 *)
cmov dest06 not_to_zero dest06 0@uint8;
(* i = 07 *)
nondet dest07@uint8;
and not_to_zero@uint8 src07 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src07 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest07 carry temp00 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp01 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp02 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp03 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp04 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp05 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp06 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp07 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp08 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp09 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp10 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp11 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp12 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp13 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp14 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp15 dest07;
(* = 0 *)
cmov dest07 not_to_zero dest07 0@uint8;
(* i = 08 *)
nondet dest08@uint8;
and not_to_zero@uint8 src08 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src08 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest08 carry temp00 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp01 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp02 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp03 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp04 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp05 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp06 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp07 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp08 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp09 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp10 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp11 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp12 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp13 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp14 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp15 dest08;
(* = 0 *)
cmov dest08 not_to_zero dest08 0@uint8;
(* i = 09 *)
nondet dest09@uint8;
and not_to_zero@uint8 src09 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src09 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest09 carry temp00 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp01 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp02 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp03 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp04 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp05 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp06 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp07 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp08 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp09 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp10 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp11 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp12 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp13 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp14 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp15 dest09;
(* = 0 *)
cmov dest09 not_to_zero dest09 0@uint8;
(* i = 10 *)
nondet dest10@uint8;
and not_to_zero@uint8 src10 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src10 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest10 carry temp00 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp01 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp02 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp03 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp04 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp05 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp06 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp07 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp08 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp09 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp10 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp11 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp12 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp13 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp14 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp15 dest10;
(* = 0 *)
cmov dest10 not_to_zero dest10 0@uint8;
(* i = 11 *)
nondet dest11@uint8;
and not_to_zero@uint8 src11 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src11 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest11 carry temp00 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp01 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp02 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp03 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp04 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp05 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp06 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp07 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp08 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp09 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp10 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp11 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp12 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp13 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp14 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp15 dest11;
(* = 0 *)
cmov dest11 not_to_zero dest11 0@uint8;
(* i = 12 *)
nondet dest12@uint8;
and not_to_zero@uint8 src12 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src12 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest12 carry temp00 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp01 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp02 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp03 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp04 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp05 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp06 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp07 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp08 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp09 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp10 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp11 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp12 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp13 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp14 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp15 dest12;
(* = 0 *)
cmov dest12 not_to_zero dest12 0@uint8;
(* i = 13 *)
nondet dest13@uint8;
and not_to_zero@uint8 src13 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src13 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest13 carry temp00 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp01 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp02 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp03 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp04 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp05 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp06 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp07 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp08 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp09 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp10 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp11 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp12 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp13 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp14 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp15 dest13;
(* = 0 *)
cmov dest13 not_to_zero dest13 0@uint8;
(* i = 14 *)
nondet dest14@uint8;
and not_to_zero@uint8 src14 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src14 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest14 carry temp00 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp01 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp02 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp03 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp04 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp05 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp06 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp07 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp08 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp09 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp10 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp11 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp12 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp13 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp14 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp15 dest14;
(* = 0 *)
cmov dest14 not_to_zero dest14 0@uint8;
(* i = 15 *)
nondet dest15@uint8;
and not_to_zero@uint8 src15 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src15 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest15 carry temp00 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp01 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp02 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp03 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp04 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp05 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp06 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp07 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp08 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp09 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp10 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp11 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp12 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp13 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp14 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp15 dest15;
(* = 0 *)
cmov dest15 not_to_zero dest15 0@uint8;

(* mov *)
mov L0x7fffffffda80 0x1000000000@uint128;

(* movdqu 0x30(%rsi),%xmm6                         #! EA = L0x7fffffffda80; Value_l = 0x0000001000000000; Value_h = 0x0000000000000000; PC = 0x403113 *)
mov xmm6 L0x7fffffffda80;

(* mov *)
mov L0x402e00 0x71374491428a2f98@uint64;
mov L0x402e08 0xe9b5dba5b5c0fbcf@uint64;

(* movdqa -0x80(%rcx),%xmm0                        #! EA = L0x402e00; Value_l = 0x71374491428a2f98; Value_h = 0xe9b5dba5b5c0fbcf; PC = 0x403118 *)
mov xmm0_l L0x402e00;
mov xmm0_h L0x402e08;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm3,%xmm0                              #! PC = 0x40311d *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* pshufb %xmm7,%xmm4                              #! PC = 0x403121 *)
(* split temp *)
spl temp_h temp_l xmm7 64;
spl temp_hh temp_hl temp_h 32;
spl temp_hhh temp_hhl temp_hh 16;
spl temp15 temp14 temp_hhh 8;
spl temp13 temp12 temp_hhl 8;
spl temp_hlh temp_hll temp_hl 16;
spl temp11 temp10 temp_hlh 8;
spl temp09 temp08 temp_hll 8;
spl temp_lh temp_ll temp_l 32;
spl temp_lhh temp_lhl temp_lh 16;
spl temp07 temp06 temp_lhh 8;
spl temp05 temp04 temp_lhl 8;
spl temp_llh temp_lll temp_ll 16;
spl temp03 temp02 temp_llh 8;
spl temp01 temp00 temp_lll 8;
(* split src *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_hhh src_hhl src_hh 16;
spl src15 src14 src_hhh 8;
spl src13 src12 src_hhl 8;
spl src_hlh src_hll src_hl 16;
spl src11 src10 src_hlh 8;
spl src09 src08 src_hll 8;
spl src_lh src_ll src_l 32;
spl src_lhh src_lhl src_lh 16;
spl src07 src06 src_lhh 8;
spl src05 src04 src_lhl 8;
spl src_llh src_lll src_ll 16;
spl src03 src02 src_llh 8;
spl src01 src00 src_lll 8;
(* i = 00 *)
nondet dest00@uint8;
and not_to_zero@uint8 src00 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src00 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest00 carry temp00 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp01 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp02 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp03 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp04 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp05 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp06 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp07 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp08 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp09 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp10 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp11 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp12 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp13 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp14 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp15 dest00;
(* = 0 *)
cmov dest00 not_to_zero dest00 0@uint8;
(* i = 01 *)
nondet dest01@uint8;
and not_to_zero@uint8 src01 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src01 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest01 carry temp00 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp01 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp02 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp03 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp04 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp05 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp06 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp07 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp08 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp09 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp10 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp11 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp12 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp13 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp14 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp15 dest01;
(* = 0 *)
cmov dest01 not_to_zero dest01 0@uint8;
(* i = 02 *)
nondet dest02@uint8;
and not_to_zero@uint8 src02 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src02 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest02 carry temp00 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp01 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp02 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp03 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp04 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp05 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp06 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp07 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp08 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp09 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp10 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp11 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp12 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp13 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp14 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp15 dest02;
(* = 0 *)
cmov dest02 not_to_zero dest02 0@uint8;
(* i = 03 *)
nondet dest03@uint8;
and not_to_zero@uint8 src03 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src03 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest03 carry temp00 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp01 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp02 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp03 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp04 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp05 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp06 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp07 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp08 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp09 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp10 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp11 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp12 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp13 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp14 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp15 dest03;
(* = 0 *)
cmov dest03 not_to_zero dest03 0@uint8;
(* i = 04 *)
nondet dest04@uint8;
and not_to_zero@uint8 src04 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src04 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest04 carry temp00 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp01 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp02 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp03 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp04 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp05 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp06 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp07 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp08 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp09 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp10 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp11 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp12 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp13 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp14 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp15 dest04;
(* = 0 *)
cmov dest04 not_to_zero dest04 0@uint8;
(* i = 05 *)
nondet dest05@uint8;
and not_to_zero@uint8 src05 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src05 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest05 carry temp00 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp01 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp02 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp03 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp04 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp05 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp06 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp07 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp08 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp09 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp10 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp11 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp12 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp13 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp14 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp15 dest05;
(* = 0 *)
cmov dest05 not_to_zero dest05 0@uint8;
(* i = 06 *)
nondet dest06@uint8;
and not_to_zero@uint8 src06 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src06 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest06 carry temp00 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp01 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp02 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp03 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp04 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp05 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp06 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp07 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp08 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp09 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp10 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp11 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp12 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp13 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp14 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp15 dest06;
(* = 0 *)
cmov dest06 not_to_zero dest06 0@uint8;
(* i = 07 *)
nondet dest07@uint8;
and not_to_zero@uint8 src07 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src07 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest07 carry temp00 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp01 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp02 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp03 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp04 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp05 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp06 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp07 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp08 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp09 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp10 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp11 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp12 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp13 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp14 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp15 dest07;
(* = 0 *)
cmov dest07 not_to_zero dest07 0@uint8;
(* i = 08 *)
nondet dest08@uint8;
and not_to_zero@uint8 src08 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src08 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest08 carry temp00 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp01 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp02 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp03 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp04 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp05 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp06 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp07 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp08 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp09 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp10 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp11 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp12 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp13 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp14 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp15 dest08;
(* = 0 *)
cmov dest08 not_to_zero dest08 0@uint8;
(* i = 09 *)
nondet dest09@uint8;
and not_to_zero@uint8 src09 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src09 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest09 carry temp00 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp01 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp02 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp03 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp04 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp05 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp06 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp07 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp08 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp09 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp10 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp11 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp12 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp13 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp14 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp15 dest09;
(* = 0 *)
cmov dest09 not_to_zero dest09 0@uint8;
(* i = 10 *)
nondet dest10@uint8;
and not_to_zero@uint8 src10 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src10 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest10 carry temp00 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp01 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp02 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp03 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp04 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp05 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp06 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp07 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp08 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp09 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp10 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp11 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp12 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp13 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp14 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp15 dest10;
(* = 0 *)
cmov dest10 not_to_zero dest10 0@uint8;
(* i = 11 *)
nondet dest11@uint8;
and not_to_zero@uint8 src11 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src11 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest11 carry temp00 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp01 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp02 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp03 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp04 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp05 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp06 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp07 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp08 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp09 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp10 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp11 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp12 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp13 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp14 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp15 dest11;
(* = 0 *)
cmov dest11 not_to_zero dest11 0@uint8;
(* i = 12 *)
nondet dest12@uint8;
and not_to_zero@uint8 src12 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src12 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest12 carry temp00 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp01 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp02 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp03 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp04 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp05 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp06 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp07 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp08 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp09 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp10 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp11 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp12 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp13 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp14 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp15 dest12;
(* = 0 *)
cmov dest12 not_to_zero dest12 0@uint8;
(* i = 13 *)
nondet dest13@uint8;
and not_to_zero@uint8 src13 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src13 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest13 carry temp00 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp01 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp02 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp03 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp04 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp05 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp06 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp07 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp08 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp09 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp10 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp11 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp12 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp13 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp14 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp15 dest13;
(* = 0 *)
cmov dest13 not_to_zero dest13 0@uint8;
(* i = 14 *)
nondet dest14@uint8;
and not_to_zero@uint8 src14 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src14 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest14 carry temp00 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp01 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp02 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp03 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp04 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp05 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp06 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp07 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp08 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp09 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp10 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp11 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp12 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp13 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp14 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp15 dest14;
(* = 0 *)
cmov dest14 not_to_zero dest14 0@uint8;
(* i = 15 *)
nondet dest15@uint8;
and not_to_zero@uint8 src15 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src15 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest15 carry temp00 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp01 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp02 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp03 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp04 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp05 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp06 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp07 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp08 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp09 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp10 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp11 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp12 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp13 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp14 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp15 dest15;
(* = 0 *)
cmov dest15 not_to_zero dest15 0@uint8;
(* movdqa %xmm2,%xmm10                             #! PC = 0x403126 *)
mov xmm10 xmm2;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40312b *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x40312f *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm1,%xmm9                              #! PC = 0x403135 *)
mov xmm9 xmm1;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40313a *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;

(* mov *)
mov L0x402e20 0x59f111f13956c25b@uint64;
mov L0x402e28 0xab1c5ed5923f82a4@uint64;

(* movdqa -0x60(%rcx),%xmm0                        #! EA = L0x402e20; Value_l = 0x59f111f13956c25b; Value_h = 0xab1c5ed5923f82a4; PC = 0x40313e *)
mov xmm0_l L0x402e20;
mov xmm0_h L0x402e28;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm4,%xmm0                              #! PC = 0x403143 *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* pshufb %xmm7,%xmm5                              #! PC = 0x403147 *)
(* split temp *)
spl temp_h temp_l xmm7 64;
spl temp_hh temp_hl temp_h 32;
spl temp_hhh temp_hhl temp_hh 16;
spl temp15 temp14 temp_hhh 8;
spl temp13 temp12 temp_hhl 8;
spl temp_hlh temp_hll temp_hl 16;
spl temp11 temp10 temp_hlh 8;
spl temp09 temp08 temp_hll 8;
spl temp_lh temp_ll temp_l 32;
spl temp_lhh temp_lhl temp_lh 16;
spl temp07 temp06 temp_lhh 8;
spl temp05 temp04 temp_lhl 8;
spl temp_llh temp_lll temp_ll 16;
spl temp03 temp02 temp_llh 8;
spl temp01 temp00 temp_lll 8;
(* split src *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_hhh src_hhl src_hh 16;
spl src15 src14 src_hhh 8;
spl src13 src12 src_hhl 8;
spl src_hlh src_hll src_hl 16;
spl src11 src10 src_hlh 8;
spl src09 src08 src_hll 8;
spl src_lh src_ll src_l 32;
spl src_lhh src_lhl src_lh 16;
spl src07 src06 src_lhh 8;
spl src05 src04 src_lhl 8;
spl src_llh src_lll src_ll 16;
spl src03 src02 src_llh 8;
spl src01 src00 src_lll 8;
(* i = 00 *)
nondet dest00@uint8;
and not_to_zero@uint8 src00 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src00 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest00 carry temp00 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp01 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp02 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp03 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp04 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp05 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp06 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp07 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp08 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp09 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp10 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp11 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp12 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp13 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp14 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp15 dest00;
(* = 0 *)
cmov dest00 not_to_zero dest00 0@uint8;
(* i = 01 *)
nondet dest01@uint8;
and not_to_zero@uint8 src01 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src01 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest01 carry temp00 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp01 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp02 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp03 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp04 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp05 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp06 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp07 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp08 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp09 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp10 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp11 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp12 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp13 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp14 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp15 dest01;
(* = 0 *)
cmov dest01 not_to_zero dest01 0@uint8;
(* i = 02 *)
nondet dest02@uint8;
and not_to_zero@uint8 src02 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src02 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest02 carry temp00 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp01 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp02 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp03 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp04 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp05 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp06 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp07 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp08 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp09 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp10 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp11 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp12 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp13 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp14 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp15 dest02;
(* = 0 *)
cmov dest02 not_to_zero dest02 0@uint8;
(* i = 03 *)
nondet dest03@uint8;
and not_to_zero@uint8 src03 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src03 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest03 carry temp00 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp01 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp02 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp03 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp04 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp05 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp06 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp07 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp08 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp09 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp10 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp11 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp12 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp13 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp14 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp15 dest03;
(* = 0 *)
cmov dest03 not_to_zero dest03 0@uint8;
(* i = 04 *)
nondet dest04@uint8;
and not_to_zero@uint8 src04 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src04 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest04 carry temp00 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp01 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp02 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp03 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp04 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp05 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp06 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp07 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp08 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp09 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp10 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp11 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp12 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp13 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp14 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp15 dest04;
(* = 0 *)
cmov dest04 not_to_zero dest04 0@uint8;
(* i = 05 *)
nondet dest05@uint8;
and not_to_zero@uint8 src05 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src05 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest05 carry temp00 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp01 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp02 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp03 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp04 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp05 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp06 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp07 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp08 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp09 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp10 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp11 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp12 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp13 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp14 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp15 dest05;
(* = 0 *)
cmov dest05 not_to_zero dest05 0@uint8;
(* i = 06 *)
nondet dest06@uint8;
and not_to_zero@uint8 src06 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src06 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest06 carry temp00 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp01 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp02 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp03 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp04 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp05 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp06 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp07 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp08 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp09 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp10 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp11 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp12 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp13 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp14 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp15 dest06;
(* = 0 *)
cmov dest06 not_to_zero dest06 0@uint8;
(* i = 07 *)
nondet dest07@uint8;
and not_to_zero@uint8 src07 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src07 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest07 carry temp00 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp01 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp02 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp03 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp04 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp05 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp06 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp07 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp08 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp09 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp10 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp11 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp12 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp13 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp14 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp15 dest07;
(* = 0 *)
cmov dest07 not_to_zero dest07 0@uint8;
(* i = 08 *)
nondet dest08@uint8;
and not_to_zero@uint8 src08 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src08 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest08 carry temp00 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp01 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp02 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp03 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp04 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp05 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp06 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp07 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp08 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp09 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp10 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp11 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp12 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp13 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp14 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp15 dest08;
(* = 0 *)
cmov dest08 not_to_zero dest08 0@uint8;
(* i = 09 *)
nondet dest09@uint8;
and not_to_zero@uint8 src09 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src09 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest09 carry temp00 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp01 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp02 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp03 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp04 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp05 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp06 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp07 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp08 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp09 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp10 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp11 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp12 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp13 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp14 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp15 dest09;
(* = 0 *)
cmov dest09 not_to_zero dest09 0@uint8;
(* i = 10 *)
nondet dest10@uint8;
and not_to_zero@uint8 src10 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src10 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest10 carry temp00 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp01 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp02 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp03 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp04 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp05 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp06 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp07 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp08 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp09 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp10 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp11 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp12 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp13 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp14 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp15 dest10;
(* = 0 *)
cmov dest10 not_to_zero dest10 0@uint8;
(* i = 11 *)
nondet dest11@uint8;
and not_to_zero@uint8 src11 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src11 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest11 carry temp00 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp01 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp02 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp03 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp04 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp05 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp06 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp07 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp08 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp09 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp10 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp11 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp12 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp13 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp14 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp15 dest11;
(* = 0 *)
cmov dest11 not_to_zero dest11 0@uint8;
(* i = 12 *)
nondet dest12@uint8;
and not_to_zero@uint8 src12 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src12 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest12 carry temp00 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp01 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp02 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp03 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp04 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp05 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp06 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp07 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp08 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp09 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp10 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp11 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp12 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp13 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp14 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp15 dest12;
(* = 0 *)
cmov dest12 not_to_zero dest12 0@uint8;
(* i = 13 *)
nondet dest13@uint8;
and not_to_zero@uint8 src13 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src13 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest13 carry temp00 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp01 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp02 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp03 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp04 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp05 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp06 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp07 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp08 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp09 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp10 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp11 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp12 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp13 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp14 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp15 dest13;
(* = 0 *)
cmov dest13 not_to_zero dest13 0@uint8;
(* i = 14 *)
nondet dest14@uint8;
and not_to_zero@uint8 src14 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src14 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest14 carry temp00 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp01 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp02 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp03 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp04 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp05 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp06 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp07 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp08 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp09 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp10 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp11 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp12 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp13 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp14 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp15 dest14;
(* = 0 *)
cmov dest14 not_to_zero dest14 0@uint8;
(* i = 15 *)
nondet dest15@uint8;
and not_to_zero@uint8 src15 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src15 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest15 carry temp00 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp01 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp02 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp03 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp04 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp05 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp06 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp07 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp08 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp09 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp10 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp11 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp12 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp13 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp14 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp15 dest15;
(* = 0 *)
cmov dest15 not_to_zero dest15 0@uint8;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40314c *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403150 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* lea    0x40(%rsi),%rsi                          #! PC = 0x403155 *)
(* lea EA, rsi *)
nop;
(* sha256msg1 %xmm4,%xmm3                          #! PC = 0x403159 *)
spl dontcare w4 xmm3 32;
spl src1_h src1_l xmm4 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40315d *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;

(* mov *)
mov L0x402e40 0x12835b01d807aa98@uint64;
mov L0x402e48 0x550c7dc3243185be@uint64;

(* movdqa -0x40(%rcx),%xmm0                        #! EA = L0x402e40; Value_l = 0x12835b01d807aa98; Value_h = 0x550c7dc3243185be; PC = 0x403161 *)
mov xmm0_l L0x402e40;
mov xmm0_h L0x402e48;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm5,%xmm0                              #! PC = 0x403166 *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* pshufb %xmm7,%xmm6                              #! PC = 0x40316a *)
(* split temp *)
spl temp_h temp_l xmm7 64;
spl temp_hh temp_hl temp_h 32;
spl temp_hhh temp_hhl temp_hh 16;
spl temp15 temp14 temp_hhh 8;
spl temp13 temp12 temp_hhl 8;
spl temp_hlh temp_hll temp_hl 16;
spl temp11 temp10 temp_hlh 8;
spl temp09 temp08 temp_hll 8;
spl temp_lh temp_ll temp_l 32;
spl temp_lhh temp_lhl temp_lh 16;
spl temp07 temp06 temp_lhh 8;
spl temp05 temp04 temp_lhl 8;
spl temp_llh temp_lll temp_ll 16;
spl temp03 temp02 temp_llh 8;
spl temp01 temp00 temp_lll 8;
(* split src *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_hhh src_hhl src_hh 16;
spl src15 src14 src_hhh 8;
spl src13 src12 src_hhl 8;
spl src_hlh src_hll src_hl 16;
spl src11 src10 src_hlh 8;
spl src09 src08 src_hll 8;
spl src_lh src_ll src_l 32;
spl src_lhh src_lhl src_lh 16;
spl src07 src06 src_lhh 8;
spl src05 src04 src_lhl 8;
spl src_llh src_lll src_ll 16;
spl src03 src02 src_llh 8;
spl src01 src00 src_lll 8;
(* i = 00 *)
nondet dest00@uint8;
and not_to_zero@uint8 src00 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src00 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest00 carry temp00 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp01 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp02 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp03 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp04 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp05 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp06 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp07 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp08 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp09 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp10 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp11 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp12 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp13 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp14 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp15 dest00;
(* = 0 *)
cmov dest00 not_to_zero dest00 0@uint8;
(* i = 01 *)
nondet dest01@uint8;
and not_to_zero@uint8 src01 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src01 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest01 carry temp00 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp01 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp02 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp03 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp04 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp05 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp06 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp07 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp08 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp09 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp10 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp11 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp12 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp13 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp14 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp15 dest01;
(* = 0 *)
cmov dest01 not_to_zero dest01 0@uint8;
(* i = 02 *)
nondet dest02@uint8;
and not_to_zero@uint8 src02 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src02 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest02 carry temp00 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp01 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp02 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp03 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp04 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp05 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp06 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp07 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp08 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp09 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp10 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp11 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp12 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp13 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp14 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp15 dest02;
(* = 0 *)
cmov dest02 not_to_zero dest02 0@uint8;
(* i = 03 *)
nondet dest03@uint8;
and not_to_zero@uint8 src03 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src03 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest03 carry temp00 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp01 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp02 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp03 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp04 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp05 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp06 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp07 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp08 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp09 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp10 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp11 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp12 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp13 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp14 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp15 dest03;
(* = 0 *)
cmov dest03 not_to_zero dest03 0@uint8;
(* i = 04 *)
nondet dest04@uint8;
and not_to_zero@uint8 src04 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src04 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest04 carry temp00 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp01 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp02 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp03 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp04 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp05 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp06 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp07 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp08 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp09 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp10 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp11 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp12 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp13 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp14 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp15 dest04;
(* = 0 *)
cmov dest04 not_to_zero dest04 0@uint8;
(* i = 05 *)
nondet dest05@uint8;
and not_to_zero@uint8 src05 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src05 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest05 carry temp00 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp01 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp02 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp03 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp04 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp05 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp06 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp07 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp08 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp09 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp10 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp11 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp12 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp13 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp14 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp15 dest05;
(* = 0 *)
cmov dest05 not_to_zero dest05 0@uint8;
(* i = 06 *)
nondet dest06@uint8;
and not_to_zero@uint8 src06 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src06 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest06 carry temp00 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp01 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp02 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp03 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp04 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp05 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp06 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp07 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp08 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp09 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp10 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp11 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp12 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp13 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp14 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp15 dest06;
(* = 0 *)
cmov dest06 not_to_zero dest06 0@uint8;
(* i = 07 *)
nondet dest07@uint8;
and not_to_zero@uint8 src07 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src07 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest07 carry temp00 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp01 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp02 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp03 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp04 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp05 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp06 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp07 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp08 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp09 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp10 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp11 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp12 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp13 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp14 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp15 dest07;
(* = 0 *)
cmov dest07 not_to_zero dest07 0@uint8;
(* i = 08 *)
nondet dest08@uint8;
and not_to_zero@uint8 src08 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src08 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest08 carry temp00 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp01 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp02 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp03 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp04 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp05 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp06 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp07 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp08 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp09 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp10 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp11 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp12 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp13 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp14 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp15 dest08;
(* = 0 *)
cmov dest08 not_to_zero dest08 0@uint8;
(* i = 09 *)
nondet dest09@uint8;
and not_to_zero@uint8 src09 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src09 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest09 carry temp00 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp01 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp02 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp03 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp04 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp05 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp06 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp07 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp08 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp09 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp10 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp11 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp12 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp13 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp14 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp15 dest09;
(* = 0 *)
cmov dest09 not_to_zero dest09 0@uint8;
(* i = 10 *)
nondet dest10@uint8;
and not_to_zero@uint8 src10 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src10 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest10 carry temp00 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp01 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp02 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp03 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp04 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp05 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp06 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp07 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp08 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp09 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp10 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp11 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp12 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp13 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp14 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp15 dest10;
(* = 0 *)
cmov dest10 not_to_zero dest10 0@uint8;
(* i = 11 *)
nondet dest11@uint8;
and not_to_zero@uint8 src11 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src11 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest11 carry temp00 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp01 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp02 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp03 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp04 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp05 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp06 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp07 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp08 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp09 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp10 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp11 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp12 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp13 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp14 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp15 dest11;
(* = 0 *)
cmov dest11 not_to_zero dest11 0@uint8;
(* i = 12 *)
nondet dest12@uint8;
and not_to_zero@uint8 src12 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src12 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest12 carry temp00 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp01 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp02 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp03 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp04 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp05 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp06 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp07 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp08 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp09 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp10 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp11 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp12 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp13 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp14 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp15 dest12;
(* = 0 *)
cmov dest12 not_to_zero dest12 0@uint8;
(* i = 13 *)
nondet dest13@uint8;
and not_to_zero@uint8 src13 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src13 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest13 carry temp00 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp01 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp02 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp03 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp04 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp05 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp06 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp07 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp08 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp09 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp10 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp11 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp12 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp13 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp14 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp15 dest13;
(* = 0 *)
cmov dest13 not_to_zero dest13 0@uint8;
(* i = 14 *)
nondet dest14@uint8;
and not_to_zero@uint8 src14 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src14 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest14 carry temp00 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp01 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp02 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp03 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp04 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp05 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp06 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp07 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp08 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp09 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp10 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp11 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp12 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp13 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp14 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp15 dest14;
(* = 0 *)
cmov dest14 not_to_zero dest14 0@uint8;
(* i = 15 *)
nondet dest15@uint8;
and not_to_zero@uint8 src15 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src15 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest15 carry temp00 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp01 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp02 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp03 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp04 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp05 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp06 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp07 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp08 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp09 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp10 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp11 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp12 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp13 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp14 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp15 dest15;
(* = 0 *)
cmov dest15 not_to_zero dest15 0@uint8;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40316f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403173 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm6,%xmm7                              #! PC = 0x403178 *)
mov xmm7 xmm6;
(* palignr $0x4,%xmm5,%xmm7                        #! PC = 0x40317c *)
(* shr xmm5 xmm7 32 *)
split xmm5 dc xmm7 32;
(* paddd  %xmm7,%xmm3                              #! PC = 0x403183 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm3 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm3 dst_h dst_l;
(* sha256msg1 %xmm5,%xmm4                          #! PC = 0x403187 *)
spl dontcare w4 xmm4 32;
spl src1_h src1_l xmm5 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40318b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;

(* mov *)
mov L0x402e60 0x80deb1fe72be5d74@uint64;
mov L0x402e68 0xc19bf1749bdc06a7@uint64;

(* movdqa -0x20(%rcx),%xmm0                        #! EA = L0x402e60; Value_l = 0x80deb1fe72be5d74; Value_h = 0xc19bf1749bdc06a7; PC = 0x40318f *)
mov xmm0_l L0x402e60;
mov xmm0_h L0x402e68;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm6,%xmm0                              #! PC = 0x403194 *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm6,%xmm3                          #! PC = 0x403198 *)
spl src1_h src1_l xmm6 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm3 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40319c *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4031a0 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm3,%xmm7                              #! PC = 0x4031a5 *)
mov xmm7 xmm3;
(* palignr $0x4,%xmm6,%xmm7                        #! PC = 0x4031a9 *)
(* shr xmm6 xmm7 32 *)
split xmm6 dc xmm7 32;
(* paddd  %xmm7,%xmm4                              #! PC = 0x4031b0 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm4 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm4 dst_h dst_l;
(* sha256msg1 %xmm6,%xmm5                          #! PC = 0x4031b4 *)
spl dontcare w4 xmm5 32;
spl src1_h src1_l xmm6 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4031b8 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;

(* mov *)
mov L0x402e80 0xefbe4786e49b69c1@uint64;
mov L0x402e88 0x240ca1cc0fc19dc6@uint64;

(* movdqa (%rcx),%xmm0                             #! EA = L0x402e80; Value_l = 0xefbe4786e49b69c1; Value_h = 0x240ca1cc0fc19dc6; PC = 0x4031bc *)
mov xmm0_l L0x402e80;
mov xmm0_h L0x402e88;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm3,%xmm0                              #! PC = 0x4031c0 *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm3,%xmm4                          #! PC = 0x4031c4 *)
spl src1_h src1_l xmm3 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm4 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4031c8 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4031cc *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm4,%xmm7                              #! PC = 0x4031d1 *)
mov xmm7 xmm4;
(* palignr $0x4,%xmm3,%xmm7                        #! PC = 0x4031d5 *)
(* shr xmm3 xmm7 32 *)
split xmm3 dc xmm7 32;
(* paddd  %xmm7,%xmm5                              #! PC = 0x4031dc *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm5 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm5 dst_h dst_l;
(* sha256msg1 %xmm3,%xmm6                          #! PC = 0x4031e0 *)
spl dontcare w4 xmm6 32;
spl src1_h src1_l xmm3 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4031e4 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;

(* mov *)
mov L0x402ea0 0x4a7484aa2de92c6f@uint64;
mov L0x402ea8 0x76f988da5cb0a9dc@uint64;

(* movdqa 0x20(%rcx),%xmm0                         #! EA = L0x402ea0; Value_l = 0x4a7484aa2de92c6f; Value_h = 0x76f988da5cb0a9dc; PC = 0x4031e8 *)
mov xmm0_l L0x402ea0;
mov xmm0_h L0x402ea8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm4,%xmm0                              #! PC = 0x4031ed *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm4,%xmm5                          #! PC = 0x4031f1 *)
spl src1_h src1_l xmm4 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm5 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4031f5 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4031f9 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm5,%xmm7                              #! PC = 0x4031fe *)
mov xmm7 xmm5;
(* palignr $0x4,%xmm4,%xmm7                        #! PC = 0x403202 *)
(* shr xmm4 xmm7 32 *)
split xmm4 dc xmm7 32;
(* paddd  %xmm7,%xmm6                              #! PC = 0x403209 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm6 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm6 dst_h dst_l;
(* sha256msg1 %xmm4,%xmm3                          #! PC = 0x40320d *)
spl dontcare w4 xmm3 32;
spl src1_h src1_l xmm4 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x403211 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;

(* mov *)
mov L0x402ec0 0xa831c66d983e5152@uint64;
mov L0x402ec8 0xbf597fc7b00327c8@uint64;

(* movdqa 0x40(%rcx),%xmm0                         #! EA = L0x402ec0; Value_l = 0xa831c66d983e5152; Value_h = 0xbf597fc7b00327c8; PC = 0x403215 *)
mov xmm0_l L0x402ec0;
mov xmm0_h L0x402ec8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm5,%xmm0                              #! PC = 0x40321a *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm5,%xmm6                          #! PC = 0x40321e *)
spl src1_h src1_l xmm5 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm6 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x403222 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403226 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm6,%xmm7                              #! PC = 0x40322b *)
mov xmm7 xmm6;
(* palignr $0x4,%xmm5,%xmm7                        #! PC = 0x40322f *)
(* shr xmm5 xmm7 32 *)
split xmm5 dc xmm7 32;
(* paddd  %xmm7,%xmm3                              #! PC = 0x403236 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm3 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm3 dst_h dst_l;
(* sha256msg1 %xmm5,%xmm4                          #! PC = 0x40323a *)
spl dontcare w4 xmm4 32;
spl src1_h src1_l xmm5 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40323e *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;

(* mov *)
mov L0x402ee0 0xd5a79147c6e00bf3@uint64;
mov L0x402ee8 0x1429296706ca6351@uint64;

(* movdqa 0x60(%rcx),%xmm0                         #! EA = L0x402ee0; Value_l = 0xd5a79147c6e00bf3; Value_h = 0x1429296706ca6351; PC = 0x403242 *)
mov xmm0_l L0x402ee0;
mov xmm0_h L0x402ee8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm6,%xmm0                              #! PC = 0x403247 *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm6,%xmm3                          #! PC = 0x40324b *)
spl src1_h src1_l xmm6 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm3 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40324f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403253 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm3,%xmm7                              #! PC = 0x403258 *)
mov xmm7 xmm3;
(* palignr $0x4,%xmm6,%xmm7                        #! PC = 0x40325c *)
(* shr xmm6 xmm7 32 *)
split xmm6 dc xmm7 32;
(* paddd  %xmm7,%xmm4                              #! PC = 0x403263 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm4 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm4 dst_h dst_l;
(* sha256msg1 %xmm6,%xmm5                          #! PC = 0x403267 *)
spl dontcare w4 xmm5 32;
spl src1_h src1_l xmm6 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40326b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;

(* mov *)
mov L0x402f00 0x2e1b213827b70a85@uint64;
mov L0x402f08 0x53380d134d2c6dfc@uint64;

(* movdqa 0x80(%rcx),%xmm0                         #! EA = L0x402f00; Value_l = 0x2e1b213827b70a85; Value_h = 0x53380d134d2c6dfc; PC = 0x40326f *)
mov xmm0_l L0x402f00;
mov xmm0_h L0x402f08;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm3,%xmm0                              #! PC = 0x403277 *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm3,%xmm4                          #! PC = 0x40327b *)
spl src1_h src1_l xmm3 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm4 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40327f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403283 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm4,%xmm7                              #! PC = 0x403288 *)
mov xmm7 xmm4;
(* palignr $0x4,%xmm3,%xmm7                        #! PC = 0x40328c *)
(* shr xmm3 xmm7 32 *)
split xmm3 dc xmm7 32;
(* paddd  %xmm7,%xmm5                              #! PC = 0x403293 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm5 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm5 dst_h dst_l;
(* sha256msg1 %xmm3,%xmm6                          #! PC = 0x403297 *)
spl dontcare w4 xmm6 32;
spl src1_h src1_l xmm3 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40329b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;

(* mov *)
mov L0x402f20 0x766a0abb650a7354@uint64;
mov L0x402f28 0x92722c8581c2c92e@uint64;

(* movdqa 0xa0(%rcx),%xmm0                         #! EA = L0x402f20; Value_l = 0x766a0abb650a7354; Value_h = 0x92722c8581c2c92e; PC = 0x40329f *)
mov xmm0_l L0x402f20;
mov xmm0_h L0x402f28;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm4,%xmm0                              #! PC = 0x4032a7 *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm4,%xmm5                          #! PC = 0x4032ab *)
spl src1_h src1_l xmm4 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm5 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4032af *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4032b3 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm5,%xmm7                              #! PC = 0x4032b8 *)
mov xmm7 xmm5;
(* palignr $0x4,%xmm4,%xmm7                        #! PC = 0x4032bc *)
(* shr xmm4 xmm7 32 *)
split xmm4 dc xmm7 32;
(* paddd  %xmm7,%xmm6                              #! PC = 0x4032c3 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm6 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm6 dst_h dst_l;
(* sha256msg1 %xmm4,%xmm3                          #! PC = 0x4032c7 *)
spl dontcare w4 xmm3 32;
spl src1_h src1_l xmm4 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4032cb *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;

(* mov *)
mov L0x402f40 0xa81a664ba2bfe8a1@uint64;
mov L0x402f48 0xc76c51a3c24b8b70@uint64;

(* movdqa 0xc0(%rcx),%xmm0                         #! EA = L0x402f40; Value_l = 0xa81a664ba2bfe8a1; Value_h = 0xc76c51a3c24b8b70; PC = 0x4032cf *)
mov xmm0_l L0x402f40;
mov xmm0_h L0x402f48;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm5,%xmm0                              #! PC = 0x4032d7 *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm5,%xmm6                          #! PC = 0x4032db *)
spl src1_h src1_l xmm5 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm6 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4032df *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4032e3 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm6,%xmm7                              #! PC = 0x4032e8 *)
mov xmm7 xmm6;
(* palignr $0x4,%xmm5,%xmm7                        #! PC = 0x4032ec *)
(* shr xmm5 xmm7 32 *)
split xmm5 dc xmm7 32;
(* paddd  %xmm7,%xmm3                              #! PC = 0x4032f3 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm3 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm3 dst_h dst_l;
(* sha256msg1 %xmm5,%xmm4                          #! PC = 0x4032f7 *)
spl dontcare w4 xmm4 32;
spl src1_h src1_l xmm5 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4032fb *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;

(* mov *)
mov L0x402f60 0xd6990624d192e819@uint64;
mov L0x402f68 0x106aa070f40e3585@uint64;

(* movdqa 0xe0(%rcx),%xmm0                         #! EA = L0x402f60; Value_l = 0xd6990624d192e819; Value_h = 0x106aa070f40e3585; PC = 0x4032ff *)
mov xmm0_l L0x402f60;
mov xmm0_h L0x402f68;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm6,%xmm0                              #! PC = 0x403307 *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm6,%xmm3                          #! PC = 0x40330b *)
spl src1_h src1_l xmm6 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm3 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40330f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403313 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm3,%xmm7                              #! PC = 0x403318 *)
mov xmm7 xmm3;
(* palignr $0x4,%xmm6,%xmm7                        #! PC = 0x40331c *)
(* shr xmm6 xmm7 32 *)
split xmm6 dc xmm7 32;
(* paddd  %xmm7,%xmm4                              #! PC = 0x403323 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm4 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm4 dst_h dst_l;
(* sha256msg1 %xmm6,%xmm5                          #! PC = 0x403327 *)
spl dontcare w4 xmm5 32;
spl src1_h src1_l xmm6 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40332b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;

(* mov *)
mov L0x402f80 0x1e376c0819a4c116@uint64;
mov L0x402f88 0x34b0bcb52748774c@uint64;

(* movdqa 0x100(%rcx),%xmm0                        #! EA = L0x402f80; Value_l = 0x1e376c0819a4c116; Value_h = 0x34b0bcb52748774c; PC = 0x40332f *)
mov xmm0_l L0x402f80;
mov xmm0_h L0x402f88;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm3,%xmm0                              #! PC = 0x403337 *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm3,%xmm4                          #! PC = 0x40333b *)
spl src1_h src1_l xmm3 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm4 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40333f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403343 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm4,%xmm7                              #! PC = 0x403348 *)
mov xmm7 xmm4;
(* palignr $0x4,%xmm3,%xmm7                        #! PC = 0x40334c *)
(* shr xmm3 xmm7 32 *)
split xmm3 dc xmm7 32;
(* paddd  %xmm7,%xmm5                              #! PC = 0x403353 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm5 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm5 dst_h dst_l;
(* sha256msg1 %xmm3,%xmm6                          #! PC = 0x403357 *)
spl dontcare w4 xmm6 32;
spl src1_h src1_l xmm3 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40335b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;

(* mov *)
mov L0x402fa0 0x4ed8aa4a391c0cb3@uint64;
mov L0x402fa8 0x682e6ff35b9cca4f@uint64;

(* movdqa 0x120(%rcx),%xmm0                        #! EA = L0x402fa0; Value_l = 0x4ed8aa4a391c0cb3; Value_h = 0x682e6ff35b9cca4f; PC = 0x40335f *)
mov xmm0_l L0x402fa0;
mov xmm0_h L0x402fa8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm4,%xmm0                              #! PC = 0x403367 *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm4,%xmm5                          #! PC = 0x40336b *)
spl src1_h src1_l xmm4 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm5 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40336f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403373 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm5,%xmm7                              #! PC = 0x403378 *)
mov xmm7 xmm5;
(* palignr $0x4,%xmm4,%xmm7                        #! PC = 0x40337c *)
(* shr xmm4 xmm7 32 *)
split xmm4 dc xmm7 32;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x403382 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* paddd  %xmm7,%xmm6                              #! PC = 0x403386 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm6 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm6 dst_h dst_l;

(* mov *)
mov L0x402fc0 0x78a5636f748f82ee@uint64;
mov L0x402fc8 0x8cc7020884c87814@uint64;

(* movdqa 0x140(%rcx),%xmm0                        #! EA = L0x402fc0; Value_l = 0x78a5636f748f82ee; Value_h = 0x8cc7020884c87814; PC = 0x40338a *)
mov xmm0_l L0x402fc0;
mov xmm0_h L0x402fc8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm5,%xmm0                              #! PC = 0x403392 *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x403396 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x40339a *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* sha256msg2 %xmm5,%xmm6                          #! PC = 0x40339f *)
spl src1_h src1_l xmm5 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm6 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm5 dst_h dst_l;
(* movdqa %xmm8,%xmm7                              #! PC = 0x4033a3 *)
mov xmm7 xmm8;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4033a8 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;

(* mov *)
mov L0x402fe0 0xa4506ceb90befffa@uint64;
mov L0x402fe8 0xc67178f2bef9a3f7@uint64;

(* movdqa 0x160(%rcx),%xmm0                        #! EA = L0x402fe0; Value_l = 0xa4506ceb90befffa; Value_h = 0xc67178f2bef9a3f7; PC = 0x4033ac *)
mov xmm0_l L0x402fe0;
mov xmm0_h L0x402fe8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm6,%xmm0                              #! PC = 0x4033b4 *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4033b9 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4033bd *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* dec    %rdx                                     #! PC = 0x4033c2 *)
subb overflow rdx rdx 1@uint64;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4033c6 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* paddd  %xmm10,%xmm2                             #! PC = 0x4033ca *)
spl src_h src_l xmm10 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm2 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm2 dst_h dst_l;
(* paddd  %xmm9,%xmm1                              #! PC = 0x4033cf *)
spl src_h src_l xmm9 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm1 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm1 dst_h dst_l;
(* #jne    0x403100 <sha256_block_data_order_shaext+64>#! PC = 0x4033d4 *)
#jne    0x403100 <sha256_block_data_order_shaext+64>#! 0x4033d4 = 0x4033d4;

(* mov *)
mov L0x7fffffffda90 0x0@uint128;

(* movdqu (%rsi),%xmm3                             #! EA = L0x7fffffffda90; Value_l = 0x0000000000000000; Value_h = 0x0000000000000000; PC = 0x403100 *)
mov xmm3 L0x7fffffffda90;

(* mov *)
mov L0x7fffffffdaa0 0x0@uint128;

(* movdqu 0x10(%rsi),%xmm4                         #! EA = L0x7fffffffdaa0; Value_l = 0x0000000000000000; Value_h = 0x0000000000000000; PC = 0x403104 *)
mov xmm4 L0x7fffffffdaa0;

(* mov *)
mov L0x7fffffffdab0 0x0@uint128;

(* movdqu 0x20(%rsi),%xmm5                         #! EA = L0x7fffffffdab0; Value_l = 0x0000000000000000; Value_h = 0x0000000000000000; PC = 0x403109 *)
mov xmm5 L0x7fffffffdab0;
(* pshufb %xmm7,%xmm3                              #! PC = 0x40310e *)
(* split temp *)
spl temp_h temp_l xmm7 64;
spl temp_hh temp_hl temp_h 32;
spl temp_hhh temp_hhl temp_hh 16;
spl temp15 temp14 temp_hhh 8;
spl temp13 temp12 temp_hhl 8;
spl temp_hlh temp_hll temp_hl 16;
spl temp11 temp10 temp_hlh 8;
spl temp09 temp08 temp_hll 8;
spl temp_lh temp_ll temp_l 32;
spl temp_lhh temp_lhl temp_lh 16;
spl temp07 temp06 temp_lhh 8;
spl temp05 temp04 temp_lhl 8;
spl temp_llh temp_lll temp_ll 16;
spl temp03 temp02 temp_llh 8;
spl temp01 temp00 temp_lll 8;
(* split src *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_hhh src_hhl src_hh 16;
spl src15 src14 src_hhh 8;
spl src13 src12 src_hhl 8;
spl src_hlh src_hll src_hl 16;
spl src11 src10 src_hlh 8;
spl src09 src08 src_hll 8;
spl src_lh src_ll src_l 32;
spl src_lhh src_lhl src_lh 16;
spl src07 src06 src_lhh 8;
spl src05 src04 src_lhl 8;
spl src_llh src_lll src_ll 16;
spl src03 src02 src_llh 8;
spl src01 src00 src_lll 8;
(* i = 00 *)
nondet dest00@uint8;
and not_to_zero@uint8 src00 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src00 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest00 carry temp00 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp01 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp02 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp03 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp04 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp05 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp06 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp07 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp08 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp09 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp10 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp11 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp12 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp13 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp14 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp15 dest00;
(* = 0 *)
cmov dest00 not_to_zero dest00 0@uint8;
(* i = 01 *)
nondet dest01@uint8;
and not_to_zero@uint8 src01 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src01 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest01 carry temp00 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp01 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp02 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp03 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp04 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp05 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp06 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp07 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp08 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp09 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp10 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp11 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp12 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp13 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp14 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp15 dest01;
(* = 0 *)
cmov dest01 not_to_zero dest01 0@uint8;
(* i = 02 *)
nondet dest02@uint8;
and not_to_zero@uint8 src02 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src02 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest02 carry temp00 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp01 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp02 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp03 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp04 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp05 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp06 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp07 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp08 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp09 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp10 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp11 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp12 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp13 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp14 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp15 dest02;
(* = 0 *)
cmov dest02 not_to_zero dest02 0@uint8;
(* i = 03 *)
nondet dest03@uint8;
and not_to_zero@uint8 src03 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src03 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest03 carry temp00 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp01 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp02 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp03 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp04 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp05 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp06 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp07 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp08 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp09 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp10 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp11 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp12 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp13 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp14 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp15 dest03;
(* = 0 *)
cmov dest03 not_to_zero dest03 0@uint8;
(* i = 04 *)
nondet dest04@uint8;
and not_to_zero@uint8 src04 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src04 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest04 carry temp00 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp01 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp02 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp03 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp04 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp05 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp06 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp07 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp08 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp09 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp10 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp11 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp12 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp13 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp14 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp15 dest04;
(* = 0 *)
cmov dest04 not_to_zero dest04 0@uint8;
(* i = 05 *)
nondet dest05@uint8;
and not_to_zero@uint8 src05 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src05 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest05 carry temp00 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp01 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp02 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp03 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp04 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp05 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp06 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp07 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp08 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp09 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp10 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp11 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp12 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp13 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp14 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp15 dest05;
(* = 0 *)
cmov dest05 not_to_zero dest05 0@uint8;
(* i = 06 *)
nondet dest06@uint8;
and not_to_zero@uint8 src06 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src06 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest06 carry temp00 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp01 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp02 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp03 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp04 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp05 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp06 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp07 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp08 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp09 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp10 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp11 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp12 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp13 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp14 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp15 dest06;
(* = 0 *)
cmov dest06 not_to_zero dest06 0@uint8;
(* i = 07 *)
nondet dest07@uint8;
and not_to_zero@uint8 src07 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src07 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest07 carry temp00 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp01 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp02 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp03 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp04 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp05 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp06 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp07 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp08 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp09 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp10 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp11 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp12 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp13 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp14 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp15 dest07;
(* = 0 *)
cmov dest07 not_to_zero dest07 0@uint8;
(* i = 08 *)
nondet dest08@uint8;
and not_to_zero@uint8 src08 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src08 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest08 carry temp00 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp01 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp02 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp03 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp04 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp05 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp06 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp07 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp08 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp09 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp10 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp11 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp12 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp13 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp14 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp15 dest08;
(* = 0 *)
cmov dest08 not_to_zero dest08 0@uint8;
(* i = 09 *)
nondet dest09@uint8;
and not_to_zero@uint8 src09 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src09 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest09 carry temp00 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp01 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp02 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp03 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp04 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp05 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp06 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp07 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp08 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp09 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp10 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp11 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp12 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp13 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp14 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp15 dest09;
(* = 0 *)
cmov dest09 not_to_zero dest09 0@uint8;
(* i = 10 *)
nondet dest10@uint8;
and not_to_zero@uint8 src10 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src10 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest10 carry temp00 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp01 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp02 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp03 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp04 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp05 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp06 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp07 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp08 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp09 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp10 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp11 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp12 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp13 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp14 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp15 dest10;
(* = 0 *)
cmov dest10 not_to_zero dest10 0@uint8;
(* i = 11 *)
nondet dest11@uint8;
and not_to_zero@uint8 src11 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src11 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest11 carry temp00 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp01 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp02 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp03 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp04 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp05 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp06 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp07 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp08 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp09 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp10 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp11 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp12 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp13 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp14 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp15 dest11;
(* = 0 *)
cmov dest11 not_to_zero dest11 0@uint8;
(* i = 12 *)
nondet dest12@uint8;
and not_to_zero@uint8 src12 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src12 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest12 carry temp00 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp01 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp02 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp03 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp04 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp05 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp06 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp07 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp08 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp09 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp10 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp11 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp12 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp13 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp14 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp15 dest12;
(* = 0 *)
cmov dest12 not_to_zero dest12 0@uint8;
(* i = 13 *)
nondet dest13@uint8;
and not_to_zero@uint8 src13 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src13 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest13 carry temp00 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp01 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp02 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp03 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp04 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp05 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp06 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp07 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp08 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp09 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp10 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp11 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp12 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp13 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp14 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp15 dest13;
(* = 0 *)
cmov dest13 not_to_zero dest13 0@uint8;
(* i = 14 *)
nondet dest14@uint8;
and not_to_zero@uint8 src14 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src14 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest14 carry temp00 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp01 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp02 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp03 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp04 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp05 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp06 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp07 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp08 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp09 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp10 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp11 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp12 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp13 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp14 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp15 dest14;
(* = 0 *)
cmov dest14 not_to_zero dest14 0@uint8;
(* i = 15 *)
nondet dest15@uint8;
and not_to_zero@uint8 src15 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src15 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest15 carry temp00 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp01 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp02 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp03 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp04 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp05 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp06 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp07 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp08 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp09 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp10 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp11 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp12 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp13 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp14 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp15 dest15;
(* = 0 *)
cmov dest15 not_to_zero dest15 0@uint8;

(* mov *)
mov L0x7fffffffdac0 0x7ffff7fe6c000000000000000000@uint128;

(* movdqu 0x30(%rsi),%xmm6                         #! EA = L0x7fffffffdac0; Value_l = 0x0000000000000000; Value_h = 0x00007ffff7fe6c00; PC = 0x403113 *)
mov xmm6 L0x7fffffffdac0;
mov xmm0_l L0x402e00;
mov xmm0_h L0x402e08;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm3,%xmm0                              #! PC = 0x40311d *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* pshufb %xmm7,%xmm4                              #! PC = 0x403121 *)
(* split temp *)
spl temp_h temp_l xmm7 64;
spl temp_hh temp_hl temp_h 32;
spl temp_hhh temp_hhl temp_hh 16;
spl temp15 temp14 temp_hhh 8;
spl temp13 temp12 temp_hhl 8;
spl temp_hlh temp_hll temp_hl 16;
spl temp11 temp10 temp_hlh 8;
spl temp09 temp08 temp_hll 8;
spl temp_lh temp_ll temp_l 32;
spl temp_lhh temp_lhl temp_lh 16;
spl temp07 temp06 temp_lhh 8;
spl temp05 temp04 temp_lhl 8;
spl temp_llh temp_lll temp_ll 16;
spl temp03 temp02 temp_llh 8;
spl temp01 temp00 temp_lll 8;
(* split src *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_hhh src_hhl src_hh 16;
spl src15 src14 src_hhh 8;
spl src13 src12 src_hhl 8;
spl src_hlh src_hll src_hl 16;
spl src11 src10 src_hlh 8;
spl src09 src08 src_hll 8;
spl src_lh src_ll src_l 32;
spl src_lhh src_lhl src_lh 16;
spl src07 src06 src_lhh 8;
spl src05 src04 src_lhl 8;
spl src_llh src_lll src_ll 16;
spl src03 src02 src_llh 8;
spl src01 src00 src_lll 8;
(* i = 00 *)
nondet dest00@uint8;
and not_to_zero@uint8 src00 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src00 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest00 carry temp00 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp01 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp02 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp03 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp04 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp05 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp06 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp07 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp08 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp09 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp10 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp11 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp12 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp13 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp14 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp15 dest00;
(* = 0 *)
cmov dest00 not_to_zero dest00 0@uint8;
(* i = 01 *)
nondet dest01@uint8;
and not_to_zero@uint8 src01 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src01 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest01 carry temp00 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp01 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp02 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp03 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp04 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp05 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp06 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp07 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp08 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp09 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp10 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp11 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp12 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp13 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp14 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp15 dest01;
(* = 0 *)
cmov dest01 not_to_zero dest01 0@uint8;
(* i = 02 *)
nondet dest02@uint8;
and not_to_zero@uint8 src02 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src02 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest02 carry temp00 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp01 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp02 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp03 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp04 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp05 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp06 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp07 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp08 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp09 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp10 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp11 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp12 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp13 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp14 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp15 dest02;
(* = 0 *)
cmov dest02 not_to_zero dest02 0@uint8;
(* i = 03 *)
nondet dest03@uint8;
and not_to_zero@uint8 src03 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src03 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest03 carry temp00 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp01 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp02 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp03 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp04 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp05 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp06 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp07 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp08 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp09 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp10 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp11 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp12 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp13 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp14 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp15 dest03;
(* = 0 *)
cmov dest03 not_to_zero dest03 0@uint8;
(* i = 04 *)
nondet dest04@uint8;
and not_to_zero@uint8 src04 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src04 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest04 carry temp00 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp01 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp02 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp03 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp04 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp05 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp06 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp07 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp08 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp09 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp10 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp11 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp12 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp13 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp14 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp15 dest04;
(* = 0 *)
cmov dest04 not_to_zero dest04 0@uint8;
(* i = 05 *)
nondet dest05@uint8;
and not_to_zero@uint8 src05 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src05 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest05 carry temp00 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp01 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp02 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp03 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp04 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp05 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp06 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp07 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp08 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp09 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp10 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp11 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp12 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp13 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp14 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp15 dest05;
(* = 0 *)
cmov dest05 not_to_zero dest05 0@uint8;
(* i = 06 *)
nondet dest06@uint8;
and not_to_zero@uint8 src06 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src06 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest06 carry temp00 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp01 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp02 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp03 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp04 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp05 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp06 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp07 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp08 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp09 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp10 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp11 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp12 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp13 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp14 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp15 dest06;
(* = 0 *)
cmov dest06 not_to_zero dest06 0@uint8;
(* i = 07 *)
nondet dest07@uint8;
and not_to_zero@uint8 src07 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src07 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest07 carry temp00 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp01 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp02 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp03 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp04 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp05 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp06 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp07 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp08 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp09 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp10 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp11 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp12 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp13 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp14 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp15 dest07;
(* = 0 *)
cmov dest07 not_to_zero dest07 0@uint8;
(* i = 08 *)
nondet dest08@uint8;
and not_to_zero@uint8 src08 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src08 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest08 carry temp00 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp01 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp02 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp03 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp04 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp05 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp06 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp07 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp08 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp09 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp10 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp11 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp12 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp13 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp14 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp15 dest08;
(* = 0 *)
cmov dest08 not_to_zero dest08 0@uint8;
(* i = 09 *)
nondet dest09@uint8;
and not_to_zero@uint8 src09 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src09 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest09 carry temp00 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp01 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp02 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp03 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp04 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp05 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp06 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp07 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp08 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp09 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp10 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp11 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp12 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp13 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp14 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp15 dest09;
(* = 0 *)
cmov dest09 not_to_zero dest09 0@uint8;
(* i = 10 *)
nondet dest10@uint8;
and not_to_zero@uint8 src10 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src10 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest10 carry temp00 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp01 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp02 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp03 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp04 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp05 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp06 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp07 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp08 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp09 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp10 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp11 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp12 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp13 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp14 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp15 dest10;
(* = 0 *)
cmov dest10 not_to_zero dest10 0@uint8;
(* i = 11 *)
nondet dest11@uint8;
and not_to_zero@uint8 src11 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src11 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest11 carry temp00 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp01 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp02 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp03 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp04 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp05 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp06 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp07 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp08 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp09 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp10 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp11 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp12 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp13 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp14 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp15 dest11;
(* = 0 *)
cmov dest11 not_to_zero dest11 0@uint8;
(* i = 12 *)
nondet dest12@uint8;
and not_to_zero@uint8 src12 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src12 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest12 carry temp00 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp01 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp02 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp03 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp04 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp05 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp06 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp07 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp08 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp09 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp10 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp11 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp12 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp13 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp14 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp15 dest12;
(* = 0 *)
cmov dest12 not_to_zero dest12 0@uint8;
(* i = 13 *)
nondet dest13@uint8;
and not_to_zero@uint8 src13 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src13 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest13 carry temp00 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp01 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp02 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp03 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp04 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp05 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp06 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp07 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp08 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp09 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp10 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp11 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp12 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp13 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp14 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp15 dest13;
(* = 0 *)
cmov dest13 not_to_zero dest13 0@uint8;
(* i = 14 *)
nondet dest14@uint8;
and not_to_zero@uint8 src14 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src14 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest14 carry temp00 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp01 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp02 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp03 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp04 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp05 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp06 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp07 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp08 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp09 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp10 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp11 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp12 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp13 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp14 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp15 dest14;
(* = 0 *)
cmov dest14 not_to_zero dest14 0@uint8;
(* i = 15 *)
nondet dest15@uint8;
and not_to_zero@uint8 src15 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src15 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest15 carry temp00 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp01 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp02 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp03 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp04 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp05 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp06 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp07 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp08 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp09 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp10 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp11 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp12 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp13 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp14 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp15 dest15;
(* = 0 *)
cmov dest15 not_to_zero dest15 0@uint8;
(* movdqa %xmm2,%xmm10                             #! PC = 0x403126 *)
mov xmm10 xmm2;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40312b *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x40312f *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm1,%xmm9                              #! PC = 0x403135 *)
mov xmm9 xmm1;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40313a *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402e20;
mov xmm0_h L0x402e28;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm4,%xmm0                              #! PC = 0x403143 *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* pshufb %xmm7,%xmm5                              #! PC = 0x403147 *)
(* split temp *)
spl temp_h temp_l xmm7 64;
spl temp_hh temp_hl temp_h 32;
spl temp_hhh temp_hhl temp_hh 16;
spl temp15 temp14 temp_hhh 8;
spl temp13 temp12 temp_hhl 8;
spl temp_hlh temp_hll temp_hl 16;
spl temp11 temp10 temp_hlh 8;
spl temp09 temp08 temp_hll 8;
spl temp_lh temp_ll temp_l 32;
spl temp_lhh temp_lhl temp_lh 16;
spl temp07 temp06 temp_lhh 8;
spl temp05 temp04 temp_lhl 8;
spl temp_llh temp_lll temp_ll 16;
spl temp03 temp02 temp_llh 8;
spl temp01 temp00 temp_lll 8;
(* split src *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_hhh src_hhl src_hh 16;
spl src15 src14 src_hhh 8;
spl src13 src12 src_hhl 8;
spl src_hlh src_hll src_hl 16;
spl src11 src10 src_hlh 8;
spl src09 src08 src_hll 8;
spl src_lh src_ll src_l 32;
spl src_lhh src_lhl src_lh 16;
spl src07 src06 src_lhh 8;
spl src05 src04 src_lhl 8;
spl src_llh src_lll src_ll 16;
spl src03 src02 src_llh 8;
spl src01 src00 src_lll 8;
(* i = 00 *)
nondet dest00@uint8;
and not_to_zero@uint8 src00 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src00 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest00 carry temp00 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp01 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp02 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp03 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp04 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp05 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp06 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp07 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp08 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp09 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp10 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp11 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp12 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp13 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp14 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp15 dest00;
(* = 0 *)
cmov dest00 not_to_zero dest00 0@uint8;
(* i = 01 *)
nondet dest01@uint8;
and not_to_zero@uint8 src01 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src01 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest01 carry temp00 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp01 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp02 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp03 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp04 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp05 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp06 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp07 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp08 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp09 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp10 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp11 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp12 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp13 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp14 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp15 dest01;
(* = 0 *)
cmov dest01 not_to_zero dest01 0@uint8;
(* i = 02 *)
nondet dest02@uint8;
and not_to_zero@uint8 src02 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src02 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest02 carry temp00 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp01 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp02 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp03 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp04 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp05 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp06 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp07 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp08 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp09 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp10 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp11 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp12 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp13 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp14 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp15 dest02;
(* = 0 *)
cmov dest02 not_to_zero dest02 0@uint8;
(* i = 03 *)
nondet dest03@uint8;
and not_to_zero@uint8 src03 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src03 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest03 carry temp00 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp01 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp02 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp03 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp04 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp05 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp06 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp07 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp08 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp09 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp10 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp11 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp12 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp13 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp14 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp15 dest03;
(* = 0 *)
cmov dest03 not_to_zero dest03 0@uint8;
(* i = 04 *)
nondet dest04@uint8;
and not_to_zero@uint8 src04 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src04 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest04 carry temp00 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp01 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp02 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp03 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp04 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp05 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp06 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp07 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp08 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp09 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp10 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp11 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp12 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp13 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp14 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp15 dest04;
(* = 0 *)
cmov dest04 not_to_zero dest04 0@uint8;
(* i = 05 *)
nondet dest05@uint8;
and not_to_zero@uint8 src05 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src05 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest05 carry temp00 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp01 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp02 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp03 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp04 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp05 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp06 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp07 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp08 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp09 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp10 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp11 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp12 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp13 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp14 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp15 dest05;
(* = 0 *)
cmov dest05 not_to_zero dest05 0@uint8;
(* i = 06 *)
nondet dest06@uint8;
and not_to_zero@uint8 src06 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src06 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest06 carry temp00 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp01 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp02 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp03 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp04 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp05 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp06 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp07 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp08 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp09 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp10 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp11 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp12 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp13 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp14 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp15 dest06;
(* = 0 *)
cmov dest06 not_to_zero dest06 0@uint8;
(* i = 07 *)
nondet dest07@uint8;
and not_to_zero@uint8 src07 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src07 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest07 carry temp00 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp01 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp02 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp03 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp04 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp05 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp06 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp07 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp08 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp09 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp10 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp11 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp12 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp13 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp14 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp15 dest07;
(* = 0 *)
cmov dest07 not_to_zero dest07 0@uint8;
(* i = 08 *)
nondet dest08@uint8;
and not_to_zero@uint8 src08 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src08 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest08 carry temp00 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp01 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp02 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp03 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp04 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp05 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp06 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp07 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp08 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp09 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp10 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp11 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp12 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp13 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp14 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp15 dest08;
(* = 0 *)
cmov dest08 not_to_zero dest08 0@uint8;
(* i = 09 *)
nondet dest09@uint8;
and not_to_zero@uint8 src09 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src09 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest09 carry temp00 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp01 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp02 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp03 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp04 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp05 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp06 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp07 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp08 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp09 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp10 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp11 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp12 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp13 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp14 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp15 dest09;
(* = 0 *)
cmov dest09 not_to_zero dest09 0@uint8;
(* i = 10 *)
nondet dest10@uint8;
and not_to_zero@uint8 src10 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src10 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest10 carry temp00 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp01 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp02 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp03 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp04 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp05 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp06 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp07 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp08 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp09 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp10 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp11 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp12 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp13 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp14 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp15 dest10;
(* = 0 *)
cmov dest10 not_to_zero dest10 0@uint8;
(* i = 11 *)
nondet dest11@uint8;
and not_to_zero@uint8 src11 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src11 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest11 carry temp00 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp01 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp02 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp03 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp04 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp05 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp06 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp07 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp08 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp09 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp10 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp11 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp12 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp13 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp14 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp15 dest11;
(* = 0 *)
cmov dest11 not_to_zero dest11 0@uint8;
(* i = 12 *)
nondet dest12@uint8;
and not_to_zero@uint8 src12 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src12 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest12 carry temp00 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp01 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp02 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp03 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp04 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp05 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp06 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp07 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp08 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp09 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp10 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp11 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp12 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp13 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp14 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp15 dest12;
(* = 0 *)
cmov dest12 not_to_zero dest12 0@uint8;
(* i = 13 *)
nondet dest13@uint8;
and not_to_zero@uint8 src13 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src13 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest13 carry temp00 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp01 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp02 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp03 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp04 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp05 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp06 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp07 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp08 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp09 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp10 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp11 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp12 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp13 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp14 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp15 dest13;
(* = 0 *)
cmov dest13 not_to_zero dest13 0@uint8;
(* i = 14 *)
nondet dest14@uint8;
and not_to_zero@uint8 src14 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src14 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest14 carry temp00 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp01 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp02 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp03 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp04 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp05 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp06 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp07 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp08 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp09 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp10 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp11 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp12 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp13 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp14 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp15 dest14;
(* = 0 *)
cmov dest14 not_to_zero dest14 0@uint8;
(* i = 15 *)
nondet dest15@uint8;
and not_to_zero@uint8 src15 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src15 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest15 carry temp00 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp01 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp02 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp03 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp04 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp05 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp06 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp07 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp08 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp09 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp10 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp11 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp12 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp13 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp14 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp15 dest15;
(* = 0 *)
cmov dest15 not_to_zero dest15 0@uint8;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40314c *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403150 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* lea    0x40(%rsi),%rsi                          #! PC = 0x403155 *)
(* lea EA, rsi *)
nop;
(* sha256msg1 %xmm4,%xmm3                          #! PC = 0x403159 *)
spl dontcare w4 xmm3 32;
spl src1_h src1_l xmm4 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40315d *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402e40;
mov xmm0_h L0x402e48;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm5,%xmm0                              #! PC = 0x403166 *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* pshufb %xmm7,%xmm6                              #! PC = 0x40316a *)
(* split temp *)
spl temp_h temp_l xmm7 64;
spl temp_hh temp_hl temp_h 32;
spl temp_hhh temp_hhl temp_hh 16;
spl temp15 temp14 temp_hhh 8;
spl temp13 temp12 temp_hhl 8;
spl temp_hlh temp_hll temp_hl 16;
spl temp11 temp10 temp_hlh 8;
spl temp09 temp08 temp_hll 8;
spl temp_lh temp_ll temp_l 32;
spl temp_lhh temp_lhl temp_lh 16;
spl temp07 temp06 temp_lhh 8;
spl temp05 temp04 temp_lhl 8;
spl temp_llh temp_lll temp_ll 16;
spl temp03 temp02 temp_llh 8;
spl temp01 temp00 temp_lll 8;
(* split src *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_hhh src_hhl src_hh 16;
spl src15 src14 src_hhh 8;
spl src13 src12 src_hhl 8;
spl src_hlh src_hll src_hl 16;
spl src11 src10 src_hlh 8;
spl src09 src08 src_hll 8;
spl src_lh src_ll src_l 32;
spl src_lhh src_lhl src_lh 16;
spl src07 src06 src_lhh 8;
spl src05 src04 src_lhl 8;
spl src_llh src_lll src_ll 16;
spl src03 src02 src_llh 8;
spl src01 src00 src_lll 8;
(* i = 00 *)
nondet dest00@uint8;
and not_to_zero@uint8 src00 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src00 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest00 carry temp00 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp01 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp02 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp03 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp04 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp05 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp06 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp07 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp08 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp09 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp10 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp11 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp12 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp13 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp14 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp15 dest00;
(* = 0 *)
cmov dest00 not_to_zero dest00 0@uint8;
(* i = 01 *)
nondet dest01@uint8;
and not_to_zero@uint8 src01 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src01 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest01 carry temp00 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp01 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp02 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp03 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp04 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp05 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp06 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp07 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp08 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp09 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp10 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp11 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp12 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp13 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp14 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp15 dest01;
(* = 0 *)
cmov dest01 not_to_zero dest01 0@uint8;
(* i = 02 *)
nondet dest02@uint8;
and not_to_zero@uint8 src02 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src02 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest02 carry temp00 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp01 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp02 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp03 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp04 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp05 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp06 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp07 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp08 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp09 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp10 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp11 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp12 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp13 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp14 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp15 dest02;
(* = 0 *)
cmov dest02 not_to_zero dest02 0@uint8;
(* i = 03 *)
nondet dest03@uint8;
and not_to_zero@uint8 src03 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src03 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest03 carry temp00 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp01 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp02 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp03 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp04 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp05 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp06 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp07 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp08 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp09 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp10 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp11 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp12 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp13 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp14 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp15 dest03;
(* = 0 *)
cmov dest03 not_to_zero dest03 0@uint8;
(* i = 04 *)
nondet dest04@uint8;
and not_to_zero@uint8 src04 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src04 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest04 carry temp00 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp01 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp02 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp03 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp04 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp05 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp06 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp07 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp08 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp09 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp10 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp11 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp12 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp13 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp14 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp15 dest04;
(* = 0 *)
cmov dest04 not_to_zero dest04 0@uint8;
(* i = 05 *)
nondet dest05@uint8;
and not_to_zero@uint8 src05 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src05 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest05 carry temp00 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp01 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp02 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp03 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp04 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp05 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp06 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp07 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp08 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp09 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp10 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp11 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp12 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp13 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp14 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp15 dest05;
(* = 0 *)
cmov dest05 not_to_zero dest05 0@uint8;
(* i = 06 *)
nondet dest06@uint8;
and not_to_zero@uint8 src06 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src06 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest06 carry temp00 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp01 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp02 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp03 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp04 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp05 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp06 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp07 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp08 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp09 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp10 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp11 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp12 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp13 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp14 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp15 dest06;
(* = 0 *)
cmov dest06 not_to_zero dest06 0@uint8;
(* i = 07 *)
nondet dest07@uint8;
and not_to_zero@uint8 src07 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src07 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest07 carry temp00 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp01 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp02 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp03 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp04 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp05 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp06 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp07 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp08 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp09 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp10 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp11 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp12 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp13 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp14 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp15 dest07;
(* = 0 *)
cmov dest07 not_to_zero dest07 0@uint8;
(* i = 08 *)
nondet dest08@uint8;
and not_to_zero@uint8 src08 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src08 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest08 carry temp00 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp01 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp02 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp03 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp04 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp05 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp06 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp07 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp08 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp09 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp10 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp11 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp12 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp13 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp14 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp15 dest08;
(* = 0 *)
cmov dest08 not_to_zero dest08 0@uint8;
(* i = 09 *)
nondet dest09@uint8;
and not_to_zero@uint8 src09 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src09 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest09 carry temp00 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp01 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp02 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp03 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp04 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp05 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp06 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp07 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp08 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp09 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp10 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp11 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp12 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp13 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp14 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp15 dest09;
(* = 0 *)
cmov dest09 not_to_zero dest09 0@uint8;
(* i = 10 *)
nondet dest10@uint8;
and not_to_zero@uint8 src10 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src10 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest10 carry temp00 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp01 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp02 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp03 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp04 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp05 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp06 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp07 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp08 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp09 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp10 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp11 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp12 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp13 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp14 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp15 dest10;
(* = 0 *)
cmov dest10 not_to_zero dest10 0@uint8;
(* i = 11 *)
nondet dest11@uint8;
and not_to_zero@uint8 src11 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src11 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest11 carry temp00 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp01 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp02 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp03 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp04 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp05 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp06 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp07 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp08 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp09 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp10 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp11 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp12 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp13 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp14 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp15 dest11;
(* = 0 *)
cmov dest11 not_to_zero dest11 0@uint8;
(* i = 12 *)
nondet dest12@uint8;
and not_to_zero@uint8 src12 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src12 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest12 carry temp00 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp01 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp02 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp03 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp04 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp05 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp06 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp07 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp08 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp09 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp10 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp11 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp12 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp13 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp14 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp15 dest12;
(* = 0 *)
cmov dest12 not_to_zero dest12 0@uint8;
(* i = 13 *)
nondet dest13@uint8;
and not_to_zero@uint8 src13 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src13 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest13 carry temp00 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp01 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp02 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp03 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp04 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp05 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp06 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp07 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp08 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp09 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp10 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp11 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp12 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp13 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp14 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp15 dest13;
(* = 0 *)
cmov dest13 not_to_zero dest13 0@uint8;
(* i = 14 *)
nondet dest14@uint8;
and not_to_zero@uint8 src14 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src14 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest14 carry temp00 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp01 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp02 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp03 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp04 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp05 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp06 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp07 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp08 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp09 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp10 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp11 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp12 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp13 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp14 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp15 dest14;
(* = 0 *)
cmov dest14 not_to_zero dest14 0@uint8;
(* i = 15 *)
nondet dest15@uint8;
and not_to_zero@uint8 src15 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src15 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest15 carry temp00 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp01 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp02 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp03 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp04 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp05 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp06 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp07 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp08 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp09 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp10 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp11 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp12 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp13 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp14 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp15 dest15;
(* = 0 *)
cmov dest15 not_to_zero dest15 0@uint8;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40316f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403173 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm6,%xmm7                              #! PC = 0x403178 *)
mov xmm7 xmm6;
(* palignr $0x4,%xmm5,%xmm7                        #! PC = 0x40317c *)
(* shr xmm5 xmm7 32 *)
split xmm5 dc xmm7 32;
(* paddd  %xmm7,%xmm3                              #! PC = 0x403183 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm3 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm3 dst_h dst_l;
(* sha256msg1 %xmm5,%xmm4                          #! PC = 0x403187 *)
spl dontcare w4 xmm4 32;
spl src1_h src1_l xmm5 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40318b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402e60;
mov xmm0_h L0x402e68;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm6,%xmm0                              #! PC = 0x403194 *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm6,%xmm3                          #! PC = 0x403198 *)
spl src1_h src1_l xmm6 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm3 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40319c *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4031a0 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm3,%xmm7                              #! PC = 0x4031a5 *)
mov xmm7 xmm3;
(* palignr $0x4,%xmm6,%xmm7                        #! PC = 0x4031a9 *)
(* shr xmm6 xmm7 32 *)
split xmm6 dc xmm7 32;
(* paddd  %xmm7,%xmm4                              #! PC = 0x4031b0 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm4 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm4 dst_h dst_l;
(* sha256msg1 %xmm6,%xmm5                          #! PC = 0x4031b4 *)
spl dontcare w4 xmm5 32;
spl src1_h src1_l xmm6 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4031b8 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402e80;
mov xmm0_h L0x402e88;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm3,%xmm0                              #! PC = 0x4031c0 *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm3,%xmm4                          #! PC = 0x4031c4 *)
spl src1_h src1_l xmm3 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm4 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4031c8 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4031cc *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm4,%xmm7                              #! PC = 0x4031d1 *)
mov xmm7 xmm4;
(* palignr $0x4,%xmm3,%xmm7                        #! PC = 0x4031d5 *)
(* shr xmm3 xmm7 32 *)
split xmm3 dc xmm7 32;
(* paddd  %xmm7,%xmm5                              #! PC = 0x4031dc *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm5 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm5 dst_h dst_l;
(* sha256msg1 %xmm3,%xmm6                          #! PC = 0x4031e0 *)
spl dontcare w4 xmm6 32;
spl src1_h src1_l xmm3 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4031e4 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402ea0;
mov xmm0_h L0x402ea8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm4,%xmm0                              #! PC = 0x4031ed *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm4,%xmm5                          #! PC = 0x4031f1 *)
spl src1_h src1_l xmm4 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm5 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4031f5 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4031f9 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm5,%xmm7                              #! PC = 0x4031fe *)
mov xmm7 xmm5;
(* palignr $0x4,%xmm4,%xmm7                        #! PC = 0x403202 *)
(* shr xmm4 xmm7 32 *)
split xmm4 dc xmm7 32;
(* paddd  %xmm7,%xmm6                              #! PC = 0x403209 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm6 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm6 dst_h dst_l;
(* sha256msg1 %xmm4,%xmm3                          #! PC = 0x40320d *)
spl dontcare w4 xmm3 32;
spl src1_h src1_l xmm4 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x403211 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402ec0;
mov xmm0_h L0x402ec8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm5,%xmm0                              #! PC = 0x40321a *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm5,%xmm6                          #! PC = 0x40321e *)
spl src1_h src1_l xmm5 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm6 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x403222 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403226 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm6,%xmm7                              #! PC = 0x40322b *)
mov xmm7 xmm6;
(* palignr $0x4,%xmm5,%xmm7                        #! PC = 0x40322f *)
(* shr xmm5 xmm7 32 *)
split xmm5 dc xmm7 32;
(* paddd  %xmm7,%xmm3                              #! PC = 0x403236 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm3 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm3 dst_h dst_l;
(* sha256msg1 %xmm5,%xmm4                          #! PC = 0x40323a *)
spl dontcare w4 xmm4 32;
spl src1_h src1_l xmm5 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40323e *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402ee0;
mov xmm0_h L0x402ee8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm6,%xmm0                              #! PC = 0x403247 *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm6,%xmm3                          #! PC = 0x40324b *)
spl src1_h src1_l xmm6 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm3 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40324f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403253 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm3,%xmm7                              #! PC = 0x403258 *)
mov xmm7 xmm3;
(* palignr $0x4,%xmm6,%xmm7                        #! PC = 0x40325c *)
(* shr xmm6 xmm7 32 *)
split xmm6 dc xmm7 32;
(* paddd  %xmm7,%xmm4                              #! PC = 0x403263 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm4 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm4 dst_h dst_l;
(* sha256msg1 %xmm6,%xmm5                          #! PC = 0x403267 *)
spl dontcare w4 xmm5 32;
spl src1_h src1_l xmm6 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40326b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402f00;
mov xmm0_h L0x402f08;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm3,%xmm0                              #! PC = 0x403277 *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm3,%xmm4                          #! PC = 0x40327b *)
spl src1_h src1_l xmm3 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm4 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40327f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403283 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm4,%xmm7                              #! PC = 0x403288 *)
mov xmm7 xmm4;
(* palignr $0x4,%xmm3,%xmm7                        #! PC = 0x40328c *)
(* shr xmm3 xmm7 32 *)
split xmm3 dc xmm7 32;
(* paddd  %xmm7,%xmm5                              #! PC = 0x403293 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm5 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm5 dst_h dst_l;
(* sha256msg1 %xmm3,%xmm6                          #! PC = 0x403297 *)
spl dontcare w4 xmm6 32;
spl src1_h src1_l xmm3 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40329b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402f20;
mov xmm0_h L0x402f28;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm4,%xmm0                              #! PC = 0x4032a7 *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm4,%xmm5                          #! PC = 0x4032ab *)
spl src1_h src1_l xmm4 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm5 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4032af *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4032b3 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm5,%xmm7                              #! PC = 0x4032b8 *)
mov xmm7 xmm5;
(* palignr $0x4,%xmm4,%xmm7                        #! PC = 0x4032bc *)
(* shr xmm4 xmm7 32 *)
split xmm4 dc xmm7 32;
(* paddd  %xmm7,%xmm6                              #! PC = 0x4032c3 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm6 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm6 dst_h dst_l;
(* sha256msg1 %xmm4,%xmm3                          #! PC = 0x4032c7 *)
spl dontcare w4 xmm3 32;
spl src1_h src1_l xmm4 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4032cb *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402f40;
mov xmm0_h L0x402f48;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm5,%xmm0                              #! PC = 0x4032d7 *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm5,%xmm6                          #! PC = 0x4032db *)
spl src1_h src1_l xmm5 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm6 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4032df *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4032e3 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm6,%xmm7                              #! PC = 0x4032e8 *)
mov xmm7 xmm6;
(* palignr $0x4,%xmm5,%xmm7                        #! PC = 0x4032ec *)
(* shr xmm5 xmm7 32 *)
split xmm5 dc xmm7 32;
(* paddd  %xmm7,%xmm3                              #! PC = 0x4032f3 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm3 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm3 dst_h dst_l;
(* sha256msg1 %xmm5,%xmm4                          #! PC = 0x4032f7 *)
spl dontcare w4 xmm4 32;
spl src1_h src1_l xmm5 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4032fb *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402f60;
mov xmm0_h L0x402f68;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm6,%xmm0                              #! PC = 0x403307 *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm6,%xmm3                          #! PC = 0x40330b *)
spl src1_h src1_l xmm6 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm3 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40330f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403313 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm3,%xmm7                              #! PC = 0x403318 *)
mov xmm7 xmm3;
(* palignr $0x4,%xmm6,%xmm7                        #! PC = 0x40331c *)
(* shr xmm6 xmm7 32 *)
split xmm6 dc xmm7 32;
(* paddd  %xmm7,%xmm4                              #! PC = 0x403323 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm4 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm4 dst_h dst_l;
(* sha256msg1 %xmm6,%xmm5                          #! PC = 0x403327 *)
spl dontcare w4 xmm5 32;
spl src1_h src1_l xmm6 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40332b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402f80;
mov xmm0_h L0x402f88;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm3,%xmm0                              #! PC = 0x403337 *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm3,%xmm4                          #! PC = 0x40333b *)
spl src1_h src1_l xmm3 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm4 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40333f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403343 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm4,%xmm7                              #! PC = 0x403348 *)
mov xmm7 xmm4;
(* palignr $0x4,%xmm3,%xmm7                        #! PC = 0x40334c *)
(* shr xmm3 xmm7 32 *)
split xmm3 dc xmm7 32;
(* paddd  %xmm7,%xmm5                              #! PC = 0x403353 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm5 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm5 dst_h dst_l;
(* sha256msg1 %xmm3,%xmm6                          #! PC = 0x403357 *)
spl dontcare w4 xmm6 32;
spl src1_h src1_l xmm3 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40335b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402fa0;
mov xmm0_h L0x402fa8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm4,%xmm0                              #! PC = 0x403367 *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm4,%xmm5                          #! PC = 0x40336b *)
spl src1_h src1_l xmm4 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm5 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40336f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403373 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm5,%xmm7                              #! PC = 0x403378 *)
mov xmm7 xmm5;
(* palignr $0x4,%xmm4,%xmm7                        #! PC = 0x40337c *)
(* shr xmm4 xmm7 32 *)
split xmm4 dc xmm7 32;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x403382 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* paddd  %xmm7,%xmm6                              #! PC = 0x403386 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm6 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm6 dst_h dst_l;
mov xmm0_l L0x402fc0;
mov xmm0_h L0x402fc8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm5,%xmm0                              #! PC = 0x403392 *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x403396 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x40339a *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* sha256msg2 %xmm5,%xmm6                          #! PC = 0x40339f *)
spl src1_h src1_l xmm5 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm6 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm5 dst_h dst_l;
(* movdqa %xmm8,%xmm7                              #! PC = 0x4033a3 *)
mov xmm7 xmm8;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4033a8 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402fe0;
mov xmm0_h L0x402fe8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm6,%xmm0                              #! PC = 0x4033b4 *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4033b9 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4033bd *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* dec    %rdx                                     #! PC = 0x4033c2 *)
subb overflow rdx rdx 1@uint64;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4033c6 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* paddd  %xmm10,%xmm2                             #! PC = 0x4033ca *)
spl src_h src_l xmm10 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm2 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm2 dst_h dst_l;
(* paddd  %xmm9,%xmm1                              #! PC = 0x4033cf *)
spl src_h src_l xmm9 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm1 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm1 dst_h dst_l;
(* #jne    0x403100 <sha256_block_data_order_shaext+64>#! PC = 0x4033d4 *)
#jne    0x403100 <sha256_block_data_order_shaext+64>#! 0x4033d4 = 0x4033d4;
(* pshufd $0xb1,%xmm2,%xmm2                        #! PC = 0x4033da *)
(* 10 11 00 01 *)
(* shr u1 u1 64 *)
split u1 dc xmm2 64;
(* shr u2 u2 96*)
split u2 dc xmm2 96;
mov u3 xmm2;
(* shr u4 u4 32 *)
split u4 dc xmm2 32;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm2 uu1 uu2;
(* pshufd $0x1b,%xmm1,%xmm7                        #! PC = 0x4033df *)
(* 00 01 10 11 *)
(* shr u1 u1 96 *)
split u1 dc xmm1 96;
(* shr u2 u2 64 *)
split u2 dc xmm1 64;
(* shr u3 u3 32 *)
split u3 dc xmm1 32;
mov u4 xmm1;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm7 uu1 uu2;
(* pshufd $0xb1,%xmm1,%xmm1                        #! PC = 0x4033e4 *)
(* 10 11 00 01 *)
(* shr u1 u1 64 *)
split u1 dc xmm1 64;
(* shr u2 u2 96*)
split u2 dc xmm1 96;
mov u3 xmm1;
(* shr u4 u4 32 *)
split u4 dc xmm1 32;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm1 uu1 uu2;
(* punpckhqdq %xmm2,%xmm1                          #! PC = 0x4033e9 *)
spl src_h src_l xmm2 64;
spl dst_h dst_l xmm1 64;
join xmm1 src_h dst_h;
(* palignr $0x8,%xmm7,%xmm2                        #! PC = 0x4033ed *)
(* shr xmm7 xmm2 64 *)
split xmm7 dc xmm2 64;
(* movdqu %xmm1,(%rdi)                             #! EA = L0x7fffffffd9c0; PC = 0x4033f3 *)
mov L0x7fffffffd9c0 xmm1;
(* movdqu %xmm2,0x10(%rdi)                         #! EA = L0x7fffffffd9d0; PC = 0x4033f7 *)
mov L0x7fffffffd9d0 xmm2;
(* #! <- SP = 0x7fffffffd948 *)
#! 0x7fffffffd948 = 0x7fffffffd948;
(* #repz ret                                       #! PC = 0x4033fc *)
#repz ret                                       #! 0x4033fc = 0x4033fc;
(* mov    %rbp,%rax                                #! PC = 0x4013aa *)
mov rax rbp;
(* and    $0xffffffffffffffc0,%rax                 #! PC = 0x4013ad *)
and rax@uint64 rax 0xffffffffffffffc0@uint64;
(* add    %rax,%r12                                #! PC = 0x4013b1 *)
adds carry r12 r12 rax;
(* sub    %rax,%rbp                                #! PC = 0x4013b4 *)
subb carry rbp rbp rax@uint64;
(* test   %rbp,%rbp                                #! PC = 0x4013b7 *)
subb zero dontcare rbp 1@uint64;
(* #je     0x4012f7 <SHA256_Update+103>            #! PC = 0x4013ba *)
#je     0x4012f7 <SHA256_Update+103>            #! 0x4013ba = 0x4013ba;
(* add    $0x8,%rsp                                #! PC = 0x4012f7 *)
adds carry rsp rsp 0x8@uint64;
(* mov    $0x1,%eax                                #! PC = 0x4012fb *)
mov eax 0x1@uint64;
(* pop    %rbx                                     #! EA = L0x7fffffffd958; Value = 0x00007fffffffdbf8; PC = 0x401300 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd960; Value = 0x00007fffffffd9b0; PC = 0x401301 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd968; Value = 0x0000000000000000; PC = 0x401302 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd970; Value = 0x00007fffffffdc08; PC = 0x401304 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd978; Value = 0x0000000000408df0; PC = 0x401306 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd980; Value = 0x00007ffff7ffd000; PC = 0x401308 *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd988 *)
#! 0x7fffffffd988 = 0x7fffffffd988;
(* #ret                                            #! PC = 0x40130a *)
#ret                                            #! 0x40130a = 0x40130a;
mov rdx L0x7fffffffd9a0;

(* mov *)
mov L0x7fffffffd9a8 0x00007fffffffda30@uint64;

(* mov    -0x8(%rbp),%rax                          #! EA = L0x7fffffffd9a8; Value = 0x00007fffffffda30; PC = 0x401196 *)
mov rax L0x7fffffffd9a8;
(* mov    %rdx,%rsi                                #! PC = 0x40119a *)
mov rsi rdx;
(* mov    %rax,%rdi                                #! PC = 0x40119d *)
mov rdi rax;
(* #call   0x401480 <SHA256_Final>                 #! PC = 0x4011a0 *)
#call   0x401480 <SHA256_Final>                 #! 0x4011a0 = 0x4011a0;
(* #! -> SP = 0x7fffffffd988 *)
#! 0x7fffffffd988 = 0x7fffffffd988;
(* push   %r12                                     #! EA = L0x7fffffffd980; PC = 0x401480 *)
(* push r12 *)
nop;
(* lea    0x28(%rsi),%r12                          #! PC = 0x401482 *)
(* lea EA, r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd978; PC = 0x401486 *)
(* push rbp *)
nop;
(* mov    %rdi,%rbp                                #! PC = 0x401487 *)
mov rbp rdi;
(* push   %rbx                                     #! EA = L0x7fffffffd970; PC = 0x40148a *)
(* push rbx *)
nop;
mov eax L0x7fffffffda28;
(* mov    %rsi,%rbx                                #! PC = 0x40148e *)
mov rbx rsi;
(* movb   $0x80,0x28(%rsi,%rax,1)                  #! EA = L0x7fffffffd9e8; PC = 0x401491 *)
mov L0x7fffffffd9e8 0x80@uint64;
(* add    $0x1,%rax                                #! PC = 0x401496 *)
adds carry rax rax 0x1@uint64;
(* lea    (%r12,%rax,1),%rcx                       #! PC = 0x40149a *)
(* lea EA, rcx *)
nop;
(* cmp    $0x38,%rax                               #! PC = 0x40149e *)
subb carry tmp rax 0x38@uint64;
subb zero tmp tmp 1@uint64;
(* #ja     0x401680 <SHA256_Final+512>             #! PC = 0x4014a2 *)
#ja     0x401680 <SHA256_Final+512>             #! 0x4014a2 = 0x4014a2;
(* mov    $0x38,%edx                               #! PC = 0x4014a8 *)
mov edx 0x38@uint64;
(* sub    %rax,%rdx                                #! PC = 0x4014ad *)
subb carry rdx rdx rax@uint64;
(* mov    %edx,%eax                                #! PC = 0x4014b0 *)
mov eax edx;
(* xor    %edi,%edi                                #! PC = 0x4014b2 *)
mov edi 0@uint64;
clear carry;
clear overflow;
(* cmp    $0x8,%edx                                #! PC = 0x4014b4 *)
subb carry tmp edx 0x8@uint64;
subb zero tmp tmp 1@uint64;
(* #jae    0x4015a0 <SHA256_Final+288>             #! PC = 0x4014b7 *)
#jae    0x4015a0 <SHA256_Final+288>             #! 0x4014b7 = 0x4014b7;
(* lea    0x8(%rcx),%rsi                           #! PC = 0x4015a0 *)
(* lea EA, rsi *)
nop;
(* mov    %edx,%eax                                #! PC = 0x4015a4 *)
mov eax edx;
(* movq   $0x0,(%rcx)                              #! EA = L0x7fffffffd9e9; PC = 0x4015a6 *)
mov L0x7fffffffd9e9 0x0@uint64;
(* movq   $0x0,-0x8(%rcx,%rax,1)                   #! EA = L0x7fffffffda18; PC = 0x4015ad *)
mov L0x7fffffffda18 0x0@uint64;
(* and    $0xfffffffffffffff8,%rsi                 #! PC = 0x4015b6 *)
and rsi@uint64 rsi 0xfffffffffffffff8@uint64;
(* sub    %rsi,%rcx                                #! PC = 0x4015ba *)
subb carry rcx rcx rsi@uint64;
(* lea    (%rdx,%rcx,1),%eax                       #! PC = 0x4015bd *)
(* lea EA, eax *)
nop;
(* and    $0xfffffff8,%eax                         #! PC = 0x4015c0 *)
and eax@uint64 eax 0xfffffff8@uint64;
(* cmp    $0x8,%eax                                #! PC = 0x4015c3 *)
subb carry tmp eax 0x8@uint64;
subb zero tmp tmp 1@uint64;
(* #jb     0x4014d5 <SHA256_Final+85>              #! PC = 0x4015c6 *)
#jb     0x4014d5 <SHA256_Final+85>              #! 0x4015c6 = 0x4015c6;
(* and    $0xfffffff8,%eax                         #! PC = 0x4015cc *)
and eax@uint64 eax 0xfffffff8@uint64;
(* xor    %edx,%edx                                #! PC = 0x4015cf *)
mov edx 0@uint64;
clear carry;
clear overflow;
(* mov    %edx,%ecx                                #! PC = 0x4015d1 *)
mov ecx edx;
(* add    $0x8,%edx                                #! PC = 0x4015d3 *)
adds carry edx edx 0x8@uint64;
(* mov    %rdi,(%rsi,%rcx,1)                       #! EA = L0x7fffffffd9f0; PC = 0x4015d6 *)
mov L0x7fffffffd9f0 rdi;
(* cmp    %eax,%edx                                #! PC = 0x4015da *)
subb carry tmp edx eax;
subb zero tmp tmp 1@uint64;
(* #jb     0x4015d1 <SHA256_Final+337>             #! PC = 0x4015dc *)
#jb     0x4015d1 <SHA256_Final+337>             #! 0x4015dc = 0x4015dc;
(* mov    %edx,%ecx                                #! PC = 0x4015d1 *)
mov ecx edx;
(* add    $0x8,%edx                                #! PC = 0x4015d3 *)
adds carry edx edx 0x8@uint64;
(* mov    %rdi,(%rsi,%rcx,1)                       #! EA = L0x7fffffffd9f8; PC = 0x4015d6 *)
mov L0x7fffffffd9f8 rdi;
(* cmp    %eax,%edx                                #! PC = 0x4015da *)
subb carry tmp edx eax;
subb zero tmp tmp 1@uint64;
(* #jb     0x4015d1 <SHA256_Final+337>             #! PC = 0x4015dc *)
#jb     0x4015d1 <SHA256_Final+337>             #! 0x4015dc = 0x4015dc;
(* mov    %edx,%ecx                                #! PC = 0x4015d1 *)
mov ecx edx;
(* add    $0x8,%edx                                #! PC = 0x4015d3 *)
adds carry edx edx 0x8@uint64;
(* mov    %rdi,(%rsi,%rcx,1)                       #! EA = L0x7fffffffda00; PC = 0x4015d6 *)
mov L0x7fffffffda00 rdi;
(* cmp    %eax,%edx                                #! PC = 0x4015da *)
subb carry tmp edx eax;
subb zero tmp tmp 1@uint64;
(* #jb     0x4015d1 <SHA256_Final+337>             #! PC = 0x4015dc *)
#jb     0x4015d1 <SHA256_Final+337>             #! 0x4015dc = 0x4015dc;
(* mov    %edx,%ecx                                #! PC = 0x4015d1 *)
mov ecx edx;
(* add    $0x8,%edx                                #! PC = 0x4015d3 *)
adds carry edx edx 0x8@uint64;
(* mov    %rdi,(%rsi,%rcx,1)                       #! EA = L0x7fffffffda08; PC = 0x4015d6 *)
mov L0x7fffffffda08 rdi;
(* cmp    %eax,%edx                                #! PC = 0x4015da *)
subb carry tmp edx eax;
subb zero tmp tmp 1@uint64;
(* #jb     0x4015d1 <SHA256_Final+337>             #! PC = 0x4015dc *)
#jb     0x4015d1 <SHA256_Final+337>             #! 0x4015dc = 0x4015dc;
(* mov    %edx,%ecx                                #! PC = 0x4015d1 *)
mov ecx edx;
(* add    $0x8,%edx                                #! PC = 0x4015d3 *)
adds carry edx edx 0x8@uint64;
(* mov    %rdi,(%rsi,%rcx,1)                       #! EA = L0x7fffffffda10; PC = 0x4015d6 *)
mov L0x7fffffffda10 rdi;
(* cmp    %eax,%edx                                #! PC = 0x4015da *)
subb carry tmp edx eax;
subb zero tmp tmp 1@uint64;
(* #jb     0x4015d1 <SHA256_Final+337>             #! PC = 0x4015dc *)
#jb     0x4015d1 <SHA256_Final+337>             #! 0x4015dc = 0x4015dc;
(* mov    %edx,%ecx                                #! PC = 0x4015d1 *)
mov ecx edx;
(* add    $0x8,%edx                                #! PC = 0x4015d3 *)
adds carry edx edx 0x8@uint64;
(* mov    %rdi,(%rsi,%rcx,1)                       #! EA = L0x7fffffffda18; PC = 0x4015d6 *)
mov L0x7fffffffda18 rdi;
(* cmp    %eax,%edx                                #! PC = 0x4015da *)
subb carry tmp edx eax;
subb zero tmp tmp 1@uint64;
(* #jb     0x4015d1 <SHA256_Final+337>             #! PC = 0x4015dc *)
#jb     0x4015d1 <SHA256_Final+337>             #! 0x4015dc = 0x4015dc;
(* #jmp    0x4014d5 <SHA256_Final+85>              #! PC = 0x4015de *)
#jmp    0x4014d5 <SHA256_Final+85>              #! 0x4015de = 0x4015de;

(* mov *)
mov L0x7fffffffd9e0 0x0000000000000400@uint64;

(* mov    0x20(%rbx),%rax                          #! EA = L0x7fffffffd9e0; Value = 0x0000000000000400; PC = 0x4014d5 *)
mov rax L0x7fffffffd9e0;
(* mov    $0x1,%edx                                #! PC = 0x4014d9 *)
mov edx 0x1@uint64;
(* mov    %r12,%rsi                                #! PC = 0x4014de *)
mov rsi r12;
(* mov    %rbx,%rdi                                #! PC = 0x4014e1 *)
mov rdi rbx;
(* bswap  %rax                                     #! PC = 0x4014e4 *)
spl temp_h temp_l rax 32;
spl temp_hh temp_hl temp_h 16;
spl temp_hhh temp_hhl temp_hh 8;
spl temp_hlh temp_hll temp_hl 8;
spl temp_lh temp_ll temp_l 16;
spl temp_lhh temp_lhl temp_lh 8;
spl temp_llh temp_lll temp_ll 8;
join dst_ll temp_lll temp_llh;
join dst_lh temp_lhl temp_lhh;
join dst_l temp_ll temp_lh;
join dst_hl temp_hll temp_hlh;
join dst_hh temp_hhl temp_hhh;
join dst_h temp_hl temp_hh;
join rax dst_l dst_h;
(* mov    %rax,0x60(%rbx)                          #! EA = L0x7fffffffda20; PC = 0x4014e7 *)
mov L0x7fffffffda20 rax;
(* #call   0x401c00 <sha256_block_data_order>      #! PC = 0x4014eb *)
#call   0x401c00 <sha256_block_data_order>      #! 0x4014eb = 0x4014eb;
(* #! -> SP = 0x7fffffffd968 *)
#! 0x7fffffffd968 = 0x7fffffffd968;
(* lea    0x7429(%rip),%r11        # 0x409030 <OPENSSL_ia32cap_P>#! PC = 0x401c00 *)
(* lea EA, r11 *)
nop;
mov r9d L0x409030;
mov r10d L0x409034;
mov r11d L0x409038;
(* test   $0x20000000,%r11d                        #! PC = 0x401c12 *)
and tmp@uint64 0x20000000@uint64 r11d;
subb zero dontcare tmp 0x20000000@uint64;
(* #jne    0x4030c0 <sha256_block_data_order_shaext>#! PC = 0x401c19 *)
#jne    0x4030c0 <sha256_block_data_order_shaext>#! 0x401c19 = 0x401c19;
(* lea    -0x247(%rip),%rcx        # 0x402e80 <K256+128>#! PC = 0x4030c0 *)
(* lea EA, rcx *)
nop;
mov xmm1 L0x7fffffffd9c0;
mov xmm2 L0x7fffffffd9d0;
mov xmm7_l L0x403000;
mov xmm7_h L0x403008;
join xmm7 xmm7_h xmm7_l;
(* pshufd $0x1b,%xmm1,%xmm0                        #! PC = 0x4030d8 *)
(* 00 01 10 11 *)
(* shr u1 u1 96 *)
split u1 dc xmm1 96;
(* shr u2 u2 64 *)
split u2 dc xmm1 64;
(* shr u3 u3 32 *)
split u3 dc xmm1 32;
mov u4 xmm1;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* pshufd $0xb1,%xmm1,%xmm1                        #! PC = 0x4030dd *)
(* 10 11 00 01 *)
(* shr u1 u1 64 *)
split u1 dc xmm1 64;
(* shr u2 u2 96*)
split u2 dc xmm1 96;
mov u3 xmm1;
(* shr u4 u4 32 *)
split u4 dc xmm1 32;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm1 uu1 uu2;
(* pshufd $0x1b,%xmm2,%xmm2                        #! PC = 0x4030e2 *)
(* 00 01 10 11 *)
(* shr u1 u1 96 *)
split u1 dc xmm2 96;
(* shr u2 u2 64 *)
split u2 dc xmm2 64;
(* shr u3 u3 32 *)
split u3 dc xmm2 32;
mov u4 xmm2;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm2 uu1 uu2;
(* movdqa %xmm7,%xmm8                              #! PC = 0x4030e7 *)
mov xmm8 xmm7;
(* palignr $0x8,%xmm2,%xmm1                        #! PC = 0x4030ec *)
(* shr xmm2 xmm1 64 *)
split xmm2 dc xmm1 64;
(* punpcklqdq %xmm0,%xmm2                          #! PC = 0x4030f2 *)
spl xmm2_0 xmm2_1 xmm2 64;
spl xmm0_0 xmm0_1 xmm0 64;
mov lqdq_l xmm2_0;
mov lqdq_h xmm0_0;
join xmm2 lqdq_h lqdq_l;
(* #jmp    0x403100 <sha256_block_data_order_shaext+64>#! PC = 0x4030f6 *)
#jmp    0x403100 <sha256_block_data_order_shaext+64>#! 0x4030f6 = 0x4030f6;

(* mov *)
mov L0x7fffffffd9e8 0x80@uint128;

(* movdqu (%rsi),%xmm3                             #! EA = L0x7fffffffd9e8; Value_l = 0x0000000000000080; Value_h = 0x0000000000000000; PC = 0x403100 *)
mov xmm3 L0x7fffffffd9e8;

(* mov *)
mov L0x7fffffffd9f8 0x0@uint128;

(* movdqu 0x10(%rsi),%xmm4                         #! EA = L0x7fffffffd9f8; Value_l = 0x0000000000000000; Value_h = 0x0000000000000000; PC = 0x403104 *)
mov xmm4 L0x7fffffffd9f8;

(* mov *)
mov L0x7fffffffda08 0x0@uint128;

(* movdqu 0x20(%rsi),%xmm5                         #! EA = L0x7fffffffda08; Value_l = 0x0000000000000000; Value_h = 0x0000000000000000; PC = 0x403109 *)
mov xmm5 L0x7fffffffda08;
(* pshufb %xmm7,%xmm3                              #! PC = 0x40310e *)
(* split temp *)
spl temp_h temp_l xmm7 64;
spl temp_hh temp_hl temp_h 32;
spl temp_hhh temp_hhl temp_hh 16;
spl temp15 temp14 temp_hhh 8;
spl temp13 temp12 temp_hhl 8;
spl temp_hlh temp_hll temp_hl 16;
spl temp11 temp10 temp_hlh 8;
spl temp09 temp08 temp_hll 8;
spl temp_lh temp_ll temp_l 32;
spl temp_lhh temp_lhl temp_lh 16;
spl temp07 temp06 temp_lhh 8;
spl temp05 temp04 temp_lhl 8;
spl temp_llh temp_lll temp_ll 16;
spl temp03 temp02 temp_llh 8;
spl temp01 temp00 temp_lll 8;
(* split src *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_hhh src_hhl src_hh 16;
spl src15 src14 src_hhh 8;
spl src13 src12 src_hhl 8;
spl src_hlh src_hll src_hl 16;
spl src11 src10 src_hlh 8;
spl src09 src08 src_hll 8;
spl src_lh src_ll src_l 32;
spl src_lhh src_lhl src_lh 16;
spl src07 src06 src_lhh 8;
spl src05 src04 src_lhl 8;
spl src_llh src_lll src_ll 16;
spl src03 src02 src_llh 8;
spl src01 src00 src_lll 8;
(* i = 00 *)
nondet dest00@uint8;
and not_to_zero@uint8 src00 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src00 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest00 carry temp00 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp01 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp02 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp03 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp04 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp05 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp06 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp07 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp08 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp09 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp10 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp11 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp12 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp13 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp14 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp15 dest00;
(* = 0 *)
cmov dest00 not_to_zero dest00 0@uint8;
(* i = 01 *)
nondet dest01@uint8;
and not_to_zero@uint8 src01 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src01 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest01 carry temp00 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp01 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp02 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp03 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp04 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp05 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp06 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp07 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp08 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp09 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp10 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp11 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp12 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp13 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp14 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp15 dest01;
(* = 0 *)
cmov dest01 not_to_zero dest01 0@uint8;
(* i = 02 *)
nondet dest02@uint8;
and not_to_zero@uint8 src02 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src02 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest02 carry temp00 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp01 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp02 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp03 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp04 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp05 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp06 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp07 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp08 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp09 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp10 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp11 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp12 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp13 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp14 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp15 dest02;
(* = 0 *)
cmov dest02 not_to_zero dest02 0@uint8;
(* i = 03 *)
nondet dest03@uint8;
and not_to_zero@uint8 src03 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src03 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest03 carry temp00 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp01 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp02 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp03 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp04 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp05 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp06 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp07 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp08 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp09 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp10 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp11 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp12 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp13 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp14 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp15 dest03;
(* = 0 *)
cmov dest03 not_to_zero dest03 0@uint8;
(* i = 04 *)
nondet dest04@uint8;
and not_to_zero@uint8 src04 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src04 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest04 carry temp00 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp01 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp02 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp03 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp04 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp05 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp06 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp07 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp08 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp09 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp10 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp11 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp12 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp13 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp14 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp15 dest04;
(* = 0 *)
cmov dest04 not_to_zero dest04 0@uint8;
(* i = 05 *)
nondet dest05@uint8;
and not_to_zero@uint8 src05 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src05 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest05 carry temp00 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp01 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp02 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp03 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp04 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp05 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp06 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp07 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp08 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp09 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp10 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp11 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp12 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp13 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp14 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp15 dest05;
(* = 0 *)
cmov dest05 not_to_zero dest05 0@uint8;
(* i = 06 *)
nondet dest06@uint8;
and not_to_zero@uint8 src06 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src06 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest06 carry temp00 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp01 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp02 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp03 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp04 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp05 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp06 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp07 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp08 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp09 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp10 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp11 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp12 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp13 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp14 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp15 dest06;
(* = 0 *)
cmov dest06 not_to_zero dest06 0@uint8;
(* i = 07 *)
nondet dest07@uint8;
and not_to_zero@uint8 src07 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src07 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest07 carry temp00 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp01 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp02 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp03 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp04 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp05 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp06 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp07 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp08 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp09 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp10 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp11 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp12 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp13 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp14 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp15 dest07;
(* = 0 *)
cmov dest07 not_to_zero dest07 0@uint8;
(* i = 08 *)
nondet dest08@uint8;
and not_to_zero@uint8 src08 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src08 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest08 carry temp00 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp01 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp02 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp03 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp04 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp05 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp06 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp07 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp08 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp09 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp10 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp11 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp12 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp13 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp14 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp15 dest08;
(* = 0 *)
cmov dest08 not_to_zero dest08 0@uint8;
(* i = 09 *)
nondet dest09@uint8;
and not_to_zero@uint8 src09 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src09 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest09 carry temp00 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp01 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp02 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp03 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp04 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp05 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp06 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp07 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp08 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp09 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp10 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp11 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp12 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp13 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp14 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp15 dest09;
(* = 0 *)
cmov dest09 not_to_zero dest09 0@uint8;
(* i = 10 *)
nondet dest10@uint8;
and not_to_zero@uint8 src10 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src10 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest10 carry temp00 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp01 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp02 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp03 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp04 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp05 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp06 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp07 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp08 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp09 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp10 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp11 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp12 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp13 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp14 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp15 dest10;
(* = 0 *)
cmov dest10 not_to_zero dest10 0@uint8;
(* i = 11 *)
nondet dest11@uint8;
and not_to_zero@uint8 src11 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src11 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest11 carry temp00 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp01 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp02 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp03 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp04 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp05 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp06 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp07 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp08 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp09 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp10 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp11 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp12 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp13 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp14 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp15 dest11;
(* = 0 *)
cmov dest11 not_to_zero dest11 0@uint8;
(* i = 12 *)
nondet dest12@uint8;
and not_to_zero@uint8 src12 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src12 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest12 carry temp00 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp01 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp02 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp03 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp04 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp05 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp06 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp07 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp08 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp09 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp10 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp11 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp12 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp13 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp14 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp15 dest12;
(* = 0 *)
cmov dest12 not_to_zero dest12 0@uint8;
(* i = 13 *)
nondet dest13@uint8;
and not_to_zero@uint8 src13 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src13 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest13 carry temp00 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp01 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp02 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp03 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp04 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp05 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp06 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp07 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp08 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp09 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp10 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp11 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp12 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp13 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp14 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp15 dest13;
(* = 0 *)
cmov dest13 not_to_zero dest13 0@uint8;
(* i = 14 *)
nondet dest14@uint8;
and not_to_zero@uint8 src14 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src14 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest14 carry temp00 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp01 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp02 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp03 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp04 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp05 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp06 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp07 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp08 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp09 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp10 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp11 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp12 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp13 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp14 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp15 dest14;
(* = 0 *)
cmov dest14 not_to_zero dest14 0@uint8;
(* i = 15 *)
nondet dest15@uint8;
and not_to_zero@uint8 src15 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src15 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest15 carry temp00 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp01 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp02 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp03 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp04 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp05 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp06 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp07 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp08 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp09 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp10 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp11 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp12 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp13 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp14 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp15 dest15;
(* = 0 *)
cmov dest15 not_to_zero dest15 0@uint8;

(* mov *)
mov L0x7fffffffda18 0x40000000000000000000000000000@uint128;

(* movdqu 0x30(%rsi),%xmm6                         #! EA = L0x7fffffffda18; Value_l = 0x0000000000000000; Value_h = 0x0004000000000000; PC = 0x403113 *)
mov xmm6 L0x7fffffffda18;
mov xmm0_l L0x402e00;
mov xmm0_h L0x402e08;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm3,%xmm0                              #! PC = 0x40311d *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* pshufb %xmm7,%xmm4                              #! PC = 0x403121 *)
(* split temp *)
spl temp_h temp_l xmm7 64;
spl temp_hh temp_hl temp_h 32;
spl temp_hhh temp_hhl temp_hh 16;
spl temp15 temp14 temp_hhh 8;
spl temp13 temp12 temp_hhl 8;
spl temp_hlh temp_hll temp_hl 16;
spl temp11 temp10 temp_hlh 8;
spl temp09 temp08 temp_hll 8;
spl temp_lh temp_ll temp_l 32;
spl temp_lhh temp_lhl temp_lh 16;
spl temp07 temp06 temp_lhh 8;
spl temp05 temp04 temp_lhl 8;
spl temp_llh temp_lll temp_ll 16;
spl temp03 temp02 temp_llh 8;
spl temp01 temp00 temp_lll 8;
(* split src *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_hhh src_hhl src_hh 16;
spl src15 src14 src_hhh 8;
spl src13 src12 src_hhl 8;
spl src_hlh src_hll src_hl 16;
spl src11 src10 src_hlh 8;
spl src09 src08 src_hll 8;
spl src_lh src_ll src_l 32;
spl src_lhh src_lhl src_lh 16;
spl src07 src06 src_lhh 8;
spl src05 src04 src_lhl 8;
spl src_llh src_lll src_ll 16;
spl src03 src02 src_llh 8;
spl src01 src00 src_lll 8;
(* i = 00 *)
nondet dest00@uint8;
and not_to_zero@uint8 src00 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src00 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest00 carry temp00 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp01 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp02 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp03 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp04 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp05 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp06 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp07 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp08 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp09 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp10 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp11 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp12 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp13 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp14 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp15 dest00;
(* = 0 *)
cmov dest00 not_to_zero dest00 0@uint8;
(* i = 01 *)
nondet dest01@uint8;
and not_to_zero@uint8 src01 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src01 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest01 carry temp00 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp01 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp02 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp03 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp04 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp05 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp06 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp07 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp08 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp09 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp10 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp11 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp12 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp13 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp14 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp15 dest01;
(* = 0 *)
cmov dest01 not_to_zero dest01 0@uint8;
(* i = 02 *)
nondet dest02@uint8;
and not_to_zero@uint8 src02 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src02 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest02 carry temp00 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp01 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp02 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp03 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp04 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp05 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp06 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp07 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp08 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp09 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp10 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp11 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp12 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp13 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp14 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp15 dest02;
(* = 0 *)
cmov dest02 not_to_zero dest02 0@uint8;
(* i = 03 *)
nondet dest03@uint8;
and not_to_zero@uint8 src03 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src03 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest03 carry temp00 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp01 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp02 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp03 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp04 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp05 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp06 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp07 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp08 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp09 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp10 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp11 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp12 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp13 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp14 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp15 dest03;
(* = 0 *)
cmov dest03 not_to_zero dest03 0@uint8;
(* i = 04 *)
nondet dest04@uint8;
and not_to_zero@uint8 src04 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src04 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest04 carry temp00 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp01 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp02 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp03 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp04 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp05 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp06 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp07 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp08 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp09 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp10 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp11 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp12 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp13 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp14 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp15 dest04;
(* = 0 *)
cmov dest04 not_to_zero dest04 0@uint8;
(* i = 05 *)
nondet dest05@uint8;
and not_to_zero@uint8 src05 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src05 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest05 carry temp00 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp01 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp02 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp03 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp04 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp05 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp06 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp07 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp08 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp09 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp10 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp11 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp12 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp13 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp14 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp15 dest05;
(* = 0 *)
cmov dest05 not_to_zero dest05 0@uint8;
(* i = 06 *)
nondet dest06@uint8;
and not_to_zero@uint8 src06 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src06 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest06 carry temp00 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp01 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp02 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp03 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp04 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp05 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp06 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp07 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp08 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp09 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp10 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp11 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp12 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp13 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp14 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp15 dest06;
(* = 0 *)
cmov dest06 not_to_zero dest06 0@uint8;
(* i = 07 *)
nondet dest07@uint8;
and not_to_zero@uint8 src07 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src07 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest07 carry temp00 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp01 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp02 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp03 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp04 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp05 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp06 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp07 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp08 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp09 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp10 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp11 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp12 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp13 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp14 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp15 dest07;
(* = 0 *)
cmov dest07 not_to_zero dest07 0@uint8;
(* i = 08 *)
nondet dest08@uint8;
and not_to_zero@uint8 src08 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src08 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest08 carry temp00 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp01 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp02 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp03 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp04 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp05 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp06 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp07 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp08 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp09 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp10 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp11 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp12 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp13 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp14 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp15 dest08;
(* = 0 *)
cmov dest08 not_to_zero dest08 0@uint8;
(* i = 09 *)
nondet dest09@uint8;
and not_to_zero@uint8 src09 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src09 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest09 carry temp00 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp01 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp02 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp03 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp04 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp05 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp06 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp07 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp08 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp09 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp10 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp11 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp12 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp13 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp14 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp15 dest09;
(* = 0 *)
cmov dest09 not_to_zero dest09 0@uint8;
(* i = 10 *)
nondet dest10@uint8;
and not_to_zero@uint8 src10 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src10 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest10 carry temp00 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp01 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp02 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp03 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp04 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp05 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp06 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp07 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp08 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp09 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp10 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp11 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp12 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp13 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp14 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp15 dest10;
(* = 0 *)
cmov dest10 not_to_zero dest10 0@uint8;
(* i = 11 *)
nondet dest11@uint8;
and not_to_zero@uint8 src11 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src11 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest11 carry temp00 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp01 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp02 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp03 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp04 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp05 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp06 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp07 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp08 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp09 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp10 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp11 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp12 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp13 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp14 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp15 dest11;
(* = 0 *)
cmov dest11 not_to_zero dest11 0@uint8;
(* i = 12 *)
nondet dest12@uint8;
and not_to_zero@uint8 src12 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src12 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest12 carry temp00 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp01 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp02 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp03 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp04 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp05 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp06 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp07 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp08 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp09 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp10 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp11 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp12 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp13 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp14 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp15 dest12;
(* = 0 *)
cmov dest12 not_to_zero dest12 0@uint8;
(* i = 13 *)
nondet dest13@uint8;
and not_to_zero@uint8 src13 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src13 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest13 carry temp00 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp01 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp02 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp03 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp04 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp05 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp06 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp07 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp08 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp09 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp10 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp11 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp12 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp13 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp14 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp15 dest13;
(* = 0 *)
cmov dest13 not_to_zero dest13 0@uint8;
(* i = 14 *)
nondet dest14@uint8;
and not_to_zero@uint8 src14 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src14 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest14 carry temp00 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp01 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp02 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp03 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp04 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp05 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp06 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp07 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp08 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp09 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp10 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp11 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp12 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp13 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp14 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp15 dest14;
(* = 0 *)
cmov dest14 not_to_zero dest14 0@uint8;
(* i = 15 *)
nondet dest15@uint8;
and not_to_zero@uint8 src15 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src15 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest15 carry temp00 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp01 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp02 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp03 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp04 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp05 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp06 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp07 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp08 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp09 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp10 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp11 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp12 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp13 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp14 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp15 dest15;
(* = 0 *)
cmov dest15 not_to_zero dest15 0@uint8;
(* movdqa %xmm2,%xmm10                             #! PC = 0x403126 *)
mov xmm10 xmm2;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40312b *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x40312f *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm1,%xmm9                              #! PC = 0x403135 *)
mov xmm9 xmm1;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40313a *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402e20;
mov xmm0_h L0x402e28;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm4,%xmm0                              #! PC = 0x403143 *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* pshufb %xmm7,%xmm5                              #! PC = 0x403147 *)
(* split temp *)
spl temp_h temp_l xmm7 64;
spl temp_hh temp_hl temp_h 32;
spl temp_hhh temp_hhl temp_hh 16;
spl temp15 temp14 temp_hhh 8;
spl temp13 temp12 temp_hhl 8;
spl temp_hlh temp_hll temp_hl 16;
spl temp11 temp10 temp_hlh 8;
spl temp09 temp08 temp_hll 8;
spl temp_lh temp_ll temp_l 32;
spl temp_lhh temp_lhl temp_lh 16;
spl temp07 temp06 temp_lhh 8;
spl temp05 temp04 temp_lhl 8;
spl temp_llh temp_lll temp_ll 16;
spl temp03 temp02 temp_llh 8;
spl temp01 temp00 temp_lll 8;
(* split src *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_hhh src_hhl src_hh 16;
spl src15 src14 src_hhh 8;
spl src13 src12 src_hhl 8;
spl src_hlh src_hll src_hl 16;
spl src11 src10 src_hlh 8;
spl src09 src08 src_hll 8;
spl src_lh src_ll src_l 32;
spl src_lhh src_lhl src_lh 16;
spl src07 src06 src_lhh 8;
spl src05 src04 src_lhl 8;
spl src_llh src_lll src_ll 16;
spl src03 src02 src_llh 8;
spl src01 src00 src_lll 8;
(* i = 00 *)
nondet dest00@uint8;
and not_to_zero@uint8 src00 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src00 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest00 carry temp00 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp01 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp02 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp03 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp04 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp05 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp06 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp07 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp08 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp09 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp10 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp11 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp12 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp13 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp14 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp15 dest00;
(* = 0 *)
cmov dest00 not_to_zero dest00 0@uint8;
(* i = 01 *)
nondet dest01@uint8;
and not_to_zero@uint8 src01 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src01 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest01 carry temp00 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp01 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp02 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp03 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp04 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp05 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp06 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp07 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp08 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp09 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp10 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp11 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp12 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp13 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp14 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp15 dest01;
(* = 0 *)
cmov dest01 not_to_zero dest01 0@uint8;
(* i = 02 *)
nondet dest02@uint8;
and not_to_zero@uint8 src02 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src02 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest02 carry temp00 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp01 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp02 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp03 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp04 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp05 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp06 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp07 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp08 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp09 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp10 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp11 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp12 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp13 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp14 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp15 dest02;
(* = 0 *)
cmov dest02 not_to_zero dest02 0@uint8;
(* i = 03 *)
nondet dest03@uint8;
and not_to_zero@uint8 src03 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src03 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest03 carry temp00 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp01 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp02 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp03 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp04 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp05 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp06 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp07 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp08 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp09 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp10 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp11 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp12 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp13 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp14 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp15 dest03;
(* = 0 *)
cmov dest03 not_to_zero dest03 0@uint8;
(* i = 04 *)
nondet dest04@uint8;
and not_to_zero@uint8 src04 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src04 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest04 carry temp00 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp01 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp02 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp03 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp04 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp05 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp06 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp07 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp08 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp09 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp10 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp11 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp12 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp13 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp14 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp15 dest04;
(* = 0 *)
cmov dest04 not_to_zero dest04 0@uint8;
(* i = 05 *)
nondet dest05@uint8;
and not_to_zero@uint8 src05 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src05 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest05 carry temp00 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp01 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp02 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp03 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp04 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp05 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp06 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp07 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp08 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp09 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp10 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp11 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp12 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp13 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp14 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp15 dest05;
(* = 0 *)
cmov dest05 not_to_zero dest05 0@uint8;
(* i = 06 *)
nondet dest06@uint8;
and not_to_zero@uint8 src06 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src06 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest06 carry temp00 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp01 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp02 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp03 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp04 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp05 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp06 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp07 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp08 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp09 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp10 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp11 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp12 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp13 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp14 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp15 dest06;
(* = 0 *)
cmov dest06 not_to_zero dest06 0@uint8;
(* i = 07 *)
nondet dest07@uint8;
and not_to_zero@uint8 src07 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src07 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest07 carry temp00 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp01 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp02 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp03 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp04 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp05 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp06 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp07 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp08 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp09 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp10 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp11 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp12 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp13 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp14 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp15 dest07;
(* = 0 *)
cmov dest07 not_to_zero dest07 0@uint8;
(* i = 08 *)
nondet dest08@uint8;
and not_to_zero@uint8 src08 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src08 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest08 carry temp00 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp01 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp02 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp03 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp04 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp05 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp06 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp07 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp08 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp09 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp10 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp11 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp12 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp13 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp14 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp15 dest08;
(* = 0 *)
cmov dest08 not_to_zero dest08 0@uint8;
(* i = 09 *)
nondet dest09@uint8;
and not_to_zero@uint8 src09 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src09 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest09 carry temp00 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp01 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp02 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp03 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp04 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp05 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp06 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp07 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp08 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp09 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp10 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp11 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp12 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp13 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp14 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp15 dest09;
(* = 0 *)
cmov dest09 not_to_zero dest09 0@uint8;
(* i = 10 *)
nondet dest10@uint8;
and not_to_zero@uint8 src10 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src10 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest10 carry temp00 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp01 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp02 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp03 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp04 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp05 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp06 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp07 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp08 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp09 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp10 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp11 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp12 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp13 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp14 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp15 dest10;
(* = 0 *)
cmov dest10 not_to_zero dest10 0@uint8;
(* i = 11 *)
nondet dest11@uint8;
and not_to_zero@uint8 src11 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src11 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest11 carry temp00 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp01 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp02 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp03 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp04 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp05 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp06 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp07 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp08 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp09 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp10 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp11 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp12 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp13 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp14 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp15 dest11;
(* = 0 *)
cmov dest11 not_to_zero dest11 0@uint8;
(* i = 12 *)
nondet dest12@uint8;
and not_to_zero@uint8 src12 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src12 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest12 carry temp00 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp01 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp02 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp03 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp04 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp05 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp06 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp07 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp08 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp09 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp10 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp11 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp12 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp13 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp14 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp15 dest12;
(* = 0 *)
cmov dest12 not_to_zero dest12 0@uint8;
(* i = 13 *)
nondet dest13@uint8;
and not_to_zero@uint8 src13 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src13 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest13 carry temp00 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp01 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp02 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp03 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp04 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp05 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp06 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp07 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp08 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp09 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp10 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp11 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp12 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp13 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp14 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp15 dest13;
(* = 0 *)
cmov dest13 not_to_zero dest13 0@uint8;
(* i = 14 *)
nondet dest14@uint8;
and not_to_zero@uint8 src14 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src14 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest14 carry temp00 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp01 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp02 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp03 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp04 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp05 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp06 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp07 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp08 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp09 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp10 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp11 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp12 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp13 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp14 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp15 dest14;
(* = 0 *)
cmov dest14 not_to_zero dest14 0@uint8;
(* i = 15 *)
nondet dest15@uint8;
and not_to_zero@uint8 src15 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src15 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest15 carry temp00 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp01 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp02 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp03 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp04 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp05 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp06 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp07 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp08 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp09 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp10 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp11 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp12 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp13 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp14 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp15 dest15;
(* = 0 *)
cmov dest15 not_to_zero dest15 0@uint8;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40314c *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403150 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* lea    0x40(%rsi),%rsi                          #! PC = 0x403155 *)
(* lea EA, rsi *)
nop;
(* sha256msg1 %xmm4,%xmm3                          #! PC = 0x403159 *)
spl dontcare w4 xmm3 32;
spl src1_h src1_l xmm4 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40315d *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402e40;
mov xmm0_h L0x402e48;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm5,%xmm0                              #! PC = 0x403166 *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* pshufb %xmm7,%xmm6                              #! PC = 0x40316a *)
(* split temp *)
spl temp_h temp_l xmm7 64;
spl temp_hh temp_hl temp_h 32;
spl temp_hhh temp_hhl temp_hh 16;
spl temp15 temp14 temp_hhh 8;
spl temp13 temp12 temp_hhl 8;
spl temp_hlh temp_hll temp_hl 16;
spl temp11 temp10 temp_hlh 8;
spl temp09 temp08 temp_hll 8;
spl temp_lh temp_ll temp_l 32;
spl temp_lhh temp_lhl temp_lh 16;
spl temp07 temp06 temp_lhh 8;
spl temp05 temp04 temp_lhl 8;
spl temp_llh temp_lll temp_ll 16;
spl temp03 temp02 temp_llh 8;
spl temp01 temp00 temp_lll 8;
(* split src *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_hhh src_hhl src_hh 16;
spl src15 src14 src_hhh 8;
spl src13 src12 src_hhl 8;
spl src_hlh src_hll src_hl 16;
spl src11 src10 src_hlh 8;
spl src09 src08 src_hll 8;
spl src_lh src_ll src_l 32;
spl src_lhh src_lhl src_lh 16;
spl src07 src06 src_lhh 8;
spl src05 src04 src_lhl 8;
spl src_llh src_lll src_ll 16;
spl src03 src02 src_llh 8;
spl src01 src00 src_lll 8;
(* i = 00 *)
nondet dest00@uint8;
and not_to_zero@uint8 src00 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src00 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest00 carry temp00 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp01 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp02 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp03 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp04 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp05 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp06 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp07 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp08 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp09 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp10 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp11 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp12 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp13 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp14 dest00;
subb carry index index 1@uint8;
cmov dest00 carry temp15 dest00;
(* = 0 *)
cmov dest00 not_to_zero dest00 0@uint8;
(* i = 01 *)
nondet dest01@uint8;
and not_to_zero@uint8 src01 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src01 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest01 carry temp00 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp01 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp02 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp03 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp04 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp05 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp06 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp07 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp08 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp09 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp10 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp11 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp12 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp13 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp14 dest01;
subb carry index index 1@uint8;
cmov dest01 carry temp15 dest01;
(* = 0 *)
cmov dest01 not_to_zero dest01 0@uint8;
(* i = 02 *)
nondet dest02@uint8;
and not_to_zero@uint8 src02 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src02 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest02 carry temp00 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp01 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp02 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp03 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp04 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp05 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp06 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp07 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp08 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp09 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp10 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp11 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp12 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp13 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp14 dest02;
subb carry index index 1@uint8;
cmov dest02 carry temp15 dest02;
(* = 0 *)
cmov dest02 not_to_zero dest02 0@uint8;
(* i = 03 *)
nondet dest03@uint8;
and not_to_zero@uint8 src03 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src03 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest03 carry temp00 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp01 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp02 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp03 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp04 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp05 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp06 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp07 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp08 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp09 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp10 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp11 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp12 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp13 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp14 dest03;
subb carry index index 1@uint8;
cmov dest03 carry temp15 dest03;
(* = 0 *)
cmov dest03 not_to_zero dest03 0@uint8;
(* i = 04 *)
nondet dest04@uint8;
and not_to_zero@uint8 src04 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src04 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest04 carry temp00 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp01 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp02 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp03 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp04 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp05 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp06 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp07 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp08 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp09 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp10 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp11 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp12 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp13 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp14 dest04;
subb carry index index 1@uint8;
cmov dest04 carry temp15 dest04;
(* = 0 *)
cmov dest04 not_to_zero dest04 0@uint8;
(* i = 05 *)
nondet dest05@uint8;
and not_to_zero@uint8 src05 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src05 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest05 carry temp00 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp01 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp02 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp03 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp04 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp05 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp06 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp07 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp08 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp09 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp10 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp11 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp12 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp13 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp14 dest05;
subb carry index index 1@uint8;
cmov dest05 carry temp15 dest05;
(* = 0 *)
cmov dest05 not_to_zero dest05 0@uint8;
(* i = 06 *)
nondet dest06@uint8;
and not_to_zero@uint8 src06 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src06 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest06 carry temp00 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp01 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp02 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp03 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp04 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp05 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp06 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp07 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp08 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp09 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp10 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp11 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp12 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp13 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp14 dest06;
subb carry index index 1@uint8;
cmov dest06 carry temp15 dest06;
(* = 0 *)
cmov dest06 not_to_zero dest06 0@uint8;
(* i = 07 *)
nondet dest07@uint8;
and not_to_zero@uint8 src07 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src07 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest07 carry temp00 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp01 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp02 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp03 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp04 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp05 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp06 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp07 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp08 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp09 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp10 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp11 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp12 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp13 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp14 dest07;
subb carry index index 1@uint8;
cmov dest07 carry temp15 dest07;
(* = 0 *)
cmov dest07 not_to_zero dest07 0@uint8;
(* i = 08 *)
nondet dest08@uint8;
and not_to_zero@uint8 src08 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src08 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest08 carry temp00 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp01 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp02 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp03 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp04 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp05 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp06 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp07 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp08 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp09 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp10 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp11 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp12 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp13 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp14 dest08;
subb carry index index 1@uint8;
cmov dest08 carry temp15 dest08;
(* = 0 *)
cmov dest08 not_to_zero dest08 0@uint8;
(* i = 09 *)
nondet dest09@uint8;
and not_to_zero@uint8 src09 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src09 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest09 carry temp00 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp01 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp02 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp03 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp04 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp05 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp06 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp07 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp08 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp09 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp10 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp11 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp12 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp13 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp14 dest09;
subb carry index index 1@uint8;
cmov dest09 carry temp15 dest09;
(* = 0 *)
cmov dest09 not_to_zero dest09 0@uint8;
(* i = 10 *)
nondet dest10@uint8;
and not_to_zero@uint8 src10 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src10 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest10 carry temp00 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp01 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp02 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp03 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp04 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp05 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp06 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp07 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp08 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp09 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp10 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp11 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp12 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp13 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp14 dest10;
subb carry index index 1@uint8;
cmov dest10 carry temp15 dest10;
(* = 0 *)
cmov dest10 not_to_zero dest10 0@uint8;
(* i = 11 *)
nondet dest11@uint8;
and not_to_zero@uint8 src11 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src11 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest11 carry temp00 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp01 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp02 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp03 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp04 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp05 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp06 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp07 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp08 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp09 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp10 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp11 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp12 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp13 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp14 dest11;
subb carry index index 1@uint8;
cmov dest11 carry temp15 dest11;
(* = 0 *)
cmov dest11 not_to_zero dest11 0@uint8;
(* i = 12 *)
nondet dest12@uint8;
and not_to_zero@uint8 src12 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src12 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest12 carry temp00 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp01 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp02 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp03 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp04 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp05 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp06 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp07 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp08 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp09 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp10 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp11 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp12 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp13 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp14 dest12;
subb carry index index 1@uint8;
cmov dest12 carry temp15 dest12;
(* = 0 *)
cmov dest12 not_to_zero dest12 0@uint8;
(* i = 13 *)
nondet dest13@uint8;
and not_to_zero@uint8 src13 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src13 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest13 carry temp00 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp01 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp02 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp03 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp04 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp05 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp06 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp07 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp08 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp09 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp10 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp11 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp12 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp13 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp14 dest13;
subb carry index index 1@uint8;
cmov dest13 carry temp15 dest13;
(* = 0 *)
cmov dest13 not_to_zero dest13 0@uint8;
(* i = 14 *)
nondet dest14@uint8;
and not_to_zero@uint8 src14 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src14 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest14 carry temp00 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp01 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp02 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp03 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp04 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp05 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp06 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp07 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp08 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp09 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp10 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp11 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp12 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp13 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp14 dest14;
subb carry index index 1@uint8;
cmov dest14 carry temp15 dest14;
(* = 0 *)
cmov dest14 not_to_zero dest14 0@uint8;
(* i = 15 *)
nondet dest15@uint8;
and not_to_zero@uint8 src15 0x80@uint8;
subb not_to_zero dontcare not_to_zero 0x80@uint8;
and index@uint8 src15 0x07@uint8;
(* = 0 ~ 15 *)
subb carry index index 1@uint8;
cmov dest15 carry temp00 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp01 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp02 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp03 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp04 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp05 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp06 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp07 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp08 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp09 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp10 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp11 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp12 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp13 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp14 dest15;
subb carry index index 1@uint8;
cmov dest15 carry temp15 dest15;
(* = 0 *)
cmov dest15 not_to_zero dest15 0@uint8;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40316f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403173 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm6,%xmm7                              #! PC = 0x403178 *)
mov xmm7 xmm6;
(* palignr $0x4,%xmm5,%xmm7                        #! PC = 0x40317c *)
(* shr xmm5 xmm7 32 *)
split xmm5 dc xmm7 32;
(* paddd  %xmm7,%xmm3                              #! PC = 0x403183 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm3 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm3 dst_h dst_l;
(* sha256msg1 %xmm5,%xmm4                          #! PC = 0x403187 *)
spl dontcare w4 xmm4 32;
spl src1_h src1_l xmm5 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40318b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402e60;
mov xmm0_h L0x402e68;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm6,%xmm0                              #! PC = 0x403194 *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm6,%xmm3                          #! PC = 0x403198 *)
spl src1_h src1_l xmm6 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm3 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40319c *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4031a0 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm3,%xmm7                              #! PC = 0x4031a5 *)
mov xmm7 xmm3;
(* palignr $0x4,%xmm6,%xmm7                        #! PC = 0x4031a9 *)
(* shr xmm6 xmm7 32 *)
split xmm6 dc xmm7 32;
(* paddd  %xmm7,%xmm4                              #! PC = 0x4031b0 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm4 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm4 dst_h dst_l;
(* sha256msg1 %xmm6,%xmm5                          #! PC = 0x4031b4 *)
spl dontcare w4 xmm5 32;
spl src1_h src1_l xmm6 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4031b8 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402e80;
mov xmm0_h L0x402e88;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm3,%xmm0                              #! PC = 0x4031c0 *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm3,%xmm4                          #! PC = 0x4031c4 *)
spl src1_h src1_l xmm3 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm4 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4031c8 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4031cc *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm4,%xmm7                              #! PC = 0x4031d1 *)
mov xmm7 xmm4;
(* palignr $0x4,%xmm3,%xmm7                        #! PC = 0x4031d5 *)
(* shr xmm3 xmm7 32 *)
split xmm3 dc xmm7 32;
(* paddd  %xmm7,%xmm5                              #! PC = 0x4031dc *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm5 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm5 dst_h dst_l;
(* sha256msg1 %xmm3,%xmm6                          #! PC = 0x4031e0 *)
spl dontcare w4 xmm6 32;
spl src1_h src1_l xmm3 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4031e4 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402ea0;
mov xmm0_h L0x402ea8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm4,%xmm0                              #! PC = 0x4031ed *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm4,%xmm5                          #! PC = 0x4031f1 *)
spl src1_h src1_l xmm4 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm5 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4031f5 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4031f9 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm5,%xmm7                              #! PC = 0x4031fe *)
mov xmm7 xmm5;
(* palignr $0x4,%xmm4,%xmm7                        #! PC = 0x403202 *)
(* shr xmm4 xmm7 32 *)
split xmm4 dc xmm7 32;
(* paddd  %xmm7,%xmm6                              #! PC = 0x403209 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm6 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm6 dst_h dst_l;
(* sha256msg1 %xmm4,%xmm3                          #! PC = 0x40320d *)
spl dontcare w4 xmm3 32;
spl src1_h src1_l xmm4 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x403211 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402ec0;
mov xmm0_h L0x402ec8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm5,%xmm0                              #! PC = 0x40321a *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm5,%xmm6                          #! PC = 0x40321e *)
spl src1_h src1_l xmm5 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm6 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x403222 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403226 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm6,%xmm7                              #! PC = 0x40322b *)
mov xmm7 xmm6;
(* palignr $0x4,%xmm5,%xmm7                        #! PC = 0x40322f *)
(* shr xmm5 xmm7 32 *)
split xmm5 dc xmm7 32;
(* paddd  %xmm7,%xmm3                              #! PC = 0x403236 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm3 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm3 dst_h dst_l;
(* sha256msg1 %xmm5,%xmm4                          #! PC = 0x40323a *)
spl dontcare w4 xmm4 32;
spl src1_h src1_l xmm5 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40323e *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402ee0;
mov xmm0_h L0x402ee8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm6,%xmm0                              #! PC = 0x403247 *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm6,%xmm3                          #! PC = 0x40324b *)
spl src1_h src1_l xmm6 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm3 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40324f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403253 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm3,%xmm7                              #! PC = 0x403258 *)
mov xmm7 xmm3;
(* palignr $0x4,%xmm6,%xmm7                        #! PC = 0x40325c *)
(* shr xmm6 xmm7 32 *)
split xmm6 dc xmm7 32;
(* paddd  %xmm7,%xmm4                              #! PC = 0x403263 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm4 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm4 dst_h dst_l;
(* sha256msg1 %xmm6,%xmm5                          #! PC = 0x403267 *)
spl dontcare w4 xmm5 32;
spl src1_h src1_l xmm6 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40326b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402f00;
mov xmm0_h L0x402f08;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm3,%xmm0                              #! PC = 0x403277 *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm3,%xmm4                          #! PC = 0x40327b *)
spl src1_h src1_l xmm3 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm4 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40327f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403283 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm4,%xmm7                              #! PC = 0x403288 *)
mov xmm7 xmm4;
(* palignr $0x4,%xmm3,%xmm7                        #! PC = 0x40328c *)
(* shr xmm3 xmm7 32 *)
split xmm3 dc xmm7 32;
(* paddd  %xmm7,%xmm5                              #! PC = 0x403293 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm5 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm5 dst_h dst_l;
(* sha256msg1 %xmm3,%xmm6                          #! PC = 0x403297 *)
spl dontcare w4 xmm6 32;
spl src1_h src1_l xmm3 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40329b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402f20;
mov xmm0_h L0x402f28;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm4,%xmm0                              #! PC = 0x4032a7 *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm4,%xmm5                          #! PC = 0x4032ab *)
spl src1_h src1_l xmm4 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm5 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4032af *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4032b3 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm5,%xmm7                              #! PC = 0x4032b8 *)
mov xmm7 xmm5;
(* palignr $0x4,%xmm4,%xmm7                        #! PC = 0x4032bc *)
(* shr xmm4 xmm7 32 *)
split xmm4 dc xmm7 32;
(* paddd  %xmm7,%xmm6                              #! PC = 0x4032c3 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm6 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm6 dst_h dst_l;
(* sha256msg1 %xmm4,%xmm3                          #! PC = 0x4032c7 *)
spl dontcare w4 xmm3 32;
spl src1_h src1_l xmm4 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4032cb *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402f40;
mov xmm0_h L0x402f48;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm5,%xmm0                              #! PC = 0x4032d7 *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm5,%xmm6                          #! PC = 0x4032db *)
spl src1_h src1_l xmm5 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm6 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4032df *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4032e3 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm6,%xmm7                              #! PC = 0x4032e8 *)
mov xmm7 xmm6;
(* palignr $0x4,%xmm5,%xmm7                        #! PC = 0x4032ec *)
(* shr xmm5 xmm7 32 *)
split xmm5 dc xmm7 32;
(* paddd  %xmm7,%xmm3                              #! PC = 0x4032f3 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm3 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm3 dst_h dst_l;
(* sha256msg1 %xmm5,%xmm4                          #! PC = 0x4032f7 *)
spl dontcare w4 xmm4 32;
spl src1_h src1_l xmm5 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm5 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4032fb *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402f60;
mov xmm0_h L0x402f68;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm6,%xmm0                              #! PC = 0x403307 *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm6,%xmm3                          #! PC = 0x40330b *)
spl src1_h src1_l xmm6 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm3 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40330f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403313 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm3,%xmm7                              #! PC = 0x403318 *)
mov xmm7 xmm3;
(* palignr $0x4,%xmm6,%xmm7                        #! PC = 0x40331c *)
(* shr xmm6 xmm7 32 *)
split xmm6 dc xmm7 32;
(* paddd  %xmm7,%xmm4                              #! PC = 0x403323 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm4 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm4 dst_h dst_l;
(* sha256msg1 %xmm6,%xmm5                          #! PC = 0x403327 *)
spl dontcare w4 xmm5 32;
spl src1_h src1_l xmm6 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm6 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40332b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402f80;
mov xmm0_h L0x402f88;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm3,%xmm0                              #! PC = 0x403337 *)
spl src_h src_l xmm3 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm3,%xmm4                          #! PC = 0x40333b *)
spl src1_h src1_l xmm3 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm4 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40333f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403343 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm4,%xmm7                              #! PC = 0x403348 *)
mov xmm7 xmm4;
(* palignr $0x4,%xmm3,%xmm7                        #! PC = 0x40334c *)
(* shr xmm3 xmm7 32 *)
split xmm3 dc xmm7 32;
(* paddd  %xmm7,%xmm5                              #! PC = 0x403353 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm5 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm5 dst_h dst_l;
(* sha256msg1 %xmm3,%xmm6                          #! PC = 0x403357 *)
spl dontcare w4 xmm6 32;
spl src1_h src1_l xmm3 64;
spl w3 w2 src1_h 32;
spl w1 w0 src1_l 32;
(* σ0(w) = ror(w, 7) ^ ror(w, 18) ^ shr(w, 3) *)
(* dst 1 *)
mov sigma 0@uint32;
split w4_h w4_l w4 7;
shl w4_s w4_l (32-7)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
split w4_h w4_l w4 18;
shl w4_s w4_l (32-18)@uint32;
add tmp w4_s w4_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w4 3*)
split tmp dc w4 3;
xor sigma@uint32 sigma tmp;
adds carry dst1 w3 sigma;
(* dst 2 *)
mov sigma 0@uint32;
split w3_h w3_l w3 7;
shl w3_s w3_l (32-7)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
split w3_h w3_l w3 18;
shl w3_s w3_l (32-18)@uint32;
add tmp w3_s w3_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w3 3 *)
split tmp dc w3 3;
xor sigma@uint32 sigma tmp;
adds carry dst2 w2 sigma;
(* dst 3 *)
mov sigma 0@uint32;
split w2_h w2_l w2 7;
shl w2_s w2_l (32-7)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
split w2_h w2_l w2 18;
shl w2_s w2_l (32-18)@uint32;
add tmp w2_s w2_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w2 3 *)
split tmp dc w2 3;
xor sigma@uint32 sigma tmp;
adds carry dst3 w1 sigma;
(* dst 4 *)
mov sigma 0@uint32;
split w1_h w1_l w1 7;
shl w1_s w1_l (32-7)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
split w1_h w1_l w1 18;
shl w1_s w1_l (32-18)@uint32;
add tmp w1_s w1_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w1 3 *)
split tmp dc w1 3;
xor sigma@uint32 sigma tmp;
adds carry dst4 w0 sigma;
join dst_h dst1 dst2;
join dst_l dst3 dst4;
join xmm3 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x40335b *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402fa0;
mov xmm0_h L0x402fa8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm4,%xmm0                              #! PC = 0x403367 *)
spl src_h src_l xmm4 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256msg2 %xmm4,%xmm5                          #! PC = 0x40336b *)
spl src1_h src1_l xmm4 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm5 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm4 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x40336f *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x403373 *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* movdqa %xmm5,%xmm7                              #! PC = 0x403378 *)
mov xmm7 xmm5;
(* palignr $0x4,%xmm4,%xmm7                        #! PC = 0x40337c *)
(* shr xmm4 xmm7 32 *)
split xmm4 dc xmm7 32;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x403382 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* paddd  %xmm7,%xmm6                              #! PC = 0x403386 *)
spl src_h src_l xmm7 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm6 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm6 dst_h dst_l;
mov xmm0_l L0x402fc0;
mov xmm0_h L0x402fc8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm5,%xmm0                              #! PC = 0x403392 *)
spl src_h src_l xmm5 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x403396 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x40339a *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* sha256msg2 %xmm5,%xmm6                          #! PC = 0x40339f *)
spl src1_h src1_l xmm5 64;
spl w19 w18 src1_h 32;
spl w17 w16 src1_l 32;
spl src2_h dontcare xmm6 64;
spl w15 w14 src2_h 32;
(* σ1(w) = ror(w, 17) ^ ror(w, 19) ^ shr(w, 10) *)
(* w16 = w16+s(14) *)
mov sigma 0@uint32;
split w14_h w14_l w14 17;
shl w14_s w14_l (32-17)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
split w14_h w14_l w14 19;
shl w14_s w14_l (32-19)@uint32;
add tmp w14_s w14_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w14 10 *)
split tmp dc w14 10;
xor sigma@uint32 sigma tmp;
adds carry w16 w16 sigma;
(* w17 = w17+s(15) *)
mov sigma 0@uint32;
split w15_h w15_l w15 17;
shl w15_s w15_l (32-17)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
split w15_h w15_l w15 19;
shl w15_s w15_l (32-19)@uint32;
adds carry tmp w15_s w15_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w15 10 *)
split tmp dc w15 10;
xor sigma@uint32 sigma tmp;
adds carry w17 w17 sigma;
(* w18 = w18+s(16) *)
mov sigma 0@uint32;
split w16_h w16_l w16 17;
shl w16_s w16_l (32-17)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
split w16_h w16_l w16 19;
shl w16_s w16_l (32-19)@uint32;
add tmp w16_s w16_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w16 10 *)
split tmp dc w16 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
(* w19 = w19+s(17) *)
mov sigma 0@uint32;
split w17_h w17_l w17 17;
shl w17_s w17_l (32-17)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
split w17_h w17_l w17 19;
shl w17_s w17_l (32-19)@uint32;
adds carry tmp w17_s w17_h;
xor sigma@uint32 sigma tmp;
(* shr tmp w17 10*)
split tmp dc w17 10;
xor sigma@uint32 sigma tmp;
adds carry w18 w18 sigma;
join dst_h w19 w18;
join dst_l w17 w16;
join xmm5 dst_h dst_l;
(* movdqa %xmm8,%xmm7                              #! PC = 0x4033a3 *)
mov xmm7 xmm8;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4033a8 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
mov xmm0_l L0x402fe0;
mov xmm0_h L0x402fe8;
join xmm0 xmm0_h xmm0_l;
(* paddd  %xmm6,%xmm0                              #! PC = 0x4033b4 *)
spl src_h src_l xmm6 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm0 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm0 dst_h dst_l;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x4033b9 *)
(* assume src1 = xmm0, src2 = xmm1, xmm0 = xmm2, dest = xmm0 *)
spl src2_h src2_l xmm1 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm2 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x4033bd *)
(* 00 00 11 10 *)
(* shr u1 u1 64 *)
split u1 dc xmm0 64;
(* shr u2 u2 96 *)
split u2 dc xmm0 96;
mov u3 xmm0;
mov u4 xmm0;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm0 uu1 uu2;
(* dec    %rdx                                     #! PC = 0x4033c2 *)
subb overflow rdx rdx 1@uint64;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x4033c6 *)
(* assume src1 = xmm0, src2 = xmm2, xmm0 = xmm1, dest = xmm0 *)
spl src2_h src2_l xmm2 64;
spl A_0 B_0 src2_h 32;
spl E_0 F_0 src2_l 32;
spl src1_h src1_l xmm0 64;
spl C_0 D_0 src1_h 32;
spl G_0 H_0 src1_l 32;
spl dc xmm0_l xmm1 64;
spl wk_0 wk_1 xmm0_l 32;
(* ROUND 1 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_0;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_0;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_0;
and tmp@uint32 tmp B_0;
xor maj@uint32 maj tmp;
mov tmp A_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
mov tmp B_0;
and tmp@uint32 tmp C_0;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_0;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_0;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;
mov tmp E_0;
and tmp@uint32 tmp F_0;
xor ch@uint32 ch tmp;
not tmp@uint32 E_0;
and tmp@uint32 tmp G_0;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_0 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_0;
(* the rest *)
mov H_1 G_0;
mov G_1 F_0;
mov F_1 E_0;
adds carry E_1 D_0 t1;
mov D_1 C_0;
mov C_1 B_0;
mov B_1 A_0;
adds carry A_1 t1 t2;
(* ROUND 2 *)
(* s0 = ror(a,2) ^ ror(a, 13) ^ ror(a,22) *)
mov s0 0@uint32;
mov tmp A_1;
split tmp_h tmp_l tmp 2;
shl tmp_s tmp_l (32-2)@uint32;
adds carry tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 13;
shl tmp_s tmp_l (32-13)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
mov tmp A_1;
split tmp_h tmp_l tmp 22;
shl tmp_s tmp_l (32-22)@uint32;
add tmp tmp_s tmp_h;
xor s0@uint32 s0 tmp;
(* maj = (a & b) ^ (a & c) ^ (b & c) *)
mov maj 0@uint32;
mov tmp A_1;
and tmp@uint32 tmp B_1;
xor maj@uint32 maj tmp;
mov tmp A_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
mov tmp B_1;
and tmp@uint32 tmp C_1;
xor maj@uint32 maj tmp;
(* t2 = s0 + maj *)
adds carry t2 s0 maj;
(* s1 = ror(e, 6) ^ ror(e, 11) ^ ror(e,25) *)
mov s1 0@uint32;
mov tmp E_1;
split tmp_h tmp_l tmp 6;
shl tmp_s tmp_l (32-6)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 11;
shl tmp_s tmp_l (32-11)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
mov tmp E_1;
split tmp_h tmp_l tmp 25;
shl tmp_s tmp_l (32-25)@uint32;
add tmp tmp_s tmp_h;
xor s1@uint32 s1 tmp;
(* ch = (e & f) ^ ((~e) & g) *)
mov ch 0@uint32;mov tmp E_1;
and tmp@uint32 tmp F_1;
xor ch@uint32 ch tmp;
not tmp@uint32 E_1;
and tmp@uint32 tmp G_1;
xor ch@uint32 ch tmp;
(* t1 = h + s1 + ch + wk_0 *)
adds carry t1 H_1 s1;
adds carry t1 t1 ch;
adds carry t1 t1 wk_1;
(* the rest *)
mov H_2 G_1;
mov G_2 F_1;
mov F_2 E_1;
adds carry E_2 D_1 t1;
mov D_2 C_1;
mov C_2 B_1;
mov B_2 A_1;
adds carry A_2 t1 t2;
(* DEST = A_2 B_2 E_2 F_2 *)
join dest_h A_2 B_2;
join dest_l E_2 F_2;
(* extend bit *)
join dest_h 0@uint64 dest_h;
join dest_l 0@uint64 dest_l;
shl dest_hh dest_h 64;
add xmm0 dest_hh dest_l;
(* paddd  %xmm10,%xmm2                             #! PC = 0x4033ca *)
spl src_h src_l xmm10 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm2 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm2 dst_h dst_l;
(* paddd  %xmm9,%xmm1                              #! PC = 0x4033cf *)
spl src_h src_l xmm9 64;
spl src_hh src_hl src_h 32;
spl src_lh src_ll src_l 32;
spl dst_h dst_l xmm1 64;
spl dst_hh dst_hl dst_h 32;
spl dst_lh dst_ll dst_l 32;
adds carry dst_hh dst_hh src_hh;
adds carry dst_hl dst_hl src_hl;
adds carry dst_lh dst_lh src_lh;
adds carry dst_ll dst_ll src_ll;
join dst_h dst_hh dst_hl;
join dst_l dst_lh dst_ll;
join xmm1 dst_h dst_l;
(* #jne    0x403100 <sha256_block_data_order_shaext+64>#! PC = 0x4033d4 *)
#jne    0x403100 <sha256_block_data_order_shaext+64>#! 0x4033d4 = 0x4033d4;
(* pshufd $0xb1,%xmm2,%xmm2                        #! PC = 0x4033da *)
(* 10 11 00 01 *)
(* shr u1 u1 64 *)
split u1 dc xmm2 64;
(* shr u2 u2 96*)
split u2 dc xmm2 96;
mov u3 xmm2;
(* shr u4 u4 32 *)
split u4 dc xmm2 32;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm2 uu1 uu2;
(* pshufd $0x1b,%xmm1,%xmm7                        #! PC = 0x4033df *)
(* 00 01 10 11 *)
(* shr u1 u1 96 *)
split u1 dc xmm1 96;
(* shr u2 u2 64 *)
split u2 dc xmm1 64;
(* shr u3 u3 32 *)
split u3 dc xmm1 32;
mov u4 xmm1;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm7 uu1 uu2;
(* pshufd $0xb1,%xmm1,%xmm1                        #! PC = 0x4033e4 *)
(* 10 11 00 01 *)
(* shr u1 u1 64 *)
split u1 dc xmm1 64;
(* shr u2 u2 96*)
split u2 dc xmm1 96;
mov u3 xmm1;
(* shr u4 u4 32 *)
split u4 dc xmm1 32;
spl dc1 u1 u1 32;
spl dc2 u2 u2 32;
spl dc3 u3 u3 32;
spl dc4 u4 u4 32;
join uu1 u1 u2;
join uu2 u3 u4;
join xmm1 uu1 uu2;
(* punpckhqdq %xmm2,%xmm1                          #! PC = 0x4033e9 *)
spl src_h src_l xmm2 64;
spl dst_h dst_l xmm1 64;
join xmm1 src_h dst_h;
(* palignr $0x8,%xmm7,%xmm2                        #! PC = 0x4033ed *)
(* shr xmm7 xmm2 64 *)
split xmm7 dc xmm2 64;
(* movdqu %xmm1,(%rdi)                             #! EA = L0x7fffffffd9c0; PC = 0x4033f3 *)
mov L0x7fffffffd9c0 xmm1;
(* movdqu %xmm2,0x10(%rdi)                         #! EA = L0x7fffffffd9d0; PC = 0x4033f7 *)
mov L0x7fffffffd9d0 xmm2;
(* #! <- SP = 0x7fffffffd968 *)
#! 0x7fffffffd968 = 0x7fffffffd968;
(* #repz ret                                       #! PC = 0x4033fc *)
#repz ret                                       #! 0x4033fc = 0x4033fc;
(* movl   $0x0,0x68(%rbx)                          #! EA = L0x7fffffffda28; PC = 0x4014f0 *)
mov L0x7fffffffda28 0x0@uint64;
(* mov    $0x40,%esi                               #! PC = 0x4014f7 *)
mov esi 0x40@uint64;
(* mov    %r12,%rdi                                #! PC = 0x4014fc *)
mov rdi r12;
(* #call   0x401910 <OPENSSL_cleanse>              #! PC = 0x4014ff *)
#call   0x401910 <OPENSSL_cleanse>              #! 0x4014ff = 0x4014ff;
(* #! -> SP = 0x7fffffffd968 *)
#! 0x7fffffffd968 = 0x7fffffffd968;
(* xor    %rax,%rax                                #! PC = 0x401914 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* cmp    $0xf,%rsi                                #! PC = 0x401917 *)
subb carry tmp rsi 0xf@uint64;
subb zero tmp tmp 1@uint64;
(* #jae    0x401940 <OPENSSL_cleanse+48>           #! PC = 0x40191b *)
#jae    0x401940 <OPENSSL_cleanse+48>           #! 0x40191b = 0x40191b;
(* test   $0x7,%rdi                                #! PC = 0x401940 *)
and tmp@uint64 0x7@uint64 rdi;
subb zero dontcare tmp 0x7@uint64;
(* #je     0x401955 <OPENSSL_cleanse+69>           #! PC = 0x401947 *)
#je     0x401955 <OPENSSL_cleanse+69>           #! 0x401947 = 0x401947;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffd9e8; PC = 0x401955 *)
mov L0x7fffffffd9e8 rax;
(* lea    -0x8(%rsi),%rsi                          #! PC = 0x401958 *)
(* lea EA, rsi *)
nop;
(* test   $0xfffffffffffffff8,%rsi                 #! PC = 0x40195c *)
and tmp@uint64 0xfffffffffffffff8@uint64 rsi;
subb zero dontcare tmp 0xfffffffffffffff8@uint64;
(* lea    0x8(%rdi),%rdi                           #! PC = 0x401963 *)
(* lea EA, rdi *)
nop;
(* #jne    0x401955 <OPENSSL_cleanse+69>           #! PC = 0x401967 *)
#jne    0x401955 <OPENSSL_cleanse+69>           #! 0x401967 = 0x401967;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffd9f0; PC = 0x401955 *)
mov L0x7fffffffd9f0 rax;
(* lea    -0x8(%rsi),%rsi                          #! PC = 0x401958 *)
(* lea EA, rsi *)
nop;
(* test   $0xfffffffffffffff8,%rsi                 #! PC = 0x40195c *)
and tmp@uint64 0xfffffffffffffff8@uint64 rsi;
subb zero dontcare tmp 0xfffffffffffffff8@uint64;
(* lea    0x8(%rdi),%rdi                           #! PC = 0x401963 *)
(* lea EA, rdi *)
nop;
(* #jne    0x401955 <OPENSSL_cleanse+69>           #! PC = 0x401967 *)
#jne    0x401955 <OPENSSL_cleanse+69>           #! 0x401967 = 0x401967;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffd9f8; PC = 0x401955 *)
mov L0x7fffffffd9f8 rax;
(* lea    -0x8(%rsi),%rsi                          #! PC = 0x401958 *)
(* lea EA, rsi *)
nop;
(* test   $0xfffffffffffffff8,%rsi                 #! PC = 0x40195c *)
and tmp@uint64 0xfffffffffffffff8@uint64 rsi;
subb zero dontcare tmp 0xfffffffffffffff8@uint64;
(* lea    0x8(%rdi),%rdi                           #! PC = 0x401963 *)
(* lea EA, rdi *)
nop;
(* #jne    0x401955 <OPENSSL_cleanse+69>           #! PC = 0x401967 *)
#jne    0x401955 <OPENSSL_cleanse+69>           #! 0x401967 = 0x401967;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffda00; PC = 0x401955 *)
mov L0x7fffffffda00 rax;
(* lea    -0x8(%rsi),%rsi                          #! PC = 0x401958 *)
(* lea EA, rsi *)
nop;
(* test   $0xfffffffffffffff8,%rsi                 #! PC = 0x40195c *)
and tmp@uint64 0xfffffffffffffff8@uint64 rsi;
subb zero dontcare tmp 0xfffffffffffffff8@uint64;
(* lea    0x8(%rdi),%rdi                           #! PC = 0x401963 *)
(* lea EA, rdi *)
nop;
(* #jne    0x401955 <OPENSSL_cleanse+69>           #! PC = 0x401967 *)
#jne    0x401955 <OPENSSL_cleanse+69>           #! 0x401967 = 0x401967;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffda08; PC = 0x401955 *)
mov L0x7fffffffda08 rax;
(* lea    -0x8(%rsi),%rsi                          #! PC = 0x401958 *)
(* lea EA, rsi *)
nop;
(* test   $0xfffffffffffffff8,%rsi                 #! PC = 0x40195c *)
and tmp@uint64 0xfffffffffffffff8@uint64 rsi;
subb zero dontcare tmp 0xfffffffffffffff8@uint64;
(* lea    0x8(%rdi),%rdi                           #! PC = 0x401963 *)
(* lea EA, rdi *)
nop;
(* #jne    0x401955 <OPENSSL_cleanse+69>           #! PC = 0x401967 *)
#jne    0x401955 <OPENSSL_cleanse+69>           #! 0x401967 = 0x401967;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffda10; PC = 0x401955 *)
mov L0x7fffffffda10 rax;
(* lea    -0x8(%rsi),%rsi                          #! PC = 0x401958 *)
(* lea EA, rsi *)
nop;
(* test   $0xfffffffffffffff8,%rsi                 #! PC = 0x40195c *)
and tmp@uint64 0xfffffffffffffff8@uint64 rsi;
subb zero dontcare tmp 0xfffffffffffffff8@uint64;
(* lea    0x8(%rdi),%rdi                           #! PC = 0x401963 *)
(* lea EA, rdi *)
nop;
(* #jne    0x401955 <OPENSSL_cleanse+69>           #! PC = 0x401967 *)
#jne    0x401955 <OPENSSL_cleanse+69>           #! 0x401967 = 0x401967;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffda18; PC = 0x401955 *)
mov L0x7fffffffda18 rax;
(* lea    -0x8(%rsi),%rsi                          #! PC = 0x401958 *)
(* lea EA, rsi *)
nop;
(* test   $0xfffffffffffffff8,%rsi                 #! PC = 0x40195c *)
and tmp@uint64 0xfffffffffffffff8@uint64 rsi;
subb zero dontcare tmp 0xfffffffffffffff8@uint64;
(* lea    0x8(%rdi),%rdi                           #! PC = 0x401963 *)
(* lea EA, rdi *)
nop;
(* #jne    0x401955 <OPENSSL_cleanse+69>           #! PC = 0x401967 *)
#jne    0x401955 <OPENSSL_cleanse+69>           #! 0x401967 = 0x401967;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffda20; PC = 0x401955 *)
mov L0x7fffffffda20 rax;
(* lea    -0x8(%rsi),%rsi                          #! PC = 0x401958 *)
(* lea EA, rsi *)
nop;
(* test   $0xfffffffffffffff8,%rsi                 #! PC = 0x40195c *)
and tmp@uint64 0xfffffffffffffff8@uint64 rsi;
subb zero dontcare tmp 0xfffffffffffffff8@uint64;
(* lea    0x8(%rdi),%rdi                           #! PC = 0x401963 *)
(* lea EA, rdi *)
nop;
(* #jne    0x401955 <OPENSSL_cleanse+69>           #! PC = 0x401967 *)
#jne    0x401955 <OPENSSL_cleanse+69>           #! 0x401967 = 0x401967;
(* cmp    $0x0,%rsi                                #! PC = 0x401969 *)
subb carry tmp rsi 0x0@uint64;
subb zero tmp tmp 1@uint64;
(* #jne    0x401923 <OPENSSL_cleanse+19>           #! PC = 0x40196d *)
#jne    0x401923 <OPENSSL_cleanse+19>           #! 0x40196d = 0x40196d;
(* #! <- SP = 0x7fffffffd968 *)
#! 0x7fffffffd968 = 0x7fffffffd968;
(* #repz ret                                       #! PC = 0x40196f *)
#repz ret                                       #! 0x40196f = 0x40196f;

(* mov *)
mov L0x7fffffffda2c 0x20@uint64;

(* mov    0x6c(%rbx),%eax                          #! EA = L0x7fffffffda2c; Value = 0x0000010000000020; PC = 0x401504 *)
mov eax L0x7fffffffda2c;
(* cmp    $0x1c,%eax                               #! PC = 0x401507 *)
subb carry tmp eax 0x1c@uint64;
subb zero tmp tmp 1@uint64;
(* #je     0x4015e8 <SHA256_Final+360>             #! PC = 0x40150a *)
#je     0x4015e8 <SHA256_Final+360>             #! 0x40150a = 0x40150a;
(* cmp    $0x20,%eax                               #! PC = 0x401510 *)
subb carry tmp eax 0x20@uint64;
subb zero tmp tmp 1@uint64;
(* #je     0x401630 <SHA256_Final+432>             #! PC = 0x401513 *)
#je     0x401630 <SHA256_Final+432>             #! 0x401513 = 0x401513;

(* mov *)
mov L0x7fffffffd9c0 0xaab65000@uint64;

(* mov    (%rbx),%eax                              #! EA = L0x7fffffffd9c0; Value = 0xc7635956aab65000; PC = 0x401630 *)
mov eax L0x7fffffffd9c0;
(* mov    $0x1,%edx                                #! PC = 0x401632 *)
mov edx 0x1@uint64;
(* bswap  %eax                                     #! PC = 0x401637 *)
spl temp_h temp_l eax 16;
spl temp_hh temp_hl temp_h 8;
spl temp_lh temp_ll temp_l 8;
join dst_l temp_ll temp_lh;
join dst_h temp_hl temp_hh;
join eax dst_l dst_h;
(* mov    %eax,0x0(%rbp)                           #! EA = L0x7fffffffda30; PC = 0x401639 *)
mov L0x7fffffffda30 eax;

(* mov *)
mov L0x7fffffffd9c4 0xc7635956@uint64;

(* mov    0x4(%rbx),%eax                           #! EA = L0x7fffffffd9c4; Value = 0xa44dadc7c7635956; PC = 0x40163c *)
mov eax L0x7fffffffd9c4;
(* bswap  %eax                                     #! PC = 0x40163f *)
spl temp_h temp_l eax 16;
spl temp_hh temp_hl temp_h 8;
spl temp_lh temp_ll temp_l 8;
join dst_l temp_ll temp_lh;
join dst_h temp_hl temp_hh;
join eax dst_l dst_h;
(* mov    %eax,0x4(%rbp)                           #! EA = L0x7fffffffda34; PC = 0x401641 *)
mov L0x7fffffffda34 eax;

(* mov *)
mov L0x7fffffffd9c8 0xa44dadc7@uint64;

(* mov    0x8(%rbx),%eax                           #! EA = L0x7fffffffd9c8; Value = 0x6264d798a44dadc7; PC = 0x401644 *)
mov eax L0x7fffffffd9c8;
(* bswap  %eax                                     #! PC = 0x401647 *)
spl temp_h temp_l eax 16;
spl temp_hh temp_hl temp_h 8;
spl temp_lh temp_ll temp_l 8;
join dst_l temp_ll temp_lh;
join dst_h temp_hl temp_hh;
join eax dst_l dst_h;
(* mov    %eax,0x8(%rbp)                           #! EA = L0x7fffffffda38; PC = 0x401649 *)
mov L0x7fffffffda38 eax;

(* mov *)
mov L0x7fffffffd9cc 0x6264d798@uint64;

(* mov    0xc(%rbx),%eax                           #! EA = L0x7fffffffd9cc; Value = 0xd94051966264d798; PC = 0x40164c *)
mov eax L0x7fffffffd9cc;
(* bswap  %eax                                     #! PC = 0x40164f *)
spl temp_h temp_l eax 16;
spl temp_hh temp_hl temp_h 8;
spl temp_lh temp_ll temp_l 8;
join dst_l temp_ll temp_lh;
join dst_h temp_hl temp_hh;
join eax dst_l dst_h;
(* mov    %eax,0xc(%rbp)                           #! EA = L0x7fffffffda3c; PC = 0x401651 *)
mov L0x7fffffffda3c eax;

(* mov *)
mov L0x7fffffffd9d0 0xd9405196@uint64;

(* mov    0x10(%rbx),%eax                          #! EA = L0x7fffffffd9d0; Value = 0x1147d3fbd9405196; PC = 0x401654 *)
mov eax L0x7fffffffd9d0;
(* bswap  %eax                                     #! PC = 0x401657 *)
spl temp_h temp_l eax 16;
spl temp_hh temp_hl temp_h 8;
spl temp_lh temp_ll temp_l 8;
join dst_l temp_ll temp_lh;
join dst_h temp_hl temp_hh;
join eax dst_l dst_h;
(* mov    %eax,0x10(%rbp)                          #! EA = L0x7fffffffda40; PC = 0x401659 *)
mov L0x7fffffffda40 eax;

(* mov *)
mov L0x7fffffffd9d4 0x1147d3fb@uint64;

(* mov    0x14(%rbx),%eax                          #! EA = L0x7fffffffd9d4; Value = 0xb4c1e65d1147d3fb; PC = 0x40165c *)
mov eax L0x7fffffffd9d4;
(* bswap  %eax                                     #! PC = 0x40165f *)
spl temp_h temp_l eax 16;
spl temp_hh temp_hl temp_h 8;
spl temp_lh temp_ll temp_l 8;
join dst_l temp_ll temp_lh;
join dst_h temp_hl temp_hh;
join eax dst_l dst_h;
(* mov    %eax,0x14(%rbp)                          #! EA = L0x7fffffffda44; PC = 0x401661 *)
mov L0x7fffffffda44 eax;

(* mov *)
mov L0x7fffffffd9d8 0xb4c1e65d@uint64;

(* mov    0x18(%rbx),%eax                          #! EA = L0x7fffffffd9d8; Value = 0x87d91c3cb4c1e65d; PC = 0x401664 *)
mov eax L0x7fffffffd9d8;
(* bswap  %eax                                     #! PC = 0x401667 *)
spl temp_h temp_l eax 16;
spl temp_hh temp_hl temp_h 8;
spl temp_lh temp_ll temp_l 8;
join dst_l temp_ll temp_lh;
join dst_h temp_hl temp_hh;
join eax dst_l dst_h;
(* mov    %eax,0x18(%rbp)                          #! EA = L0x7fffffffda48; PC = 0x401669 *)
mov L0x7fffffffda48 eax;

(* mov *)
mov L0x7fffffffd9dc 0x87d91c3c@uint64;

(* mov    0x1c(%rbx),%eax                          #! EA = L0x7fffffffd9dc; Value = 0x0000040087d91c3c; PC = 0x40166c *)
mov eax L0x7fffffffd9dc;
(* bswap  %eax                                     #! PC = 0x40166f *)
spl temp_h temp_l eax 16;
spl temp_hh temp_hl temp_h 8;
spl temp_lh temp_ll temp_l 8;
join dst_l temp_ll temp_lh;
join dst_h temp_hl temp_hh;
join eax dst_l dst_h;
(* mov    %eax,0x1c(%rbp)                          #! EA = L0x7fffffffda4c; PC = 0x401671 *)
mov L0x7fffffffda4c eax;
(* #jmp    0x401593 <SHA256_Final+275>             #! PC = 0x401674 *)
#jmp    0x401593 <SHA256_Final+275>             #! 0x401674 = 0x401674;
(* pop    %rbx                                     #! EA = L0x7fffffffd970; Value = 0x00007fffffffdbf8; PC = 0x401593 *)
(* pop rbx *)
nop;
(* mov    %edx,%eax                                #! PC = 0x401594 *)
mov eax edx;
(* pop    %rbp                                     #! EA = L0x7fffffffd978; Value = 0x00007fffffffd9b0; PC = 0x401596 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd980; Value = 0x0000000000000000; PC = 0x401597 *)
(* pop r12 *)
nop;
(* #! <- SP = 0x7fffffffd988 *)
#! 0x7fffffffd988 = 0x7fffffffd988;
(* #ret                                            #! PC = 0x401599 *)
#ret                                            #! 0x401599 = 0x401599;
(* #! <- SP = 0x7fffffffd9b8 *)
#! 0x7fffffffd9b8 = 0x7fffffffd9b8;
(* #ret                                            #! PC = 0x4011a7 *)
#ret                                            #! 0x4011a7 = 0x4011a7;

{
  true
  &&
  true
}

