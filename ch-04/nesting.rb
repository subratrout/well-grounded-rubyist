# one can nest a class definition inside a module definition
# 
module Tools
  class Hammer
  end
end

# To create instance of Hammer you have to use namespace
# 
h = Tools::Hammer.new