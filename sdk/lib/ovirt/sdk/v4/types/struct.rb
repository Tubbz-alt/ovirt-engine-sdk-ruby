#--
# Copyright (c) 2015 Red Hat, Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#++

module Ovirt
  module SDK
    module V4

      ##
      # This is the base class for all the struct types of the SDK. It contains the utility methods used by all of
      # them.
      #
      class Struct

        ##
        # Returns the value of the `href` attribute.
        #
        def href
          return @href
        end

        ##
        # Sets the value of the `href` attribute.
        #
        def href=(value)
          @href = value
        end

        ##
        # Returns the reference to the connection that created this object.
        #
        def connection
          return @connection
        end

        ##
        # Sets reference to the connection that created this object.
        #
        def connection=(value)
          @connection = value
        end

        ##
        # Empty constructor.
        #
        def initialize(opts = {})
          self.href = opts[:href]
          self.connection = opts[:connection]
        end

      end

    end
  end
end