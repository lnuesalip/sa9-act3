require "/home/lealip/workspace-3081/sa9-act3/lib/car.rb"

RSpec.describe Car do
  let(:porsche) { Car.new('Porsche 718 Cayman GTS 4.0', 'Black', 90300, 10000) }

  describe "#set_price" do
    it "sets the price of the car" do
      porsche.set_price(82000)
      expect(porsche.price).to eq(82000)
    end
  end

  describe "#paint" do
    it "paints the car a new color" do
      porsche.paint("Green")
      expect(porsche.color).to eq("Green")
    end
  end

  describe "#show_car_info" do
    it "displays current info of the car" do
      porsche.travel(6500)
      porsche.set_price(82000)
      expect(porsche.show_car_info).to eq("\nMake and Model: Porsche 718 Cayman GTS 4.0,\nColor: Black,\nPrice: $82000,\nMileage: 16500 miles")
    end
  end

  describe "#travel" do
    it "makes the car travel some distance" do
      porsche.travel(6500)
      expect(porsche.mileage).to eq(16500)
    end
  end
end
