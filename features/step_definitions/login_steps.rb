Dado('que eu acesso a página de login') do
    visit 'https://www.reddit.com/login/'
  end
  
  Quando('faço o login com {string} e {string}') do |username, senha|
    Login_Page.new.faz_login(username, senha)
  end
  
  Entao('devo ser redirecionado para a pagina inicial') do
    visit 'https://www.reddit.com/'
  end
  
  Entao('devo ver a seguinte mensagem {string}') do |alerta|
    @alerta = alerta
    expect(page).to have_content @alerta
  end