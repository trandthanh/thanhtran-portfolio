const consent = () => {
  const messageConsent = document.getElementById("message_consent");
  const buttonSend = document.querySelector(".projects-buttonsend-thanhtran-portfolio");
  messageConsent.addEventListener('click', (event) => {
    if (messageConsent.checked) {
      buttonSend.disabled = false;
      buttonSend.classList.toggle("backgroundcolor-ashgrey");
      buttonSend.classList.toggle("backgroundcolor-palatinateblue");
    } else {
      buttonSend.disabled = true;
      buttonSend.classList.toggle("backgroundcolor-ashgrey");
      buttonSend.classList.toggle("backgroundcolor-palatinateblue");
    };
  })
}

export { consent }
