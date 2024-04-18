document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("signupForm").addEventListener("submit", function(event) {
        event.preventDefault();
        var username = document.getElementById("username").value.trim();
        var password = document.getElementById("password").value.trim();
        var email = document.getElementById("email").value.trim();
        var name = document.getElementById("name").value.trim();
        var phone = document.getElementById("phone").value.trim();
        var agree = document.getElementById("agree").checked;

        if (username === "" || password === "" || email === "" || name === "" || phone === "") {
            alert("모든 필드를 입력하세요.");
            return;
        }

        if (!isValidEmail(email)) {
            alert("올바른 이메일 형식을 입력하세요.");
            return;
        }

        if (!agree) {
            alert("개인정보 동의에 체크하세요.");
            return;
        }

        // 여기에 가입 로직을 추가할 수 있습니다.
        // 가입에 성공하면 원하는 동작을 수행하도록 코드를 작성하세요.
        alert("가입이 완료되었습니다!");
        window.location.href = "./index.html";
    });

    function isValidEmail(email) {
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    }
});
