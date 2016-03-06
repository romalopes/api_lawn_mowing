class Lawn < ActiveRecord::Base
	has_many :mowers

  validates_presence_of :width, :height
  validates :width, numericality: { only_integer: true }
  validates :height, numericality: { only_integer: true }

  def to_s
  	return "id:#{id} width:#{width} height:#{height} mower count:#{mowers.count}"
  end

  def array_positions 
  	array = []
  	array << "#{self.width} #{self.height}"
  	mowers.each_with_index do |mower, index|
  		array << "#{mower.x} #{mower.y} #{mower.headings}"
  		array << "#{mower.commands}"
  	end
  	array
  end

  def set_mowers_values(lawn_mowers_positions)
  	puts "\n\n\n\n-------- #{lawn_mowers_positions}  #{lawn_mowers_positions.count}-----"
  	mowers.each_with_index do |mower, index|
  		array = lawn_mowers_positions[index + 1]
  		puts "array:#{array}"
  		x = array[0]
  		y = array[1]
  		headings = array[2]
  		commands = array[3]

  		mower.update_attributes(x: x, y: y, headings: headings, commands: commands)
  	end
  end
end
