# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121214063002) do

  create_table "authentications", :force => true do |t|
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "authentications", ["user_id"], :name => "index_authentications_on_user_id"

  create_table "comments", :force => true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "list_item_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "comments", ["list_item_id"], :name => "index_comments_on_list_item_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "group_users", :force => true do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "group_users", ["group_id"], :name => "index_group_users_on_group_id"
  add_index "group_users", ["user_id"], :name => "index_group_users_on_user_id"

  create_table "groups", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "list_items", :force => true do |t|
    t.integer  "list_id"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "list_items", ["list_id"], :name => "index_list_items_on_list_id"

  create_table "list_users", :force => true do |t|
    t.integer  "list_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "list_users", ["list_id"], :name => "index_list_users_on_list_id"
  add_index "list_users", ["user_id"], :name => "index_list_users_on_user_id"

  create_table "lists", :force => true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "lists", ["group_id"], :name => "index_lists_on_group_id"
  add_index "lists", ["user_id"], :name => "index_lists_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.text     "image_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
