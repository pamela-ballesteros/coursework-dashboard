\ Model Multiple_Knapsack
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  48 x[1,1] + 48 x[1,2] + 48 x[1,3] + 38 x[2,1] + 38 x[2,2] + 38 x[2,3]
   + 24 x[3,1] + 24 x[3,2] + 24 x[3,3] + 17 x[4,1] + 17 x[4,2] + 17 x[4,3]
   + 30 x[5,1] + 30 x[5,2] + 30 x[5,3] + 48 x[6,1] + 48 x[6,2] + 48 x[6,3]
Subject To
 Assign(1): x[1,1] + x[1,2] + x[1,3] <= 1
 Assign(2): x[2,1] + x[2,2] + x[2,3] <= 1
 Assign(3): x[3,1] + x[3,2] + x[3,3] <= 1
 Assign(4): x[4,1] + x[4,2] + x[4,3] <= 1
 Assign(5): x[5,1] + x[5,2] + x[5,3] <= 1
 Assign(6): x[6,1] + x[6,2] + x[6,3] <= 1
 Capacity[1]: 14 x[1,1] + 7 x[2,1] + 11 x[3,1] + 15 x[4,1] + 15 x[5,1]
   + 12 x[6,1] <= 50
 Capacity[2]: 14 x[1,2] + 7 x[2,2] + 11 x[3,2] + 15 x[4,2] + 15 x[5,2]
   + 12 x[6,2] <= 33
 Capacity[3]: 14 x[1,3] + 7 x[2,3] + 11 x[3,3] + 15 x[4,3] + 15 x[5,3]
   + 12 x[6,3] <= 37
Bounds
Binaries
 x[1,1] x[1,2] x[1,3] x[2,1] x[2,2] x[2,3] x[3,1] x[3,2] x[3,3] x[4,1]
 x[4,2] x[4,3] x[5,1] x[5,2] x[5,3] x[6,1] x[6,2] x[6,3]
End
