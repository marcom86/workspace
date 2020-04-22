const scroll = () => {

  const linkTutorial = document.getElementById("link-tutorial");
  const tutorial = document.querySelector(".tutorial");

  linkTutorial.addEventListener("click", (event) => {
    event.preventDefault();
    tutorial.scrollIntoView({ block: 'center',  behavior: 'smooth' });
  });

};

export { scroll };
