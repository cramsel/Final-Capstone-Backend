class AddSequenceChecker < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :type, :boolean
    #true will equal an audio url, false will equal an array for
    # the sequencer

  end
end
