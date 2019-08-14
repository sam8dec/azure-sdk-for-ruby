# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Azure Function activity.
    #
    class AzureFunctionActivity < ExecutionActivity

      include MsRestAzure


      def initialize
        @type = "AzureFunctionActivity"
      end

      attr_accessor :type

      # @return [AzureFunctionActivityMethod] Rest API method for target
      # endpoint. Possible values include: 'GET', 'POST', 'PUT', 'DELETE',
      # 'OPTIONS', 'HEAD', 'TRACE'
      attr_accessor :method

      # @return Name of the Function that the Azure Function Activity will
      # call. Type: string (or Expression with resultType string)
      attr_accessor :function_name

      # @return Represents the headers that will be sent to the request. For
      # example, to set the language and type on a request: "headers" : {
      # "Accept-Language": "en-us", "Content-Type": "application/json" }. Type:
      # string (or Expression with resultType string).
      attr_accessor :headers

      # @return Represents the payload that will be sent to the endpoint.
      # Required for POST/PUT method, not allowed for GET method Type: string
      # (or Expression with resultType string).
      attr_accessor :body


      #
      # Mapper for AzureFunctionActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFunctionActivity',
          type: {
            name: 'Composite',
            class_name: 'AzureFunctionActivity',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
                      }
                  }
                }
              },
              user_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserProperty'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              linked_service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linkedServiceName',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policy',
                type: {
                  name: 'Composite',
                  class_name: 'ActivityPolicy'
                }
              },
              method: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.method',
                type: {
                  name: 'String'
                }
              },
              function_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.functionName',
                type: {
                  name: 'Object'
                }
              },
              headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.headers',
                type: {
                  name: 'Object'
                }
              },
              body: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.body',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end