#
# Cookbook Name:: owi_docker
# Recipe:: docker_image

node['owi_docker']['image'].each do |image_name, image_properties|
  actions = %i[pull]

  if image_properties.key?('actions')
    actions = [image_properties['actions'].map(&:to_sym)]
  end

  docker_image image_name do
    destination image_properties['destination'] unless image_properties['destination'].nil?
    force image_properties['force'] unless image_properties['force'].nil?
    host image_properties['host'] unless image_properties['host'].nil?
    image_name image_properties['image_name'] unless image_properties['image_name'].nil?
    nocache image_properties['nocache'] unless image_properties['nocache'].nil?
    noprune image_properties['noprune'] unless image_properties['noprune'].nil?
    read_timeout image_properties['read_timeout'] unless image_properties['read_timeout'].nil?
    repo image_properties['repo'] unless image_properties['repo'].nil?
    rm image_properties['rm'] unless image_properties['rm'].nil?
    source image_properties['source'] unless image_properties['source'].nil?
    tag image_properties['tag'] unless image_properties['tag'].nil?

    action actions
  end
end
