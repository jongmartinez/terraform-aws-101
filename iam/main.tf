provider "aws" {
    region = "us-east-2"
}

resource "aws_iam_user" "myUser" {
    name = "h0ffen"
}

resource "aws_iam_policy" "customPolicy" {
    name = "h0ffen_GEC2"

    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "ec2:AuthorizeSecurityGroupIngress",
                "ec2:ReplaceRouteTableAssociation",
                "ec2:DeleteVpcEndpoints",
                "ec2:ResetInstanceAttribute",
                "ec2:ResetEbsDefaultKmsKeyId",
                "ec2:AttachInternetGateway",
                "ec2:ReportInstanceStatus",
                "ec2:DeleteVpnGateway",
                "ec2:CreateRoute",
                "elasticfilesystem:ClientMount",
                "ec2:UnassignPrivateIpAddresses",
                "glacier:PurchaseProvisionedCapacity",
                "ec2:CancelExportTask",
                "ec2:DeleteTransitGatewayPeeringAttachment",
                "ec2:ImportKeyPair",
                "ec2:AssociateClientVpnTargetNetwork",
                "ec2:StopInstances",
                "ec2:CreateVolume",
                "ec2:ReplaceNetworkAclAssociation",
                "ec2:CreateVpcEndpointServiceConfiguration",
                "ec2:CreateNetworkInterface",
                "ec2:CancelSpotInstanceRequests",
                "ec2:CreateTransitGatewayRoute",
                "ec2:CreateTransitGatewayVpcAttachment",
                "glacier:SetVaultNotifications",
                "ec2:DeleteDhcpOptions",
                "glacier:CompleteMultipartUpload",
                "ec2:DeleteNatGateway",
                "ec2:CancelCapacityReservation",
                "ec2:EnableTransitGatewayRouteTablePropagation",
                "glacier:ListVaults",
                "ec2:ModifyVpcEndpoint",
                "ec2:ModifyInstanceCapacityReservationAttributes",
                "ec2:CreateVpnConnection",
                "ec2:DeleteSpotDatafeedSubscription",
                "ec2:ImportVolume",
                "ec2:MoveAddressToVpc",
                "ec2:ModifyFleet",
                "ec2:RunScheduledInstances",
                "ec2:ModifyIdentityIdFormat",
                "ec2:CreateVpc",
                "ec2:RequestSpotFleet",
                "ec2:WithdrawByoipCidr",
                "ec2:ReleaseHosts",
                "ec2:DeleteTransitGatewayMulticastDomain",
                "ec2:ModifySubnetAttribute",
                "ec2:CreateSnapshot",
                "ec2:DeleteLaunchTemplateVersions",
                "ec2:DeleteNetworkAcl",
                "ec2:ModifyReservedInstances",
                "ec2:ReleaseAddress",
                "ec2:ModifyInstanceMetadataOptions",
                "ec2:AssociateDhcpOptions",
                "ec2:ModifyInstancePlacement",
                "ec2:CreateTrafficMirrorTarget",
                "ec2:ModifyTrafficMirrorFilterRule",
                "ec2:CreateClientVpnRoute",
                "ec2:AttachVpnGateway",
                "ec2:CreateLocalGatewayRoute",
                "ec2:ProvisionByoipCidr",
                "ec2:AssociateTransitGatewayMulticastDomain",
                "ec2:CreateVpnConnectionRoute",
                "ec2:ModifyVpnTunnelOptions",
                "ec2:DeleteVpcEndpointConnectionNotifications",
                "ec2:RestoreAddressToClassic",
                "ec2:DeleteCustomerGateway",
                "ec2:DeleteClientVpnRoute",
                "ec2:EnableVgwRoutePropagation",
                "ec2:ModifyVpcTenancy",
                "ec2:ApplySecurityGroupsToClientVpnTargetNetwork",
                "ec2:ConfirmProductInstance",
                "elasticfilesystem:DescribeMountTargetSecurityGroups",
                "ec2:DeleteSubnet",
                "ec2:EnableEbsEncryptionByDefault",
                "ec2:CreateImage",
                "ec2:PurchaseHostReservation",
                "ec2:CopyImage",
                "ec2:AssociateVpcCidrBlock",
                "ec2:ReplaceIamInstanceProfileAssociation",
                "ec2:DisassociateVpcCidrBlock",
                "ec2:ModifyTrafficMirrorSession",
                "ec2:CreateTransitGatewayPeeringAttachment",
                "ec2:CreatePlacementGroup",
                "ec2:DeleteTransitGatewayVpcAttachment",
                "ec2:ReplaceNetworkAclEntry",
                "ec2:ModifyVpcPeeringConnectionOptions",
                "ec2:CreateTransitGatewayMulticastDomain",
                "ec2:AssociateTransitGatewayRouteTable",
                "ec2:CreateTrafficMirrorFilterRule",
                "ec2:DeleteTrafficMirrorFilterRule",
                "ec2:ImportImage",
                "ec2:DeleteVpnConnection",
                "ec2:RejectVpcEndpointConnections",
                "ec2:ModifyEbsDefaultKmsKeyId",
                "ec2:ResetImageAttribute",
                "ec2:UpdateSecurityGroupRuleDescriptionsEgress",
                "ec2:SendDiagnosticInterrupt",
                "ec2:DisableTransitGatewayRouteTablePropagation",
                "glacier:InitiateJob",
                "ec2:CreateVpcEndpointConnectionNotification",
                "glacier:ListTagsForVault",
                "ec2:DeleteNetworkInterface",
                "ec2:CreateFleet",
                "ec2:CreateCustomerGateway",
                "ec2:ModifyHosts",
                "ec2:DeleteTransitGatewayRouteTable",
                "ec2:DeleteTransitGatewayRoute",
                "ec2:DeleteLocalGatewayRoute",
                "ec2:DeleteVpc",
                "ec2:AssociateAddress",
                "ec2:DeleteTransitGateway",
                "ec2:CancelBundleTask",
                "ec2:CreateTrafficMirrorFilter",
                "ec2:DeregisterImage",
                "ec2:PurchaseReservedInstancesOffering",
                "ec2:RequestSpotInstances",
                "ec2:CancelSpotFleetRequests",
                "ec2:DeleteTrafficMirrorTarget",
                "ec2:ReplaceTransitGatewayRoute",
                "ec2:DeleteFpgaImage",
                "ec2:RegisterTransitGatewayMulticastGroupSources",
                "ec2:TerminateClientVpnConnections",
                "elasticfilesystem:DescribeLifecycleConfiguration",
                "glacier:InitiateMultipartUpload",
                "ec2:ModifyInstanceAttribute",
                "glacier:UploadArchive",
                "ec2:AttachClassicLinkVpc",
                "elasticfilesystem:DescribeMountTargets",
                "ec2:DeleteEgressOnlyInternetGateway",
                "ec2:CopyFpgaImage",
                "ec2:CreateLaunchTemplateVersion",
                "ec2:DeleteVpnConnectionRoute",
                "elasticfilesystem:DescribeTags",
                "ec2:ModifyCapacityReservation",
                "ec2:DeleteSecurityGroup",
                "ec2:StartVpcEndpointServicePrivateDnsVerification",
                "ec2:CreateFpgaImage",
                "ec2:AcceptReservedInstancesExchangeQuote",
                "ec2:ModifyLaunchTemplate",
                "ec2:EnableVpcClassicLinkDnsSupport",
                "ec2:CreateNetworkAclEntry",
                "ec2:CancelReservedInstancesListing",
                "ec2:AssociateIamInstanceProfile",
                "ec2:CreateDhcpOptions",
                "ec2:ModifyVolumeAttribute",
                "ec2:DeleteClientVpnEndpoint",
                "ec2:CreateKeyPair",
                "ec2:ModifyClientVpnEndpoint",
                "ec2:AcceptTransitGatewayVpcAttachment",
                "ec2:DeleteLocalGatewayRouteTableVpcAssociation",
                "glacier:ListParts",
                "ec2:UpdateSecurityGroupRuleDescriptionsIngress",
                "ec2:DeleteRouteTable",
                "ec2:ModifySpotFleetRequest",
                "ec2:StartInstances",
                "ec2:RevokeSecurityGroupEgress",
                "ec2:CreateInternetGateway",
                "ec2:DeleteInternetGateway",
                "ec2:RejectTransitGatewayVpcAttachment",
                "ec2:CreateReservedInstancesListing",
                "ec2:DisassociateTransitGatewayRouteTable"
            ],
            "Resource": "*"
        }
    ]
}


    EOF
}

resource "aws_iam_policy_attachment" "policyBind" {
    name = "attachment"
    users = [aws_iam_user.myUser.name]
    policy_arn = aws_iam_policy.customPolicy.arn
}