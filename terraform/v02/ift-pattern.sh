#!/bin/sh
# organize your infrastructure into pattern modules
mkdir modules/
# VIM
mkdir modules/vim_type/
touch modules/vim_type/openstack.tf
touch modules/vim_type/osm.tf
touch modules/vim_type/aws.tf
touch modules/vim_type/gcp.tf
touch modules/vim_type/azr.tf
touch modules/vim_type/esx.tf
# PTIN PoP
mkdir modules/vim_type/placement/
mkdir modules/vim_type/placement/ptin/
mkdir modules/vim_type/placement/ptin/env/
mkdir modules/vim_type/placement/ptin/env/development/
touch modules/vim_type/placement/ptin/env/development/variables.tf
touch modules/vim_type/placement/ptin/env/development/outputs.tf
mkdir modules/vim_type/placement/ptin/env/development/templates/
mkdir modules/vim_type/placement/ptin/env/integration/
touch modules/vim_type/placement/ptin/env/integration/variables.tf
touch modules/vim_type/placement/ptin/env/integration/outputs.tf
mkdir modules/vim_type/placement/ptin/env/integration/templates/
mkdir modules/vim_type/placement/ptin/env/qualification/
touch modules/vim_type/placement/ptin/env/qualification/variables.tf
touch modules/vim_type/placement/ptin/env/qualification/outputs.tf
mkdir modules/vim_type/placement/ptin/env/qualification/templates/
mkdir modules/vim_type/placement/ptin/env/demonstration/
touch modules/vim_type/placement/ptin/env/demonstration/variables.tf
touch modules/vim_type/placement/ptin/env/demonstration/outputs.tf
mkdir modules/vim_type/placement/ptin/env/demonstration/templates/
# NCSRD PoP
mkdir modules/vim_type/placement/ncsrd/
mkdir modules/vim_type/placement/ncsrd/env/
mkdir modules/vim_type/placement/ncsrd/env/development/
touch modules/vim_type/placement/ncsrd/env/development/variables.tf
touch modules/vim_type/placement/ncsrd/env/development/outputs.tf
mkdir modules/vim_type/placement/ncsrd/env/development/templates/
mkdir modules/vim_type/placement/ncsrd/env/integration/
touch modules/vim_type/placement/ncsrd/env/integration/variables.tf
touch modules/vim_type/placement/ncsrd/env/integration/outputs.tf
mkdir modules/vim_type/placement/ncsrd/env/integration/templates/
mkdir modules/vim_type/placement/ncsrd/env/qualification/
touch modules/vim_type/placement/ncsrd/env/qualification/variables.tf
touch modules/vim_type/placement/ncsrd/env/qualification/outputs.tf
mkdir modules/vim_type/placement/ncsrd/env/qualification/templates/
mkdir modules/vim_type/placement/ncsrd/env/demonstration/
touch modules/vim_type/placement/ncsrd/env/demonstration/variables.tf
touch modules/vim_type/placement/ncsrd/env/demonstration/outputs.tf
mkdir modules/vim_type/placement/ncsrd/env/demonstration/templates/

