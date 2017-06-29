class Tree < ActiveRecord::Base
  #belongs_to :hangman

  def self.build_tree
    newtree  = "\n"
    newtree += " ___\n"
    newtree += " | |\n"
    (1..5).each do
      newtree += "   |\n"
    end
    newtree += "  --\n"
    newtree
  end

  def self.new_tree_arr
    newtree = ["\n"]
    newtree << [" ","_","_","_","\n"]
    newtree << [" ","|"," ","|","\n"]
    (1..5).each do
      newtree << [" "," "," ","|","\n"]
    end
    newtree << [" "," ","-","-","\n"]
    newtree
  end


  def self.mistake_tree_arr
    [[" ", "O", " "],
     ["(", "|", ")"],
     [" ", "|", " "],
     ["<", " ", ">"]]
  end

  def self.add_part_to_tree(body_parts,new_hangman)
    new_tree = self.new_tree_arr
    Tree.mistake_tree_arr.each_with_index do |v, row|
      v.each_with_index do |vv, column|
        if body_parts.include?(Tree.mistake_tree_arr[row][column])
          new_tree[row+2][column] = Tree.mistake_tree_arr[row][column]
        end
      end
    end
    new_hangman.tree = new_tree.join('')
  end

end
