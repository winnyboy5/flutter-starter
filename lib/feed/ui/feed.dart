import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:starter/utils/widgets/card_image_object.dart';

import 'package:starter/utils/widgets/style.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 56,
            padding: EdgeInsets.only(top: 10, right: 14, left: 14, bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200]),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          FeatherIcons.search,
                          color: Colors.grey,
                          size: FontValues.fz4,
                        ),
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Search",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  FeatherIcons.plusCircle,
                  color: Colors.grey[800],
                  size: 20,
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    makeFeed(
                        context: context,
                        userName: 'Aiony Haust',
                        userImage: 'assets/images/users/aiony-haust.jpg',
                        brandImage: 'assets/images/brands/amazon.png',
                        role: 'Product Designer',
                        feedTime: '1 hr ago',
                        feedText:
                            'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
                        feedImage: 'assets/images/story/story-2.jpg'),
                    makeFeed(
                        context: context,
                        userName: 'Azamat Zhanisov',
                        userImage: 'assets/images/users/azamat-zhanisov.jpg',
                        brandImage: 'assets/images/brands/cola.jpg',
                        role: 'Head of Sales',
                        feedTime: '3 mins ago',
                        feedText:
                            "All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                        feedImage: ''),
                    makeFeed(
                        context: context,
                        userName: 'Azamat Zhanisov',
                        userImage: 'assets/images/users/azamat-zhanisov.jpg',
                        brandImage: 'assets/images/brands/twitter.png',
                        role: 'Full-Stack Engineer',
                        feedTime: '3 mins ago',
                        feedText:
                            "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                        feedImage: 'assets/images/users/averie-woodard.jpg'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget makeStory(
      {context, required storyImage, userImage, required userName}) {
    return AspectRatio(
      aspectRatio: 3.6 / 2,
      child: Container(
        margin: EdgeInsets.only(left: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image:
              DecorationImage(image: AssetImage(storyImage), fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ])),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CardImageObject(
                  profileImage: userImage,
                  companyLogo: userImage,
                  imageSize: 56.0,
                  alignParam: MainAxisAlignment.center),
              Text(
                userName,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed(
      {required context,
      required userName,
      userImage,
      required feedTime,
      required feedText,
      feedImage,
      brandImage,
      required role}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade800.withOpacity(0.3),
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CardImageObject(
                      profileImage: userImage,
                      companyLogo: brandImage,
                      imageSize: 56.0,
                      alignParam: MainAxisAlignment.center),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        userName,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        role,
                        style: TextStyle(
                            fontSize: FontValues.fz6,
                            fontWeight: FontWeight.w700,
                            height: 1.25,
                            color: Colors.grey[500]),
                      ),
                      Text(
                        feedTime,
                        style: TextStyle(
                            fontSize: FontValues.fz6,
                            height: 1.5,
                            color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              IconButton(
                icon: Icon(
                  FeatherIcons.moreVertical,
                  size: 20,
                  color: Colors.grey[500],
                ),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            feedText,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          SizedBox(
            height: 20,
          ),
          feedImage != ''
              ? Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(feedImage), fit: BoxFit.cover)),
                )
              : Container(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          )
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLikeButton({required isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              FeatherIcons.heart,
              color: isActive ? ColorSets.colorBrand3 : Colors.grey,
              size: 23,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "25",
              style: TextStyle(
                  color: isActive ? ColorSets.colorBrand3 : Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(FeatherIcons.messageCircle, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              "Comment",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(FeatherIcons.share, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              "Share",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
