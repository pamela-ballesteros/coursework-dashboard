\ Model Transportation
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  98 x[Halifax,Moncton] + 65 x[Halifax,Sydney] + 90 x[Halifax,Ottawa]
   + 68 x[Halifax,Truro] + 52 x[Halifax,Saint_John] + 134 x[Halifax,PEI]
   + 108 x[Halifax,Hamilton] + 118 x[Halifax,Waterloo]
   + 51 x[London,Moncton] + 92 x[London,Sydney] + 66 x[London,Ottawa]
   + 123 x[London,Truro] + 93 x[London,Saint_John] + 138 x[London,PEI]
   + 130 x[London,Hamilton] + 57 x[London,Waterloo] + 86 x[Ajax,Moncton]
   + 112 x[Ajax,Sydney] + 100 x[Ajax,Ottawa] + 85 x[Ajax,Truro]
   + 147 x[Ajax,Saint_John] + 142 x[Ajax,PEI] + 83 x[Ajax,Hamilton]
   + 84 x[Ajax,Waterloo] + 98 x[Toronto,Moncton] + 72 x[Toronto,Sydney]
   + 148 x[Toronto,Ottawa] + 149 x[Toronto,Truro]
   + 101 x[Toronto,Saint_John] + 75 x[Toronto,PEI] + 55 x[Toronto,Hamilton]
   + 144 x[Toronto,Waterloo] + 110 x[Montreal,Moncton]
   + 50 x[Montreal,Sydney] + 83 x[Montreal,Ottawa] + 105 x[Montreal,Truro]
   + 142 x[Montreal,Saint_John] + 66 x[Montreal,PEI]
   + 68 x[Montreal,Hamilton] + 65 x[Montreal,Waterloo]
Subject To
 Supply_Halifax: x[Halifax,Moncton] + x[Halifax,Sydney] + x[Halifax,Ottawa]
   + x[Halifax,Truro] + x[Halifax,Saint_John] + x[Halifax,PEI]
   + x[Halifax,Hamilton] + x[Halifax,Waterloo] <= 187
 Supply_London: x[London,Moncton] + x[London,Sydney] + x[London,Ottawa]
   + x[London,Truro] + x[London,Saint_John] + x[London,PEI]
   + x[London,Hamilton] + x[London,Waterloo] <= 893
 Supply_Ajax: x[Ajax,Moncton] + x[Ajax,Sydney] + x[Ajax,Ottawa]
   + x[Ajax,Truro] + x[Ajax,Saint_John] + x[Ajax,PEI] + x[Ajax,Hamilton]
   + x[Ajax,Waterloo] <= 488
 Supply_Toronto: x[Toronto,Moncton] + x[Toronto,Sydney] + x[Toronto,Ottawa]
   + x[Toronto,Truro] + x[Toronto,Saint_John] + x[Toronto,PEI]
   + x[Toronto,Hamilton] + x[Toronto,Waterloo] <= 769
 Supply_Montreal: x[Montreal,Moncton] + x[Montreal,Sydney]
   + x[Montreal,Ottawa] + x[Montreal,Truro] + x[Montreal,Saint_John]
   + x[Montreal,PEI] + x[Montreal,Hamilton] + x[Montreal,Waterloo] <= 663
 Demand_Moncton: x[Halifax,Moncton] + x[London,Moncton] + x[Ajax,Moncton]
   + x[Toronto,Moncton] + x[Montreal,Moncton] = 345
 Demand_Sydney: x[Halifax,Sydney] + x[London,Sydney] + x[Ajax,Sydney]
   + x[Toronto,Sydney] + x[Montreal,Sydney] = 398
 Demand_Ottawa: x[Halifax,Ottawa] + x[London,Ottawa] + x[Ajax,Ottawa]
   + x[Toronto,Ottawa] + x[Montreal,Ottawa] = 462
 Demand_Truro: x[Halifax,Truro] + x[London,Truro] + x[Ajax,Truro]
   + x[Toronto,Truro] + x[Montreal,Truro] = 287
 Demand_Saint_John: x[Halifax,Saint_John] + x[London,Saint_John]
   + x[Ajax,Saint_John] + x[Toronto,Saint_John] + x[Montreal,Saint_John]
   = 532
 Demand_PEI: x[Halifax,PEI] + x[London,PEI] + x[Ajax,PEI] + x[Toronto,PEI]
   + x[Montreal,PEI] = 196
 Demand_Hamilton: x[Halifax,Hamilton] + x[London,Hamilton]
   + x[Ajax,Hamilton] + x[Toronto,Hamilton] + x[Montreal,Hamilton] = 765
 Demand_Waterloo: x[Halifax,Waterloo] + x[London,Waterloo]
   + x[Ajax,Waterloo] + x[Toronto,Waterloo] + x[Montreal,Waterloo] = 15
Bounds
End
