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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180402034033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessment_types", force: :cascade do |t|
    t.string "name"
    t.integer "default_monthly_repeat"
    t.bigint "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_assessment_types_on_business_id"
  end

  create_table "assessments", force: :cascade do |t|
    t.bigint "client_id"
    t.bigint "user_id"
    t.bigint "assessment_type_id"
    t.date "assessment_completed"
    t.date "assessment_expired"
    t.string "status"
    t.string "notes"
    t.bigint "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "attachment_file_name"
    t.string "attachment_content_type"
    t.integer "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.index ["assessment_type_id"], name: "index_assessments_on_assessment_type_id"
    t.index ["business_id"], name: "index_assessments_on_business_id"
    t.index ["client_id"], name: "index_assessments_on_client_id"
    t.index ["user_id"], name: "index_assessments_on_user_id"
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "website"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "postcode"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.bigint "location_id"
    t.string "room"
    t.bigint "job_type_id"
    t.string "job_notes"
    t.string "notes"
    t.bigint "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.index ["business_id"], name: "index_clients_on_business_id"
    t.index ["job_type_id"], name: "index_clients_on_job_type_id"
    t.index ["location_id"], name: "index_clients_on_location_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "business_name"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "fax"
    t.string "email"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.bigint "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_customers_on_business_id"
  end

  create_table "job_types", force: :cascade do |t|
    t.string "name"
    t.integer "default_weekly_visits"
    t.bigint "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_job_types_on_business_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.bigint "client_id"
    t.bigint "job_type_id"
    t.string "status"
    t.integer "visit_number"
    t.integer "weekly_visit_total"
    t.bigint "user_id"
    t.date "completed_date"
    t.string "notes"
    t.bigint "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "completed_by_id"
    t.index ["business_id"], name: "index_jobs_on_business_id"
    t.index ["client_id"], name: "index_jobs_on_client_id"
    t.index ["job_type_id"], name: "index_jobs_on_job_type_id"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "name"
    t.string "phone"
    t.string "fax"
    t.string "email"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.bigint "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_locations_on_business_id"
    t.index ["customer_id"], name: "index_locations_on_customer_id"
  end

  create_table "locations_users", force: :cascade do |t|
    t.integer "location_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_locations_users_on_location_id"
    t.index ["user_id"], name: "index_locations_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.integer "invited_by_id"
    t.integer "invitations_count", default: 0
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer "business_id"
    t.bigint "location_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_users_on_invitations_count"
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_users_on_invited_by_type_and_invited_by_id"
    t.index ["location_id"], name: "index_users_on_location_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assessment_types", "businesses"
  add_foreign_key "assessments", "assessment_types"
  add_foreign_key "assessments", "businesses"
  add_foreign_key "assessments", "clients"
  add_foreign_key "assessments", "users"
  add_foreign_key "clients", "businesses"
  add_foreign_key "clients", "job_types"
  add_foreign_key "clients", "locations"
  add_foreign_key "customers", "businesses"
  add_foreign_key "job_types", "businesses"
  add_foreign_key "jobs", "businesses"
  add_foreign_key "jobs", "clients"
  add_foreign_key "jobs", "job_types"
  add_foreign_key "jobs", "users"
  add_foreign_key "locations", "businesses"
  add_foreign_key "locations", "customers"
  add_foreign_key "users", "locations"
end
