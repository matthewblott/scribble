// function updateLockButton() {
//   const lockButton = document.getElementById("button");
//   const newOrientation = getOppositeOrientation();
//   lockButton.textContent = `Lock to ${newOrientation}`;
// }
//
// function getOppositeOrientation() {
//   return screen
//     .orientation
//     .type
//     .startsWith("portrait") ? "landscape" : "portrait";
// }
//
// async function rotate(lockButton) {
//   if (!document.fullscreenElement) {
//     await document.documentElement.requestFullscreen();
//   }
//   const newOrientation = getOppositeOrientation();
//   await screen.orientation.lock(newOrientation);
//   updateLockButton(lockButton);
// }

document.addEventListener('DOMContentLoaded', () => {
  // screen.orientation.addEventListener("change", updateLockButton);
  // window.addEventListener("load", updateLockButton);

  screen.orientation.lock();

  document.querySelector('button[lock]').addEventListener('click', (e) => {
    // rotate(this)
  });

  document.querySelector('button[unlock]').addEventListener('click', (e) => {
    // screen.orientation.unlock();
  });

  // <button onclick="rotate(this)" id="button">
  //   Lock to...
  // </button>
  // <button onclick="screen.orientation.unlock()">
  //   Unlock
  // </button>

});

