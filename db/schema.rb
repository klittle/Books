# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100223055637) do

  create_table "authors", :force => true do |t|
    t.string   "website"
    t.string   "itunes"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "author_first_name"
    t.integer  "book_id"
    t.string   "author_last_name"
  end

  create_table "bookcharacters", :force => true do |t|
    t.string   "animal_category"
    t.string   "animal_type"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "author_last_name"
    t.string   "author_first_name"
    t.integer  "isbn"
    t.integer  "amazon_id"
    t.string   "author_website"
    t.boolean  "animal_category"
    t.boolean  "animal_type"
    t.decimal  "price"
    t.text     "description"
    t.string   "cover_picture"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "book_id"
    t.integer  "author_id"
    t.string   "amazon_url"
    t.string   "itunes_url"
  end

  create_table "reviewers", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "email"
    t.string   "log_in"
    t.integer  "password"
    t.integer  "reviewer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "child_reviewer_id"
    t.string   "child_reviewer_name"
    t.string   "parent_reviewer_name"
  end

  create_table "reviews", :force => true do |t|
    t.integer  "book_id"
    t.text     "review"
    t.integer  "review_rating"
    t.integer  "reviewer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email" 
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", :force => true do |t|
    t.string   "book_id"
    t.integer  "amazon_id"
    t.integer  "isbn"
    t.decimal  "price"
    t.string   "amazon_jpg"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "amazon_url"
  end

end
