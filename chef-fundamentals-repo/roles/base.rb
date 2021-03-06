name "base"
description "Base Server Role"
run_list  "recipe[apache::ohai_plugin]", "recipe[chef-client::delete_validation]", "recipe[chef-client::config]", "recipe[chef-client]", "recipe[ntp]", "recipe[motd]", "recipe[users]"
default_attributes(
	"chef_client" => {
		"config" => {
			"ssl_verify_mode" => ":verify_peer"
	}
		},
	"ohai" => {
		"disabled_plugins" => [":Passwd"]
	}
)

