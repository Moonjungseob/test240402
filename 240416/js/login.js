document.getElementById('login-form').addEventListener('submit', function(event) {
    event.preventDefault();
  
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;
  
    if (username === '' || password === '') {
      alert('Please fill in all fields.');
      return;
    }
  
    // Here you can add further logic for handling the login process
  });
  
  document.getElementById('password').addEventListener('input', function() {
    const passwordInput = this;
    const loginButton = document.getElementById('login-btn');
    loginButton.style.width = passwordInput.offsetWidth + 'px';
  });