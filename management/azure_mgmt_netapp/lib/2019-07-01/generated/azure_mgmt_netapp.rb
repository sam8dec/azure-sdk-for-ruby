# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2019-07-01/generated/azure_mgmt_netapp/module_definition'
require 'ms_rest_azure'

module Azure::NetApp::Mgmt::V2019_07_01
  autoload :Operations,                                         '2019-07-01/generated/azure_mgmt_netapp/operations.rb'
  autoload :Accounts,                                           '2019-07-01/generated/azure_mgmt_netapp/accounts.rb'
  autoload :Pools,                                              '2019-07-01/generated/azure_mgmt_netapp/pools.rb'
  autoload :Volumes,                                            '2019-07-01/generated/azure_mgmt_netapp/volumes.rb'
  autoload :MountTargets,                                       '2019-07-01/generated/azure_mgmt_netapp/mount_targets.rb'
  autoload :Snapshots,                                          '2019-07-01/generated/azure_mgmt_netapp/snapshots.rb'
  autoload :AzureNetAppFilesManagementClient,                   '2019-07-01/generated/azure_mgmt_netapp/azure_net_app_files_management_client.rb'

  module Models
    autoload :CapacityPoolList,                                   '2019-07-01/generated/azure_mgmt_netapp/models/capacity_pool_list.rb'
    autoload :OperationDisplay,                                   '2019-07-01/generated/azure_mgmt_netapp/models/operation_display.rb'
    autoload :CapacityPoolPatch,                                  '2019-07-01/generated/azure_mgmt_netapp/models/capacity_pool_patch.rb'
    autoload :MetricSpecification,                                '2019-07-01/generated/azure_mgmt_netapp/models/metric_specification.rb'
    autoload :ExportPolicyRule,                                   '2019-07-01/generated/azure_mgmt_netapp/models/export_policy_rule.rb'
    autoload :Operation,                                          '2019-07-01/generated/azure_mgmt_netapp/models/operation.rb'
    autoload :VolumePropertiesExportPolicy,                       '2019-07-01/generated/azure_mgmt_netapp/models/volume_properties_export_policy.rb'
    autoload :ResourceNameAvailability,                           '2019-07-01/generated/azure_mgmt_netapp/models/resource_name_availability.rb'
    autoload :Volume,                                             '2019-07-01/generated/azure_mgmt_netapp/models/volume.rb'
    autoload :ActiveDirectory,                                    '2019-07-01/generated/azure_mgmt_netapp/models/active_directory.rb'
    autoload :VolumeList,                                         '2019-07-01/generated/azure_mgmt_netapp/models/volume_list.rb'
    autoload :NetAppAccountList,                                  '2019-07-01/generated/azure_mgmt_netapp/models/net_app_account_list.rb'
    autoload :VolumePatchPropertiesExportPolicy,                  '2019-07-01/generated/azure_mgmt_netapp/models/volume_patch_properties_export_policy.rb'
    autoload :CapacityPool,                                       '2019-07-01/generated/azure_mgmt_netapp/models/capacity_pool.rb'
    autoload :VolumePatch,                                        '2019-07-01/generated/azure_mgmt_netapp/models/volume_patch.rb'
    autoload :ServiceSpecification,                               '2019-07-01/generated/azure_mgmt_netapp/models/service_specification.rb'
    autoload :MountTarget,                                        '2019-07-01/generated/azure_mgmt_netapp/models/mount_target.rb'
    autoload :ResourceNameAvailabilityRequest,                    '2019-07-01/generated/azure_mgmt_netapp/models/resource_name_availability_request.rb'
    autoload :MountTargetList,                                    '2019-07-01/generated/azure_mgmt_netapp/models/mount_target_list.rb'
    autoload :NetAppAccountPatch,                                 '2019-07-01/generated/azure_mgmt_netapp/models/net_app_account_patch.rb'
    autoload :Snapshot,                                           '2019-07-01/generated/azure_mgmt_netapp/models/snapshot.rb'
    autoload :OperationListResult,                                '2019-07-01/generated/azure_mgmt_netapp/models/operation_list_result.rb'
    autoload :SnapshotsList,                                      '2019-07-01/generated/azure_mgmt_netapp/models/snapshots_list.rb'
    autoload :Dimension,                                          '2019-07-01/generated/azure_mgmt_netapp/models/dimension.rb'
    autoload :SnapshotPatch,                                      '2019-07-01/generated/azure_mgmt_netapp/models/snapshot_patch.rb'
    autoload :NetAppAccount,                                      '2019-07-01/generated/azure_mgmt_netapp/models/net_app_account.rb'
    autoload :InAvailabilityReasonType,                           '2019-07-01/generated/azure_mgmt_netapp/models/in_availability_reason_type.rb'
    autoload :CheckNameResourceTypes,                             '2019-07-01/generated/azure_mgmt_netapp/models/check_name_resource_types.rb'
    autoload :ServiceLevel,                                       '2019-07-01/generated/azure_mgmt_netapp/models/service_level.rb'
  end
end
