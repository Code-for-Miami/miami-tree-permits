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

ActiveRecord::Schema.define(version: 20171021181637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "city_sources", force: :cascade do |t|
    t.string "planaccepteddate"
    t.string "location_1"
    t.string "workitems"
    t.string "daysincity"
    t.string "daysincitynumeric"
    t.string "propertytype"
    t.string "ispermitfinal"
    t.string "buildingpermitstatusdescription"
    t.string "applicationnumber"
    t.string "totalcost"
    t.string "certificatedate"
    t.string "companyaddress"
    t.string "plancreateddate"
    t.string "certificatecode"
    t.string "companycity"
    t.string "requiredcertificate"
    t.string "processnumber"
    t.string "remsqft"
    t.string "totalsqft"
    t.string "scopeofwork"
    t.string "newadditioncost"
    t.string "issueddate"
    t.string "totaldaysinplanreview"
    t.string "additionsqft"
    t.string "buildingpermitstatusreasondescription"
    t.string "firstsubmissiondate"
    t.string "folionumber"
    t.string "isprivateprovider"
    t.string "statusdate"
    t.string "totaldaysinplanreviewnumeric"
    t.string "miami21zone"
    t.string "permitnumber"
    t.string "companyname"
    t.string "remodelingcost"
    t.string "deliveryaddress"
    t.string "companyzip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
