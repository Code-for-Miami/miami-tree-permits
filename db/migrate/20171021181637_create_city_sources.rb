class CreateCitySources < ActiveRecord::Migration[5.1]
  def change
    create_table :city_sources do |t|
      t.string :planaccepteddate
      t.string :location_1
      t.string :workitems
      t.string :daysincity
      t.string :daysincitynumeric
      t.string :propertytype
      t.string :ispermitfinal
      t.string :buildingpermitstatusdescription
      t.string :applicationnumber
      t.string :totalcost
      t.string :certificatedate
      t.string :companyaddress
      t.string :plancreateddate
      t.string :certificatecode
      t.string :companycity
      t.string :requiredcertificate
      t.string :processnumber
      t.string :remsqft
      t.string :totalsqft
      t.string :scopeofwork
      t.string :newadditioncost
      t.string :issueddate
      t.string :totaldaysinplanreview
      t.string :additionsqft
      t.string :buildingpermitstatusreasondescription
      t.string :firstsubmissiondate
      t.string :folionumber
      t.string :isprivateprovider
      t.string :statusdate
      t.string :totaldaysinplanreviewnumeric
      t.string :miami21zone
      t.string :permitnumber
      t.string :companyname
      t.string :remodelingcost
      t.string :deliveryaddress
      t.string :companyzip

      t.timestamps
    end
  end
end
