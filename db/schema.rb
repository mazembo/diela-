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

ActiveRecord::Schema.define(:version => 20101106174818) do

  create_table "authors", :force => true do |t|
    t.string   "author_name"
    t.string   "email"
    t.string   "organisation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors_papers", :id => false, :force => true do |t|
    t.integer  "author_id"
    t.integer  "paper_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commentaires", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "papier_id"
    t.text     "text"
    t.string   "user_ip"
    t.string   "user_agent"
    t.string   "where_from"
    t.integer  "position"
    t.string   "referrer"
    t.string   "site_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "paper_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "text"
    t.string   "user_ip"
    t.string   "user_agent"
    t.string   "where_from"
    t.integer  "position",   :default => 0
    t.string   "referrer"
    t.string   "site_url"
  end

  add_index "comments", ["paper_id"], :name => "index_comments_on_paper_id"

  create_table "contacts", :force => true do |t|
    t.string   "Name"
    t.string   "Email"
    t.string   "Where_From"
    t.text     "Message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "labelings", :force => true do |t|
    t.integer  "papier_id"
    t.integer  "label_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "labelings", ["label_id"], :name => "index_labelings_on_label_id"
  add_index "labelings", ["papier_id"], :name => "index_labelings_on_papier_id"

  create_table "labels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

  create_table "papers", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.string   "picture"
    t.text     "description"
    t.string   "category"
    t.string   "author_name"
    t.string   "author_email"
    t.string   "author_organisation"
    t.string   "language"
    t.integer  "position",            :default => 0
    t.datetime "published_date"
    t.string   "picture2"
    t.string   "permalink"
    t.integer  "comments_count"
    t.datetime "published_at"
  end

  create_table "papiers", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "body"
    t.boolean  "admin"
    t.string   "picture"
    t.string   "picture2"
    t.text     "description"
    t.string   "category"
    t.string   "author_name"
    t.string   "author_email"
    t.string   "author_organisation"
    t.string   "language"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
    t.integer  "commentaires_count"
    t.datetime "published_at"
  end

  create_table "sheets", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spam_reports", :force => true do |t|
    t.integer  "comment_id"
    t.string   "comment_ip"
    t.string   "comment_site_url"
    t.string   "comment_name"
    t.string   "user_ip"
    t.datetime "confirmed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "paper_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taggings", ["paper_id"], :name => "index_taggings_on_paper_id"
  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

end
