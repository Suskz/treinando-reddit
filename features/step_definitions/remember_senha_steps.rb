Dado('que eu acesso a página principal') do
    visit 'https://www.reddit.com/login/'
  end

  Quando('clico em relembrar password') do
    click_link 'password'
  end
  
  Entao('insiro o username {string} e o email {string}') do |username, email|
    find('#username').set username
    find('#email').set email
  end
  
  Entao('clico em reset password') do
    click_button 'Reset Password'
  end