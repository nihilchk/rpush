# frozen_string_literal: true

module Rpush
  module Daemon
    module Pushy
      extend ServiceConfigMethods

      dispatcher :http
    end
  end
end
