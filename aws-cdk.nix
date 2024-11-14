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
  };

  meta = with lib; {
    description = "AWS Cloud Development Kit Library for Python";
    homepage = "https://github.com/aws/aws-cdk";
    license = licenses.apache2;
    maintainers = with maintainers; [ rdmolony ];
  };
}
