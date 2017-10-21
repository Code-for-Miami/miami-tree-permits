class CitySource < ApplicationRecord

  def self.import!
    permits = SODA_CLIENT.get('kf7n-cdpf',
                        {scopeofwork: 'TREE PERMIT',
                         '$order' => 'statusdate ASC'})

    permits.each do |permit|
      cs = self.new
      cs.attributes = permit.to_hash
      cs.location_1 = permit.location_1.join ', '
      cs.save!
    end
  end
end
