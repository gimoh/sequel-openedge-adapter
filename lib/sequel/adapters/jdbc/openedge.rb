Sequel::JDBC.load_driver('com.ddtek.jdbc.openedge.OpenEdgeDriver')
require 'sequel/adapters/shared/openedge'
Sequel.require 'adapters/jdbc/transactions'

module Sequel
  module JDBC
    # Database and Dataset instance methods for OpenEdge v10+ specific
    # support via JDBC.
    module OpenEdge
      # Database instance methods for OpenEdge databases accessed via JDBC.
      module DatabaseMethods
        include Sequel::OpenEdge::DatabaseMethods
        include Sequel::JDBC::Transactions
      end
    end
  end
end
