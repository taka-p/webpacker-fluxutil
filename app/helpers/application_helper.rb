module ApplicationHelper
	def custom_asset_pack_binary(asset)
		File.read("#{Rails.root}/public#{Webpacker.manifest.lookup!(asset)}").to_s
	end
end
