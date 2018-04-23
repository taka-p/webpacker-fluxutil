Rails.application.routes.draw do
	get 'pdf/:id', to: 'pdf#show', as: :pdf

	root 'top#index'
end
