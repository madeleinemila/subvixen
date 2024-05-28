module RigHelper
	def get_rig(id)
    if (id == 1)
      name = "3 x 3 grid"
      width = 360
      height = 200
      fixtures = [
        Fixture.new(1, 90, 10, 1),
        Fixture.new(2, 180, 10, 2),
        Fixture.new(3, 270, 10, 3),
        Fixture.new(4, 90, 100, 4),
        Fixture.new(5, 180, 100, 5),
        Fixture.new(6, 270, 100, 6),
        Fixture.new(7, 90, 190, 7),
        Fixture.new(8, 180, 190, 8),
        Fixture.new(9, 270, 190, 9),
      ]
      rig = Rig.new(id, name, width, height, fixtures)
    end
    
    if (id == 2)
      name = "16 fixture circle"
      width = 360
      height = 200
      fixtures = [
        Fixture.new(11, 180, 20, 1),
        Fixture.new(12, 211, 26, 2),
        Fixture.new(13, 237, 43, 3),
        Fixture.new(14, 254, 69, 4),
        Fixture.new(15, 260, 100, 5),
        Fixture.new(16, 254, 131, 6),
        Fixture.new(17, 237, 157, 7),
        Fixture.new(18, 211, 174, 8),
        Fixture.new(19, 180, 180, 9),
        Fixture.new(20, 149, 174, 10),
        Fixture.new(21, 123, 157, 11),
        Fixture.new(22, 106, 131, 12),
        Fixture.new(23, 100, 100, 13),
        Fixture.new(24, 106, 69, 14),
        Fixture.new(25, 123, 43, 15),
        Fixture.new(26, 149, 26, 16),
      ]
      rig = Rig.new(id, name, width, height, fixtures)
    end

		rig
	end
end
