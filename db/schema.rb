# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_318_163_044) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'blogs', force: :cascade do |t|
    t.integer 'user_id'
    t.string 'title'
    t.string 'body'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'groups', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'spanish_translation_groups', force: :cascade do |t|
    t.integer 'group_id'
    t.integer 'spanish_translation_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'spanish_translations', force: :cascade do |t|
    t.string 'spanish_text'
    t.string 'english_text'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'translation_histories', force: :cascade do |t|
    t.integer 'user_id'
    t.integer 'spanish_translation_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'lookup_count', default: 1, null: false
  end

  create_table 'user_spanish_translations', force: :cascade do |t|
    t.integer 'user_id'
    t.integer 'spanish_translation_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email'
    t.string 'password_digest'
    t.string 'first_name'
    t.string 'last_name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
