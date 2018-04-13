#1
def pet_shop_name(shopname)
  return shopname[:name]
end

#2
def total_cash(cashInShop)
  return cashInShop[:admin][:total_cash]
end

#3,4
def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount.to_i
end

#5
def pets_sold(shopname)
   shopname[:admin][:pets_sold]
end

#6
def increase_pets_sold(shopname, petsSold)
  shopname[:admin][:pets_sold] += petsSold
end
