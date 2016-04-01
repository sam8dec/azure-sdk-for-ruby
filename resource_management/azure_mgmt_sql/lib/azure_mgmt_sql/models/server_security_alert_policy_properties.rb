# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents the properties of an Azure SQL Security alert policy.
    #
    class ServerSecurityAlertPolicyProperties

      include MsRestAzure

      # @return [State] The state of the Azure SQL Security alert policy (New,
      # Enabled or Disabled). Possible values include: 'Enabled', 'Disabled',
      # 'New'
      attr_accessor :state

      # @return [String] The disable alerts of the Azure SQL Security alert
      # policy.
      attr_accessor :disabled_alerts

      # @return [String] The list of email addresses to send the alert.
      attr_accessor :email_addresses

      # @return [EmailAccountAdmins] Value that indicated whether to email the
      # azure account admins. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :email_account_admins

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.state
        output_object['state'] = serialized_property unless serialized_property.nil?

        serialized_property = object.disabled_alerts
        output_object['disabledAlerts'] = serialized_property unless serialized_property.nil?

        serialized_property = object.email_addresses
        output_object['emailAddresses'] = serialized_property unless serialized_property.nil?

        serialized_property = object.email_account_admins
        output_object['emailAccountAdmins'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ServerSecurityAlertPolicyProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ServerSecurityAlertPolicyProperties.new

        deserialized_property = object['state']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = State.constants.any? { |e| State.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum State does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.state = deserialized_property

        deserialized_property = object['disabledAlerts']
        output_object.disabled_alerts = deserialized_property

        deserialized_property = object['emailAddresses']
        output_object.email_addresses = deserialized_property

        deserialized_property = object['emailAccountAdmins']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = EmailAccountAdmins.constants.any? { |e| EmailAccountAdmins.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum EmailAccountAdmins does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.email_account_admins = deserialized_property

        output_object
      end
    end
  end
end