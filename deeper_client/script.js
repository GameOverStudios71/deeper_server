$(document).ready(function() {
    $('#login-form').on('submit', function(event) {
        event.preventDefault(); // Impede o envio padrão do formulário

        const email = $('#email').val();
        const password = $('#password').val();
        const $errorMessage = $('#error-message');

        $errorMessage.text(''); // Limpa mensagens de erro anteriores

        console.log('Tentando fazer login com:', { email, password });

        $.ajax({
            url: 'http://localhost:4000/api/v1/sessions',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({ 
                email: email, 
                password: password 
            }),
            success: function(response) {
                // Em um aplicativo real, salvaríamos o token e redirecionaríamos
                console.log('Login bem-sucedido:', response);
                alert('Login bem-sucedido! Token: ' + response.data.token);
                // Exemplo de como salvar o token:
                // localStorage.setItem('jwt_token', response.data.token);
                // window.location.href = '/dashboard.html'; // Redireciona para o painel
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.error('Erro no login:', textStatus, errorThrown);
                $errorMessage.text('Email ou senha inválidos. Tente novamente.');
            }
        });

    });
});
