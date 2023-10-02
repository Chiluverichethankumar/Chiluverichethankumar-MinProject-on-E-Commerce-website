// Wait for the DOM to be fully loaded
document.addEventListener("DOMContentLoaded", function () {
    // Display the success message after a short delay (e.g., 2 seconds)
    setTimeout(function () {
        document.querySelector(".success-message").style.display = "block";
    }, 2000);
});
