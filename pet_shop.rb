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
  shop[:pets].delete(find_pet_by_name(shop, petToBeRemoved))
end

#13
def add_pet_to_stock(shop, newPet)
  shop[:pets].push(newPet)
end

#14
def customer_cash(customer)
  return customer[:cash]
end

#15
def remove_customer_cash(customer, amount)
customer[:cash]-= amount
end

#16
def customer_pet_count(customer)
return customer[:pets].length
end

#17
def add_pet_to_customer(customer, newPet)
  customer[:pets].push(newPet)
end

#18 & 19
def customer_can_afford_pet(customer, newPet)
  if (customer_cash(customer) >= newPet[:price])
    return true
  else
    return false
  end
end

#20
def sell_pet_to_customer(petshop, pet, customer)
  if  pet != nil && customer_can_afford_pet(customer, pet)
    add_pet_to_customer(customer, pet)
    increase_pets_sold(petshop, 1)
    remove_customer_cash(customer, pet[:price])
    add_or_remove_cash(petshop, pet[:price])

  end
end
