# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_10_01
  #
  # Microsoft Storage Sync Service API
  #
  class RegisteredServers
    include MsRestAzure

    #
    # Creates and initializes a new instance of the RegisteredServers class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [StorageSyncManagementClient] reference to the StorageSyncManagementClient
    attr_reader :client

    #
    # Get a given registered server list.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RegisteredServerArray] operation results.
    #
    def list_by_storage_sync_service(resource_group_name, storage_sync_service_name, custom_headers:nil)
      response = list_by_storage_sync_service_async(resource_group_name, storage_sync_service_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a given registered server list.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_storage_sync_service_with_http_info(resource_group_name, storage_sync_service_name, custom_headers:nil)
      list_by_storage_sync_service_async(resource_group_name, storage_sync_service_name, custom_headers:custom_headers).value!
    end

    #
    # Get a given registered server list.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_storage_sync_service_async(resource_group_name, storage_sync_service_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, 'storage_sync_service_name is nil' if storage_sync_service_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/storageSyncServices/{storageSyncServiceName}/registeredServers'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'storageSyncServiceName' => storage_sync_service_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StorageSync::Mgmt::V2018_10_01::Models::RegisteredServerArray.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Get a given registered server.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] GUID identifying the on-premises server.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RegisteredServer] operation results.
    #
    def get(resource_group_name, storage_sync_service_name, server_id, custom_headers:nil)
      response = get_async(resource_group_name, storage_sync_service_name, server_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a given registered server.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] GUID identifying the on-premises server.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, storage_sync_service_name, server_id, custom_headers:nil)
      get_async(resource_group_name, storage_sync_service_name, server_id, custom_headers:custom_headers).value!
    end

    #
    # Get a given registered server.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] GUID identifying the on-premises server.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, storage_sync_service_name, server_id, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, 'storage_sync_service_name is nil' if storage_sync_service_name.nil?
      fail ArgumentError, 'server_id is nil' if server_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/storageSyncServices/{storageSyncServiceName}/registeredServers/{serverId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'storageSyncServiceName' => storage_sync_service_name,'serverId' => server_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StorageSync::Mgmt::V2018_10_01::Models::RegisteredServer.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Add a new registered server.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] GUID identifying the on-premises server.
    # @param parameters [RegisteredServerCreateParameters] Body of Registered
    # Server object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RegisteredServer] operation results.
    #
    def create(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:nil)
      response = create_async(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] GUID identifying the on-premises server.
    # @param parameters [RegisteredServerCreateParameters] Body of Registered
    # Server object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_async(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:nil)
      # Send request
      promise = begin_create_async(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::StorageSync::Mgmt::V2018_10_01::Models::RegisteredServer.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Delete the given registered server.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] GUID identifying the on-premises server.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(resource_group_name, storage_sync_service_name, server_id, custom_headers:nil)
      response = delete_async(resource_group_name, storage_sync_service_name, server_id, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] GUID identifying the on-premises server.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, storage_sync_service_name, server_id, custom_headers:nil)
      # Send request
      promise = begin_delete_async(resource_group_name, storage_sync_service_name, server_id, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Triggers Server certificate rollover.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] Server Id
    # @param parameters [TriggerRolloverRequest] Body of Trigger Rollover request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def trigger_rollover(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:nil)
      response = trigger_rollover_async(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] Server Id
    # @param parameters [TriggerRolloverRequest] Body of Trigger Rollover request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def trigger_rollover_async(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:nil)
      # Send request
      promise = begin_trigger_rollover_async(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Add a new registered server.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] GUID identifying the on-premises server.
    # @param parameters [RegisteredServerCreateParameters] Body of Registered
    # Server object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RegisteredServer] operation results.
    #
    def begin_create(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:nil)
      response = begin_create_async(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Add a new registered server.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] GUID identifying the on-premises server.
    # @param parameters [RegisteredServerCreateParameters] Body of Registered
    # Server object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_with_http_info(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:nil)
      begin_create_async(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:custom_headers).value!
    end

    #
    # Add a new registered server.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] GUID identifying the on-premises server.
    # @param parameters [RegisteredServerCreateParameters] Body of Registered
    # Server object.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_async(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, 'storage_sync_service_name is nil' if storage_sync_service_name.nil?
      fail ArgumentError, 'server_id is nil' if server_id.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::StorageSync::Mgmt::V2018_10_01::Models::RegisteredServerCreateParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/storageSyncServices/{storageSyncServiceName}/registeredServers/{serverId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'storageSyncServiceName' => storage_sync_service_name,'serverId' => server_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StorageSync::Mgmt::V2018_10_01::Models::RegisteredServer.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Delete the given registered server.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] GUID identifying the on-premises server.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(resource_group_name, storage_sync_service_name, server_id, custom_headers:nil)
      response = begin_delete_async(resource_group_name, storage_sync_service_name, server_id, custom_headers:custom_headers).value!
      nil
    end

    #
    # Delete the given registered server.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] GUID identifying the on-premises server.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, storage_sync_service_name, server_id, custom_headers:nil)
      begin_delete_async(resource_group_name, storage_sync_service_name, server_id, custom_headers:custom_headers).value!
    end

    #
    # Delete the given registered server.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] GUID identifying the on-premises server.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, storage_sync_service_name, server_id, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, 'storage_sync_service_name is nil' if storage_sync_service_name.nil?
      fail ArgumentError, 'server_id is nil' if server_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/storageSyncServices/{storageSyncServiceName}/registeredServers/{serverId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'storageSyncServiceName' => storage_sync_service_name,'serverId' => server_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Triggers Server certificate rollover.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] Server Id
    # @param parameters [TriggerRolloverRequest] Body of Trigger Rollover request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_trigger_rollover(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:nil)
      response = begin_trigger_rollover_async(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:custom_headers).value!
      nil
    end

    #
    # Triggers Server certificate rollover.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] Server Id
    # @param parameters [TriggerRolloverRequest] Body of Trigger Rollover request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_trigger_rollover_with_http_info(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:nil)
      begin_trigger_rollover_async(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:custom_headers).value!
    end

    #
    # Triggers Server certificate rollover.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param server_id [String] Server Id
    # @param parameters [TriggerRolloverRequest] Body of Trigger Rollover request.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_trigger_rollover_async(resource_group_name, storage_sync_service_name, server_id, parameters, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, 'storage_sync_service_name is nil' if storage_sync_service_name.nil?
      fail ArgumentError, 'server_id is nil' if server_id.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::StorageSync::Mgmt::V2018_10_01::Models::TriggerRolloverRequest.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/storageSyncServices/{storageSyncServiceName}/registeredServers/{serverId}/triggerRollover'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'storageSyncServiceName' => storage_sync_service_name,'serverId' => server_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
