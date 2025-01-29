## Diplom



```bash
ivcpaladin@ivcpaladin:~/01.HW_automation/eks-infra$ terraform apply -auto-approve
Acquiring state lock. This may take a few moments...
module.eks.module.eks_managed_node_group["eks_nodes"].data.aws_partition.current: Reading...
module.eks.data.aws_partition.current[0]: Reading...
module.kms.data.aws_partition.current[0]: Reading...
module.eks.module.eks_managed_node_group["eks_nodes"].data.aws_iam_policy_document.assume_role_policy[0]: Reading...
module.eks.module.kms.data.aws_caller_identity.current[0]: Reading...
module.eks.data.aws_caller_identity.current[0]: Reading...
module.kms.data.aws_caller_identity.current[0]: Reading...
module.eks.data.aws_iam_policy_document.assume_role_policy[0]: Reading...
aws_ecr_repository.repo: Refreshing state... [id=andreibakaushyn-eks-repo]
module.vpc.aws_vpc.this[0]: Refreshing state... [id=vpc-0f94af6bfa48d0340]
module.kms.data.aws_partition.current[0]: Read complete after 0s [id=aws]
module.eks.module.eks_managed_node_group["eks_nodes"].data.aws_partition.current: Read complete after 0s [id=aws]
module.eks.module.eks_managed_node_group["eks_nodes"].data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2560088296]
module.eks.data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2830595799]
module.eks.module.eks_managed_node_group["eks_nodes"].data.aws_caller_identity.current: Reading...
module.eks.module.kms.data.aws_partition.current[0]: Reading...
module.eks.data.aws_partition.current[0]: Read complete after 0s [id=aws]
module.eks.aws_cloudwatch_log_group.this[0]: Refreshing state... [id=/aws/eks/andreibakaushyn-eks-cluster/cluster]
module.eks.module.kms.data.aws_partition.current[0]: Read complete after 0s [id=aws]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role.this[0]: Refreshing state... [id=eks_nodes-eks-node-group-20250110061546425600000004]
module.eks.aws_iam_role.this[0]: Refreshing state... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003]
module.eks.data.aws_iam_policy_document.custom[0]: Reading...
module.eks.data.aws_iam_policy_document.custom[0]: Read complete after 0s [id=513122117]
module.eks.aws_iam_policy.custom[0]: Refreshing state... [id=arn:aws:iam::443370672158:policy/andreibakaushyn-eks-cluster-cluster-20250110061546422300000002]
module.eks.data.aws_caller_identity.current[0]: Read complete after 0s [id=443370672158]
module.eks.data.aws_iam_session_context.current[0]: Reading...
module.eks.data.aws_iam_session_context.current[0]: Read complete after 0s [id=arn:aws:iam::443370672158:user/skefil]
module.eks.module.kms.data.aws_caller_identity.current[0]: Read complete after 0s [id=443370672158]
module.kms.data.aws_caller_identity.current[0]: Read complete after 0s [id=443370672158]
module.kms.data.aws_iam_policy_document.this[0]: Reading...
module.kms.data.aws_iam_policy_document.this[0]: Read complete after 0s [id=3443338393]
module.kms.aws_kms_key.this[0]: Refreshing state... [id=22291a3b-0f32-4c7a-8638-273a510bc8e5]
module.eks.module.eks_managed_node_group["eks_nodes"].data.aws_caller_identity.current: Read complete after 0s [id=443370672158]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEKS_CNI_Policy"]: Refreshing state... [id=eks_nodes-eks-node-group-20250110061546425600000004-2025011006154706290000000b]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEC2ContainerRegistryReadOnly"]: Refreshing state... [id=eks_nodes-eks-node-group-20250110061546425600000004-20250110061546968500000008]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEKSWorkerNodePolicy"]: Refreshing state... [id=eks_nodes-eks-node-group-20250110061546425600000004-20250110061546971800000009]
module.eks.aws_iam_role_policy_attachment.custom[0]: Refreshing state... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-20250110061546880000000007]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"]: Refreshing state... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-2025011006154698470000000a]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"]: Refreshing state... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-20250110061546877000000006]
module.eks.module.kms.data.aws_iam_policy_document.this[0]: Reading...
module.eks.module.kms.data.aws_iam_policy_document.this[0]: Read complete after 0s [id=1567912467]
module.eks.module.kms.aws_kms_key.this[0]: Refreshing state... [id=8cfa3c13-08c3-4e9e-b9cb-46ee8110a607]
module.eks.module.kms.aws_kms_alias.this["cluster"]: Refreshing state... [id=alias/eks/andreibakaushyn-eks-cluster]
module.eks.aws_iam_policy.cluster_encryption[0]: Refreshing state... [id=arn:aws:iam::443370672158:policy/andreibakaushyn-eks-cluster-cluster-ClusterEncryption2025011006160831020000000f]
module.vpc.aws_default_route_table.default[0]: Refreshing state... [id=rtb-0caf6ddac20ceac43]
module.vpc.aws_default_security_group.this[0]: Refreshing state... [id=sg-0c02e05fccf0617d2]
module.vpc.aws_route_table.private[0]: Refreshing state... [id=rtb-0116849f4ed468aba]
module.vpc.aws_default_network_acl.this[0]: Refreshing state... [id=acl-0168ec7a973b29366]
module.eks.aws_security_group.cluster[0]: Refreshing state... [id=sg-03c0e6b9341525ba4]
module.vpc.aws_internet_gateway.this[0]: Refreshing state... [id=igw-0bb92246875393fbd]
module.vpc.aws_subnet.private[0]: Refreshing state... [id=subnet-0112b5f0217883516]
module.eks.aws_security_group.node[0]: Refreshing state... [id=sg-08c93bce6bb4d565b]
module.vpc.aws_subnet.private[1]: Refreshing state... [id=subnet-0ddbd3f0934d0dd36]
module.vpc.aws_subnet.public[0]: Refreshing state... [id=subnet-07f840acc8cd65e34]
module.vpc.aws_subnet.public[1]: Refreshing state... [id=subnet-033a324de9723c0ad]
module.vpc.aws_route_table.public[0]: Refreshing state... [id=rtb-0ddb88ae0c11047ae]
module.eks.aws_iam_role_policy_attachment.cluster_encryption[0]: Refreshing state... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-20250110061608606400000010]
module.vpc.aws_eip.nat[0]: Refreshing state... [id=eipalloc-04b382c1f05a73beb]
module.vpc.aws_route_table_association.private[0]: Refreshing state... [id=rtbassoc-015a0156afbcf68d8]
module.vpc.aws_route_table_association.private[1]: Refreshing state... [id=rtbassoc-0a4a42bfc4b07871c]
module.vpc.aws_route.public_internet_gateway[0]: Refreshing state... [id=r-rtb-0ddb88ae0c11047ae1080289494]
module.vpc.aws_route_table_association.public[1]: Refreshing state... [id=rtbassoc-0e1430235f223c27d]
module.vpc.aws_route_table_association.public[0]: Refreshing state... [id=rtbassoc-08141e1b58273d716]
module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"]: Refreshing state... [id=sgrule-1725579633]
module.eks.aws_security_group_rule.node["ingress_cluster_443"]: Refreshing state... [id=sgrule-2875691931]
module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"]: Refreshing state... [id=sgrule-3166968518]
module.eks.aws_security_group_rule.node["egress_all"]: Refreshing state... [id=sgrule-2839045680]
module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"]: Refreshing state... [id=sgrule-2076380562]
module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"]: Refreshing state... [id=sgrule-2970960803]
module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"]: Refreshing state... [id=sgrule-357228620]
module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"]: Refreshing state... [id=sgrule-41644730]
module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"]: Refreshing state... [id=sgrule-1971748176]
module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"]: Refreshing state... [id=sgrule-2631123574]
module.eks.aws_security_group_rule.cluster["ingress_nodes_443"]: Refreshing state... [id=sgrule-996235389]
module.vpc.aws_nat_gateway.this[0]: Refreshing state... [id=nat-0c4c1c9e22c905b47]
module.vpc.aws_route.private_nat_gateway[0]: Refreshing state... [id=r-rtb-0116849f4ed468aba1080289494]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create
+/- create replacement and then destroy
 <= read (data resources)

Terraform will perform the following actions:

  # module.eks.data.tls_certificate.this[0] will be read during apply
  # (config refers to values not yet known)
 <= data "tls_certificate" "this" {
      + certificates = (known after apply)
      + id           = (known after apply)
      + url          = (known after apply)
    }

  # module.eks.aws_eks_cluster.this[0] will be created
  + resource "aws_eks_cluster" "this" {
      + arn                           = (known after apply)
      + bootstrap_self_managed_addons = true
      + certificate_authority         = (known after apply)
      + cluster_id                    = (known after apply)
      + created_at                    = (known after apply)
      + enabled_cluster_log_types     = [
          + "api",
          + "audit",
          + "authenticator",
        ]
      + endpoint                      = (known after apply)
      + id                            = (known after apply)
      + identity                      = (known after apply)
      + name                          = "andreibakaushyn-eks-cluster"
      + platform_version              = (known after apply)
      + role_arn                      = "arn:aws:iam::443370672158:role/andreibakaushyn-eks-cluster-cluster-20250110061546422400000003"
      + status                        = (known after apply)
      + tags                          = {
          + "terraform-aws-modules" = "eks"
        }
      + tags_all                      = {
          + "terraform-aws-modules" = "eks"
        }
      + version                       = "1.27"

      + access_config {
          + authentication_mode                         = "API_AND_CONFIG_MAP"
          + bootstrap_cluster_creator_admin_permissions = false
        }

      + encryption_config {
          + resources = [
              + "secrets",
            ]

          + provider {
              + key_arn = "arn:aws:kms:us-east-1:443370672158:key/8cfa3c13-08c3-4e9e-b9cb-46ee8110a607"
            }
        }

      + kubernetes_network_config {
          + ip_family         = "ipv4"
          + service_ipv4_cidr = (known after apply)
          + service_ipv6_cidr = (known after apply)

          + elastic_load_balancing (known after apply)
        }

      + timeouts {}

      + upgrade_policy (known after apply)

      + vpc_config {
          + cluster_security_group_id = (known after apply)
          + endpoint_private_access   = true
          + endpoint_public_access    = false
          + public_access_cidrs       = [
              + "0.0.0.0/0",
            ]
          + security_group_ids        = (known after apply)
          + subnet_ids                = [
              + "subnet-0112b5f0217883516",
              + "subnet-0ddbd3f0934d0dd36",
            ]
          + vpc_id                    = (known after apply)
        }
    }

  # module.eks.aws_iam_openid_connect_provider.oidc_provider[0] will be created
  + resource "aws_iam_openid_connect_provider" "oidc_provider" {
      + arn             = (known after apply)
      + client_id_list  = [
          + "sts.amazonaws.com",
        ]
      + id              = (known after apply)
      + tags            = {
          + "Name" = "andreibakaushyn-eks-cluster-eks-irsa"
        }
      + tags_all        = {
          + "Name" = "andreibakaushyn-eks-cluster-eks-irsa"
        }
      + thumbprint_list = (known after apply)
      + url             = (known after apply)
    }

  # module.eks.aws_security_group.cluster[0] must be replaced
+/- resource "aws_security_group" "cluster" {
      ~ arn                    = "arn:aws:ec2:us-east-1:443370672158:security-group/sg-03c0e6b9341525ba4" -> (known after apply)
      ~ egress                 = [] -> (known after apply)
      ~ id                     = "sg-03c0e6b9341525ba4" -> (known after apply)
      ~ ingress                = [
          - {
              - cidr_blocks      = []
              - description      = "Node groups to cluster API"
              - from_port        = 443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-08c93bce6bb4d565b",
                ]
              - self             = false
              - to_port          = 443
            },
        ] -> (known after apply)
      ~ name                   = "andreibakaushyn-eks-cluster-cluster-20250110061546406900000001" -> (known after apply)
      ~ owner_id               = "443370672158" -> (known after apply)
        tags                   = {
            "Name" = "andreibakaushyn-eks-cluster-cluster"
        }
      ~ vpc_id                 = "vpc-0ba16865d0655a924" -> "vpc-0f94af6bfa48d0340" # forces replacement
        # (4 unchanged attributes hidden)
    }

  # module.eks.aws_security_group.node[0] must be replaced
+/- resource "aws_security_group" "node" {
      ~ arn                    = "arn:aws:ec2:us-east-1:443370672158:security-group/sg-08c93bce6bb4d565b" -> (known after apply)
      ~ egress                 = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = "Allow all egress"
              - from_port        = 0
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "-1"
              - security_groups  = []
              - self             = false
              - to_port          = 0
            },
        ] -> (known after apply)
      ~ id                     = "sg-08c93bce6bb4d565b" -> (known after apply)
      ~ ingress                = [
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node 4443/tcp webhook"
              - from_port        = 4443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-03c0e6b9341525ba4",
                ]
              - self             = false
              - to_port          = 4443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node 6443/tcp webhook"
              - from_port        = 6443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-03c0e6b9341525ba4",
                ]
              - self             = false
              - to_port          = 6443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node 8443/tcp webhook"
              - from_port        = 8443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-03c0e6b9341525ba4",
                ]
              - self             = false
              - to_port          = 8443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node 9443/tcp webhook"
              - from_port        = 9443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-03c0e6b9341525ba4",
                ]
              - self             = false
              - to_port          = 9443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node groups"
              - from_port        = 443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-03c0e6b9341525ba4",
                ]
              - self             = false
              - to_port          = 443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node kubelets"
              - from_port        = 10250
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-03c0e6b9341525ba4",
                ]
              - self             = false
              - to_port          = 10250
            },
          - {
              - cidr_blocks      = []
              - description      = "Node to node CoreDNS UDP"
              - from_port        = 53
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "udp"
              - security_groups  = []
              - self             = true
              - to_port          = 53
            },
          - {
              - cidr_blocks      = []
              - description      = "Node to node CoreDNS"
              - from_port        = 53
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = true
              - to_port          = 53
            },
          - {
              - cidr_blocks      = []
              - description      = "Node to node ingress on ephemeral ports"
              - from_port        = 1025
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = true
              - to_port          = 65535
            },
        ] -> (known after apply)
      ~ name                   = "andreibakaushyn-eks-cluster-node-20250110061546426500000005" -> (known after apply)
      ~ owner_id               = "443370672158" -> (known after apply)
        tags                   = {
            "Name"                                              = "andreibakaushyn-eks-cluster-node"
            "kubernetes.io/cluster/andreibakaushyn-eks-cluster" = "owned"
        }
      ~ vpc_id                 = "vpc-0ba16865d0655a924" -> "vpc-0f94af6bfa48d0340" # forces replacement
        # (4 unchanged attributes hidden)
    }

  # module.eks.aws_security_group_rule.cluster["ingress_nodes_443"] must be replaced
+/- resource "aws_security_group_rule" "cluster" {
      ~ id                       = "sgrule-996235389" -> (known after apply)
      ~ security_group_id        = "sg-03c0e6b9341525ba4" -> (known after apply) # forces replacement
      ~ security_group_rule_id   = "sgr-03f622915056c7a50" -> (known after apply)
      ~ source_security_group_id = "sg-08c93bce6bb4d565b" -> (known after apply) # forces replacement
        # (6 unchanged attributes hidden)
    }

  # module.eks.aws_security_group_rule.node["egress_all"] must be replaced
+/- resource "aws_security_group_rule" "node" {
      ~ id                       = "sgrule-2839045680" -> (known after apply)
      ~ security_group_id        = "sg-08c93bce6bb4d565b" -> (known after apply) # forces replacement
      ~ security_group_rule_id   = "sgr-035814a295dbf4faf" -> (known after apply)
      + source_security_group_id = (known after apply)
        # (8 unchanged attributes hidden)
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_443"] must be replaced
+/- resource "aws_security_group_rule" "node" {
      ~ id                       = "sgrule-2875691931" -> (known after apply)
      ~ security_group_id        = "sg-08c93bce6bb4d565b" -> (known after apply) # forces replacement
      ~ security_group_rule_id   = "sgr-0d15f037ead564d73" -> (known after apply)
      ~ source_security_group_id = "sg-03c0e6b9341525ba4" -> (known after apply) # forces replacement
        # (7 unchanged attributes hidden)
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"] must be replaced
+/- resource "aws_security_group_rule" "node" {
      ~ id                       = "sgrule-3166968518" -> (known after apply)
      ~ security_group_id        = "sg-08c93bce6bb4d565b" -> (known after apply) # forces replacement
      ~ security_group_rule_id   = "sgr-05d66b887da23feca" -> (known after apply)
      ~ source_security_group_id = "sg-03c0e6b9341525ba4" -> (known after apply) # forces replacement
        # (7 unchanged attributes hidden)
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"] must be replaced
+/- resource "aws_security_group_rule" "node" {
      ~ id                       = "sgrule-1971748176" -> (known after apply)
      ~ security_group_id        = "sg-08c93bce6bb4d565b" -> (known after apply) # forces replacement
      ~ security_group_rule_id   = "sgr-042c1845a9a822ff4" -> (known after apply)
      ~ source_security_group_id = "sg-03c0e6b9341525ba4" -> (known after apply) # forces replacement
        # (7 unchanged attributes hidden)
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"] must be replaced
+/- resource "aws_security_group_rule" "node" {
      ~ id                       = "sgrule-1725579633" -> (known after apply)
      ~ security_group_id        = "sg-08c93bce6bb4d565b" -> (known after apply) # forces replacement
      ~ security_group_rule_id   = "sgr-0dcaeee1f9b408a75" -> (known after apply)
      ~ source_security_group_id = "sg-03c0e6b9341525ba4" -> (known after apply) # forces replacement
        # (7 unchanged attributes hidden)
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"] must be replaced
+/- resource "aws_security_group_rule" "node" {
      ~ id                       = "sgrule-41644730" -> (known after apply)
      ~ security_group_id        = "sg-08c93bce6bb4d565b" -> (known after apply) # forces replacement
      ~ security_group_rule_id   = "sgr-05822b1d2bf4ea87b" -> (known after apply)
      ~ source_security_group_id = "sg-03c0e6b9341525ba4" -> (known after apply) # forces replacement
        # (7 unchanged attributes hidden)
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"] must be replaced
+/- resource "aws_security_group_rule" "node" {
      ~ id                       = "sgrule-2631123574" -> (known after apply)
      ~ security_group_id        = "sg-08c93bce6bb4d565b" -> (known after apply) # forces replacement
      ~ security_group_rule_id   = "sgr-0a9c3030171c45240" -> (known after apply)
      ~ source_security_group_id = "sg-03c0e6b9341525ba4" -> (known after apply) # forces replacement
        # (7 unchanged attributes hidden)
    }

  # module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"] must be replaced
+/- resource "aws_security_group_rule" "node" {
      ~ id                       = "sgrule-2076380562" -> (known after apply)
      ~ security_group_id        = "sg-08c93bce6bb4d565b" -> (known after apply) # forces replacement
      ~ security_group_rule_id   = "sgr-01ba220ae131c0498" -> (known after apply)
      + source_security_group_id = (known after apply)
        # (7 unchanged attributes hidden)
    }

  # module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"] must be replaced
+/- resource "aws_security_group_rule" "node" {
      ~ id                       = "sgrule-2970960803" -> (known after apply)
      ~ security_group_id        = "sg-08c93bce6bb4d565b" -> (known after apply) # forces replacement
      ~ security_group_rule_id   = "sgr-0874cea829103ea98" -> (known after apply)
      + source_security_group_id = (known after apply)
        # (7 unchanged attributes hidden)
    }

  # module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"] must be replaced
+/- resource "aws_security_group_rule" "node" {
      ~ id                       = "sgrule-357228620" -> (known after apply)
      ~ security_group_id        = "sg-08c93bce6bb4d565b" -> (known after apply) # forces replacement
      ~ security_group_rule_id   = "sgr-091582ef3e44f98d8" -> (known after apply)
      + source_security_group_id = (known after apply)
        # (7 unchanged attributes hidden)
    }

  # module.eks.time_sleep.this[0] will be created
  + resource "time_sleep" "this" {
      + create_duration = "30s"
      + id              = (known after apply)
      + triggers        = {
          + "cluster_certificate_authority_data" = (known after apply)
          + "cluster_endpoint"                   = (known after apply)
          + "cluster_name"                       = (known after apply)
          + "cluster_service_cidr"               = (known after apply)
          + "cluster_version"                    = "1.27"
        }
    }

  # module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0] will be created
  + resource "aws_eks_node_group" "this" {
      + ami_type               = (known after apply)
      + arn                    = (known after apply)
      + capacity_type          = (known after apply)
      + cluster_name           = (known after apply)
      + disk_size              = (known after apply)
      + id                     = (known after apply)
      + instance_types         = (known after apply)
      + node_group_name        = (known after apply)
      + node_group_name_prefix = "eks_nodes-"
      + node_role_arn          = "arn:aws:iam::443370672158:role/eks_nodes-eks-node-group-20250110061546425600000004"
      + release_version        = (known after apply)
      + resources              = (known after apply)
      + status                 = (known after apply)
      + subnet_ids             = [
          + "subnet-0112b5f0217883516",
          + "subnet-0ddbd3f0934d0dd36",
        ]
      + tags                   = {
          + "Name" = "eks_nodes"
        }
      + tags_all               = {
          + "Name" = "eks_nodes"
        }
      + version                = "1.27"

      + launch_template {
          + id      = (known after apply)
          + name    = (known after apply)
          + version = (known after apply)
        }

      + node_repair_config (known after apply)

      + scaling_config {
          + desired_size = 1
          + max_size     = 3
          + min_size     = 1
        }

      + timeouts {}

      + update_config {
          + max_unavailable_percentage = 33
        }
    }

  # module.eks.module.eks_managed_node_group["eks_nodes"].aws_launch_template.this[0] will be created
  + resource "aws_launch_template" "this" {
      + arn                    = (known after apply)
      + default_version        = (known after apply)
      + description            = "Custom launch template for eks_nodes EKS managed node group"
      + id                     = (known after apply)
      + latest_version         = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = "eks_nodes-"
      + tags_all               = (known after apply)
      + update_default_version = true
      + vpc_security_group_ids = (known after apply)
        # (2 unchanged attributes hidden)

      + metadata_options {
          + http_endpoint               = "enabled"
          + http_protocol_ipv6          = (known after apply)
          + http_put_response_hop_limit = 2
          + http_tokens                 = "required"
          + instance_metadata_tags      = (known after apply)
        }

      + monitoring {
          + enabled = true
        }

      + tag_specifications {
          + resource_type = "instance"
          + tags          = {
              + "Name" = "eks_nodes"
            }
        }
      + tag_specifications {
          + resource_type = "network-interface"
          + tags          = {
              + "Name" = "eks_nodes"
            }
        }
      + tag_specifications {
          + resource_type = "volume"
          + tags          = {
              + "Name" = "eks_nodes"
            }
        }
    }

  # module.eks.module.eks_managed_node_group["eks_nodes"].module.user_data.null_resource.validate_cluster_service_cidr will be created
  + resource "null_resource" "validate_cluster_service_cidr" {
      + id = (known after apply)
    }

Plan: 19 to add, 0 to change, 13 to destroy.

Changes to Outputs:
  + eks_cluster_name   = (known after apply)
module.eks.aws_security_group.cluster[0]: Creating...
module.eks.aws_security_group.node[0]: Creating...
module.eks.aws_security_group.cluster[0]: Creation complete after 3s [id=sg-088a502ec37046d97]
module.eks.aws_security_group.node[0]: Creation complete after 3s [id=sg-085b1af8b5064f90f]
module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"]: Creating...
module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"]: Creating...
module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"]: Creating...
module.eks.aws_security_group_rule.cluster["ingress_nodes_443"]: Creating...
module.eks.aws_security_group_rule.node["ingress_cluster_443"]: Creating...
module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"]: Creating...
module.eks.aws_security_group_rule.node["egress_all"]: Creating...
module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"]: Creating...
module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"]: Creating...
module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"]: Creating...
module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"]: Creation complete after 1s [id=sgrule-3695739791]
module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"]: Creating...
module.eks.aws_security_group_rule.cluster["ingress_nodes_443"]: Creation complete after 1s [id=sgrule-1066853480]
module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"]: Creation complete after 2s [id=sgrule-1660414963]
module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"]: Creation complete after 3s [id=sgrule-3192837315]
module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"]: Creation complete after 4s [id=sgrule-3483280898]
module.eks.aws_security_group_rule.node["ingress_cluster_443"]: Creation complete after 5s [id=sgrule-4004326473]
module.eks.aws_security_group_rule.node["egress_all"]: Creation complete after 5s [id=sgrule-3337506131]
module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"]: Creation complete after 6s [id=sgrule-437352236]
module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"]: Creation complete after 7s [id=sgrule-3169298517]
module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"]: Creation complete after 8s [id=sgrule-106354744]
module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"]: Creation complete after 8s [id=sgrule-353035289]
module.eks.aws_eks_cluster.this[0]: Creating...
module.eks.aws_eks_cluster.this[0]: Still creating... [10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [1m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [1m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [1m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [1m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [1m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [1m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [2m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [2m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [2m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [2m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [2m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [2m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [3m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [3m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [3m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [3m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [3m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [3m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [4m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [4m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [4m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [4m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [4m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [4m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [5m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [5m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [5m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [5m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [5m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [5m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [6m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [6m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [6m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [6m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [6m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [6m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [7m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [7m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [7m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [7m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [7m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [7m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [8m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [8m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [8m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [8m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [8m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [8m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [9m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [9m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [9m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [9m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [9m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [9m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [10m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [10m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [10m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [10m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still creating... [10m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Creation complete after 10m42s [id=andreibakaushyn-eks-cluster]
module.eks.data.tls_certificate.this[0]: Reading...
module.eks.time_sleep.this[0]: Creating...
module.eks.data.tls_certificate.this[0]: Read complete after 1s [id=99d41e43229a4cdaf4141f3e8310e6d95c31dab9]
module.eks.aws_iam_openid_connect_provider.oidc_provider[0]: Creating...
module.eks.aws_iam_openid_connect_provider.oidc_provider[0]: Creation complete after 1s [id=arn:aws:iam::443370672158:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/D5E0E579AB8AF51B56BD0FD4D7A14A12]
module.eks.time_sleep.this[0]: Still creating... [10s elapsed]
module.eks.time_sleep.this[0]: Still creating... [20s elapsed]
module.eks.time_sleep.this[0]: Still creating... [30s elapsed]
module.eks.time_sleep.this[0]: Creation complete after 30s [id=2025-01-10T08:02:15Z]
module.eks.module.eks_managed_node_group["eks_nodes"].module.user_data.null_resource.validate_cluster_service_cidr: Creating...
module.eks.module.eks_managed_node_group["eks_nodes"].module.user_data.null_resource.validate_cluster_service_cidr: Creation complete after 0s [id=7928485581831085066]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_launch_template.this[0]: Creating...
module.eks.module.eks_managed_node_group["eks_nodes"].aws_launch_template.this[0]: Creation complete after 7s [id=lt-07924cc6e8ac55763]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Creating...
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [10s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [20s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [30s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [40s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [50s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [1m0s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [1m10s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [1m20s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [1m30s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [1m40s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [1m50s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [2m0s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [2m10s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [2m20s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [2m30s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [2m40s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [2m50s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still creating... [3m0s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Creation complete after 3m1s [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005]
module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"] (deposed object 51a487ff): Destroying... [id=sgrule-1725579633]
module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"] (deposed object 8bb2b854): Destroying... [id=sgrule-2631123574]
module.eks.aws_security_group_rule.node["egress_all"] (deposed object 6ab35d79): Destroying... [id=sgrule-2839045680]
module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"] (deposed object 2a109b8e): Destroying... [id=sgrule-1971748176]
module.eks.aws_security_group_rule.node["ingress_cluster_443"] (deposed object 1b6b0295): Destroying... [id=sgrule-2875691931]
module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"] (deposed object 53271141): Destroying... [id=sgrule-41644730]
module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"] (deposed object 5e724ee7): Destroying... [id=sgrule-3166968518]
module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"] (deposed object fd94bfdc): Destroying... [id=sgrule-2076380562]
module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"] (deposed object ac33fc95): Destroying... [id=sgrule-357228620]
module.eks.aws_security_group_rule.cluster["ingress_nodes_443"] (deposed object 805929da): Destroying... [id=sgrule-996235389]
module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"]: Destruction complete after 2s
module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"] (deposed object 7f8f5980): Destroying... [id=sgrule-2970960803]
module.eks.aws_security_group_rule.cluster["ingress_nodes_443"]: Destruction complete after 2s
module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"]: Destruction complete after 2s
module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"]: Destruction complete after 3s
module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"]: Destruction complete after 4s
module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"]: Destruction complete after 4s
module.eks.aws_security_group_rule.node["ingress_cluster_443"]: Destruction complete after 5s
module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"]: Destruction complete after 6s
module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"]: Destruction complete after 7s
module.eks.aws_security_group_rule.node["egress_all"]: Destruction complete after 7s
module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"]: Destruction complete after 6s
module.eks.aws_security_group.cluster[0] (deposed object 9af4aea9): Destroying... [id=sg-03c0e6b9341525ba4]
module.eks.aws_security_group.node[0] (deposed object ee5378a3): Destroying... [id=sg-08c93bce6bb4d565b]
module.eks.aws_security_group.node[0]: Destruction complete after 1s
module.eks.aws_security_group.cluster[0]: Destruction complete after 1s

Apply complete! Resources: 19 added, 0 changed, 13 destroyed.

Outputs:

ecr_repository_url = "443370672158.dkr.ecr.us-east-1.amazonaws.com/andreibakaushyn-eks-repo"
subnets = [
  "subnet-0112b5f0217883516",
  "subnet-0ddbd3f0934d0dd36",
]
vpc_id = "vpc-0f94af6bfa48d0340"
ivcpaladin@ivcpaladin:~/01.HW_automation/eks-infra$ ^C
ivcpaladin@ivcpaladin:~/01.HW_automation/eks-infra$ terraform destroy -auto-approve
Acquiring state lock. This may take a few moments...
module.eks.module.kms.data.aws_caller_identity.current[0]: Reading...
module.kms.data.aws_partition.current[0]: Reading...
module.eks.module.eks_managed_node_group["eks_nodes"].data.aws_caller_identity.current: Reading...
module.eks.module.kms.data.aws_partition.current[0]: Reading...
module.vpc.aws_vpc.this[0]: Refreshing state... [id=vpc-0f94af6bfa48d0340]
module.eks.data.aws_caller_identity.current[0]: Reading...
module.eks.data.aws_partition.current[0]: Reading...
module.eks.data.aws_iam_policy_document.assume_role_policy[0]: Reading...
module.kms.data.aws_caller_identity.current[0]: Reading...
module.eks.aws_cloudwatch_log_group.this[0]: Refreshing state... [id=/aws/eks/andreibakaushyn-eks-cluster/cluster]
module.eks.module.kms.data.aws_partition.current[0]: Read complete after 0s [id=aws]
module.eks.data.aws_partition.current[0]: Read complete after 0s [id=aws]
module.kms.data.aws_partition.current[0]: Read complete after 0s [id=aws]
module.eks.module.eks_managed_node_group["eks_nodes"].data.aws_iam_policy_document.assume_role_policy[0]: Reading...
module.eks.data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2830595799]
aws_ecr_repository.repo: Refreshing state... [id=andreibakaushyn-eks-repo]
module.eks.module.eks_managed_node_group["eks_nodes"].data.aws_partition.current: Reading...
module.eks.module.eks_managed_node_group["eks_nodes"].data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2560088296]
module.eks.module.eks_managed_node_group["eks_nodes"].data.aws_partition.current: Read complete after 0s [id=aws]
module.eks.aws_iam_role.this[0]: Refreshing state... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role.this[0]: Refreshing state... [id=eks_nodes-eks-node-group-20250110061546425600000004]
module.eks.data.aws_iam_policy_document.custom[0]: Reading...
module.eks.data.aws_iam_policy_document.custom[0]: Read complete after 0s [id=513122117]
module.eks.aws_iam_policy.custom[0]: Refreshing state... [id=arn:aws:iam::443370672158:policy/andreibakaushyn-eks-cluster-cluster-20250110061546422300000002]
module.eks.data.aws_caller_identity.current[0]: Read complete after 0s [id=443370672158]
module.eks.data.aws_iam_session_context.current[0]: Reading...
module.eks.data.aws_iam_session_context.current[0]: Read complete after 0s [id=arn:aws:iam::443370672158:user/skefil]
module.eks.module.eks_managed_node_group["eks_nodes"].data.aws_caller_identity.current: Read complete after 0s [id=443370672158]
module.eks.module.kms.data.aws_caller_identity.current[0]: Read complete after 0s [id=443370672158]
module.kms.data.aws_caller_identity.current[0]: Read complete after 0s [id=443370672158]
module.kms.data.aws_iam_policy_document.this[0]: Reading...
module.kms.data.aws_iam_policy_document.this[0]: Read complete after 0s [id=3443338393]
module.kms.aws_kms_key.this[0]: Refreshing state... [id=22291a3b-0f32-4c7a-8638-273a510bc8e5]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEKSWorkerNodePolicy"]: Refreshing state... [id=eks_nodes-eks-node-group-20250110061546425600000004-20250110061546971800000009]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEC2ContainerRegistryReadOnly"]: Refreshing state... [id=eks_nodes-eks-node-group-20250110061546425600000004-20250110061546968500000008]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEKS_CNI_Policy"]: Refreshing state... [id=eks_nodes-eks-node-group-20250110061546425600000004-2025011006154706290000000b]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"]: Refreshing state... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-20250110061546877000000006]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"]: Refreshing state... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-2025011006154698470000000a]
module.eks.aws_iam_role_policy_attachment.custom[0]: Refreshing state... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-20250110061546880000000007]
module.eks.module.kms.data.aws_iam_policy_document.this[0]: Reading...
module.eks.module.kms.data.aws_iam_policy_document.this[0]: Read complete after 0s [id=1567912467]
module.eks.module.kms.aws_kms_key.this[0]: Refreshing state... [id=8cfa3c13-08c3-4e9e-b9cb-46ee8110a607]
module.eks.module.kms.aws_kms_alias.this["cluster"]: Refreshing state... [id=alias/eks/andreibakaushyn-eks-cluster]
module.eks.aws_iam_policy.cluster_encryption[0]: Refreshing state... [id=arn:aws:iam::443370672158:policy/andreibakaushyn-eks-cluster-cluster-ClusterEncryption2025011006160831020000000f]
module.vpc.aws_default_security_group.this[0]: Refreshing state... [id=sg-0c02e05fccf0617d2]
module.vpc.aws_default_route_table.default[0]: Refreshing state... [id=rtb-0caf6ddac20ceac43]
module.eks.aws_security_group.cluster[0]: Refreshing state... [id=sg-088a502ec37046d97]
module.eks.aws_security_group.node[0]: Refreshing state... [id=sg-085b1af8b5064f90f]
module.vpc.aws_subnet.private[0]: Refreshing state... [id=subnet-0112b5f0217883516]
module.vpc.aws_subnet.private[1]: Refreshing state... [id=subnet-0ddbd3f0934d0dd36]
module.vpc.aws_route_table.public[0]: Refreshing state... [id=rtb-0ddb88ae0c11047ae]
module.vpc.aws_default_network_acl.this[0]: Refreshing state... [id=acl-0168ec7a973b29366]
module.vpc.aws_subnet.public[0]: Refreshing state... [id=subnet-07f840acc8cd65e34]
module.vpc.aws_subnet.public[1]: Refreshing state... [id=subnet-033a324de9723c0ad]
module.vpc.aws_route_table.private[0]: Refreshing state... [id=rtb-0116849f4ed468aba]
module.vpc.aws_internet_gateway.this[0]: Refreshing state... [id=igw-0bb92246875393fbd]
module.eks.aws_iam_role_policy_attachment.cluster_encryption[0]: Refreshing state... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-20250110061608606400000010]
module.vpc.aws_route_table_association.private[0]: Refreshing state... [id=rtbassoc-015a0156afbcf68d8]
module.vpc.aws_route_table_association.private[1]: Refreshing state... [id=rtbassoc-0a4a42bfc4b07871c]
module.vpc.aws_route_table_association.public[0]: Refreshing state... [id=rtbassoc-08141e1b58273d716]
module.vpc.aws_route_table_association.public[1]: Refreshing state... [id=rtbassoc-0e1430235f223c27d]
module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"]: Refreshing state... [id=sgrule-3169298517]
module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"]: Refreshing state... [id=sgrule-353035289]
module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"]: Refreshing state... [id=sgrule-3695739791]
module.eks.aws_security_group_rule.node["egress_all"]: Refreshing state... [id=sgrule-3337506131]
module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"]: Refreshing state... [id=sgrule-106354744]
module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"]: Refreshing state... [id=sgrule-437352236]
module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"]: Refreshing state... [id=sgrule-3192837315]
module.eks.aws_security_group_rule.node["ingress_cluster_443"]: Refreshing state... [id=sgrule-4004326473]
module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"]: Refreshing state... [id=sgrule-1660414963]
module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"]: Refreshing state... [id=sgrule-3483280898]
module.eks.aws_security_group_rule.cluster["ingress_nodes_443"]: Refreshing state... [id=sgrule-1066853480]
module.vpc.aws_route.public_internet_gateway[0]: Refreshing state... [id=r-rtb-0ddb88ae0c11047ae1080289494]
module.vpc.aws_eip.nat[0]: Refreshing state... [id=eipalloc-04b382c1f05a73beb]
module.eks.aws_eks_cluster.this[0]: Refreshing state... [id=andreibakaushyn-eks-cluster]
module.vpc.aws_nat_gateway.this[0]: Refreshing state... [id=nat-0c4c1c9e22c905b47]
module.vpc.aws_route.private_nat_gateway[0]: Refreshing state... [id=r-rtb-0116849f4ed468aba1080289494]
module.eks.data.tls_certificate.this[0]: Reading...
module.eks.time_sleep.this[0]: Refreshing state... [id=2025-01-10T08:02:15Z]
module.eks.module.eks_managed_node_group["eks_nodes"].module.user_data.null_resource.validate_cluster_service_cidr: Refreshing state... [id=7928485581831085066]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_launch_template.this[0]: Refreshing state... [id=lt-07924cc6e8ac55763]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Refreshing state... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005]
module.eks.data.tls_certificate.this[0]: Read complete after 0s [id=99d41e43229a4cdaf4141f3e8310e6d95c31dab9]
module.eks.aws_iam_openid_connect_provider.oidc_provider[0]: Refreshing state... [id=arn:aws:iam::443370672158:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/D5E0E579AB8AF51B56BD0FD4D7A14A12]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_ecr_repository.repo will be destroyed
  - resource "aws_ecr_repository" "repo" {
      - arn                  = "arn:aws:ecr:us-east-1:443370672158:repository/andreibakaushyn-eks-repo" -> null
      - id                   = "andreibakaushyn-eks-repo" -> null
      - image_tag_mutability = "MUTABLE" -> null
      - name                 = "andreibakaushyn-eks-repo" -> null
      - registry_id          = "443370672158" -> null
      - repository_url       = "443370672158.dkr.ecr.us-east-1.amazonaws.com/andreibakaushyn-eks-repo" -> null
      - tags                 = {} -> null
      - tags_all             = {} -> null

      - encryption_configuration {
          - encryption_type = "AES256" -> null
            # (1 unchanged attribute hidden)
        }

      - image_scanning_configuration {
          - scan_on_push = false -> null
        }
    }

  # module.eks.aws_cloudwatch_log_group.this[0] will be destroyed
  - resource "aws_cloudwatch_log_group" "this" {
      - arn               = "arn:aws:logs:us-east-1:443370672158:log-group:/aws/eks/andreibakaushyn-eks-cluster/cluster" -> null
      - id                = "/aws/eks/andreibakaushyn-eks-cluster/cluster" -> null
      - log_group_class   = "STANDARD" -> null
      - name              = "/aws/eks/andreibakaushyn-eks-cluster/cluster" -> null
      - retention_in_days = 90 -> null
      - skip_destroy      = false -> null
      - tags              = {
          - "Name" = "/aws/eks/andreibakaushyn-eks-cluster/cluster"
        } -> null
      - tags_all          = {
          - "Name" = "/aws/eks/andreibakaushyn-eks-cluster/cluster"
        } -> null
        # (2 unchanged attributes hidden)
    }

  # module.eks.aws_eks_cluster.this[0] will be destroyed
  - resource "aws_eks_cluster" "this" {
      - arn                           = "arn:aws:eks:us-east-1:443370672158:cluster/andreibakaushyn-eks-cluster" -> null
      - bootstrap_self_managed_addons = true -> null
      - certificate_authority         = [
          - {
              - data = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJUlFHRG1LVzJjRjB3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBeE1UQXdOelV4TlROYUZ3MHpOVEF4TURnd056VTJOVE5hTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURmZTNTL1hsMDZLUXBXOUxaa1l0bEVidnQ3LzUrcE80bUIrd1VwQytBQmtiWnpsOUJqM3prWlZuS0YKcXh5a01QeXBIS084WjlJYUYva3NyVm9aMUczMVdzckNuZU5pOGQ5RVlBY05QSGZrVzN5Zk1nSkJzQjl2a3Q3YwpGeVpBZHBBcnYwQmgvc1JWalpPcEpGRFJLRTJDZ2VYczBtZHBJOU5zZFRraHlNb2haY1VDeEdzRVVDZUVXc3V0CjllVkhlNUxBbEpsWENJclFmQVVkTGxwU0Yrc0daQm04R2d3cmVJRXpCcEorMVpCamsxL2FSK1BCUlBvL3RROE8KcnNVVi9VcUZQaDZMcFRDOXlTV2pzbkdUQlB5QjNNYkRicG1iS2NLSG95akg1QjVqeTBPOXgzMGtkWTRnYXVvdwpQMnlrb2FFTGI4dDQwOEYwb2E5dUNlZ1d1VVJwQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJRcTdIaDlCSzVzdjRXOFpsUGVTNC9qenRyMEdUQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQU50SzczOFJ3Qwo4cTBZUG5BdzlqMGhiZ0kzTEltRWd6UXJ5N2ZnNkJaNXQzYzVGME5QWlhQTTlOM1dvOUY5VUIrUWxKVld2MzI4CklHNDJSNjlpaHJmZEpmNm9FeWxySnpJZjFUaWp4dzdoRzgwRkFreERtaVE2NVlORGRBQ0J0azQ3WE14WWErTWMKaXJEMkhlWlpPbGg2QTRtN2JQb1MvbzQ1UndYVElJamxBUDF4R3N2OGcvbWZTSmpKOU9zdkhLa2d3ajdsMFIxWQpZdGNsTEFTWXRvN0pneEZqeDZpTWhiQzhpMTJBRGVjbGNQVm94bHBCNkhCOU1uWXowWmtqTUpXU1RZMXY4cEhqCjNMandXOWdCblFMdU4yNldWbVhtUGNaTCtnUEtGVUplUWpHYm0yUHVTYTFMWkdUSGNWRndKN051NHVjcWJsK1MKa1lwbWN3Tlg1NUxvCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
            },
        ] -> null
      - created_at                    = "2025-01-10T07:51:03Z" -> null
      - enabled_cluster_log_types     = [
          - "api",
          - "audit",
          - "authenticator",
        ] -> null
      - endpoint                      = "https://D5E0E579AB8AF51B56BD0FD4D7A14A12.gr7.us-east-1.eks.amazonaws.com" -> null
      - id                            = "andreibakaushyn-eks-cluster" -> null
      - identity                      = [
          - {
              - oidc = [
                  - {
                      - issuer = "https://oidc.eks.us-east-1.amazonaws.com/id/D5E0E579AB8AF51B56BD0FD4D7A14A12"
                    },
                ]
            },
        ] -> null
      - name                          = "andreibakaushyn-eks-cluster" -> null
      - platform_version              = "eks.37" -> null
      - role_arn                      = "arn:aws:iam::443370672158:role/andreibakaushyn-eks-cluster-cluster-20250110061546422400000003" -> null
      - status                        = "ACTIVE" -> null
      - tags                          = {
          - "terraform-aws-modules" = "eks"
        } -> null
      - tags_all                      = {
          - "terraform-aws-modules" = "eks"
        } -> null
      - version                       = "1.27" -> null

      - access_config {
          - authentication_mode                         = "API_AND_CONFIG_MAP" -> null
          - bootstrap_cluster_creator_admin_permissions = false -> null
        }

      - encryption_config {
          - resources = [
              - "secrets",
            ] -> null

          - provider {
              - key_arn = "arn:aws:kms:us-east-1:443370672158:key/8cfa3c13-08c3-4e9e-b9cb-46ee8110a607" -> null
            }
        }

      - kubernetes_network_config {
          - ip_family         = "ipv4" -> null
          - service_ipv4_cidr = "172.20.0.0/16" -> null
            # (1 unchanged attribute hidden)

          - elastic_load_balancing {
              - enabled = false -> null
            }
        }

      - timeouts {}

      - upgrade_policy {
          - support_type = "EXTENDED" -> null
        }

      - vpc_config {
          - cluster_security_group_id = "sg-0c43da6f6f3cd06b0" -> null
          - endpoint_private_access   = true -> null
          - endpoint_public_access    = false -> null
          - public_access_cidrs       = [
              - "0.0.0.0/0",
            ] -> null
          - security_group_ids        = [
              - "sg-088a502ec37046d97",
            ] -> null
          - subnet_ids                = [
              - "subnet-0112b5f0217883516",
              - "subnet-0ddbd3f0934d0dd36",
            ] -> null
          - vpc_id                    = "vpc-0f94af6bfa48d0340" -> null
        }
    }

  # module.eks.aws_iam_openid_connect_provider.oidc_provider[0] will be destroyed
  - resource "aws_iam_openid_connect_provider" "oidc_provider" {
      - arn             = "arn:aws:iam::443370672158:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/D5E0E579AB8AF51B56BD0FD4D7A14A12" -> null
      - client_id_list  = [
          - "sts.amazonaws.com",
        ] -> null
      - id              = "arn:aws:iam::443370672158:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/D5E0E579AB8AF51B56BD0FD4D7A14A12" -> null
      - tags            = {
          - "Name" = "andreibakaushyn-eks-cluster-eks-irsa"
        } -> null
      - tags_all        = {
          - "Name" = "andreibakaushyn-eks-cluster-eks-irsa"
        } -> null
      - thumbprint_list = [
          - "9e99a48a9960b14926bb7f3b02e22da2b0ab7280",
        ] -> null
      - url             = "oidc.eks.us-east-1.amazonaws.com/id/D5E0E579AB8AF51B56BD0FD4D7A14A12" -> null
    }

  # module.eks.aws_iam_policy.cluster_encryption[0] will be destroyed
  - resource "aws_iam_policy" "cluster_encryption" {
      - arn              = "arn:aws:iam::443370672158:policy/andreibakaushyn-eks-cluster-cluster-ClusterEncryption2025011006160831020000000f" -> null
      - attachment_count = 1 -> null
      - description      = "Cluster encryption policy to allow cluster role to utilize CMK provided" -> null
      - id               = "arn:aws:iam::443370672158:policy/andreibakaushyn-eks-cluster-cluster-ClusterEncryption2025011006160831020000000f" -> null
      - name             = "andreibakaushyn-eks-cluster-cluster-ClusterEncryption2025011006160831020000000f" -> null
      - name_prefix      = "andreibakaushyn-eks-cluster-cluster-ClusterEncryption" -> null
      - path             = "/" -> null
      - policy           = jsonencode(
            {
              - Statement = [
                  - {
                      - Action   = [
                          - "kms:Encrypt",
                          - "kms:Decrypt",
                          - "kms:ListGrants",
                          - "kms:DescribeKey",
                        ]
                      - Effect   = "Allow"
                      - Resource = "arn:aws:kms:us-east-1:443370672158:key/8cfa3c13-08c3-4e9e-b9cb-46ee8110a607"
                    },
                ]
              - Version   = "2012-10-17"
            }
        ) -> null
      - policy_id        = "ANPAWOOXTSAPIONQ37OAE" -> null
      - tags             = {} -> null
      - tags_all         = {} -> null
    }

  # module.eks.aws_iam_policy.custom[0] will be destroyed
  - resource "aws_iam_policy" "custom" {
      - arn              = "arn:aws:iam::443370672158:policy/andreibakaushyn-eks-cluster-cluster-20250110061546422300000002" -> null
      - attachment_count = 1 -> null
      - id               = "arn:aws:iam::443370672158:policy/andreibakaushyn-eks-cluster-cluster-20250110061546422300000002" -> null
      - name             = "andreibakaushyn-eks-cluster-cluster-20250110061546422300000002" -> null
      - name_prefix      = "andreibakaushyn-eks-cluster-cluster-" -> null
      - path             = "/" -> null
      - policy           = jsonencode(
            {
              - Statement = [
                  - {
                      - Action    = [
                          - "ec2:RunInstances",
                          - "ec2:CreateLaunchTemplate",
                          - "ec2:CreateFleet",
                        ]
                      - Condition = {
                          - StringEquals = {
                              - "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                          - StringLike   = {
                              - "aws:RequestTag/eks:kubernetes-node-class-name" = "*"
                              - "aws:RequestTag/eks:kubernetes-node-pool-name"  = "*"
                            }
                        }
                      - Effect    = "Allow"
                      - Resource  = "*"
                      - Sid       = "Compute"
                    },
                  - {
                      - Action    = [
                          - "ec2:CreateVolume",
                          - "ec2:CreateSnapshot",
                        ]
                      - Condition = {
                          - StringEquals = {
                              - "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                        }
                      - Effect    = "Allow"
                      - Resource  = [
                          - "arn:aws:ec2:*:*:volume/*",
                          - "arn:aws:ec2:*:*:snapshot/*",
                        ]
                      - Sid       = "Storage"
                    },
                  - {
                      - Action    = "ec2:CreateNetworkInterface"
                      - Condition = {
                          - StringEquals = {
                              - "aws:RequestTag/eks:eks-cluster-name"         = "${aws:PrincipalTag/eks:eks-cluster-name}"
                              - "aws:RequestTag/eks:kubernetes-cni-node-name" = "*"
                            }
                        }
                      - Effect    = "Allow"
                      - Resource  = "*"
                      - Sid       = "Networking"
                    },
                  - {
                      - Action    = [
                          - "elasticloadbalancing:CreateTargetGroup",
                          - "elasticloadbalancing:CreateRule",
                          - "elasticloadbalancing:CreateLoadBalancer",
                          - "elasticloadbalancing:CreateListener",
                          - "ec2:CreateSecurityGroup",
                        ]
                      - Condition = {
                          - StringEquals = {
                              - "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                        }
                      - Effect    = "Allow"
                      - Resource  = "*"
                      - Sid       = "LoadBalancer"
                    },
                  - {
                      - Action    = "shield:CreateProtection"
                      - Condition = {
                          - StringEquals = {
                              - "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                        }
                      - Effect    = "Allow"
                      - Resource  = "*"
                      - Sid       = "ShieldProtection"
                    },
                  - {
                      - Action    = "shield:TagResource"
                      - Condition = {
                          - StringEquals = {
                              - "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                        }
                      - Effect    = "Allow"
                      - Resource  = "arn:aws:shield::*:protection/*"
                      - Sid       = "ShieldTagResource"
                    },
                ]
              - Version   = "2012-10-17"
            }
        ) -> null
      - policy_id        = "ANPAWOOXTSAPBGYRAQ727" -> null
      - tags             = {} -> null
      - tags_all         = {} -> null
        # (1 unchanged attribute hidden)
    }

  # module.eks.aws_iam_role.this[0] will be destroyed
  - resource "aws_iam_role" "this" {
      - arn                   = "arn:aws:iam::443370672158:role/andreibakaushyn-eks-cluster-cluster-20250110061546422400000003" -> null
      - assume_role_policy    = jsonencode(
            {
              - Statement = [
                  - {
                      - Action    = [
                          - "sts:TagSession",
                          - "sts:AssumeRole",
                        ]
                      - Effect    = "Allow"
                      - Principal = {
                          - Service = "eks.amazonaws.com"
                        }
                      - Sid       = "EKSClusterAssumeRole"
                    },
                ]
              - Version   = "2012-10-17"
            }
        ) -> null
      - create_date           = "2025-01-10T06:15:46Z" -> null
      - force_detach_policies = true -> null
      - id                    = "andreibakaushyn-eks-cluster-cluster-20250110061546422400000003" -> null
      - managed_policy_arns   = [
          - "arn:aws:iam::443370672158:policy/andreibakaushyn-eks-cluster-cluster-20250110061546422300000002",
          - "arn:aws:iam::443370672158:policy/andreibakaushyn-eks-cluster-cluster-ClusterEncryption2025011006160831020000000f",
          - "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
          - "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController",
        ] -> null
      - max_session_duration  = 3600 -> null
      - name                  = "andreibakaushyn-eks-cluster-cluster-20250110061546422400000003" -> null
      - name_prefix           = "andreibakaushyn-eks-cluster-cluster-" -> null
      - path                  = "/" -> null
      - tags                  = {} -> null
      - tags_all              = {} -> null
      - unique_id             = "AROAWOOXTSAPPFWXKBWAF" -> null
        # (2 unchanged attributes hidden)
    }

  # module.eks.aws_iam_role_policy_attachment.cluster_encryption[0] will be destroyed
  - resource "aws_iam_role_policy_attachment" "cluster_encryption" {
      - id         = "andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-20250110061608606400000010" -> null
      - policy_arn = "arn:aws:iam::443370672158:policy/andreibakaushyn-eks-cluster-cluster-ClusterEncryption2025011006160831020000000f" -> null
      - role       = "andreibakaushyn-eks-cluster-cluster-20250110061546422400000003" -> null
    }

  # module.eks.aws_iam_role_policy_attachment.custom[0] will be destroyed
  - resource "aws_iam_role_policy_attachment" "custom" {
      - id         = "andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-20250110061546880000000007" -> null
      - policy_arn = "arn:aws:iam::443370672158:policy/andreibakaushyn-eks-cluster-cluster-20250110061546422300000002" -> null
      - role       = "andreibakaushyn-eks-cluster-cluster-20250110061546422400000003" -> null
    }

  # module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"] will be destroyed
  - resource "aws_iam_role_policy_attachment" "this" {
      - id         = "andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-2025011006154698470000000a" -> null
      - policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy" -> null
      - role       = "andreibakaushyn-eks-cluster-cluster-20250110061546422400000003" -> null
    }

  # module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"] will be destroyed
  - resource "aws_iam_role_policy_attachment" "this" {
      - id         = "andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-20250110061546877000000006" -> null
      - policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController" -> null
      - role       = "andreibakaushyn-eks-cluster-cluster-20250110061546422400000003" -> null
    }

  # module.eks.aws_security_group.cluster[0] will be destroyed
  - resource "aws_security_group" "cluster" {
      - arn                    = "arn:aws:ec2:us-east-1:443370672158:security-group/sg-088a502ec37046d97" -> null
      - description            = "EKS cluster security group" -> null
      - egress                 = [] -> null
      - id                     = "sg-088a502ec37046d97" -> null
      - ingress                = [
          - {
              - cidr_blocks      = []
              - description      = "Node groups to cluster API"
              - from_port        = 443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-085b1af8b5064f90f",
                ]
              - self             = false
              - to_port          = 443
            },
        ] -> null
      - name                   = "andreibakaushyn-eks-cluster-cluster-20250110075049824800000001" -> null
      - name_prefix            = "andreibakaushyn-eks-cluster-cluster-" -> null
      - owner_id               = "443370672158" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {
          - "Name" = "andreibakaushyn-eks-cluster-cluster"
        } -> null
      - tags_all               = {
          - "Name" = "andreibakaushyn-eks-cluster-cluster"
        } -> null
      - vpc_id                 = "vpc-0f94af6bfa48d0340" -> null
    }

  # module.eks.aws_security_group.node[0] will be destroyed
  - resource "aws_security_group" "node" {
      - arn                    = "arn:aws:ec2:us-east-1:443370672158:security-group/sg-085b1af8b5064f90f" -> null
      - description            = "EKS node shared security group" -> null
      - egress                 = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = "Allow all egress"
              - from_port        = 0
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "-1"
              - security_groups  = []
              - self             = false
              - to_port          = 0
            },
        ] -> null
      - id                     = "sg-085b1af8b5064f90f" -> null
      - ingress                = [
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node 4443/tcp webhook"
              - from_port        = 4443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-088a502ec37046d97",
                ]
              - self             = false
              - to_port          = 4443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node 6443/tcp webhook"
              - from_port        = 6443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-088a502ec37046d97",
                ]
              - self             = false
              - to_port          = 6443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node 8443/tcp webhook"
              - from_port        = 8443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-088a502ec37046d97",
                ]
              - self             = false
              - to_port          = 8443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node 9443/tcp webhook"
              - from_port        = 9443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-088a502ec37046d97",
                ]
              - self             = false
              - to_port          = 9443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node groups"
              - from_port        = 443
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-088a502ec37046d97",
                ]
              - self             = false
              - to_port          = 443
            },
          - {
              - cidr_blocks      = []
              - description      = "Cluster API to node kubelets"
              - from_port        = 10250
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = [
                  - "sg-088a502ec37046d97",
                ]
              - self             = false
              - to_port          = 10250
            },
          - {
              - cidr_blocks      = []
              - description      = "Node to node CoreDNS UDP"
              - from_port        = 53
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "udp"
              - security_groups  = []
              - self             = true
              - to_port          = 53
            },
          - {
              - cidr_blocks      = []
              - description      = "Node to node CoreDNS"
              - from_port        = 53
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = true
              - to_port          = 53
            },
          - {
              - cidr_blocks      = []
              - description      = "Node to node ingress on ephemeral ports"
              - from_port        = 1025
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = true
              - to_port          = 65535
            },
        ] -> null
      - name                   = "andreibakaushyn-eks-cluster-node-20250110075049826000000002" -> null
      - name_prefix            = "andreibakaushyn-eks-cluster-node-" -> null
      - owner_id               = "443370672158" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {
          - "Name"                                              = "andreibakaushyn-eks-cluster-node"
          - "kubernetes.io/cluster/andreibakaushyn-eks-cluster" = "owned"
        } -> null
      - tags_all               = {
          - "Name"                                              = "andreibakaushyn-eks-cluster-node"
          - "kubernetes.io/cluster/andreibakaushyn-eks-cluster" = "owned"
        } -> null
      - vpc_id                 = "vpc-0f94af6bfa48d0340" -> null
    }

  # module.eks.aws_security_group_rule.cluster["ingress_nodes_443"] will be destroyed
  - resource "aws_security_group_rule" "cluster" {
      - description              = "Node groups to cluster API" -> null
      - from_port                = 443 -> null
      - id                       = "sgrule-1066853480" -> null
      - protocol                 = "tcp" -> null
      - security_group_id        = "sg-088a502ec37046d97" -> null
      - security_group_rule_id   = "sgr-03e9618d73228f351" -> null
      - self                     = false -> null
      - source_security_group_id = "sg-085b1af8b5064f90f" -> null
      - to_port                  = 443 -> null
      - type                     = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["egress_all"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - cidr_blocks            = [
          - "0.0.0.0/0",
        ] -> null
      - description            = "Allow all egress" -> null
      - from_port              = 0 -> null
      - id                     = "sgrule-3337506131" -> null
      - prefix_list_ids        = [] -> null
      - protocol               = "-1" -> null
      - security_group_id      = "sg-085b1af8b5064f90f" -> null
      - security_group_rule_id = "sgr-0c96f0cb592cd58b0" -> null
      - self                   = false -> null
      - to_port                = 0 -> null
      - type                   = "egress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_443"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description              = "Cluster API to node groups" -> null
      - from_port                = 443 -> null
      - id                       = "sgrule-4004326473" -> null
      - prefix_list_ids          = [] -> null
      - protocol                 = "tcp" -> null
      - security_group_id        = "sg-085b1af8b5064f90f" -> null
      - security_group_rule_id   = "sgr-07778f8b3cebc6b04" -> null
      - self                     = false -> null
      - source_security_group_id = "sg-088a502ec37046d97" -> null
      - to_port                  = 443 -> null
      - type                     = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description              = "Cluster API to node 4443/tcp webhook" -> null
      - from_port                = 4443 -> null
      - id                       = "sgrule-3695739791" -> null
      - prefix_list_ids          = [] -> null
      - protocol                 = "tcp" -> null
      - security_group_id        = "sg-085b1af8b5064f90f" -> null
      - security_group_rule_id   = "sgr-09e60607d96f39a4e" -> null
      - self                     = false -> null
      - source_security_group_id = "sg-088a502ec37046d97" -> null
      - to_port                  = 4443 -> null
      - type                     = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description              = "Cluster API to node 6443/tcp webhook" -> null
      - from_port                = 6443 -> null
      - id                       = "sgrule-353035289" -> null
      - prefix_list_ids          = [] -> null
      - protocol                 = "tcp" -> null
      - security_group_id        = "sg-085b1af8b5064f90f" -> null
      - security_group_rule_id   = "sgr-01bc8fa201ed3a9aa" -> null
      - self                     = false -> null
      - source_security_group_id = "sg-088a502ec37046d97" -> null
      - to_port                  = 6443 -> null
      - type                     = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description              = "Cluster API to node 8443/tcp webhook" -> null
      - from_port                = 8443 -> null
      - id                       = "sgrule-106354744" -> null
      - prefix_list_ids          = [] -> null
      - protocol                 = "tcp" -> null
      - security_group_id        = "sg-085b1af8b5064f90f" -> null
      - security_group_rule_id   = "sgr-09123105f64763e57" -> null
      - self                     = false -> null
      - source_security_group_id = "sg-088a502ec37046d97" -> null
      - to_port                  = 8443 -> null
      - type                     = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description              = "Cluster API to node 9443/tcp webhook" -> null
      - from_port                = 9443 -> null
      - id                       = "sgrule-1660414963" -> null
      - prefix_list_ids          = [] -> null
      - protocol                 = "tcp" -> null
      - security_group_id        = "sg-085b1af8b5064f90f" -> null
      - security_group_rule_id   = "sgr-0c1eac81a398f3eec" -> null
      - self                     = false -> null
      - source_security_group_id = "sg-088a502ec37046d97" -> null
      - to_port                  = 9443 -> null
      - type                     = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description              = "Cluster API to node kubelets" -> null
      - from_port                = 10250 -> null
      - id                       = "sgrule-3169298517" -> null
      - prefix_list_ids          = [] -> null
      - protocol                 = "tcp" -> null
      - security_group_id        = "sg-085b1af8b5064f90f" -> null
      - security_group_rule_id   = "sgr-02b42186f27ea91bc" -> null
      - self                     = false -> null
      - source_security_group_id = "sg-088a502ec37046d97" -> null
      - to_port                  = 10250 -> null
      - type                     = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description            = "Node to node ingress on ephemeral ports" -> null
      - from_port              = 1025 -> null
      - id                     = "sgrule-3483280898" -> null
      - prefix_list_ids        = [] -> null
      - protocol               = "tcp" -> null
      - security_group_id      = "sg-085b1af8b5064f90f" -> null
      - security_group_rule_id = "sgr-0c4842a395ae547cc" -> null
      - self                   = true -> null
      - to_port                = 65535 -> null
      - type                   = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description            = "Node to node CoreDNS" -> null
      - from_port              = 53 -> null
      - id                     = "sgrule-3192837315" -> null
      - prefix_list_ids        = [] -> null
      - protocol               = "tcp" -> null
      - security_group_id      = "sg-085b1af8b5064f90f" -> null
      - security_group_rule_id = "sgr-0287900f9ae35e718" -> null
      - self                   = true -> null
      - to_port                = 53 -> null
      - type                   = "ingress" -> null
    }

  # module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"] will be destroyed
  - resource "aws_security_group_rule" "node" {
      - description            = "Node to node CoreDNS UDP" -> null
      - from_port              = 53 -> null
      - id                     = "sgrule-437352236" -> null
      - prefix_list_ids        = [] -> null
      - protocol               = "udp" -> null
      - security_group_id      = "sg-085b1af8b5064f90f" -> null
      - security_group_rule_id = "sgr-0ce17a469b2dcefad" -> null
      - self                   = true -> null
      - to_port                = 53 -> null
      - type                   = "ingress" -> null
    }

  # module.eks.time_sleep.this[0] will be destroyed
  - resource "time_sleep" "this" {
      - create_duration = "30s" -> null
      - id              = "2025-01-10T08:02:15Z" -> null
      - triggers        = {
          - "cluster_certificate_authority_data" = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJUlFHRG1LVzJjRjB3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBeE1UQXdOelV4TlROYUZ3MHpOVEF4TURnd056VTJOVE5hTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURmZTNTL1hsMDZLUXBXOUxaa1l0bEVidnQ3LzUrcE80bUIrd1VwQytBQmtiWnpsOUJqM3prWlZuS0YKcXh5a01QeXBIS084WjlJYUYva3NyVm9aMUczMVdzckNuZU5pOGQ5RVlBY05QSGZrVzN5Zk1nSkJzQjl2a3Q3YwpGeVpBZHBBcnYwQmgvc1JWalpPcEpGRFJLRTJDZ2VYczBtZHBJOU5zZFRraHlNb2haY1VDeEdzRVVDZUVXc3V0CjllVkhlNUxBbEpsWENJclFmQVVkTGxwU0Yrc0daQm04R2d3cmVJRXpCcEorMVpCamsxL2FSK1BCUlBvL3RROE8KcnNVVi9VcUZQaDZMcFRDOXlTV2pzbkdUQlB5QjNNYkRicG1iS2NLSG95akg1QjVqeTBPOXgzMGtkWTRnYXVvdwpQMnlrb2FFTGI4dDQwOEYwb2E5dUNlZ1d1VVJwQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJRcTdIaDlCSzVzdjRXOFpsUGVTNC9qenRyMEdUQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQU50SzczOFJ3Qwo4cTBZUG5BdzlqMGhiZ0kzTEltRWd6UXJ5N2ZnNkJaNXQzYzVGME5QWlhQTTlOM1dvOUY5VUIrUWxKVld2MzI4CklHNDJSNjlpaHJmZEpmNm9FeWxySnpJZjFUaWp4dzdoRzgwRkFreERtaVE2NVlORGRBQ0J0azQ3WE14WWErTWMKaXJEMkhlWlpPbGg2QTRtN2JQb1MvbzQ1UndYVElJamxBUDF4R3N2OGcvbWZTSmpKOU9zdkhLa2d3ajdsMFIxWQpZdGNsTEFTWXRvN0pneEZqeDZpTWhiQzhpMTJBRGVjbGNQVm94bHBCNkhCOU1uWXowWmtqTUpXU1RZMXY4cEhqCjNMandXOWdCblFMdU4yNldWbVhtUGNaTCtnUEtGVUplUWpHYm0yUHVTYTFMWkdUSGNWRndKN051NHVjcWJsK1MKa1lwbWN3Tlg1NUxvCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
          - "cluster_endpoint"                   = "https://D5E0E579AB8AF51B56BD0FD4D7A14A12.gr7.us-east-1.eks.amazonaws.com"
          - "cluster_name"                       = "andreibakaushyn-eks-cluster"
          - "cluster_service_cidr"               = "172.20.0.0/16"
          - "cluster_version"                    = "1.27"
        } -> null
    }

  # module.kms.aws_kms_key.this[0] will be destroyed
  - resource "aws_kms_key" "this" {
      - arn                                = "arn:aws:kms:us-east-1:443370672158:key/22291a3b-0f32-4c7a-8638-273a510bc8e5" -> null
      - bypass_policy_lockout_safety_check = false -> null
      - customer_master_key_spec           = "SYMMETRIC_DEFAULT" -> null
      - description                        = "KMS key for EKS cluster" -> null
      - enable_key_rotation                = true -> null
      - id                                 = "22291a3b-0f32-4c7a-8638-273a510bc8e5" -> null
      - is_enabled                         = true -> null
      - key_id                             = "22291a3b-0f32-4c7a-8638-273a510bc8e5" -> null
      - key_usage                          = "ENCRYPT_DECRYPT" -> null
      - multi_region                       = false -> null
      - policy                             = jsonencode(
            {
              - Statement = [
                  - {
                      - Action    = "kms:*"
                      - Effect    = "Allow"
                      - Principal = {
                          - AWS = "arn:aws:iam::443370672158:root"
                        }
                      - Resource  = "*"
                      - Sid       = "Default"
                    },
                ]
              - Version   = "2012-10-17"
            }
        ) -> null
      - rotation_period_in_days            = 365 -> null
      - tags                               = {
          - "Environment" = "dev"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - tags_all                           = {
          - "Environment" = "dev"
          - "Owner"       = "andreibakaushyn"
        } -> null
        # (2 unchanged attributes hidden)
    }

  # module.vpc.aws_default_network_acl.this[0] will be destroyed
  - resource "aws_default_network_acl" "this" {
      - arn                    = "arn:aws:ec2:us-east-1:443370672158:network-acl/acl-0168ec7a973b29366" -> null
      - default_network_acl_id = "acl-0168ec7a973b29366" -> null
      - id                     = "acl-0168ec7a973b29366" -> null
      - owner_id               = "443370672158" -> null
      - subnet_ids             = [
          - "subnet-0112b5f0217883516",
          - "subnet-033a324de9723c0ad",
          - "subnet-07f840acc8cd65e34",
          - "subnet-0ddbd3f0934d0dd36",
        ] -> null
      - tags                   = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-default"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - tags_all               = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-default"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - vpc_id                 = "vpc-0f94af6bfa48d0340" -> null

      - egress {
          - action          = "allow" -> null
          - from_port       = 0 -> null
          - icmp_code       = 0 -> null
          - icmp_type       = 0 -> null
          - ipv6_cidr_block = "::/0" -> null
          - protocol        = "-1" -> null
          - rule_no         = 101 -> null
          - to_port         = 0 -> null
            # (1 unchanged attribute hidden)
        }
      - egress {
          - action          = "allow" -> null
          - cidr_block      = "0.0.0.0/0" -> null
          - from_port       = 0 -> null
          - icmp_code       = 0 -> null
          - icmp_type       = 0 -> null
          - protocol        = "-1" -> null
          - rule_no         = 100 -> null
          - to_port         = 0 -> null
            # (1 unchanged attribute hidden)
        }

      - ingress {
          - action          = "allow" -> null
          - from_port       = 0 -> null
          - icmp_code       = 0 -> null
          - icmp_type       = 0 -> null
          - ipv6_cidr_block = "::/0" -> null
          - protocol        = "-1" -> null
          - rule_no         = 101 -> null
          - to_port         = 0 -> null
            # (1 unchanged attribute hidden)
        }
      - ingress {
          - action          = "allow" -> null
          - cidr_block      = "0.0.0.0/0" -> null
          - from_port       = 0 -> null
          - icmp_code       = 0 -> null
          - icmp_type       = 0 -> null
          - protocol        = "-1" -> null
          - rule_no         = 100 -> null
          - to_port         = 0 -> null
            # (1 unchanged attribute hidden)
        }
    }

  # module.vpc.aws_default_route_table.default[0] will be destroyed
  - resource "aws_default_route_table" "default" {
      - arn                    = "arn:aws:ec2:us-east-1:443370672158:route-table/rtb-0caf6ddac20ceac43" -> null
      - default_route_table_id = "rtb-0caf6ddac20ceac43" -> null
      - id                     = "rtb-0caf6ddac20ceac43" -> null
      - owner_id               = "443370672158" -> null
      - propagating_vgws       = [] -> null
      - route                  = [] -> null
      - tags                   = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-default"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - tags_all               = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-default"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - vpc_id                 = "vpc-0f94af6bfa48d0340" -> null

      - timeouts {
          - create = "5m" -> null
          - update = "5m" -> null
        }
    }

  # module.vpc.aws_default_security_group.this[0] will be destroyed
  - resource "aws_default_security_group" "this" {
      - arn                    = "arn:aws:ec2:us-east-1:443370672158:security-group/sg-0c02e05fccf0617d2" -> null
      - description            = "default VPC security group" -> null
      - egress                 = [] -> null
      - id                     = "sg-0c02e05fccf0617d2" -> null
      - ingress                = [] -> null
      - name                   = "default" -> null
      - owner_id               = "443370672158" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-default"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - tags_all               = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-default"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - vpc_id                 = "vpc-0f94af6bfa48d0340" -> null
        # (1 unchanged attribute hidden)
    }

  # module.vpc.aws_eip.nat[0] will be destroyed
  - resource "aws_eip" "nat" {
      - allocation_id            = "eipalloc-04b382c1f05a73beb" -> null
      - arn                      = "arn:aws:ec2:us-east-1:443370672158:elastic-ip/eipalloc-04b382c1f05a73beb" -> null
      - association_id           = "eipassoc-017957095c1e14667" -> null
      - domain                   = "vpc" -> null
      - id                       = "eipalloc-04b382c1f05a73beb" -> null
      - network_border_group     = "us-east-1" -> null
      - network_interface        = "eni-0a017a8e37f431ea9" -> null
      - private_dns              = "ip-10-0-1-184.ec2.internal" -> null
      - private_ip               = "10.0.1.184" -> null
      - public_dns               = "ec2-54-165-92-189.compute-1.amazonaws.com" -> null
      - public_ip                = "54.165.92.189" -> null
      - public_ipv4_pool         = "amazon" -> null
      - tags                     = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-us-east-1a"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - tags_all                 = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-us-east-1a"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - vpc                      = true -> null
        # (5 unchanged attributes hidden)
    }

  # module.vpc.aws_internet_gateway.this[0] will be destroyed
  - resource "aws_internet_gateway" "this" {
      - arn      = "arn:aws:ec2:us-east-1:443370672158:internet-gateway/igw-0bb92246875393fbd" -> null
      - id       = "igw-0bb92246875393fbd" -> null
      - owner_id = "443370672158" -> null
      - tags     = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - tags_all = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - vpc_id   = "vpc-0f94af6bfa48d0340" -> null
    }

  # module.vpc.aws_nat_gateway.this[0] will be destroyed
  - resource "aws_nat_gateway" "this" {
      - allocation_id                      = "eipalloc-04b382c1f05a73beb" -> null
      - association_id                     = "eipassoc-017957095c1e14667" -> null
      - connectivity_type                  = "public" -> null
      - id                                 = "nat-0c4c1c9e22c905b47" -> null
      - network_interface_id               = "eni-0a017a8e37f431ea9" -> null
      - private_ip                         = "10.0.1.184" -> null
      - public_ip                          = "54.165.92.189" -> null
      - secondary_allocation_ids           = [] -> null
      - secondary_private_ip_address_count = 0 -> null
      - secondary_private_ip_addresses     = [] -> null
      - subnet_id                          = "subnet-07f840acc8cd65e34" -> null
      - tags                               = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-us-east-1a"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - tags_all                           = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-us-east-1a"
          - "Owner"       = "andreibakaushyn"
        } -> null
    }

  # module.vpc.aws_route.private_nat_gateway[0] will be destroyed
  - resource "aws_route" "private_nat_gateway" {
      - destination_cidr_block      = "0.0.0.0/0" -> null
      - id                          = "r-rtb-0116849f4ed468aba1080289494" -> null
      - nat_gateway_id              = "nat-0c4c1c9e22c905b47" -> null
      - origin                      = "CreateRoute" -> null
      - route_table_id              = "rtb-0116849f4ed468aba" -> null
      - state                       = "active" -> null
        # (13 unchanged attributes hidden)

      - timeouts {
          - create = "5m" -> null
        }
    }

  # module.vpc.aws_route.public_internet_gateway[0] will be destroyed
  - resource "aws_route" "public_internet_gateway" {
      - destination_cidr_block      = "0.0.0.0/0" -> null
      - gateway_id                  = "igw-0bb92246875393fbd" -> null
      - id                          = "r-rtb-0ddb88ae0c11047ae1080289494" -> null
      - origin                      = "CreateRoute" -> null
      - route_table_id              = "rtb-0ddb88ae0c11047ae" -> null
      - state                       = "active" -> null
        # (13 unchanged attributes hidden)

      - timeouts {
          - create = "5m" -> null
        }
    }

  # module.vpc.aws_route_table.private[0] will be destroyed
  - resource "aws_route_table" "private" {
      - arn              = "arn:aws:ec2:us-east-1:443370672158:route-table/rtb-0116849f4ed468aba" -> null
      - id               = "rtb-0116849f4ed468aba" -> null
      - owner_id         = "443370672158" -> null
      - propagating_vgws = [] -> null
      - route            = [
          - {
              - cidr_block                 = "0.0.0.0/0"
              - nat_gateway_id             = "nat-0c4c1c9e22c905b47"
                # (11 unchanged attributes hidden)
            },
        ] -> null
      - tags             = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-private"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - tags_all         = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-private"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - vpc_id           = "vpc-0f94af6bfa48d0340" -> null
    }

  # module.vpc.aws_route_table.public[0] will be destroyed
  - resource "aws_route_table" "public" {
      - arn              = "arn:aws:ec2:us-east-1:443370672158:route-table/rtb-0ddb88ae0c11047ae" -> null
      - id               = "rtb-0ddb88ae0c11047ae" -> null
      - owner_id         = "443370672158" -> null
      - propagating_vgws = [] -> null
      - route            = [
          - {
              - cidr_block                 = "0.0.0.0/0"
              - gateway_id                 = "igw-0bb92246875393fbd"
                # (11 unchanged attributes hidden)
            },
        ] -> null
      - tags             = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-public"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - tags_all         = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-public"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - vpc_id           = "vpc-0f94af6bfa48d0340" -> null
    }

  # module.vpc.aws_route_table_association.private[0] will be destroyed
  - resource "aws_route_table_association" "private" {
      - id             = "rtbassoc-015a0156afbcf68d8" -> null
      - route_table_id = "rtb-0116849f4ed468aba" -> null
      - subnet_id      = "subnet-0112b5f0217883516" -> null
        # (1 unchanged attribute hidden)
    }

  # module.vpc.aws_route_table_association.private[1] will be destroyed
  - resource "aws_route_table_association" "private" {
      - id             = "rtbassoc-0a4a42bfc4b07871c" -> null
      - route_table_id = "rtb-0116849f4ed468aba" -> null
      - subnet_id      = "subnet-0ddbd3f0934d0dd36" -> null
        # (1 unchanged attribute hidden)
    }

  # module.vpc.aws_route_table_association.public[0] will be destroyed
  - resource "aws_route_table_association" "public" {
      - id             = "rtbassoc-08141e1b58273d716" -> null
      - route_table_id = "rtb-0ddb88ae0c11047ae" -> null
      - subnet_id      = "subnet-07f840acc8cd65e34" -> null
        # (1 unchanged attribute hidden)
    }

  # module.vpc.aws_route_table_association.public[1] will be destroyed
  - resource "aws_route_table_association" "public" {
      - id             = "rtbassoc-0e1430235f223c27d" -> null
      - route_table_id = "rtb-0ddb88ae0c11047ae" -> null
      - subnet_id      = "subnet-033a324de9723c0ad" -> null
        # (1 unchanged attribute hidden)
    }

  # module.vpc.aws_subnet.private[0] will be destroyed
  - resource "aws_subnet" "private" {
      - arn                                            = "arn:aws:ec2:us-east-1:443370672158:subnet/subnet-0112b5f0217883516" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1a" -> null
      - availability_zone_id                           = "use1-az4" -> null
      - cidr_block                                     = "10.0.3.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-0112b5f0217883516" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "443370672158" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-private-us-east-1a"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - tags_all                                       = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-private-us-east-1a"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - vpc_id                                         = "vpc-0f94af6bfa48d0340" -> null
        # (4 unchanged attributes hidden)
    }

  # module.vpc.aws_subnet.private[1] will be destroyed
  - resource "aws_subnet" "private" {
      - arn                                            = "arn:aws:ec2:us-east-1:443370672158:subnet/subnet-0ddbd3f0934d0dd36" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1b" -> null
      - availability_zone_id                           = "use1-az6" -> null
      - cidr_block                                     = "10.0.4.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-0ddbd3f0934d0dd36" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "443370672158" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-private-us-east-1b"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - tags_all                                       = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-private-us-east-1b"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - vpc_id                                         = "vpc-0f94af6bfa48d0340" -> null
        # (4 unchanged attributes hidden)
    }

  # module.vpc.aws_subnet.public[0] will be destroyed
  - resource "aws_subnet" "public" {
      - arn                                            = "arn:aws:ec2:us-east-1:443370672158:subnet/subnet-07f840acc8cd65e34" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1a" -> null
      - availability_zone_id                           = "use1-az4" -> null
      - cidr_block                                     = "10.0.1.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-07f840acc8cd65e34" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "443370672158" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-public-us-east-1a"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - tags_all                                       = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-public-us-east-1a"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - vpc_id                                         = "vpc-0f94af6bfa48d0340" -> null
        # (4 unchanged attributes hidden)
    }

  # module.vpc.aws_subnet.public[1] will be destroyed
  - resource "aws_subnet" "public" {
      - arn                                            = "arn:aws:ec2:us-east-1:443370672158:subnet/subnet-033a324de9723c0ad" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1b" -> null
      - availability_zone_id                           = "use1-az6" -> null
      - cidr_block                                     = "10.0.2.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-033a324de9723c0ad" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "443370672158" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-public-us-east-1b"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - tags_all                                       = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc-public-us-east-1b"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - vpc_id                                         = "vpc-0f94af6bfa48d0340" -> null
        # (4 unchanged attributes hidden)
    }

  # module.vpc.aws_vpc.this[0] will be destroyed
  - resource "aws_vpc" "this" {
      - arn                                  = "arn:aws:ec2:us-east-1:443370672158:vpc/vpc-0f94af6bfa48d0340" -> null
      - assign_generated_ipv6_cidr_block     = false -> null
      - cidr_block                           = "10.0.0.0/16" -> null
      - default_network_acl_id               = "acl-0168ec7a973b29366" -> null
      - default_route_table_id               = "rtb-0caf6ddac20ceac43" -> null
      - default_security_group_id            = "sg-0c02e05fccf0617d2" -> null
      - dhcp_options_id                      = "dopt-0d6da9b0a87c3cfae" -> null
      - enable_dns_hostnames                 = true -> null
      - enable_dns_support                   = true -> null
      - enable_network_address_usage_metrics = false -> null
      - id                                   = "vpc-0f94af6bfa48d0340" -> null
      - instance_tenancy                     = "default" -> null
      - ipv6_netmask_length                  = 0 -> null
      - main_route_table_id                  = "rtb-0caf6ddac20ceac43" -> null
      - owner_id                             = "443370672158" -> null
      - tags                                 = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc"
          - "Owner"       = "andreibakaushyn"
        } -> null
      - tags_all                             = {
          - "Environment" = "dev"
          - "Name"        = "andreibakaushyn-eks-vpc"
          - "Owner"       = "andreibakaushyn"
        } -> null
        # (4 unchanged attributes hidden)
    }

  # module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0] will be destroyed
  - resource "aws_eks_node_group" "this" {
      - ami_type               = "AL2_x86_64" -> null
      - arn                    = "arn:aws:eks:us-east-1:443370672158:nodegroup/andreibakaushyn-eks-cluster/eks_nodes-20250110080223397100000005/2eca279e-2e46-0d5f-f83d-97acb0f2ef21" -> null
      - capacity_type          = "ON_DEMAND" -> null
      - cluster_name           = "andreibakaushyn-eks-cluster" -> null
      - disk_size              = 0 -> null
      - id                     = "andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005" -> null
      - instance_types         = [
          - "t3.medium",
        ] -> null
      - labels                 = {} -> null
      - node_group_name        = "eks_nodes-20250110080223397100000005" -> null
      - node_group_name_prefix = "eks_nodes-" -> null
      - node_role_arn          = "arn:aws:iam::443370672158:role/eks_nodes-eks-node-group-20250110061546425600000004" -> null
      - release_version        = "1.27.16-20250103" -> null
      - resources              = [
          - {
              - autoscaling_groups              = [
                  - {
                      - name = "eks-eks_nodes-20250110080223397100000005-2eca279e-2e46-0d5f-f83d-97acb0f2ef21"
                    },
                ]
                # (1 unchanged attribute hidden)
            },
        ] -> null
      - status                 = "ACTIVE" -> null
      - subnet_ids             = [
          - "subnet-0112b5f0217883516",
          - "subnet-0ddbd3f0934d0dd36",
        ] -> null
      - tags                   = {
          - "Name" = "eks_nodes"
        } -> null
      - tags_all               = {
          - "Name" = "eks_nodes"
        } -> null
      - version                = "1.27" -> null

      - launch_template {
          - id      = "lt-07924cc6e8ac55763" -> null
          - name    = "eks_nodes-20250110080216449300000003" -> null
          - version = "1" -> null
        }

      - scaling_config {
          - desired_size = 1 -> null
          - max_size     = 3 -> null
          - min_size     = 1 -> null
        }

      - timeouts {}

      - update_config {
          - max_unavailable            = 0 -> null
          - max_unavailable_percentage = 33 -> null
        }
    }

  # module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role.this[0] will be destroyed
  - resource "aws_iam_role" "this" {
      - arn                   = "arn:aws:iam::443370672158:role/eks_nodes-eks-node-group-20250110061546425600000004" -> null
      - assume_role_policy    = jsonencode(
            {
              - Statement = [
                  - {
                      - Action    = "sts:AssumeRole"
                      - Effect    = "Allow"
                      - Principal = {
                          - Service = "ec2.amazonaws.com"
                        }
                      - Sid       = "EKSNodeAssumeRole"
                    },
                ]
              - Version   = "2012-10-17"
            }
        ) -> null
      - create_date           = "2025-01-10T06:15:46Z" -> null
      - description           = "EKS managed node group IAM role" -> null
      - force_detach_policies = true -> null
      - id                    = "eks_nodes-eks-node-group-20250110061546425600000004" -> null
      - managed_policy_arns   = [
          - "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
          - "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
          - "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
          - "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
        ] -> null
      - max_session_duration  = 3600 -> null
      - name                  = "eks_nodes-eks-node-group-20250110061546425600000004" -> null
      - name_prefix           = "eks_nodes-eks-node-group-" -> null
      - path                  = "/" -> null
      - tags                  = {} -> null
      - tags_all              = {} -> null
      - unique_id             = "AROAWOOXTSAPLNORGWQIW" -> null
        # (1 unchanged attribute hidden)
    }

  # module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEC2ContainerRegistryReadOnly"] will be destroyed
  - resource "aws_iam_role_policy_attachment" "this" {
      - id         = "eks_nodes-eks-node-group-20250110061546425600000004-20250110061546968500000008" -> null
      - policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly" -> null
      - role       = "eks_nodes-eks-node-group-20250110061546425600000004" -> null
    }

  # module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEKSWorkerNodePolicy"] will be destroyed
  - resource "aws_iam_role_policy_attachment" "this" {
      - id         = "eks_nodes-eks-node-group-20250110061546425600000004-20250110061546971800000009" -> null
      - policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy" -> null
      - role       = "eks_nodes-eks-node-group-20250110061546425600000004" -> null
    }

  # module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEKS_CNI_Policy"] will be destroyed
  - resource "aws_iam_role_policy_attachment" "this" {
      - id         = "eks_nodes-eks-node-group-20250110061546425600000004-2025011006154706290000000b" -> null
      - policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy" -> null
      - role       = "eks_nodes-eks-node-group-20250110061546425600000004" -> null
    }

  # module.eks.module.eks_managed_node_group["eks_nodes"].aws_launch_template.this[0] will be destroyed
  - resource "aws_launch_template" "this" {
      - arn                                  = "arn:aws:ec2:us-east-1:443370672158:launch-template/lt-07924cc6e8ac55763" -> null
      - default_version                      = 1 -> null
      - description                          = "Custom launch template for eks_nodes EKS managed node group" -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - id                                   = "lt-07924cc6e8ac55763" -> null
      - latest_version                       = 1 -> null
      - name                                 = "eks_nodes-20250110080216449300000003" -> null
      - name_prefix                          = "eks_nodes-" -> null
      - security_group_names                 = [] -> null
      - tags                                 = {} -> null
      - tags_all                             = {} -> null
      - update_default_version               = true -> null
      - vpc_security_group_ids               = [
          - "sg-085b1af8b5064f90f",
        ] -> null
        # (8 unchanged attributes hidden)

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 2 -> null
          - http_tokens                 = "required" -> null
            # (2 unchanged attributes hidden)
        }

      - monitoring {
          - enabled = true -> null
        }

      - tag_specifications {
          - resource_type = "instance" -> null
          - tags          = {
              - "Name" = "eks_nodes"
            } -> null
        }
      - tag_specifications {
          - resource_type = "network-interface" -> null
          - tags          = {
              - "Name" = "eks_nodes"
            } -> null
        }
      - tag_specifications {
          - resource_type = "volume" -> null
          - tags          = {
              - "Name" = "eks_nodes"
            } -> null
        }
    }

  # module.eks.module.kms.aws_kms_alias.this["cluster"] will be destroyed
  - resource "aws_kms_alias" "this" {
      - arn            = "arn:aws:kms:us-east-1:443370672158:alias/eks/andreibakaushyn-eks-cluster" -> null
      - id             = "alias/eks/andreibakaushyn-eks-cluster" -> null
      - name           = "alias/eks/andreibakaushyn-eks-cluster" -> null
      - target_key_arn = "arn:aws:kms:us-east-1:443370672158:key/8cfa3c13-08c3-4e9e-b9cb-46ee8110a607" -> null
      - target_key_id  = "8cfa3c13-08c3-4e9e-b9cb-46ee8110a607" -> null
        # (1 unchanged attribute hidden)
    }

  # module.eks.module.kms.aws_kms_key.this[0] will be destroyed
  - resource "aws_kms_key" "this" {
      - arn                                = "arn:aws:kms:us-east-1:443370672158:key/8cfa3c13-08c3-4e9e-b9cb-46ee8110a607" -> null
      - bypass_policy_lockout_safety_check = false -> null
      - customer_master_key_spec           = "SYMMETRIC_DEFAULT" -> null
      - description                        = "andreibakaushyn-eks-cluster cluster encryption key" -> null
      - enable_key_rotation                = true -> null
      - id                                 = "8cfa3c13-08c3-4e9e-b9cb-46ee8110a607" -> null
      - is_enabled                         = true -> null
      - key_id                             = "8cfa3c13-08c3-4e9e-b9cb-46ee8110a607" -> null
      - key_usage                          = "ENCRYPT_DECRYPT" -> null
      - multi_region                       = false -> null
      - policy                             = jsonencode(
            {
              - Statement = [
                  - {
                      - Action    = "kms:*"
                      - Effect    = "Allow"
                      - Principal = {
                          - AWS = "arn:aws:iam::443370672158:root"
                        }
                      - Resource  = "*"
                      - Sid       = "Default"
                    },
                  - {
                      - Action    = [
                          - "kms:Update*",
                          - "kms:UntagResource",
                          - "kms:TagResource",
                          - "kms:ScheduleKeyDeletion",
                          - "kms:Revoke*",
                          - "kms:ReplicateKey",
                          - "kms:Put*",
                          - "kms:List*",
                          - "kms:ImportKeyMaterial",
                          - "kms:Get*",
                          - "kms:Enable*",
                          - "kms:Disable*",
                          - "kms:Describe*",
                          - "kms:Delete*",
                          - "kms:Create*",
                          - "kms:CancelKeyDeletion",
                        ]
                      - Effect    = "Allow"
                      - Principal = {
                          - AWS = "arn:aws:iam::443370672158:user/skefil"
                        }
                      - Resource  = "*"
                      - Sid       = "KeyAdministration"
                    },
                  - {
                      - Action    = [
                          - "kms:ReEncrypt*",
                          - "kms:GenerateDataKey*",
                          - "kms:Encrypt",
                          - "kms:DescribeKey",
                          - "kms:Decrypt",
                        ]
                      - Effect    = "Allow"
                      - Principal = {
                          - AWS = "arn:aws:iam::443370672158:role/andreibakaushyn-eks-cluster-cluster-20250110061546422400000003"
                        }
                      - Resource  = "*"
                      - Sid       = "KeyUsage"
                    },
                ]
              - Version   = "2012-10-17"
            }
        ) -> null
      - rotation_period_in_days            = 365 -> null
      - tags                               = {
          - "terraform-aws-modules" = "eks"
        } -> null
      - tags_all                           = {
          - "terraform-aws-modules" = "eks"
        } -> null
        # (2 unchanged attributes hidden)
    }

  # module.eks.module.eks_managed_node_group["eks_nodes"].module.user_data.null_resource.validate_cluster_service_cidr will be destroyed
  - resource "null_resource" "validate_cluster_service_cidr" {
      - id = "7928485581831085066" -> null
    }

Plan: 0 to add, 0 to change, 54 to destroy.

Changes to Outputs:
  - ecr_repository_url = "443370672158.dkr.ecr.us-east-1.amazonaws.com/andreibakaushyn-eks-repo" -> null
  - subnets            = [
      - "subnet-0112b5f0217883516",
      - "subnet-0ddbd3f0934d0dd36",
    ] -> null
  - vpc_id             = "vpc-0f94af6bfa48d0340" -> null
module.eks.module.eks_managed_node_group["eks_nodes"].module.user_data.null_resource.validate_cluster_service_cidr: Destroying... [id=7928485581831085066]
module.eks.module.eks_managed_node_group["eks_nodes"].module.user_data.null_resource.validate_cluster_service_cidr: Destruction complete after 0s
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005]
module.vpc.aws_default_network_acl.this[0]: Destroying... [id=acl-0168ec7a973b29366]
module.vpc.aws_route_table_association.private[1]: Destroying... [id=rtbassoc-0a4a42bfc4b07871c]
module.eks.aws_iam_role_policy_attachment.cluster_encryption[0]: Destroying... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-20250110061608606400000010]
module.eks.module.kms.aws_kms_alias.this["cluster"]: Destroying... [id=alias/eks/andreibakaushyn-eks-cluster]
module.eks.aws_iam_role_policy_attachment.custom[0]: Destroying... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-20250110061546880000000007]
module.vpc.aws_route_table_association.public[0]: Destroying... [id=rtbassoc-08141e1b58273d716]
aws_ecr_repository.repo: Destroying... [id=andreibakaushyn-eks-repo]
module.vpc.aws_route.private_nat_gateway[0]: Destroying... [id=r-rtb-0116849f4ed468aba1080289494]
module.vpc.aws_default_security_group.this[0]: Destroying... [id=sg-0c02e05fccf0617d2]
module.vpc.aws_default_network_acl.this[0]: Destruction complete after 0s
module.vpc.aws_default_security_group.this[0]: Destruction complete after 0s
module.vpc.aws_route_table_association.private[0]: Destroying... [id=rtbassoc-015a0156afbcf68d8]
module.vpc.aws_route_table_association.public[1]: Destroying... [id=rtbassoc-0e1430235f223c27d]
module.eks.module.kms.aws_kms_alias.this["cluster"]: Destruction complete after 0s
module.vpc.aws_default_route_table.default[0]: Destroying... [id=rtb-0caf6ddac20ceac43]
module.vpc.aws_default_route_table.default[0]: Destruction complete after 0s
module.kms.aws_kms_key.this[0]: Destroying... [id=22291a3b-0f32-4c7a-8638-273a510bc8e5]
module.eks.aws_iam_role_policy_attachment.custom[0]: Destruction complete after 0s
module.eks.aws_iam_openid_connect_provider.oidc_provider[0]: Destroying... [id=arn:aws:iam::443370672158:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/D5E0E579AB8AF51B56BD0FD4D7A14A12]
module.eks.aws_iam_role_policy_attachment.cluster_encryption[0]: Destruction complete after 0s
module.vpc.aws_route.public_internet_gateway[0]: Destroying... [id=r-rtb-0ddb88ae0c11047ae1080289494]
module.kms.aws_kms_key.this[0]: Destruction complete after 0s
module.eks.aws_iam_policy.custom[0]: Destroying... [id=arn:aws:iam::443370672158:policy/andreibakaushyn-eks-cluster-cluster-20250110061546422300000002]
module.eks.aws_iam_openid_connect_provider.oidc_provider[0]: Destruction complete after 0s
module.eks.aws_iam_policy.cluster_encryption[0]: Destroying... [id=arn:aws:iam::443370672158:policy/andreibakaushyn-eks-cluster-cluster-ClusterEncryption2025011006160831020000000f]
aws_ecr_repository.repo: Destruction complete after 0s
module.vpc.aws_route_table_association.private[0]: Destruction complete after 0s
module.vpc.aws_route_table_association.public[1]: Destruction complete after 0s
module.vpc.aws_route_table_association.private[1]: Destruction complete after 0s
module.vpc.aws_route_table_association.public[0]: Destruction complete after 1s
module.vpc.aws_route.private_nat_gateway[0]: Destruction complete after 1s
module.vpc.aws_nat_gateway.this[0]: Destroying... [id=nat-0c4c1c9e22c905b47]
module.vpc.aws_route_table.private[0]: Destroying... [id=rtb-0116849f4ed468aba]
module.eks.aws_iam_policy.cluster_encryption[0]: Destruction complete after 1s
module.eks.aws_iam_policy.custom[0]: Destruction complete after 1s
module.vpc.aws_route.public_internet_gateway[0]: Destruction complete after 1s
module.vpc.aws_route_table.public[0]: Destroying... [id=rtb-0ddb88ae0c11047ae]
module.vpc.aws_route_table.private[0]: Destruction complete after 1s
module.vpc.aws_route_table.public[0]: Destruction complete after 1s
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 10s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still destroying... [id=nat-0c4c1c9e22c905b47, 10s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 20s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still destroying... [id=nat-0c4c1c9e22c905b47, 20s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 30s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still destroying... [id=nat-0c4c1c9e22c905b47, 30s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 40s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still destroying... [id=nat-0c4c1c9e22c905b47, 40s elapsed]
module.vpc.aws_nat_gateway.this[0]: Destruction complete after 41s
module.vpc.aws_eip.nat[0]: Destroying... [id=eipalloc-04b382c1f05a73beb]
module.vpc.aws_subnet.public[0]: Destroying... [id=subnet-07f840acc8cd65e34]
module.vpc.aws_subnet.public[1]: Destroying... [id=subnet-033a324de9723c0ad]
module.vpc.aws_subnet.public[0]: Destruction complete after 1s
module.vpc.aws_subnet.public[1]: Destruction complete after 1s
module.vpc.aws_eip.nat[0]: Destruction complete after 2s
module.vpc.aws_internet_gateway.this[0]: Destroying... [id=igw-0bb92246875393fbd]
module.vpc.aws_internet_gateway.this[0]: Destruction complete after 1s
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 50s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 1m0s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 1m10s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 1m20s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 1m30s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 1m40s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 1m50s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 2m0s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 2m10s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 2m20s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 2m30s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 2m40s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 2m50s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 3m0s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 3m10s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 3m20s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 3m30s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 3m40s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 3m50s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 4m0s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 4m10s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 4m20s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 4m30s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 4m40s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 4m50s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 5m0s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 5m10s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 5m20s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 5m30s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 5m40s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 5m50s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 6m0s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 6m10s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 6m20s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 6m30s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 6m40s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 6m50s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 7m0s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 7m10s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 7m20s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 7m30s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 7m40s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 7m50s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 8m0s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster:eks_nodes-20250110080223397100000005, 8m10s elapsed]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_eks_node_group.this[0]: Destruction complete after 8m17s
module.eks.module.eks_managed_node_group["eks_nodes"].aws_launch_template.this[0]: Destroying... [id=lt-07924cc6e8ac55763]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_launch_template.this[0]: Destruction complete after 1s
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEC2ContainerRegistryReadOnly"]: Destroying... [id=eks_nodes-eks-node-group-20250110061546425600000004-20250110061546968500000008]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEKSWorkerNodePolicy"]: Destroying... [id=eks_nodes-eks-node-group-20250110061546425600000004-20250110061546971800000009]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEKS_CNI_Policy"]: Destroying... [id=eks_nodes-eks-node-group-20250110061546425600000004-2025011006154706290000000b]
module.eks.time_sleep.this[0]: Destroying... [id=2025-01-10T08:02:15Z]
module.eks.time_sleep.this[0]: Destruction complete after 0s
module.eks.aws_eks_cluster.this[0]: Destroying... [id=andreibakaushyn-eks-cluster]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEKSWorkerNodePolicy"]: Destruction complete after 0s
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEC2ContainerRegistryReadOnly"]: Destruction complete after 0s
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role_policy_attachment.this["AmazonEKS_CNI_Policy"]: Destruction complete after 1s
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role.this[0]: Destroying... [id=eks_nodes-eks-node-group-20250110061546425600000004]
module.eks.module.eks_managed_node_group["eks_nodes"].aws_iam_role.this[0]: Destruction complete after 0s
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 1m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 1m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 1m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 1m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 1m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 1m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 2m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 2m10s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 2m20s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 2m30s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 2m40s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 2m50s elapsed]
module.eks.aws_eks_cluster.this[0]: Still destroying... [id=andreibakaushyn-eks-cluster, 3m0s elapsed]
module.eks.aws_eks_cluster.this[0]: Destruction complete after 3m4s
module.vpc.aws_subnet.private[1]: Destroying... [id=subnet-0ddbd3f0934d0dd36]
module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"]: Destroying... [id=sgrule-3483280898]
module.eks.aws_security_group_rule.node["ingress_cluster_443"]: Destroying... [id=sgrule-4004326473]
module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"]: Destroying... [id=sgrule-437352236]
module.eks.aws_security_group_rule.cluster["ingress_nodes_443"]: Destroying... [id=sgrule-1066853480]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"]: Destroying... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-20250110061546877000000006]
module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"]: Destroying... [id=sgrule-1660414963]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"]: Destroying... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003-2025011006154698470000000a]
module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"]: Destroying... [id=sgrule-3192837315]
module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"]: Destroying... [id=sgrule-3695739791]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"]: Destruction complete after 0s
module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"]: Destroying... [id=sgrule-353035289]
module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"]: Destruction complete after 0s
module.eks.aws_cloudwatch_log_group.this[0]: Destroying... [id=/aws/eks/andreibakaushyn-eks-cluster/cluster]
module.vpc.aws_subnet.private[1]: Destruction complete after 1s
module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"]: Destroying... [id=sgrule-106354744]
module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"]: Destruction complete after 1s
module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"]: Destroying... [id=sgrule-3169298517]
module.eks.aws_security_group_rule.cluster["ingress_nodes_443"]: Destruction complete after 1s
module.vpc.aws_subnet.private[0]: Destroying... [id=subnet-0112b5f0217883516]
module.eks.aws_cloudwatch_log_group.this[0]: Destruction complete after 1s
module.eks.aws_security_group_rule.node["egress_all"]: Destroying... [id=sgrule-3337506131]
module.vpc.aws_subnet.private[0]: Destruction complete after 0s
module.eks.module.kms.aws_kms_key.this[0]: Destroying... [id=8cfa3c13-08c3-4e9e-b9cb-46ee8110a607]
module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"]: Destruction complete after 1s
module.eks.module.kms.aws_kms_key.this[0]: Destruction complete after 1s
module.eks.aws_iam_role.this[0]: Destroying... [id=andreibakaushyn-eks-cluster-cluster-20250110061546422400000003]
module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"]: Destruction complete after 2s
module.eks.aws_iam_role.this[0]: Destruction complete after 1s
module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"]: Destruction complete after 3s
module.eks.aws_security_group_rule.node["ingress_cluster_443"]: Destruction complete after 4s
module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"]: Destruction complete after 4s
module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"]: Destruction complete after 5s
module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"]: Destruction complete after 5s
module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"]: Destruction complete after 6s
module.eks.aws_security_group_rule.node["egress_all"]: Destruction complete after 6s
module.eks.aws_security_group.cluster[0]: Destroying... [id=sg-088a502ec37046d97]
module.eks.aws_security_group.node[0]: Destroying... [id=sg-085b1af8b5064f90f]
module.eks.aws_security_group.cluster[0]: Destruction complete after 1s
module.eks.aws_security_group.node[0]: Destruction complete after 1s
module.vpc.aws_vpc.this[0]: Destroying... [id=vpc-0f94af6bfa48d0340]
module.vpc.aws_vpc.this[0]: Destruction complete after 1s

Destroy complete! Resources: 54 destroyed.
ivcpaladin@ivcpaladin:~/01.HW_automation/eks-infra$



```
###
