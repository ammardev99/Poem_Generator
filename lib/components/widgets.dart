import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poem_generator/models/poem_model.dart';
import 'package:poem_generator/modules/category_feed/category_feed.dart';
import 'package:poem_generator/components/style.dart';
import 'package:poem_generator/models/category_model.dart';
import 'package:poem_generator/modules/poem_info/poem_info_dialog.dart';
import 'package:poem_generator/modules/poem_info/view.dart';
import 'package:poem_generator/routes/routes_name.dart';
import 'package:poem_generator/utils/color.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_it/share_it.dart';

Widget myTitle(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: color ?? AppColors.blackColor,
    ),
    textAlign: TextAlign.center,
  );
}

Widget myHeading(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color ?? AppColors.blackColor,
    ),
  );
}

Widget info(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: color ?? AppColors.borderColor,
    ),
    textAlign: TextAlign.justify,
  );
}

Widget sizeBox(double w, [double? h]) {
  return SizedBox(
    width: w,
    height: h ?? w,
  );
}

Widget moveButton(String text, context, page, String action) {
  return ElevatedButton(
    onPressed: () {
      if (page != null) {
        action == 'r' ? Get.offAndToNamed(page) : Get.toNamed(page);
      }
    },
    style: buttonStyle(),
    child: Text(text),
  );
}

Widget infoAction(
  String text,
  String label,
  page,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      info(text),
      sizeBox(5),
      TextButton(
          onPressed: () {
            if (page != null) {
              Get.toNamed(page);
            }
          },
          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            padding: WidgetStateProperty.all(EdgeInsets.zero),
          ),
          child: info(label, AppColors.primaryColor))
    ],
  );
}

Widget menuOption(IconData icon, String txt, BuildContext context, [page]) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.primaryColor03))),
    child: ListTile(
      hoverColor: AppColors.primaryColor03,
      splashColor: AppColors.primaryColor03,
      leading: Icon(icon),
      iconColor: AppColors.primaryColor,
      title: myHeading(
          txt, page == null ? Colors.black12 : AppColors.secondaryColor),
      // trailing: Icon(
      //   Icons.chevron_right,
      //   color: page == null ? Colors.grey : primaryColor03,
      // ),
      onTap: () {
        page == null
            ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: myHeading('Under Maintenance', AppColors.whiteColor),
                backgroundColor: AppColors.secondaryColor,
                duration: const Duration(milliseconds: 200),
              ))
            : 
            page== RouteName.loginPage? Get.toNamed(page): 
            Get.toNamed(page);
      },
    ),
  );
}

Widget redirectOption(IconData icon, String txt, String url) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.primaryColor03))),
    child: ListTile(
      hoverColor: AppColors.primaryColor03,
      splashColor: AppColors.primaryColor03,
      leading: Icon(icon),
      iconColor: AppColors.primaryColor,
      title: myHeading(
        txt,
      ),
      onTap: () async {
        // var url = 'https://play.google.com/store/apps/developer?id=samz+creation&hl=en&gl=US';
        // ignore: deprecated_member_use
        if (await canLaunch(url)) {
          // ignore: deprecated_member_use
          await launch(url);
        } else {
          throw 'Could not launch url';
        }
        // ignore: avoid_print
        print('fb');
      },
    ),
  );
}

Widget shareOption(IconData icon, String txt, String message) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.primaryColor03))),
    child: ListTile(
      hoverColor: AppColors.primaryColor03,
      splashColor: AppColors.primaryColor03,
      leading: Icon(icon),
      iconColor: AppColors.primaryColor,
      title: myHeading(
        txt,
      ),
      onTap: () {
        ShareIt.text(content: 'message');
        // ignore: avoid_print
        print('share');
      },
    ),
  );
}

// user info for menu
Widget userProfile(
  String name,
  String email,
  String img,
) {
  return Container(
    padding: const EdgeInsets.only(top: 20),
    width: double.infinity,
    height: 190,
    decoration: const BoxDecoration(color: AppColors.primaryColor),
    child: Center(
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.whiteColor, width: 1),
            borderRadius: BorderRadius.circular(100),
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              img,
            ),
          ),
        ),
        title: myHeading(name, AppColors.whiteColor),
        subtitle: info(email, AppColors.whiteColor),
        // trailing: IconButton(
        //   onPressed: () {
        //     Get.to( EditprofilePage());
        //   },
        //   icon: const Icon(
        //     Icons.edit,
        //     color: AppColors.whiteColor,
        //   ),
        // )
      ),
    ),
  );
}

Widget guestOption(String text, page) {
  return InkWell(
    borderRadius: BorderRadius.circular(100),
    onTap: () {
      Get.offAndToNamed(page);
    },
    child: Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(width: 1, color: AppColors.primaryColor)),
      child: Center(child: myHeading(text, AppColors.primaryColor)),
    ),
  );
}

