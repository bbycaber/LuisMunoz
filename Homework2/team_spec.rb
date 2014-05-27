describe Team do
    describe "#new" do

        let(:team) { Team.new }

        it "should return a team instance" do
            expect(team).to be_kind_of(Team)
        end

        it "should respond to #name" do
            expect(triangle).to respond_to(:name)
        end
     
    end

   
end
