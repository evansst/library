const ratingOptions = [1,2,3,4,5];
const $ratingDropDown = document.querySelector('#rating-field');
const $authorDropDown = document.querySelector('#author-field');

function createRatingOptionsElements(array) {
  $options = array.map( option => {
    const $option = document.createElement('option');
    $option.innerText = option;
    $option.value = option;
    return $option;
  });
  return $options;
}

function appendRatingOptions($ratingOptions) {
  $ratingOptions.forEach( option => {
    $ratingDropDown.append(option);
  });
}

appendRatingOptions(createRatingOptionsElements(ratingOptions));

fetch('http://localhost:3000/authors')
  .then( response => response.json())
  .then( response => addAuthorOptionsToPage(response));

function addAuthorOptionsToPage(authors) {
  console.log(authors);
  authors
    .map(authorToOption)
    .forEach(addToAuthors);
}

function authorToOption(author) {
  const $option = document.createElement('option');
  $option.innerText = author.name;
  $option.value = author.id;
  return $option;
}

function addToAuthors($author) {
  return $authorDropDown.appendChild($author);
}