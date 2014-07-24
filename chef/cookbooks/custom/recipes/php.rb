include_recipe "php"

# List additional php modules to install.
pkgs = [
  "php5-xsl"
]

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end