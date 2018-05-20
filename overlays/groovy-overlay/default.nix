self: super:

let
  inherit (self) callPackage;
in

{
  groovy25 = callPackage ./groovy25 {};
}
