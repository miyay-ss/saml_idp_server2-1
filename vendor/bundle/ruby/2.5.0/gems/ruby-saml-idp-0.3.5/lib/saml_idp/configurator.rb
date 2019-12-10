module SamlIdp
  class Configurator
    attr_accessor :x509_certificate, :secret_key, :algorithm

    def initialize(config_file = nil)
      self.x509_certificate = Default::X509_CERTIFICATE
      self.secret_key = Default::SECRET_KEY
      self.algorithm = :sha1
      instance_eval(File.read(config_file), config_file) if config_file
    end
  end
end