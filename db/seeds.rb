# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# products.delete_all

create_admin_account = User.create([email: 'admin@gmail.com', password: '111111', password_confirmation: '111111', is_admin: 'true'])
puts "Admin account created."
create_normal_account = User.create([email: 'example@gmail.com', password: '111111', password_confirmation: '111111', is_admin: 'false'])
puts "Normal account created."

# 1_hour_product
products =[{title:"代购咖啡",
	        description: "珍贵的时间留给重要的事情",
          category: "1_hour",
	        image_path: "#{Rails.root}/app/assets/images/1_hour/coffee.png",
					is_hidden: false},

	        {title:"代排队",
	        description: "珍贵的时间留给重要的事情",
          category: "1_hour",
	        image_path: "#{Rails.root}/app/assets/images/1_hour/paidui.png",
					is_hidden: false}
]
p1 = Product.create([title:products[0][:title],description:products[0][:description],category:products[0][:category],quantity:20,price:10,image:open(products[0][:image_path]),is_hidden:products[0][:is_hidden]])
p2 = Product.create([title:products[1][:title],description:products[1][:description],category:products[1][:category],quantity:20,price:10,image:open(products[1][:image_path]),is_hidden:products[0][:is_hidden]])
puts "create products"

# 1_day_product
products =[{title:"国刚说课",
	        description: "一天里的真知灼见",
          category: "1_day",
	        image_path: "#{Rails.root}/app/assets/images/1_day/guogangshuoke.png",
					is_hidden: false},

	        {title:"说杂志",
	        description: "转述“顶级外刊”最有价值的封面文章",
          category: "1_day",
	        image_path: "#{Rails.root}/app/assets/images/1_day/shuozazhi.jpg",
					is_hidden: false}
]
p1 = Product.create([title:products[0][:title],description:products[0][:description],category:products[0][:category],quantity:20,price:10,image:open(products[0][:image_path]),is_hidden:products[0][:is_hidden]])
p2 = Product.create([title:products[1][:title],description:products[1][:description],category:products[1][:category],quantity:20,price:10,image:open(products[1][:image_path]),is_hidden:products[0][:is_hidden]])
puts "create products"


# 1_week_product
products =[{title:"刻意练习",
	        description: "不积跬步无以至千里",
          category: "1_week",
	        image_path: "#{Rails.root}/app/assets/images/1_week/keyinglianxi.png",
					is_hidden: false},

	        {title:"人类简史",
	        description: "一周看懂一本书",
          category: "1_week",
	        image_path: "#{Rails.root}/app/assets/images/1_week/renleijianshi.png",
					is_hidden: false}
]
p1 = Product.create([title:products[0][:title],description:products[0][:description],category:products[0][:category],quantity:20,price:10,image:open(products[0][:image_path]),is_hidden:products[0][:is_hidden]])
p2 = Product.create([title:products[1][:title],description:products[1][:description],category:products[1][:category],quantity:20,price:10,image:open(products[1][:image_path]),is_hidden:products[0][:is_hidden]])
puts "create products"


# 3_month_product
products =[{title:"从零开始做产品",
	        description: "三个月带来新的可能",
          category: "3_month",
	        image_path: "#{Rails.root}/app/assets/images/3_month/youkeng_chanping.png",
					is_hidden: false},

	        {title:"Python 入门教程",
	        description: "三个月带来新的可能",
          category: "3_month",
	        image_path: "#{Rails.root}/app/assets/images/3_month/kaizhixuetang_python.png",
					is_hidden: false}
]
p1 = Product.create([title:products[0][:title],description:products[0][:description],category:products[0][:category],quantity:20,price:10,image:open(products[0][:image_path]),is_hidden:products[0][:is_hidden]])
p2 = Product.create([title:products[1][:title],description:products[1][:description],category:products[1][:category],quantity:20,price:10,image:open(products[1][:image_path]),is_hidden:products[0][:is_hidden]])
puts "create products"


# 1_year_product
products =[{title:"李翔商业内刊",
	        description: "高质量的商业知识服务",
          category: "1_year",
	        image_path: "#{Rails.root}/app/assets/images/1_year/lixiang.png",
					is_hidden: false},

	        {title:"李笑来：通往财富自由之路",
	        description: "一年里，一周更新一个观念，通往财富自由",
          category: "1_year",
	        image_path: "#{Rails.root}/app/assets/images/1_year/lixiaolai.png",
					is_hidden: false}
]
p1 = Product.create([title:products[0][:title],description:products[0][:description],category:products[0][:category],quantity:20,price:10,image:open(products[0][:image_path]),is_hidden:products[0][:is_hidden]])
p2 = Product.create([title:products[1][:title],description:products[1][:description],category:products[1][:category],quantity:20,price:10,image:open(products[1][:image_path]),is_hidden:products[0][:is_hidden]])
puts "create products"


# 7_year_product
products =[{title:"新生大学",
	        description: "七年就是一辈子",
          category: "7_year",
	        image_path: "#{Rails.root}/app/assets/images/7_year/xinshengdaxue.png",
					is_hidden: false},

	        {title:"全栈营",
	        description: "成为想要的自己",
          category: "7_year",
	        image_path: "#{Rails.root}/app/assets/images/7_year/quanzhanying.png",
					is_hidden: false}
]
p1 = Product.create([title:products[0][:title],description:products[0][:description],category:products[0][:category],quantity:20,price:10,image:open(products[0][:image_path]),is_hidden:products[0][:is_hidden]])
p2 = Product.create([title:products[1][:title],description:products[1][:description],category:products[1][:category],quantity:20,price:10,image:open(products[1][:image_path]),is_hidden:products[0][:is_hidden]])
puts "create products"

# reviews = [product_id: 1,
# 	title: "My Second Post",
# 	created_at: Time.now,
# 	body:
# 	%Q{### My List of Things To Do! Here is the list of things I wish to do!
# 		* write more posts
# 		* write even more posts
# 		* write even more posts!}
# ]
# r1 = Review.create([title:reviews[0][:title],created_at:reviews[0][:created_at],body:reviews[0][:body]])




# create_products = for i in 1..40 do
# groups_test = products[rand(0..7)]
# Product.create!(title:groups_test[0],description:groups_test[0], quantity: rand(0..20), price: rand(10..50)*100+99, image:open(products[0][:image_path])])
# end
