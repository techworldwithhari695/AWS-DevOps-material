****************************************
How to install awscli on windows machine
*****************************************

**Step1:** Download the appropriate MSI installer:

AWS CLI MSI installer for Windows (64-bit): https://s3.amazonaws.com/aws-cli/AWSCLI64PY3.msi

**Step2:** Run the downloaded MSI installer

**Step3:** Follow the on-screen instructions. By default, the AWS CLI version 1 installs to C:\Program Files\Amazon\AWSCLI (64-bit version) or C:\Program Files (x86)\Amazon\AWSCLI (32-bit version).

**Step4:** To confirm the installation, use the aws --version command at a command prompt (open the Start menu and search for cmd to start a command prompt).

C:\> aws --version


aws ec2 create-volume --size 8 --encrypted --availability-zone ap-south-1a

IAM (Identity access management) --> linux user administration


Requirements
The aws-cli package works on Python versions:

3.8.x and greater
3.9.x and greater
3.10.x and greater
3.11.x and greater
3.12.x and greater
Notices
On 2022-05-30, support for Python 3.6 was ended. This follows the Python Software Foundation end of support for the runtime which occurred on 2021-12-23.

On 2023-12-13, support for Python 3.7 was ended. This follows the Python Software Foundation end of support for the runtime which occurred on 2023-06-27. For more information, see this blog post.

Attention!

We recommend that all customers regularly monitor the Amazon Web Services Security Bulletins website for any important security bulletins related to aws-cli.

Maintenance and Support for CLI Major Versions
The AWS CLI version 1 was made generally available on 09/02/2013 and is currently in the full support phase of the availability life cycle.

For information about maintenance and support for SDK major versions and their underlying dependencies, see the Maintenance Policy section in the AWS SDKs and Tools Shared Configuration and Credentials Reference Guide.

Installation
Installation of the AWS CLI and its dependencies use a range of packaging features provided by pip and setuptools. To ensure smooth installation, it's recommended to use:

pip: 9.0.2 or greater
setuptools: 36.2.0 or greater
The safest way to install the AWS CLI is to use pip in a virtualenv:

$ python -m pip install awscli
or, if you are not installing in a virtualenv, to install globally:

$ sudo python -m pip install awscli
or for your user:

$ python -m pip install --user awscli
If you have the aws-cli package installed and want to upgrade to the latest version, you can run:

$ python -m pip install --upgrade awscli
This will install the aws-cli package as well as all dependencies.

Note

On macOS, if you see an error regarding the version of six that came with distutils in El Capitan, use the --ignore-installed option:

$ sudo python -m pip install awscli --ignore-installed six
On Linux and Mac OS, the AWS CLI can be installed using a bundled installer. The AWS CLI can also be installed on Windows via an MSI Installer.

If you want to run the develop branch of the AWS CLI, see the Development Version section of the contributing guide.

See the installation section of the AWS CLI User Guide for more information.

Configuration
Before using the AWS CLI, you need to configure your AWS credentials. You can do this in several ways:

Configuration command
Environment variables
Shared credentials file
Config file
IAM Role
The quickest way to get started is to run the aws configure command:

$ aws configure
AWS Access Key ID: MYACCESSKEY
AWS Secret Access Key: MYSECRETKEY
Default region name [us-west-2]: us-west-2
Default output format [None]: json
To use environment variables, do the following:

$ export AWS_ACCESS_KEY_ID=<access_key>
$ export AWS_SECRET_ACCESS_KEY=<secret_key>
To use the shared credentials file, create an INI formatted file like this:

[default]
aws_access_key_id=MYACCESSKEY
aws_secret_access_key=MYSECRETKEY

[testing]
aws_access_key_id=MYACCESSKEY
aws_secret_access_key=MYSECRETKEY
and place it in ~/.aws/credentials (or in %UserProfile%\.aws/credentials on Windows). If you wish to place the shared credentials file in a different location than the one specified above, you need to tell aws-cli where to find it. Do this by setting the appropriate environment variable:

$ export AWS_SHARED_CREDENTIALS_FILE=/path/to/shared_credentials_file
To use a config file, create an INI formatted file like this:

[default]
aws_access_key_id=<default access key>
aws_secret_access_key=<default secret key>
# Optional, to define default region for this profile.
region=us-west-1

[profile testing]
aws_access_key_id=<testing access key>
aws_secret_access_key=<testing secret key>
region=us-west-2
and place it in ~/.aws/config (or in %UserProfile%\.aws\config on Windows). If you wish to place the config file in a different location than the one specified above, you need to tell the AWS CLI where to find it. Do this by setting the appropriate environment variable:

$ export AWS_CONFIG_FILE=/path/to/config_file
As you can see, you can have multiple profiles defined in both the shared credentials file and the configuration file. You can then specify which profile to use by using the --profile option. If no profile is specified the default profile is used.

In the config file, except for the default profile, you must prefix each config section of a profile group with profile. For example, if you have a profile named "testing" the section header would be [profile testing].

The final option for credentials is highly recommended if you are using the AWS CLI on an EC2 instance. IAM Roles are a great way to have credentials installed automatically on your instance. If you are using IAM Roles, the AWS CLI will find and use them automatically.

In addition to credentials, a number of other variables can be configured either with environment variables, configuration file entries, or both. See the AWS Tools and SDKs Shared Configuration and Credentials Reference Guide for more information.

For more information about configuration options, please refer to the AWS CLI Configuration Variables topic. You can access this topic from the AWS CLI as well by running aws help config-vars.

Basic Commands
An AWS CLI command has the following structure:

$ aws <command> <subcommand> [options and parameters]
For example, to list S3 buckets, the command would be:

$ aws s3 ls
To view help documentation, use one of the following:

$ aws help
$ aws <command> help
$ aws <command> <subcommand> help
To get the version of the AWS CLI:

$ aws --version
To turn on debugging output:

$ aws --debug <command> <subcommand>
You can read more information on the Using the AWS CLI chapter of the AWS CLI User Guide.

Command Completion
The aws-cli package includes a command completion feature for Unix-like systems. This feature is not automatically installed so you need to configure it manually. To learn more, read the AWS CLI Command completion topic.

Getting Help
The best way to interact with our team is through GitHub. You can open an issue and choose from one of our templates for guidance, bug reports, or feature requests.

You may find help from the community on Stack Overflow with the tag aws-cli or on the AWS Discussion Forum for CLI. If you have a support plan with AWS Support, you can also create a new support case.

Please check for open similar issues before opening another one.

The AWS CLI implements AWS service APIs. For general issues regarding the services or their limitations, you may find the Amazon Web Services Discussion Forums helpful.

More Resources
Changelog
AWS CLI Documentation
AWS CLI User Guide
AWS CLI Command Reference
Amazon Web Services Discussion Forums
AWS Support
