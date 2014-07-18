# Register the driver.
Sequel.synchronize do
  Sequel::JDBC::DATABASE_SETUP[:datadirect] = proc do |db|
    raise(Error, 'only OpenEdge driver is currently supported') \
      if db.uri.split(':')[2] != 'openedge'
    require 'sequel/adapters/jdbc/openedge'
    db.extend(Sequel::JDBC::OpenEdge::DatabaseMethods)
    db.extend_datasets Sequel::OpenEdge::DatasetMethods
    com.ddtek.jdbc.openedge.OpenEdgeDriver
  end
end
