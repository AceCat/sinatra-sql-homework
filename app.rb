# require('bundler')
# Bundler.require

# conn = PGconn.open(dbname: 'overwatch')

# get '/characters' do
# 	content_type :json
# 	res = conn.exec('SELECT id, name, role, image_url, health, organization FROM characters;')
# 	characters = []
# 	res.each do |character|
# 		characters.push(character)
# 	end
# 	characters.to_json
# end

# get '/organizations' do
# 	content_type :json
# 	res = conn.exec('SELECT characters.name, characters.role, characters.image_url, characters.health, organizations.organization_name, organizations.alignment
# 					FROM characters JOIN organizations ON characters.organization = organizations.id;')
# 	p res
# 	characters = []
# 	res.each do |character|
# 		characters.push(character)
# 	end
# 	characters.to_json
# end

# get '/characters/:id' do
# 	content_type :json
# 	id = params[:id]
# 	res = conn.exec("SELECT id, name, role, image_url, health FROM characters WHERE id = #{id};")
# 	character = res[0]
# 	character.to_json
# end


# post '/characters' do
# 	new_character = JSON.parse(request.body.read)
# 	name = new_character["name"]
# 	role = new_character["role"]
# 	image = new_character["image_url"]
# 	health = new_character["health"]
# 	conn.exec("INSERT INTO characters (name, role, image_url, health) VALUES ('#{name}', '#{role}', '#{image}', '#{health}');")
# 	"character added"
# end

# patch '/characters/:id' do
# 	id = params[:id]
# 	updated_character = JSON.parse(request.body.read)
# 	name = updated_character["name"]
# 	role = updated_character["role"]
# 	image = updated_character["image_url"]
# 	health = updated_character["health"]
# 	conn.exec("UPDATE characters SET name = '#{name}', role = '#{role}', image_url = '#{image}', health = #{health} WHERE id = #{id};")
# 	"character updated"
# end

# delete '/characters/:id' do
# 	id = params[:id]
# 	conn.exec("DELETE FROM characters WHERE id = #{id};")
# 	"character deleted"
# end

# def persistence(n)
#   root = n
#   split = root.to_s.chars.map(&:to_i)
#   p split
#   product = split[0] * split[1]
#   p product
#   p split.length
#   for i in 2..(split.length-1)
#       product = product * split[i]
#       p product
#       end
#   if product.digits.count > 1
#   	root = product
#   	persistence(root)
#   else
#   	p product
#     # your code
# 	end
# end

# persistence(999)



def alphabet_war(fight)
  left_side_power = 0
  right_side_power = 0
  battle = fight.chars
  battle.each do |letter|
    if letter == 'w'
      left_side_power += 4
    elsif letter == 'p'
      left_side_power += 3
    elsif letter == 'b'
      left_side_power += 2
    elsif letter == 's'
      left_side_power += 1
    elsif letter == 'm'
      right_side_power += 4
    elsif letter == 'q'
      right_side_power += 3
    elsif letter == 'd'
      right_side_power += 2
    elsif letter == 'z'
      right_side_power += 1
    end
end
    if right_side_power > left_side_power
      p  "Right side wins"
    elsif left_side_power > right_side_power
      p "Left side wins"
    else
      p "Let's fight again"
  end
end

  alphabet_war('zdqmwpbs')
