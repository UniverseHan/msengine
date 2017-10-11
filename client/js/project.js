var Project = function (name, description, writer, duration, recruitment) {
    this.name = name;
    this.description = description;
    this.writer = writer;
    this.duration = duration;
    this.recruitment = recruitment;
};

window.onload = function () {
    var sampleProject = new Project("sample", "this is a sample", "sampler", "20171010~20171231", 3);
    var projectDom = document.getElementById("project");

    for(var i = 0; i < 3; i++) {
        var projectNode = document.createElement("p");
        projectDom.appendChild(projectNode);
    }

    projectDom.getElementsByTagName('p')[0].innerText = "프로젝트명 : " + sampleProject.name;
    projectDom.getElementsByTagName('p')[1].innerText = "작성자 : " + sampleProject.writer;
    projectDom.getElementsByTagName('p')[2].innerText = "모집 인원 : " + sampleProject.recruitment;
};