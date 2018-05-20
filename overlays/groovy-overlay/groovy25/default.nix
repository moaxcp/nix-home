{ stdenv, fetchurl, unzip, which, makeWrapper, jdk }:

# at runtime, need jdk

stdenv.mkDerivation rec {
  name = "groovy-${version}";
  version = "2.5.0-rc-1";

  src = fetchurl {
    url = "https://dl.bintray.com/groovy/maven/apache-groovy-binary-${version}.zip";
    sha256 = "1afqrjvhc3jm2wa7fz0c4wqzaiqrglcxgwnvvh5mbnfhvmz1kqxj";
  };

  buildInputs = [ unzip makeWrapper ];

  installPhase = ''
    mkdir -p $out
    mkdir -p $out/share/doc/groovy
    rm bin/*.bat
    mv {bin,conf,embeddable,grooid,indy,lib} $out
    mv {licenses,LICENSE,NOTICE} $out/share/doc/groovy
    sed -i 's#which#${which}/bin/which#g' $out/bin/startGroovy
    for p in grape java2groovy groovy{,doc,c,sh,Console}; do
      wrapProgram $out/bin/$p \
            --set JAVA_HOME "${jdk}" \
            --prefix PATH ":" "${jdk}/bin"
    done
  '';

  meta = with stdenv.lib; {
    description = "An agile dynamic language for the Java Platform";
    homepage = http://groovy-lang.org/;
    license = licenses.asl20;
    maintainers = with maintainers; [ pSub moaxcp ];
    platforms = with platforms; unix;
  };
}
