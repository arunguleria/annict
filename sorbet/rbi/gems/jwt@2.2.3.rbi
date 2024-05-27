# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `jwt` gem.
# Please instead update this file by running `bin/tapioca gem jwt`.


# JSON Web Token implementation
#
# Should be up to date with the latest spec:
# https://tools.ietf.org/html/rfc7519
#
# source://jwt//lib/jwt/base64.rb#5
module JWT
  include ::JWT::DefaultOptions

  private

  # source://jwt//lib/jwt.rb#27
  def decode(jwt, key = T.unsafe(nil), verify = T.unsafe(nil), options = T.unsafe(nil), &keyfinder); end

  # source://jwt//lib/jwt.rb#20
  def encode(payload, key, algorithm = T.unsafe(nil), header_fields = T.unsafe(nil)); end

  class << self
    # source://jwt//lib/jwt.rb#27
    def decode(jwt, key = T.unsafe(nil), verify = T.unsafe(nil), options = T.unsafe(nil), &keyfinder); end

    # source://jwt//lib/jwt.rb#20
    def encode(payload, key, algorithm = T.unsafe(nil), header_fields = T.unsafe(nil)); end
  end
end

# Signature logic for JWT
#
# source://jwt//lib/jwt/algos/hmac.rb#2
module JWT::Algos
  extend ::JWT::Algos

  # source://jwt//lib/jwt/algos.rb#27
  def find(algorithm); end

  private

  # source://jwt//lib/jwt/algos.rb#33
  def indexed; end
end

# source://jwt//lib/jwt/algos.rb#17
JWT::Algos::ALGOS = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/algos/ecdsa.rb#3
module JWT::Algos::Ecdsa
  private

  # source://jwt//lib/jwt/algos/ecdsa.rb#13
  def sign(to_sign); end

  # source://jwt//lib/jwt/algos/ecdsa.rb#24
  def verify(to_verify); end

  class << self
    # source://jwt//lib/jwt/algos/ecdsa.rb#13
    def sign(to_sign); end

    # source://jwt//lib/jwt/algos/ecdsa.rb#24
    def verify(to_verify); end
  end
end

# source://jwt//lib/jwt/algos/ecdsa.rb#7
JWT::Algos::Ecdsa::NAMED_CURVES = T.let(T.unsafe(nil), Hash)

# source://jwt//lib/jwt/algos/ecdsa.rb#6
JWT::Algos::Ecdsa::SUPPORTED = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/algos/eddsa.rb#3
module JWT::Algos::Eddsa
  private

  # source://jwt//lib/jwt/algos/eddsa.rb#8
  def sign(to_sign); end

  # source://jwt//lib/jwt/algos/eddsa.rb#15
  def verify(to_verify); end

  class << self
    # @raise [EncodeError]
    #
    # source://jwt//lib/jwt/algos/eddsa.rb#8
    def sign(to_sign); end

    # @raise [IncorrectAlgorithm]
    #
    # source://jwt//lib/jwt/algos/eddsa.rb#15
    def verify(to_verify); end
  end
end

# source://jwt//lib/jwt/algos/eddsa.rb#6
JWT::Algos::Eddsa::SUPPORTED = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/algos/hmac.rb#3
module JWT::Algos::Hmac
  private

  # source://jwt//lib/jwt/algos/hmac.rb#8
  def sign(to_sign); end

  # source://jwt//lib/jwt/algos/hmac.rb#19
  def verify(to_verify); end

  class << self
    # source://jwt//lib/jwt/algos/hmac.rb#8
    def sign(to_sign); end

    # source://jwt//lib/jwt/algos/hmac.rb#19
    def verify(to_verify); end
  end
end

# source://jwt//lib/jwt/algos/hmac.rb#6
JWT::Algos::Hmac::SUPPORTED = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/algos/none.rb#3
module JWT::Algos::None
  private

  # source://jwt//lib/jwt/algos/none.rb#8
  def sign(*_arg0); end

  # source://jwt//lib/jwt/algos/none.rb#10
  def verify(*_arg0); end

  class << self
    # source://jwt//lib/jwt/algos/none.rb#8
    def sign(*_arg0); end

    # source://jwt//lib/jwt/algos/none.rb#10
    def verify(*_arg0); end
  end
end

