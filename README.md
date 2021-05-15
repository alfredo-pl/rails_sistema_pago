# README
# PART II

How to implement polymorphism to class Animal

## First Step
We create new a project

 ```$ rails new polymorphism_animals``` 
 
## Second step
We create the classes involved

 ``` $ rails g model  Animals species animalable:references{polymorphic} ```
 
 ``` $ rails g model Cat name```  
 
 ``` $ rails g model Crocodile name```
 
 ``` $ rails g model Eagle name``` 

## Third step 
we adjust the cardinality between the classified

```ruby
class Animal < ApplicationRecord
   belongs_to :animalable, polymorphic: true
end

class Cat < ApplicationRecord
   has_many :animals , as: :animalable
end

class Crocodile < ApplicationRecord
   has_many :animals , as: :animalable
end

class Eagle < ApplicationRecord
   has_many :animals , as: :animalable
end
```

## Fourth step
Now we can create instances from the console for each of the classes

### Console 
 ```$ rails c``` 

```
Cat.create(name: "Cat")
Cat.last.animal << Animal.new(species: "Felis silvestris catus")
=> #<Animal id: 1, species: "Felis silvestris catus", animalable_type: "Cat", animalable_id: 1, created_at: "", updated_at: "">

Crocodile.create(name: "Cocodrilo")
Crocodile.last.animal << Animal.new(species: "Crocodylus porosus")
=> #<Animal id: 2, species: "Crocodylus porosus", animalable_type: "Crocodile", animalable_id: 1, created_at: "", updated_at: "">

Eagle.create(name: "Eagle")
Eagle.last.animal << Animal.new(species: "Bald eagle")
=> #<Animal id: 3, species: "Bald eagle", animalable_type: "Eagle", animalable_id: 1, created_at: "", updated_at: "">

```
