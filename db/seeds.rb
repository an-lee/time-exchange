# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# products.delete_all

# 1_hour_product
products =[{title:"代购咖啡",
	        description: "珍贵的时间留给重要的事情",
	        image_path: "#{Rails.root}/app/assets/images/1_hour/coffee.png"},

	        {title:"代排队",
	        description: "珍贵的时间留给重要的事情",
	        image_path: "#{Rails.root}/app/assets/images/1_hour/paidui.png"}
]
p1 = Product.create([title:products[0][:title],description:products[0][:description],quantity:20,price:30,image:open(products[0][:image_path])])
p2 = Product.create([title:products[1][:title],description:products[1][:description],quantity:20,price:30,image:open(products[1][:image_path])])
puts "create products"

# 1_day_product
products =[{title:"国刚说课",
	        description: "每天都是新的一天",
	        image_path: "#{Rails.root}/app/assets/images/1_day/guogangshuoke.png"},

	        {title:"说杂志",
	        description: "每天都是新的一天",
	        image_path: "#{Rails.root}/app/assets/images/1_day/shuozazhi.jpg"}
]
p1 = Product.create([title:products[0][:title],description:products[0][:description],quantity:20,price:30,image:open(products[0][:image_path])])
p2 = Product.create([title:products[1][:title],description:products[1][:description],quantity:20,price:30,image:open(products[1][:image_path])])
puts "create products"

# 1_week_product
products =[{title:"刻意练习",
	        description: "不积跬步无以至千里",
	        image_path: "#{Rails.root}/app/assets/images/1_week/keyinglianxi.png"},

	        {title:"说杂志",
	        description: "一周看懂一本书",
	        image_path: "#{Rails.root}/app/assets/images/1_week/renleijianshi.png"}
]
p1 = Product.create([title:products[0][:title],description:products[0][:description],quantity:20,price:30,image:open(products[0][:image_path])])
p2 = Product.create([title:products[1][:title],description:products[1][:description],quantity:20,price:30,image:open(products[1][:image_path])])
puts "create products"

# 3_month_product
products =[{title:"从零开始做产品",
	        description: "三个月带来新的可能",
	        image_path: "#{Rails.root}/app/assets/images/3_month/youkeng_chanping.png"},

	        {title:"Python 入门教程",
	        description: "三个月带来新的可能",
	        image_path: "#{Rails.root}/app/assets/images/3_month/kaizhixuetang_python.png"}
]
p1 = Product.create([title:products[0][:title],description:products[0][:description],quantity:20,price:30,image:open(products[0][:image_path])])
p2 = Product.create([title:products[1][:title],description:products[1][:description],quantity:20,price:30,image:open(products[1][:image_path])])
puts "create products"

# 1_year_product
products =[{title:"得到：槽边往事",
	        description: "一年又一年，认识新的世界",
	        image_path: "#{Rails.root}/app/assets/images/1_year/biancaowangshi.png"},

	        {title:"得到：通往财富自由之路",
	        description: "一年又一年，认识新的世界",
	        image_path: "#{Rails.root}/app/assets/images/1_year/lixiaolai.png"}
]
p1 = Product.create([title:products[0][:title],description:products[0][:description],quantity:20,price:30,image:open(products[0][:image_path])])
p2 = Product.create([title:products[1][:title],description:products[1][:description],quantity:20,price:30,image:open(products[1][:image_path])])
puts "create products"

# 7_year_product
products =[{title:"新生大学",
	        description: "七年就是一辈子",
	        image_path: "#{Rails.root}/app/assets/images/7_year/xinshengdaxue.png"},

	        {title:"全栈营",
	        description: "成为想要的自己",
	        image_path: "#{Rails.root}/app/assets/images/7_year/quanzhanying.png"}
]
p1 = Product.create([title:products[0][:title],description:products[0][:description],quantity:20,price:30,image:open(products[0][:image_path])])
p2 = Product.create([title:products[1][:title],description:products[1][:description],quantity:20,price:30,image:open(products[1][:image_path])])
puts "create products"

# create_products = for i in 1..40 do
# groups_test = products[rand(0..7)]
# Product.create!(title:groups_test[0],description:groups_test[0], quantity: rand(0..20), price: rand(10..50)*100+99, image:open(products[0][:image_path])])
# end
