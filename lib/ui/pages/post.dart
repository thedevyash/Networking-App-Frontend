import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF131a32),
        appBar: AppBar(
            backgroundColor: const Color(0xFF131a32),
            foregroundColor: Colors.white),
        body: Container(
          padding: EdgeInsets.all(12),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: const Color(0xFF131a32)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color(0xFF96B3FF),
                      ),
                      child: const Center(
                        child: Text(
                          'RA',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Rick Astley",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "21MIS1000",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                    const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Non odio euismod lacinia at. Tortor aliquam nulla facilisi cras fermentum odio eu. Ut tortor pretium viverra suspendisse potenti nullam. Massa enim nec dui nunc mattis enim ut tellus. In tellus integer feugiat scelerisque varius morbi enim nunc. Quis lectus nulla at volutpat diam ut venenatis tellus. Dolor magna eget est lorem ipsum dolor sit amet. Pellentesque id nibh tortor id. Duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Et netus et malesuada fames ac turpis egestas. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt. Tellus at urna condimentum mattis. Maecenas accumsan lacus vel facilisis volutpat. Nulla posuere sollicitudin aliquam ultrices sagittis orci. Tellus in metus vulputate eu scelerisque felis imperdiet proin fermentum. Natoque penatibus et magnis dis parturient.",
                  style: TextStyle(color: Colors.white),
                ),
                Row(children: [
                  ElevatedButton.icon(
                      onPressed: () {},
                      label:
                          Text("Like", style: TextStyle(color: Colors.white)),
                      icon: Icon(
                        Icons.thumb_up,
                      ),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.transparent,
                          elevation: 0)),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {},
                      label: Text("Comment",
                          style: TextStyle(color: Colors.white)),
                      icon: Icon(
                        Icons.comment,
                      ),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.transparent,
                          elevation: 0)),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {},
                      label:
                          Text("Share", style: TextStyle(color: Colors.white)),
                      icon: Icon(
                        Icons.share,
                      ),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.transparent,
                          elevation: 0))
                ]),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemExtent: 100,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 40,
                  itemBuilder: ((context, index) {
                    return Comment(
                      index: index,
                    );
                  }),
                ),
              ],
            ),
          ),
        ));
  }
}

class Comment extends StatelessWidget {
  const Comment({super.key, required this.index});
  final index;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Container(
          alignment: Alignment.topLeft,
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color(0xFF96B3FF),
          ),
          child: const Center(
            child: Text(
              'UN',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "User $index",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "COngratulations !!!",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ],
    ));
  }
}