require 'spec_helper'

describe Team do
   before(:all) { @team = Team.new "Equipo" }

  subject { @team}
  it { should respond_to(:team_name, :filter_by_position, :add_player, :to_s)}

 describe "#add_player" do
    context "with correct params" do
      it "should add a player" do
        @team.add_player "Luis", 30
        expect(@team.players.count).to eql 1
      end
    end
    context "with incorrect params" do
      it "should  throw an error" do
        expect {@team.add_player "Asdasd"}.to raise_error ArgumentError
      end
    end

    context "with existing player" do
      it "should not add player" do
        num_players = @team.players.count
        @team.add_player "Luis", 30
        expect(@team.players.count).to eql num_players
      end
    end
  end

 describe "#filter_by_position" do
    it "should returns list of player" do
      found = @team.filter_by_position(30)
      first_player = @team.players.first
      expect(found.any?).to be_true
      expect(found.first).to eql first_player
    end
    it "should returns empty array" do
      expect(@team.filter_by_position(58).empty?).to be_true
    end
  end

 describe "#remove_player" do
    context "with correct params" do
      it "should remove player" do
        @team.remove_player "Luis"
        expect(@team.players.count).to eql 0
      end
    end
    context "with incorrect params" do
      it "should return empty array" do
        remove_players = @team.remove_player "Charlin"
        expect(remove_players.empty?).to be_true
      end
    end
  end
end