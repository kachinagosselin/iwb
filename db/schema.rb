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

ActiveRecord::Schema.define(:version => 20130409171807) do

  create_table "assets", :force => true do |t|
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.string   "document_remote_url"
    t.integer  "project_id"
  end

  create_table "contacts", :force => true do |t|
    t.integer  "user_id"
    t.string   "contact_name"
    t.integer  "contact_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "messages", :force => true do |t|
    t.string   "to_user_id"
    t.string   "from_user_id"
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.boolean  "sent"
    t.integer  "thread_count"
    t.string   "folder"
    t.integer  "parent_id"
    t.boolean  "read"
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "projects", :force => true do |t|
    t.text     "overview"
    t.string   "subject_tag"
    t.string   "city"
    t.string   "country"
    t.string   "continent"
    t.string   "partner_organizations"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "name"
    t.string   "main_image_file_name"
    t.string   "main_image_content_type"
    t.integer  "main_image_file_size"
    t.datetime "main_image_updated_at"
    t.integer  "moderator_id"
    t.string   "summary"
    t.text     "community_overview"
    t.string   "community_image_file_name"
    t.string   "community_image_content_type"
    t.integer  "community_image_file_size"
    t.datetime "community_image_updated_at"
    t.string   "tech_image_file_name"
    t.string   "tech_image_content_type"
    t.integer  "tech_image_file_size"
    t.datetime "tech_image_updated_at"
    t.string   "quote"
  end

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.string   "summary"
    t.string   "skill"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "project_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
