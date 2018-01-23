Rig.destroy_all
Fixture.destroy_all

# 3 x 3 grid
f1 = Fixture.create :x => 90, :y => 10, :position_number => 1
f2 = Fixture.create :x => 180, :y => 10, :position_number => 2
f3 = Fixture.create :x => 270, :y => 10, :position_number => 3
f4 = Fixture.create :x => 90, :y => 100, :position_number => 4
f5 = Fixture.create :x => 180, :y => 100, :position_number => 5
f6 = Fixture.create :x => 270, :y => 100, :position_number => 6
f7 = Fixture.create :x => 90, :y => 190, :position_number => 7
f8 = Fixture.create :x => 180, :y => 190, :position_number => 8
f9 = Fixture.create :x => 270, :y => 190, :position_number => 9

# 16 element circle
f11 = Fixture.create :x => 180, :y => 20, :position_number => 1
f12 = Fixture.create :x => 211, :y => 26, :position_number => 2
f13 = Fixture.create :x => 237, :y => 43, :position_number => 3
f14 = Fixture.create :x => 254, :y => 69, :position_number => 4
f15 = Fixture.create :x => 260, :y => 100, :position_number => 5
f16 = Fixture.create :x => 254, :y => 131, :position_number => 6
f17 = Fixture.create :x => 237, :y => 157, :position_number => 7
f18 = Fixture.create :x => 211, :y => 174, :position_number => 8
f19 = Fixture.create :x => 180, :y => 180, :position_number => 9
f20 = Fixture.create :x => 149, :y => 174, :position_number => 10
f21 = Fixture.create :x => 123, :y => 157, :position_number => 11
f22 = Fixture.create :x => 106, :y => 131, :position_number => 12
f23 = Fixture.create :x => 100, :y => 100, :position_number => 13
f24 = Fixture.create :x => 106, :y => 69, :position_number => 14
f25 = Fixture.create :x => 123, :y => 43, :position_number => 15
f26 = Fixture.create :x => 149, :y => 26, :position_number => 16






r1 = Rig.create :name => "3 × 3 grid", :width => 360, :height => 200

r1.fixtures << f1 << f2 << f3 << f4 << f5 << f6 << f7 << f8 << f9


r2 = Rig.create :name => "16 fixture circle", :width => 360, :height => 200

r2.fixtures << f11 << f12 << f13 << f14
r2.fixtures << f15 << f16 << f17 << f18
r2.fixtures << f19 << f20 << f21 << f22
r2.fixtures << f23 << f24 << f25 << f26
