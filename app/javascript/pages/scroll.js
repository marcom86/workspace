const scroll = () => {

  const linkTutorial = document.getElementById("link-tutorial");
  const tutorial = document.querySelector(".tutorial");

  linkTutorial.addEventListener("click", (event) => {
    event.preventDefault();
    tutorial.scrollIntoView({ block: 'center',  behavior: 'smooth' });
  });

};

const scrollUpTutorial = () => {

  const linkHowItWorks = document.getElementById("link-how-it-works");
  const tutorial = document.querySelector(".tutorial");

  linkHowItWorks.addEventListener("click", (event) => {
    event.preventDefault();
    tutorial.scrollIntoView({ block: 'center',  behavior: 'smooth' });
  });

};

const scrollUpNewSpaces = () => {

  const linkNewSpaces = document.getElementById("link-new-spaces");
  const bestSpaces = document.querySelector(".best-spaces");

  linkNewSpaces.addEventListener("click", (event) => {
    event.preventDefault();
    bestSpaces.scrollIntoView({ block: 'start',  behavior: 'smooth' });
  });

};

export { scroll, scrollUpTutorial, scrollUpNewSpaces };
