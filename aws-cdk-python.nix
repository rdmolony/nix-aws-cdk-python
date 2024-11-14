{
    lib,
    buildPythonPackage,
    fetchPypi
}:

buildPythonPackage rec {
  pname = "aws-cdk-lib";
  version = "2.167.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx=";
  };

  meta = with lib; {
    description = "AWS Cloud Development Kit Library for Python";
    homepage = "https://github.com/aws/aws-cdk";
    license = licenses.apache2;
    maintainers = with maintainers; [ rdmolony ];
  };
}

# TODO: package each dependency ...
# "aws-cdk.asset-awscli-v1>=2.2.208, <3.0.0",
# "aws-cdk.asset-kubectl-v20>=2.1.3, <3.0.0",
# "aws-cdk.asset-node-proxy-agent-v6>=2.1.0, <3.0.0",
# "aws-cdk.cloud-assembly-schema>=38.0.1, <39.0.0",
# "constructs>=10.0.0, <11.0.0",
# "jsii>=1.104.0, <2.0.0",
# "publication>=0.0.3",
# "typeguard>=2.13.3,<4.3.0"
