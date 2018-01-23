Rig.destroy_all
Fixture.destroy_all

f1 = Fixture.create :x => 90, :y => 10, :position_number => 1
f2 = Fixture.create :x => 180, :y => 10, :position_number => 2
f3 = Fixture.create :x => 270, :y => 10, :position_number => 3
f4 = Fixture.create :x => 90, :y => 100, :position_number => 4
f5 = Fixture.create :x => 180, :y => 100, :position_number => 5
f6 = Fixture.create :x => 270, :y => 100, :position_number => 6
f7 = Fixture.create :x => 90, :y => 190, :position_number => 7
f8 = Fixture.create :x => 180, :y => 190, :position_number => 8
f9 = Fixture.create :x => 270, :y => 190, :position_number => 9

f11 = Fixture.create :x => 180, :y => 20, :position_number => 1
f12 = Fixture.create :x => 211, :y => 26, :position_number => 2
f13 = Fixture.create :x => 237, :y => 43, :position_number => 3
f14 = Fixture.create :x => 254, :y => 69, :position_number => 4
f15 = Fixture.create :x => 260, :y => 100, :position_number => 5






r1 = Rig.create :name => "3 × 3 grid", :width => 360, :height => 200

r1.fixtures << f1 << f2 << f3 << f4 << f5 << f6 << f7 << f8 << f9


r2 = Rig.create :name => "16 element circle", :width => 360, :height => 200

r2.fixtures << f11 << f12 << f13 << f14 << f15
