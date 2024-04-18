document.addEventListener("DOMContentLoaded", function() {
  // Your code here
  document.getElementById("login-form").addEventListener("submit", function(event) {
      event.preventDefault();
      var username = document.getElementById("username").value.trim();
      var password = document.getElementById("password").value.trim();
      
      if (username === "" || password === "") {
          alert("모든 필드를 입력하세요.");
          return;
      }
      
      // 가입에 성공하면 원하는 동작을 수행하도록 코드를 작성하세요.
      alert("로그인 완료되었습니다!");
      window.location.href = "./index.html";
  });
});
