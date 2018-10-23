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

ActiveRecord::Schema.define(version: 20181023133623) do

  create_table "artifacts", force: :cascade do |t|
    t.integer "project_id"
    t.integer "document_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conts", force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "features", force: :cascade do |t|
    t.integer "project_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "project_id"
    t.integer "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ocont2s", force: :cascade do |t|
    t.integer "rfp2_id"
    t.integer "other_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oconts", force: :cascade do |t|
    t.integer "rfp_id"
    t.integer "other_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "otherconts", force: :cascade do |t|
    t.string "name"
    t.string "body"
    t.string "from"
    t.string "through"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "others", force: :cascade do |t|
    t.string "name"
    t.string "body"
    t.string "from"
    t.string "through"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "group_number"
    t.date "effective_date"
    t.string "group_name"
    t.string "locations"
    t.integer "estimated_employees"
    t.decimal "deductible"
    t.string "eligibility"
    t.integer "term_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "notes"
    t.boolean "to_group"
    t.boolean "to_employees"
    t.boolean "logo"
    t.boolean "no_logo"
    t.boolean "elig_now"
    t.boolean "elig_later"
    t.string "brokername"
    t.date "id_date"
  end

  create_table "rf2conts", force: :cascade do |t|
    t.integer "rfp2_id"
    t.integer "cont_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rfconts", force: :cascade do |t|
    t.integer "rfp_id"
    t.integer "cont_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rfp2s", force: :cascade do |t|
    t.string "pbm"
    t.string "name"
    t.string "eff_date"
    t.string "network"
    t.string "prep"
    t.string "carrier"
    t.decimal "inbenefits"
    t.decimal "indeductable"
    t.string "incoinsurance"
    t.decimal "inoop"
    t.decimal "inoffice_visit"
    t.decimal "inspecialist"
    t.decimal "inlab_xray"
    t.decimal "inpreventative"
    t.decimal "inteladoc"
    t.decimal "inurgent_care"
    t.decimal "inprescription"
    t.decimal "iner"
    t.decimal "outbenefits"
    t.decimal "outdeductable"
    t.string "outcoinsurance"
    t.decimal "outoop"
    t.decimal "outoffice_visit"
    t.decimal "outspecialist"
    t.decimal "outlab_xray"
    t.decimal "outpreventative"
    t.decimal "outteladoc"
    t.decimal "outurgent_care"
    t.decimal "outprescription"
    t.decimal "outer"
    t.decimal "inbenefits2"
    t.decimal "indeductable2"
    t.string "incoinsurance2"
    t.decimal "inoop2"
    t.decimal "inoffice_visit2"
    t.decimal "inspecialist2"
    t.decimal "inlab_xray2"
    t.decimal "inpreventative2"
    t.decimal "inteladoc2"
    t.decimal "inurgent_care2"
    t.decimal "inprescription2"
    t.decimal "iner2"
    t.decimal "outbenefits2"
    t.decimal "outdeductable2"
    t.string "outcoinsurance2"
    t.decimal "outoop2"
    t.decimal "outoffice_visit2"
    t.decimal "outspecialist2"
    t.decimal "outlab_xray2"
    t.decimal "outpreventative2"
    t.decimal "outteladoc2"
    t.decimal "outurgent_care2"
    t.decimal "outprescription2"
    t.decimal "outer2"
    t.decimal "administrator"
    t.decimal "ahdi"
    t.decimal "urcm"
    t.decimal "ppo"
    t.decimal "stop_loss"
    t.decimal "teladoc_consult"
    t.decimal "lab_card"
    t.decimal "hipaa"
    t.decimal "broker_fee"
    t.decimal "other_fee"
    t.decimal "total_admin"
    t.string "plan_platform"
    t.decimal "specific_deductable"
    t.decimal "mar"
    t.decimal "mlr"
    t.integer "employee"
    t.decimal "inempfee"
    t.decimal "outempfee"
    t.integer "ee_sp"
    t.decimal "inee_spfee"
    t.decimal "outee_spfee"
    t.integer "ee_child"
    t.decimal "inee_childfee"
    t.decimal "outee_childfee"
    t.integer "family"
    t.decimal "infamilyfee"
    t.decimal "outfamilyfee"
    t.decimal "intransplant"
    t.decimal "outtransplant"
    t.decimal "inmac"
    t.decimal "outmac"
    t.decimal "inagg_premium"
    t.decimal "outagg_premium"
    t.decimal "intpsp"
    t.decimal "inmfct"
    t.decimal "outtpsp"
    t.decimal "outmfct"
    t.integer "employee2"
    t.decimal "inempfee2"
    t.decimal "outempfee2"
    t.integer "ee_sp2"
    t.decimal "inee_spfee2"
    t.decimal "outee_spfee2"
    t.integer "ee_child2"
    t.decimal "inee_childfee2"
    t.decimal "outee_childfee2"
    t.integer "family2"
    t.decimal "infamilyfee2"
    t.decimal "outfamilyfee2"
    t.integer "total"
    t.decimal "intotal"
    t.decimal "outtotal"
    t.decimal "intmal"
    t.decimal "outtmal"
    t.decimal "intafc"
    t.decimal "outtfac"
    t.decimal "intaal"
    t.decimal "outtall"
    t.decimal "inmax_total"
    t.decimal "outmax_total"
    t.decimal "inempsum"
    t.decimal "outempsum"
    t.decimal "inee_spsum"
    t.decimal "outee_spsum"
    t.decimal "inee_childsum"
    t.decimal "outee_childsum"
    t.decimal "infamilysum"
    t.decimal "outfamilysum"
    t.decimal "startup"
    t.decimal "sbc"
    t.decimal "annual_fee"
    t.decimal "plan_document"
    t.decimal "totalfees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rfps", force: :cascade do |t|
    t.string "pbm"
    t.string "name"
    t.string "eff_date"
    t.string "network"
    t.string "prep"
    t.string "carrier"
    t.decimal "inbenefits"
    t.decimal "indeductable"
    t.string "incoinsurance"
    t.decimal "inoop"
    t.decimal "inoffice_visit"
    t.decimal "inspecialist"
    t.decimal "inlab_xray"
    t.decimal "inpreventative"
    t.decimal "inteladoc"
    t.decimal "inurgent_care"
    t.decimal "inprescription"
    t.decimal "iner"
    t.decimal "outbenefits"
    t.decimal "outdeductable"
    t.string "outcoinsurance"
    t.decimal "outoop"
    t.decimal "outoffice_visit"
    t.decimal "outspecialist"
    t.decimal "outlab_xray"
    t.decimal "outpreventative"
    t.decimal "outteladoc"
    t.decimal "outurgent_care"
    t.decimal "outprescription"
    t.decimal "outer"
    t.decimal "administrator"
    t.decimal "ahdi"
    t.decimal "urcm"
    t.decimal "ppo"
    t.decimal "stop_loss"
    t.decimal "teladoc_consult"
    t.decimal "lab_card"
    t.decimal "hipaa"
    t.decimal "broker_fee"
    t.decimal "other_fee"
    t.decimal "total_admin"
    t.string "plan_platform"
    t.decimal "specific_deductable"
    t.decimal "mar"
    t.decimal "mlr"
    t.integer "employee"
    t.decimal "inempfee"
    t.decimal "outempfee"
    t.integer "ee_sp"
    t.decimal "inee_spfee"
    t.decimal "outee_spfee"
    t.integer "ee_child"
    t.decimal "inee_childfee"
    t.decimal "outee_childfee"
    t.integer "family"
    t.decimal "infamilyfee"
    t.decimal "outfamilyfee"
    t.decimal "intransplant"
    t.decimal "outtransplant"
    t.decimal "inmac"
    t.decimal "outmac"
    t.decimal "inagg_premium"
    t.decimal "outagg_premium"
    t.decimal "intpsp"
    t.decimal "inmfct"
    t.decimal "outtpsp"
    t.decimal "outmfct"
    t.integer "employee2"
    t.decimal "inempfee2"
    t.decimal "outempfee2"
    t.integer "ee_sp2"
    t.decimal "inee_spfee2"
    t.decimal "outee_spfee2"
    t.integer "ee_child2"
    t.decimal "inee_childfee2"
    t.decimal "outee_childfee2"
    t.integer "family2"
    t.decimal "infamilyfee2"
    t.decimal "outfamilyfee2"
    t.integer "total"
    t.decimal "intotal"
    t.decimal "outtotal"
    t.decimal "intmal"
    t.decimal "outtmal"
    t.decimal "intafc"
    t.decimal "outtfac"
    t.decimal "intaal"
    t.decimal "outtall"
    t.decimal "inmax_total"
    t.decimal "outmax_total"
    t.decimal "inempsum"
    t.decimal "outempsum"
    t.decimal "inee_spsum"
    t.decimal "outee_spsum"
    t.decimal "inee_childsum"
    t.decimal "outee_childsum"
    t.decimal "infamilysum"
    t.decimal "outfamilysum"
    t.decimal "startup"
    t.decimal "sbc"
    t.decimal "annual_fee"
    t.decimal "plan_document"
    t.decimal "totalfees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "admin", default: false
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
