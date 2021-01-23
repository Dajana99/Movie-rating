let switchToGrid = function(){
    let gridView = document.getElementById("grid");
    let listView = document.getElementById("list");
    console.log(gridView,listView);
    gridView.style.display = "flex";
    listView.style.display = "none";
}
let switchToList = function(){
    let gridView = document.getElementById("grid");
    let listView = document.getElementById("list");
    console.log(gridView,listView);
    listView.style.display = "flex";
    gridView.style.display = "none";
}
switchToGrid();