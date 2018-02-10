# Setup
cd to each directory containing .tf files and run:
terraform init  << only need to run this once to setup the needed TF executables
terraform plan -var 'google_project_id=your-project-id' -var 'account_key=/path/to/yourkey.json'
terraform apply -var 'google_project_id=your-project-id' -var 'account_key=/path/to/yourkey.json'
