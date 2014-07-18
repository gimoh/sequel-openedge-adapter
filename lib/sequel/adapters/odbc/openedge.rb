Sequel.require 'adapters/shared/openedge'

# Register the driver.
Sequel.synchronize do
  Sequel::ODBC::DATABASE_SETUP[:openedge] = proc do |db|
    db.extend(Sequel::OpenEdge::DatabaseMethods)
    db.extend_datasets(Sequel::OpenEdge::DatasetMethods)
  end
end
