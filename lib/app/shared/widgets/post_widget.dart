import 'package:deep_dive_get_cli/app/data/model/post_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Post extends StatelessWidget {
  final PostModel postModel;
  final void Function()? onPressed;
  const Post({
    super.key,
    required this.postModel,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  36,
                ),
                child: SizedBox(
                  width: 36,
                  height: 36,
                  child: Image.asset(
                    postModel.fotoProfile.isEmpty
                        ? ""
                        : 'assets/images/profile/${postModel.postingGambar}.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postModel.namaAkun.isEmpty ? "" : postModel.namaAkun,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    postModel.isSponsor
                        ? Text(
                            "Sponsored",
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Image.asset(
          'assets/images/profile/${postModel.postingGambar}.jpg',
          width: double.infinity,
          height: 390,
        ),
        const SizedBox(
          height: 9.25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    postModel.isLike
                        ? Icons.favorite
                        : Icons.favorite_border_outlined,
                    color: postModel.isLike
                        ? (Theme.of(context).brightness == Brightness.light
                            ? Colors.red
                            : Colors
                                .redAccent) // Set different colors for light and dark modes
                        : (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors
                                .black), // Set different colors for light and dark modes
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.comment,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                  ),
                )
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.bookmark_border),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            '${postModel.jumlahLike} Likes',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: RichText(
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                  text: '${postModel.namaAkun} ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: postModel.description,
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                TextSpan(
                  text: 'more',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Text(
            'View all comments',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
