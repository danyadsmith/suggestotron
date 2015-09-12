class PopulateVoteCounts < ActiveRecord::Migration

  def up
    Topic.find_each { |topic| Topic.reset_counters(topic.id, :votes) }
  end

end
