# packer


## Set the AWS Credentails in different PATH

        Steps I used:
        1. Create a folder with the name of your choice. I used .awscheck (mkdir .awscheck)
        2. Create a file named credentials within the folder.

                  [default]
                  aws_access_key_id = AKIAITGBH437JMUKJHFDSHKJFDJR4IZQ
                  aws_secret_access_key = WVmIXSqDpj8Ew35990M9AbYDFdsfdgaOoZPtWYHQqLQvFof

        3. Configure the variable. (export AWS_CONFIG_FILE=~/opt/softwares/packer/.packer_cred/credentials)
        4. Run aws configure and add your values.

        Note : For additional Profile
                [profile <profile Name>]
                aws_access_key_id=foo
                aws_secret_access_key=bar
