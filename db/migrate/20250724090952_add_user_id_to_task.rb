class AddUserIdToTask < ActiveRecord::Migration[8.0]
  def change
    add_reference :tasks, :user, foreign_key: true, index: true
    reversible do |dir|
      dir.up do
        user = User.first
        if user
          execute <<-SQL.squish
            UPDATE tasks
            SET user_id = #{user.id}
            WHERE user_id IS NULL;
          SQL
        end
      end
    end
  end
end
