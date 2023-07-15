class AutoGenerateUuids < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :id, from: nil, to: 'gen_random_uuid()'

    change_column_default :tournaments, :id, from: nil, to: 'gen_random_uuid()'

    change_column_default :games, :id, from: nil, to: 'gen_random_uuid()'
  end
end