# source://jwt//lib/jwt/algos/none.rb#6
JWT::Algos::None::SUPPORTED = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/algos/ps.rb#3
module JWT::Algos::Ps
  private

  # source://jwt//lib/jwt/algos/ps.rb#30
  def require_openssl!; end

  # source://jwt//lib/jwt/algos/ps.rb#10
  def sign(to_sign); end

  # source://jwt//lib/jwt/algos/ps.rb#24
  def verify(to_verify); end

  class << self
    # source://jwt//lib/jwt/algos/ps.rb#30
    def require_openssl!; end

    # @raise [EncodeError]
    #
    # source://jwt//lib/jwt/algos/ps.rb#10
    def sign(to_sign); end

    # source://jwt//lib/jwt/algos/ps.rb#24
    def verify(to_verify); end
  end
end

# source://jwt//lib/jwt/algos/ps.rb#8
JWT::Algos::Ps::SUPPORTED = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/algos/rsa.rb#3
module JWT::Algos::Rsa
  private

  # source://jwt//lib/jwt/algos/rsa.rb#8
  def sign(to_sign); end

  # source://jwt//lib/jwt/algos/rsa.rb#14
  def verify(to_verify); end

  class << self
    # @raise [EncodeError]
    #
    # source://jwt//lib/jwt/algos/rsa.rb#8
    def sign(to_sign); end

    # source://jwt//lib/jwt/algos/rsa.rb#14
    def verify(to_verify); end
  end
end

# source://jwt//lib/jwt/algos/rsa.rb#6
JWT::Algos::Rsa::SUPPORTED = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/algos/unsupported.rb#3
module JWT::Algos::Unsupported
  private

  # source://jwt//lib/jwt/algos/unsupported.rb#8
  def sign(*_arg0); end

  # source://jwt//lib/jwt/algos/unsupported.rb#12
  def verify(*_arg0); end

  class << self
    # @raise [NotImplementedError]
    #
    # source://jwt//lib/jwt/algos/unsupported.rb#8
    def sign(*_arg0); end

    # @raise [JWT::VerificationError]
    #
    # source://jwt//lib/jwt/algos/unsupported.rb#12
    def verify(*_arg0); end
  end
end

# source://jwt//lib/jwt/algos/unsupported.rb#6
JWT::Algos::Unsupported::SUPPORTED = T.let(T.unsafe(nil), Array)

# Base64 helpers
#
# source://jwt//lib/jwt/base64.rb#7
class JWT::Base64
  class << self
    # source://jwt//lib/jwt/base64.rb#13
    def url_decode(str); end

    # source://jwt//lib/jwt/base64.rb#9
    def url_encode(str); end
  end
end

# source://jwt//lib/jwt/claims_validator.rb#4
class JWT::ClaimsValidator
  # @return [ClaimsValidator] a new instance of ClaimsValidator
  #
  # source://jwt//lib/jwt/claims_validator.rb#11
  def initialize(payload); end

  # source://jwt//lib/jwt/claims_validator.rb#15
  def validate!; end

  private

  # @raise [InvalidPayload]
  #
  # source://jwt//lib/jwt/claims_validator.rb#29
  def validate_is_numeric(claim); end

  # source://jwt//lib/jwt/claims_validator.rb#23
  def validate_numeric_claims; end
end

# source://jwt//lib/jwt/claims_validator.rb#5
JWT::ClaimsValidator::NUMERIC_CLAIMS = T.let(T.unsafe(nil), Array)

# Decoding logic for JWT
#
# source://jwt//lib/jwt/decode.rb#10
class JWT::Decode
  # @raise [JWT::DecodeError]
  # @return [Decode] a new instance of Decode
  #
  # source://jwt//lib/jwt/decode.rb#11
  def initialize(jwt, key, verify, options, &keyfinder); end

  # @raise [JWT::DecodeError]
  #
  # source://jwt//lib/jwt/decode.rb#22
  def decode_segments; end

  private

  # source://jwt//lib/jwt/decode.rb#49
  def allowed_algorithms; end

  # source://jwt//lib/jwt/decode.rb#87
  def decode_crypto; end

  # @raise [JWT::DecodeError]
  #
  # source://jwt//lib/jwt/decode.rb#65
  def find_key(&keyfinder); end

  # source://jwt//lib/jwt/decode.rb#91
  def header; end

  # @return [Boolean]
  #
  # source://jwt//lib/jwt/decode.rb#45
  def options_includes_algo_in_header?; end

  # source://jwt//lib/jwt/decode.rb#103
  def parse_and_decode(segment); end

  # source://jwt//lib/jwt/decode.rb#95
  def payload; end

  # source://jwt//lib/jwt/decode.rb#83
  def segment_length; end

  # source://jwt//lib/jwt/decode.rb#99
  def signing_input; end

  # @raise [JWT::DecodeError]
  #
  # source://jwt//lib/jwt/decode.rb#75
  def validate_segment_count!; end

  # source://jwt//lib/jwt/decode.rb#71
  def verify_claims; end

  # @raise [JWT::IncorrectAlgorithm]
  #
  # source://jwt//lib/jwt/decode.rb#35
  def verify_signature; end