Widget poemCategory(Category category) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.primaryColor03),
      borderRadius: BorderRadius.circular(8),
    ),
    child: InkWell(
      onTap: () {
        Get.toNamed(RouteName.categoryFeedScreen);
        // Get.to(CategoryFeed(name: category.type));
      },
      borderRadius: BorderRadius.circular(8),
      hoverColor: AppColors.whiteColor,
      splashColor: AppColors.primaryColor03,
      child: Row(
        children: [
          Container(
            width: 120,
            height: 100,
            decoration: BoxDecoration(
              color: category.color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            child:
                Center(child: myHeading(category.type, AppColors.whiteColor)),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: SizedBox(height: 30, child: myHeading(category.title)),
              // ignore: unnecessary_null_comparison
              subtitle: category.count != 0
                  ? info("Poems ${category.count}")
                  : info("Poems"),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget poemOfTheDay(Category category) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.primaryColor03),
      borderRadius: BorderRadius.circular(8),
    ),
    child: InkWell(
      onTap: () {
        Get.to(PoemInfoPage());
      },
      borderRadius: BorderRadius.circular(8),
      hoverColor: AppColors.whiteColor,
      splashColor: AppColors.primaryColor03,
      child: Stack(
        children: [
// main card
          Row(
            children: [
              Container(
                width: 120,
                height: 100,
                decoration: BoxDecoration(
                  color: category.color,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  image: const DecorationImage(
                      image: AssetImage(
                        'images/poem_image.png',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                  child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: SizedBox(
                    height: 30,
                    child: myHeading(category.title, AppColors.primaryColor)),
                subtitle: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: ' Author: ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.borderColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Name',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
// over layer Fav and likes
          Positioned(
              right: 0,
              top: 0,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: AppColors.borderColor,
                  ))),

          Positioned(
              right: 5,
              bottom: 5,
              child: Row(
                children: [
                  const Icon(
                    Icons.thumb_up_alt_outlined,
                    color: AppColors.borderColor,
                    size: 15,
                  ),
                  sizeBox(5),
                  info('1214 likes')
                ],
              )),
        ],
      ),
// end overlayer
    ),
  );
}

Widget iconWithLabel(IconData icon, String label) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconButton(
        splashColor: AppColors.primaryColor,
        hoverColor: Colors.transparent,
        onPressed: () {},
        icon: Icon(
          icon,
          color: AppColors.primaryColor,
        ),
      ),
      const SizedBox(width: 4),
      info(label),
    ],
  );
}

Widget poemPost(BuildContext context, PoemPost post) {
  return InkWell(
    splashColor: AppColors.primaryColor03,
    hoverColor: Colors.transparent,
    onTap: () {
      poemInfoDialog(context, post);
      // Get.to( PoeminfoPage());
    },
    child: Container(
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(width: 2, color: AppColors.primaryColor03),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          // author info
          ListTile(
            contentPadding: const EdgeInsets.all(3),
            leading: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: AppColors.primaryColor03),
                  borderRadius: BorderRadius.circular(100)),
              child: CircleAvatar(
                backgroundImage: AssetImage(post.authorImg),
              ),
            ),
            title: myHeading(post.authorName, AppColors.secondaryColor),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.access_time_outlined, size: 15),
                sizeBox(4),
                info(post.time),
              ],
            ),
          ),
          sizeBox(10),
          // poem text
          Text(
            "${post.poem}Read more...",
            textAlign: TextAlign.justify,
          ),
          sizeBox(10),
          Divider(
            color: AppColors.primaryColor03,
            indent: 1,
            endIndent: 1,
          ),
          sizeBox(5),
          // action options
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              iconWithLabel(Icons.thumb_up_alt_outlined, "Like"),
              iconWithLabel(Icons.favorite_border, "Favorite"),
              iconWithLabel(Icons.share, "Share"),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget categoriesButtons() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal, // Ensures horizontal scrolling
    physics: const BouncingScrollPhysics(
      decelerationRate: ScrollDecelerationRate.normal,
    ),
    child: Row(
      children: [
        sizeBox(15),
        for (var i = 0; i < categoriesList.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child:
                categoryButton(categoriesList[i].type, categoriesList[i].color),
          ),
      ],
    ),
  );
}

Widget categoryButton(String text, Color color) {
  return TextButton(
    onPressed: () {
      Get.to(CategoryFeed(name: text));
    },
    style: TextButton.styleFrom(
      foregroundColor: AppColors.whiteColor,
      backgroundColor: color.withOpacity(0.9),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ),
    child: Text(text),
  );
}

Widget profileWelcome() {
  return ListTile(
    title: myHeading("Hi, Noman"),
    subtitle: info("Looking for specific poem?", AppColors.secondaryColor),
    trailing: Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor, width: 1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: const CircleAvatar(
        backgroundImage: AssetImage(
          'assets/png/author.png',
        ),
      ),
    ),
  );
}
