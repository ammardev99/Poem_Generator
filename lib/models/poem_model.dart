
class PoemPost{
  String authorName;
  String authorImg;
  String time;
  String poem;
  PoemPost({
    required this.authorName,
    required this.authorImg,
    required this.poem,
    required this.time,
  });
}

List<PoemPost> poemPostList = [
  PoemPost(
    authorName: "Noman",
    authorImg: "assets/png/author.png",
    poem:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus tortor eget mi ultricies, vel placerat justo efficitur.Integer eget ante a ligula efficitur condimentum. Vivamus volutpat libero et nisi luctus, quis sollicitudin lacus vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus tortor eget mi ultricies, vel placerat justo efficitur.Integer eget ante a ligula efficitur condimentum. Vivamus volutpat libero et nisi luctus, quis sollicitudin lacus vulputate.",
    time: '1',
  ),
  PoemPost(
    authorName: "Awais Madni",
    authorImg: "assets/png/author2.png",
    poem:
        "Sed faucibus tortor eget mi ultricies, Lorem ipsum dolor sit amet, consectetur adipiscing elit. vel placerat justo efficitur.Integer eget ante a ligula efficitur condimentum. Vivamus volutpat libero et nisi luctus, quis sollicitudin lacus vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus tortor eget mi ultricies, vel placerat justo efficitur.Integer eget ante a ligula efficitur condimentum. Vivamus volutpat libero et nisi luctus, quis sollicitudin lacus vulputate.",
    time: '3',
  ),
  PoemPost(
    authorName: "Usman",
    authorImg: "assets/png/author3.png",
    poem:
        "vel placerat justo efficitur, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus tortor eget mi ultricies, Integer eget ante a ligula efficitur condimentum. Vivamus volutpat libero et nisi luctus, quis sollicitudin lacus vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus tortor eget mi ultricies, vel placerat justo efficitur.Integer eget ante a ligula efficitur condimentum. Vivamus volutpat libero et nisi luctus, quis sollicitudin lacus vulputate.",
    time: '6',
  ),
];
