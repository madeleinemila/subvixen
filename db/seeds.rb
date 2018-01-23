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

r1 = Rig.create :name => "3 × 3 grid", :width => 360, :height => 200;

r1.fixtures << f1 << f2 << f3 << f4 << f5 << f6 << f7 << f8 << f9