end

# source://jwt//lib/jwt/error.rb#5
class JWT::DecodeError < ::StandardError; end

# source://jwt//lib/jwt/default_options.rb#2
module JWT::DefaultOptions; end

# source://jwt//lib/jwt/default_options.rb#3
JWT::DefaultOptions::DEFAULT_OPTIONS = T.let(T.unsafe(nil), Hash)

# Encoding logic for JWT
#
# source://jwt//lib/jwt/encode.rb#9
class JWT::Encode
  # @return [Encode] a new instance of Encode
  #
  # source://jwt//lib/jwt/encode.rb#13
  def initialize(options); end

  # source://jwt//lib/jwt/encode.rb#20
  def segments; end

  private

  # source://jwt//lib/jwt/encode.rb#65
  def combine(*parts); end

  # source://jwt//lib/jwt/encode.rb#61
  def encode(data); end

  # source://jwt//lib/jwt/encode.rb#42
  def encode_header; end

  # source://jwt//lib/jwt/encode.rb#47
  def encode_payload; end

  # source://jwt//lib/jwt/encode.rb#55
  def encode_signature; end

  # source://jwt//lib/jwt/encode.rb#26
  def encoded_header; end

  # source://jwt//lib/jwt/encode.rb#38
  def encoded_header_and_payload; end

  # source://jwt//lib/jwt/encode.rb#30
  def encoded_payload; end

  # source://jwt//lib/jwt/encode.rb#34
  def encoded_signature; end
end

# source://jwt//lib/jwt/encode.rb#11
JWT::Encode::ALG_KEY = T.let(T.unsafe(nil), String)

# source://jwt//lib/jwt/encode.rb#10
JWT::Encode::ALG_NONE = T.let(T.unsafe(nil), String)

# source://jwt//lib/jwt/error.rb#4
class JWT::EncodeError < ::StandardError; end

# source://jwt//lib/jwt/error.rb#9
class JWT::ExpiredSignature < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#11
class JWT::ImmatureSignature < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#10
class JWT::IncorrectAlgorithm < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#14
class JWT::InvalidAudError < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#13
class JWT::InvalidIatError < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#12
class JWT::InvalidIssuerError < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#16
class JWT::InvalidJtiError < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#17
class JWT::InvalidPayload < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#15
class JWT::InvalidSubError < ::JWT::DecodeError; end

# JSON wrapper
#
# source://jwt//lib/jwt/json.rb#7
class JWT::JSON
  class << self
    # source://jwt//lib/jwt/json.rb#9
    def generate(data); end

    # source://jwt//lib/jwt/json.rb#13
    def parse(data); end
  end
end

# source://jwt//lib/jwt/jwk/key_finder.rb#4
module JWT::JWK
  class << self
    # source://jwt//lib/jwt/jwk.rb#23
    def classes; end

    # source://jwt//lib/jwt/jwk.rb#17
    def create_from(keypair); end

    # @raise [JWT::JWKError]
    #
    # source://jwt//lib/jwt/jwk.rb#8
    def import(jwk_data); end

    # source://jwt//lib/jwt/jwk.rb#17
    def new(keypair); end

    private

    # source://jwt//lib/jwt/jwk.rb#36
    def generate_mappings; end

    # source://jwt//lib/jwt/jwk.rb#32
    def mappings; end
  end
end

