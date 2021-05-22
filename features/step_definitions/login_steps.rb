Dado('que eu acesso a página de login') do
    visit 'https://www.reddit.com/login/'
  end
  
  Quando('faço o login com {string} e {string}') do |username, senha|
    find('#loginUsername').set username
    find('#loginPassword').set senha
    click_button 'Log In'
  end
  
  Entao('devo ser redirecionado para a pagina inicial') do
    visit 'https://www.reddit.com/'
  end
  
  Entao('devo ver a seguinte mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
  end