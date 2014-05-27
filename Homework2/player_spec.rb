describe Player do
    describe "#new" do

        let(:player) { Player.new }


        it "should return a player instance" do
            expect(player).to be_kind_of(Player)
        end

        it "should respond to #name" do
            expect(triangle).to respond_to(:name)
        end
        it "should respond to #position"
            expect(triangle).to respond_to(:position)
        it "should respond to #c"
    end
end