# source://jwt//lib/jwt/jwk/ec.rb#7
class JWT::JWK::EC < ::JWT::JWK::KeyBase
  extend ::Forwardable

  # @raise [ArgumentError]
  # @return [EC] a new instance of EC
  #
  # source://jwt//lib/jwt/jwk/ec.rb#15
  def initialize(keypair, kid = T.unsafe(nil)); end

  # source://jwt//lib/jwt/jwk/ec.rb#26
  def export(options = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://jwt//lib/jwt/jwk/ec.rb#22
  def private?; end

  # source://forwardable/1.3.2/forwardable.rb#229
  def public_key(*args, **_arg1, &block); end

  private

  # source://jwt//lib/jwt/jwk/ec.rb#42
  def append_private_parts(the_hash); end

  # source://jwt//lib/jwt/jwk/ec.rb#74
  def encode_octets(octets); end

  # source://jwt//lib/jwt/jwk/ec.rb#78
  def encode_open_ssl_bn(key_part); end

  # source://jwt//lib/jwt/jwk/ec.rb#49
  def generate_kid(ec_keypair); end

  # source://jwt//lib/jwt/jwk/ec.rb#56
  def keypair_components(ec_keypair); end

  class << self
    # @raise [Jwt::JWKError]
    #
    # source://jwt//lib/jwt/jwk/ec.rb#83
    def import(jwk_data); end

    # source://jwt//lib/jwt/jwk/ec.rb#93
    def to_openssl_curve(crv); end

    private

    # source://jwt//lib/jwt/jwk/ec.rb#140
    def decode_octets(jwk_data); end

    # source://jwt//lib/jwt/jwk/ec.rb#144
    def decode_open_ssl_bn(jwk_data); end

    # source://jwt//lib/jwt/jwk/ec.rb#113
    def ec_pkey(jwk_crv, jwk_x, jwk_y, jwk_d); end

    # source://jwt//lib/jwt/jwk/ec.rb#107
    def jwk_attrs(jwk_data, attrs); end
  end
end

# source://jwt//lib/jwt/jwk/ec.rb#13
JWT::JWK::EC::BINARY = T.let(T.unsafe(nil), Integer)

# source://jwt//lib/jwt/jwk/ec.rb#11
JWT::JWK::EC::KTY = T.let(T.unsafe(nil), String)

# source://jwt//lib/jwt/jwk/ec.rb#12
JWT::JWK::EC::KTYS = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/jwk/hmac.rb#5
class JWT::JWK::HMAC < ::JWT::JWK::KeyBase
  # @raise [ArgumentError]
  # @return [HMAC] a new instance of HMAC
  #
  # source://jwt//lib/jwt/jwk/hmac.rb#9
  def initialize(keypair, kid = T.unsafe(nil)); end

  # See https://tools.ietf.org/html/rfc7517#appendix-A.3
  #
  # source://jwt//lib/jwt/jwk/hmac.rb#25
  def export(options = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://jwt//lib/jwt/jwk/hmac.rb#16
  def private?; end

  # source://jwt//lib/jwt/jwk/hmac.rb#20
  def public_key; end

  private

  # source://jwt//lib/jwt/jwk/hmac.rb#40
  def generate_kid; end

  class << self
    # @raise [JWT::JWKError]
    #
    # source://jwt//lib/jwt/jwk/hmac.rb#47
    def import(jwk_data); end
  end
end

# source://jwt//lib/jwt/jwk/hmac.rb#6
JWT::JWK::HMAC::KTY = T.let(T.unsafe(nil), String)

# source://jwt//lib/jwt/jwk/hmac.rb#7
JWT::JWK::HMAC::KTYS = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/jwk/key_base.rb#5
class JWT::JWK::KeyBase
  # @return [KeyBase] a new instance of KeyBase
  #
  # source://jwt//lib/jwt/jwk/key_base.rb#8
  def initialize(keypair, kid = T.unsafe(nil)); end

  # Returns the value of attribute keypair.
  #
  # source://jwt//lib/jwt/jwk/key_base.rb#6
  def keypair; end

  # Returns the value of attribute kid.
  #
  # source://jwt//lib/jwt/jwk/key_base.rb#6
  def kid; end

  class << self
    # @private
    #
    # source://jwt//lib/jwt/jwk/key_base.rb#13
    def inherited(klass); end
  end
end

# source://jwt//lib/jwt/jwk/key_finder.rb#5
class JWT::JWK::KeyFinder
  # @return [KeyFinder] a new instance of KeyFinder
  #
  # source://jwt//lib/jwt/jwk/key_finder.rb#6
  def initialize(options); end

  # @raise [::JWT::DecodeError]
  #
  # source://jwt//lib/jwt/jwk/key_finder.rb#12
  def key_for(kid); end

  private

  # source://jwt//lib/jwt/jwk/key_finder.rb#53
  def find_key(kid); end

  # source://jwt//lib/jwt/jwk/key_finder.rb#38
  def jwks; end

  # source://jwt//lib/jwt/jwk/key_finder.rb#49
  def jwks_keys; end

  # source://jwt//lib/jwt/jwk/key_finder.rb#45
  def load_keys(opts = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://jwt//lib/jwt/jwk/key_finder.rb#57
  def reloadable?; end

  # source://jwt//lib/jwt/jwk/key_finder.rb#25
  def resolve_key(kid); end
end

# source://jwt//lib/jwt/jwk/rsa.rb#5
class JWT::JWK::RSA < ::JWT::JWK::KeyBase
  # @raise [ArgumentError]
  # @return [RSA] a new instance of RSA
  #
  # source://jwt//lib/jwt/jwk/rsa.rb#11
  def initialize(keypair, kid = T.unsafe(nil)); end

  # source://jwt//lib/jwt/jwk/rsa.rb#24
  def export(options = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://jwt//lib/jwt/jwk/rsa.rb#16
  def private?; end

  # source://jwt//lib/jwt/jwk/rsa.rb#20
  def public_key; end

  private

  # source://jwt//lib/jwt/jwk/rsa.rb#45
  def append_private_parts(the_hash); end

  # source://jwt//lib/jwt/jwk/rsa.rb#56
  def encode_open_ssl_bn(key_part); end

  # source://jwt//lib/jwt/jwk/rsa.rb#39
  def generate_kid(public_key); end

  class << self
    # source://jwt//lib/jwt/jwk/rsa.rb#61
    def import(jwk_data); end

    private

    # source://jwt//lib/jwt/jwk/rsa.rb#107
    def decode_open_ssl_bn(jwk_data); end

    # source://jwt//lib/jwt/jwk/rsa.rb#71
    def jwk_attributes(jwk_data, *attributes); end

    # source://jwt//lib/jwt/jwk/rsa.rb#86
    def populate_key(rsa_key, rsa_parameters); end

    # @raise [JWT::JWKError]
    #
    # source://jwt//lib/jwt/jwk/rsa.rb#79
    def rsa_pkey(rsa_parameters); end
  end
end

# source://jwt//lib/jwt/jwk/rsa.rb#6
JWT::JWK::RSA::BINARY = T.let(T.unsafe(nil), Integer)

# source://jwt//lib/jwt/jwk/rsa.rb#7
JWT::JWK::RSA::KTY = T.let(T.unsafe(nil), String)

# source://jwt//lib/jwt/jwk/rsa.rb#8
JWT::JWK::RSA::KTYS = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/jwk/rsa.rb#9
JWT::JWK::RSA::RSA_KEY_ELEMENTS = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/error.rb#19
class JWT::JWKError < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#6
class JWT::RequiredDependencyError < ::StandardError; end

# Collection of security methods
#
# @see: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/security_utils.rb
#
# source://jwt//lib/jwt/security_utils.rb#5
module JWT::SecurityUtils
  private

  # source://jwt//lib/jwt/security_utils.rb#29
  def asn1_to_raw(signature, public_key); end

  # source://jwt//lib/jwt/security_utils.rb#34
  def raw_to_asn1(signature, private_key); end

  # source://jwt//lib/jwt/security_utils.rb#41
  def rbnacl_fixup(algorithm, key); end

  # source://jwt//lib/jwt/security_utils.rb#8
  def secure_compare(left, right); end

  # source://jwt//lib/jwt/security_utils.rb#23
  def verify_ps(algorithm, public_key, signing_input, signature); end

  # source://jwt//lib/jwt/security_utils.rb#19
  def verify_rsa(algorithm, public_key, signing_input, signature); end

  class << self
    # source://jwt//lib/jwt/security_utils.rb#29
    def asn1_to_raw(signature, public_key); end

    # source://jwt//lib/jwt/security_utils.rb#34
    def raw_to_asn1(signature, private_key); end

    # source://jwt//lib/jwt/security_utils.rb#41
    def rbnacl_fixup(algorithm, key); end

    # source://jwt//lib/jwt/security_utils.rb#8
    def secure_compare(left, right); end

    # source://jwt//lib/jwt/security_utils.rb#23
    def verify_ps(algorithm, public_key, signing_input, signature); end

    # source://jwt//lib/jwt/security_utils.rb#19
    def verify_rsa(algorithm, public_key, signing_input, signature); end
  end
end

# Signature logic for JWT
#
# source://jwt//lib/jwt/signature.rb#15
module JWT::Signature
  extend ::JWT::Signature

  # source://jwt//lib/jwt/signature.rb#20
  def sign(algorithm, msg, key); end

  # source://jwt//lib/jwt/signature.rb#25
  def verify(algorithm, key, signing_input, signature); end
end

# source://jwt//lib/jwt/signature.rb#17
class JWT::Signature::ToSign < ::Struct
  # Returns the value of attribute algorithm
  #
  # @return [Object] the current value of algorithm
  def algorithm; end

  # Sets the attribute algorithm
  #
  # @param value [Object] the value to set the attribute algorithm to.
  # @return [Object] the newly set value
  def algorithm=(_); end

  # Returns the value of attribute key
  #
  # @return [Object] the current value of key
  def key; end

  # Sets the attribute key
  #
  # @param value [Object] the value to set the attribute key to.
  # @return [Object] the newly set value
  def key=(_); end

  # Returns the value of attribute msg
  #
  # @return [Object] the current value of msg
  def msg; end

  # Sets the attribute msg
  #
  # @param value [Object] the value to set the attribute msg to.
  # @return [Object] the newly set value
  def msg=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

# source://jwt//lib/jwt/signature.rb#18
class JWT::Signature::ToVerify < ::Struct
  # Returns the value of attribute algorithm
  #
  # @return [Object] the current value of algorithm
  def algorithm; end

  # Sets the attribute algorithm
  #
  # @param value [Object] the value to set the attribute algorithm to.
  # @return [Object] the newly set value
  def algorithm=(_); end

  # Returns the value of attribute public_key
  #
  # @return [Object] the current value of public_key
  def public_key; end

  # Sets the attribute public_key
  #
  # @param value [Object] the value to set the attribute public_key to.
  # @return [Object] the newly set value
  def public_key=(_); end

  # Returns the value of attribute signature
  #
  # @return [Object] the current value of signature
  def signature; end

  # Sets the attribute signature
  #
  # @param value [Object] the value to set the attribute signature to.
  # @return [Object] the newly set value
  def signature=(_); end

  # Returns the value of attribute signing_input
  #
  # @return [Object] the current value of signing_input
  def signing_input; end

  # Sets the attribute signing_input
  #
  # @param value [Object] the value to set the attribute signing_input to.
  # @return [Object] the newly set value
  def signing_input=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

# source://jwt//lib/jwt/error.rb#8
class JWT::VerificationError < ::JWT::DecodeError; end

# JWT verify methods
#
# source://jwt//lib/jwt/verify.rb#7
class JWT::Verify
  # @return [Verify] a new instance of Verify
  #
  # source://jwt//lib/jwt/verify.rb#27
  def initialize(payload, options); end

  # @raise [JWT::InvalidAudError]
  #
  # source://jwt//lib/jwt/verify.rb#32
  def verify_aud; end

  # @raise [JWT::ExpiredSignature]
  #
  # source://jwt//lib/jwt/verify.rb#39
  def verify_expiration; end

  # @raise [JWT::InvalidIatError]
  #
  # source://jwt//lib/jwt/verify.rb#44
  def verify_iat; end

  # @raise [JWT::InvalidIssuerError]
  #
  # source://jwt//lib/jwt/verify.rb#51
  def verify_iss; end

  # source://jwt//lib/jwt/verify.rb#61
  def verify_jti; end

  # @raise [JWT::ImmatureSignature]
  #
  # source://jwt//lib/jwt/verify.rb#73
  def verify_not_before; end

  # @raise [JWT::InvalidSubError]
  #
  # source://jwt//lib/jwt/verify.rb#78
  def verify_sub; end

  private

  # source://jwt//lib/jwt/verify.rb#90
  def exp_leeway; end

  # source://jwt//lib/jwt/verify.rb#86
  def global_leeway; end

  # source://jwt//lib/jwt/verify.rb#94
  def nbf_leeway; end

  class << self
    # source://jwt//lib/jwt/verify.rb#14
    def verify_aud(payload, options); end

    # source://jwt//lib/jwt/verify.rb#19
    def verify_claims(payload, options); end

    # source://jwt//lib/jwt/verify.rb#14
    def verify_expiration(payload, options); end

    # source://jwt//lib/jwt/verify.rb#14
    def verify_iat(payload, options); end

    # source://jwt//lib/jwt/verify.rb#14
    def verify_iss(payload, options); end

    # source://jwt//lib/jwt/verify.rb#14
    def verify_jti(payload, options); end

    # source://jwt//lib/jwt/verify.rb#14
    def verify_not_before(payload, options); end

    # source://jwt//lib/jwt/verify.rb#14
    def verify_sub(payload, options); end
  end
end

# source://jwt//lib/jwt/verify.rb#8
JWT::Verify::DEFAULTS = T.let(T.unsafe(nil), Hash)
