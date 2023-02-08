# -*- encoding : utf-8 -*-
# Here you can override or add to the pages in the core website

Rails.application.routes.draw do
  # brand new controller example
  get '/help/flossk' => 'flossk'
  # Additional help page example
  # get '/help/help_out' => 'help#help_out'
end
