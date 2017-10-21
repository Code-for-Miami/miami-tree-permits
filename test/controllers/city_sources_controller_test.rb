require 'test_helper'

class CitySourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @city_source = city_sources(:one)
  end

  test "should get index" do
    get city_sources_url
    assert_response :success
  end

  test "should get new" do
    get new_city_source_url
    assert_response :success
  end

  test "should create city_source" do
    assert_difference('CitySource.count') do
      post city_sources_url, params: { city_source: { additionsqft: @city_source.additionsqft, applicationnumber: @city_source.applicationnumber, buildingpermitstatusdescription: @city_source.buildingpermitstatusdescription, buildingpermitstatusreasondescription: @city_source.buildingpermitstatusreasondescription, certificatecode: @city_source.certificatecode, certificatedate: @city_source.certificatedate, companyaddress: @city_source.companyaddress, companycity: @city_source.companycity, companyname: @city_source.companyname, companyzip: @city_source.companyzip, daysincity: @city_source.daysincity, daysincitynumeric: @city_source.daysincitynumeric, deliveryaddress: @city_source.deliveryaddress, firstsubmissiondate: @city_source.firstsubmissiondate, folionumber: @city_source.folionumber, ispermitfinal: @city_source.ispermitfinal, isprivateprovider: @city_source.isprivateprovider, issueddate: @city_source.issueddate, location_1: @city_source.location_1, miami21zone: @city_source.miami21zone, newadditioncost: @city_source.newadditioncost, permitnumber: @city_source.permitnumber, planaccepteddate: @city_source.planaccepteddate, plancreateddate: @city_source.plancreateddate, processnumber: @city_source.processnumber, propertytype: @city_source.propertytype, remodelingcost: @city_source.remodelingcost, remsqft: @city_source.remsqft, requiredcertificate: @city_source.requiredcertificate, scopeofwork: @city_source.scopeofwork, statusdate: @city_source.statusdate, totalcost: @city_source.totalcost, totaldaysinplanreview: @city_source.totaldaysinplanreview, totaldaysinplanreviewnumeric: @city_source.totaldaysinplanreviewnumeric, totalsqft: @city_source.totalsqft, workitems: @city_source.workitems } }
    end

    assert_redirected_to city_source_url(CitySource.last)
  end

  test "should show city_source" do
    get city_source_url(@city_source)
    assert_response :success
  end

  test "should get edit" do
    get edit_city_source_url(@city_source)
    assert_response :success
  end

  test "should update city_source" do
    patch city_source_url(@city_source), params: { city_source: { additionsqft: @city_source.additionsqft, applicationnumber: @city_source.applicationnumber, buildingpermitstatusdescription: @city_source.buildingpermitstatusdescription, buildingpermitstatusreasondescription: @city_source.buildingpermitstatusreasondescription, certificatecode: @city_source.certificatecode, certificatedate: @city_source.certificatedate, companyaddress: @city_source.companyaddress, companycity: @city_source.companycity, companyname: @city_source.companyname, companyzip: @city_source.companyzip, daysincity: @city_source.daysincity, daysincitynumeric: @city_source.daysincitynumeric, deliveryaddress: @city_source.deliveryaddress, firstsubmissiondate: @city_source.firstsubmissiondate, folionumber: @city_source.folionumber, ispermitfinal: @city_source.ispermitfinal, isprivateprovider: @city_source.isprivateprovider, issueddate: @city_source.issueddate, location_1: @city_source.location_1, miami21zone: @city_source.miami21zone, newadditioncost: @city_source.newadditioncost, permitnumber: @city_source.permitnumber, planaccepteddate: @city_source.planaccepteddate, plancreateddate: @city_source.plancreateddate, processnumber: @city_source.processnumber, propertytype: @city_source.propertytype, remodelingcost: @city_source.remodelingcost, remsqft: @city_source.remsqft, requiredcertificate: @city_source.requiredcertificate, scopeofwork: @city_source.scopeofwork, statusdate: @city_source.statusdate, totalcost: @city_source.totalcost, totaldaysinplanreview: @city_source.totaldaysinplanreview, totaldaysinplanreviewnumeric: @city_source.totaldaysinplanreviewnumeric, totalsqft: @city_source.totalsqft, workitems: @city_source.workitems } }
    assert_redirected_to city_source_url(@city_source)
  end

  test "should destroy city_source" do
    assert_difference('CitySource.count', -1) do
      delete city_source_url(@city_source)
    end

    assert_redirected_to city_sources_url
  end
end
