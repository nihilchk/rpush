# frozen_string_literal: true

module Rpush
  module Client
    module ActiveRecord
      class App < ApplicationRecord
        self.table_name = 'rpush_apps'

        has_many :notifications, class_name: 'Rpush::Client::ActiveRecord::Notification', dependent: :destroy

        validates :name, presence: true, uniqueness: { scope: %i[type environment], case_sensitive: true }
      end
    end
  end
end
