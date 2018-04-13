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

#7
def stock_count(shop_stock)
  return shop_stock[:pets].length
end

#8 and 9
def pets_by_breed(shopname, breed)
  count = []
  for pets in shopname[:pets]
      if (pets[:breed] == breed)
        count.push(pets)
      end
    end
    return count
end

#10 and 11
def find_pet_by_name(shopname, petname)
  for pets in shopname[:pets]
      if (pets[:name] == petname)
        return pets
      end
  end
  return nil
end

#12
def remove_pet_by_name(shop, petToBeRemoved)
  # pet = find_pet_by_name(shop, petToBeRemoved)
  # shop[:pets].delete(pet)
  return shop[:pets].delete(find_pet_by_name(shop, petToBeRemoved))
end
