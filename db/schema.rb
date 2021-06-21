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

ActiveRecord::Schema.define(version: 2021_06_21_204257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "backgrounds", force: :cascade do |t|
    t.string "site_name"
    t.string "location"
    t.string "property_count"
    t.string "site_type"
    t.bigint "report_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["report_id"], name: "index_backgrounds_on_report_id"
  end

  create_table "cellars", force: :cascade do |t|
    t.string "location"
    t.string "postcode"
    t.string "ngr"
    t.string "flooding_register"
    t.string "wirs_register"
    t.string "nearest_node"
    t.string "freeboard"
    t.string "comments"
    t.bigint "report_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["report_id"], name: "index_cellars_on_report_id"
  end

  create_table "connections", force: :cascade do |t|
    t.string "development"
    t.string "dwf"
    t.string "thirty_year"
    t.string "node_ref"
    t.string "freeboard"
    t.string "receiving_sewer"
    t.string "pfc"
    t.string "pipe"
    t.string "peak_flow"
    t.string "pumped"
    t.bigint "report_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["report_id"], name: "index_connections_on_report_id"
  end

  create_table "executives", force: :cascade do |t|
    t.string "project_name"
    t.string "project_number"
    t.string "potential_impact"
    t.string "date"
    t.bigint "report_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["report_id"], name: "index_executives_on_report_id"
  end

  create_table "flows", force: :cascade do |t|
    t.string "flow_modelled"
    t.string "include"
    t.string "comments"
    t.bigint "report_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["report_id"], name: "index_flows_on_report_id"
  end

  create_table "incidents", force: :cascade do |t|
    t.string "location"
    t.string "postcode"
    t.string "ngr"
    t.string "hfrr"
    t.string "historical_flooding"
    t.string "wirs"
    t.string "nearest_node"
    t.string "modelled_risk"
    t.string "comments"
    t.bigint "report_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["report_id"], name: "index_incidents_on_report_id"
  end

  create_table "overflows", force: :cascade do |t|
    t.string "cso_name"
    t.string "permit"
    t.string "model"
    t.string "edm_annual_spill_freq"
    t.string "edm_annual_spill_duration"
    t.string "edm_bathing_spill_freq"
    t.string "edm_bathing_spill_duration"
    t.string "model_annual_spill_freq"
    t.string "model_annual_spill_duration"
    t.string "model_annual_spill_volume"
    t.string "model_bathing_spill_freq"
    t.string "model_bathing_spill_duration"
    t.string "model_bathing_spill_volume"
    t.string "comments"
    t.bigint "report_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["report_id"], name: "index_overflows_on_report_id"
  end

  create_table "pumps", force: :cascade do |t|
    t.string "station_ref"
    t.string "name"
    t.string "overflow_ref"
    t.string "permitted_rate"
    t.string "modelled_rate"
    t.string "run_time"
    t.string "comments"
    t.bigint "report_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["report_id"], name: "index_pumps_on_report_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "project_name"
    t.string "project_number"
    t.string "document_title"
    t.string "document_number"
    t.string "document_status"
    t.string "date"
    t.string "client_name"
    t.string "client_number"
    t.string "project_manager"
    t.string "author"
    t.string "checked_by"
    t.string "description"
    t.text "executive_summary"
    t.text "project_background"
    t.text "project_objective"
    t.text "proposed_developments"
    t.text "flooding_locations"
    t.text "data_assessment"
    t.text "conclusion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.string "revision"
    t.text "cellared_property"
    t.text "catchment_overflow"
    t.text "pumping_station"
    t.text "catchment_tank"
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "tanks", force: :cascade do |t|
    t.string "tank_ref"
    t.string "name"
    t.string "overflow_ref"
    t.string "online"
    t.string "permitted_storage"
    t.string "effective_storage"
    t.string "annual_volume"
    t.string "comments"
    t.bigint "report_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["report_id"], name: "index_tanks_on_report_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "backgrounds", "reports"
  add_foreign_key "cellars", "reports"
  add_foreign_key "connections", "reports"
  add_foreign_key "executives", "reports"
  add_foreign_key "flows", "reports"
  add_foreign_key "incidents", "reports"
  add_foreign_key "overflows", "reports"
  add_foreign_key "pumps", "reports"
  add_foreign_key "reports", "users"
  add_foreign_key "tanks", "reports"
end
