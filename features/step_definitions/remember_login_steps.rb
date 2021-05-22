Dado('que eu estou na página inicial') do
    visit 'https://www.reddit.com/login/'
  end
  
  Quando('clico em relembrar username') do
    click_link 'username'
  end
  
  Entao('insiro o email {string}') do |email|
    find('#email').set email
  end
  
  Entao('clico em email me') do
    click_button 'Email Me'
  end