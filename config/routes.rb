# frozen_string_literal: true

Rails.application.routes.draw do
  root 'lifts#new'
  post 'lifts/calculate'
end
