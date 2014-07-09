# List additional php modules to install.
pkgs = [
  #"php5-curl"
]

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end