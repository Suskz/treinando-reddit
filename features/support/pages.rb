class Login_Page
    include Capybara::DSL
    def faz_login(username, senha)
        find('#loginUsername').set email
        find('#loginPassword').set senha
        click_button 'Log In'
    end
end