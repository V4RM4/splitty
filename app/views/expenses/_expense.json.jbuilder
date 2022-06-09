json.extract! expense, :id, :expense_name, :expense_amount, :expense_datetime, :expense_notes, :expense_group_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
