import 'package:flutter/material.dart';
import 'package:phone_reader/config/theme/light_theme.dart';

class PostProperties extends StatelessWidget {
  const PostProperties({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.message_outlined,
                  size: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 30,
                  ),
                  child: Text(
                    "8 comments",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: LightTheme.primaryColor,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.favorite_border_outlined,
                size: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 5.0,
                  right: 30,
                ),
                child: Text(
                  "34 likes",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: LightTheme.primaryColor,
                      ),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              showLinkBottomSheet(context);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.share_outlined,
                  size: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 30,
                  ),
                  child: Text(
                    "Share",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: LightTheme.primaryColor,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> showLinkBottomSheet(BuildContext context) {
    return showModalBottomSheet(
              context: context,
              showDragHandle: false,
              enableDrag: true,
              isDismissible: true,
              backgroundColor: LightTheme.greenBackground,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              constraints: const BoxConstraints(
                maxHeight: 250,
              ),
              builder: (context) => Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: LightTheme.greenBackground,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/monarch.jpeg',
                                    width: 63,
                                    height: 63,
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width *
                                            0.55,
                                        child: Text(
                                          'Monarch',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                color: LightTheme.primaryColor,
                                                fontWeight: FontWeight.bold,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                          maxLines: 1,
                                        ),
                                      ),
                                      Text(
                                        'News24',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: LightTheme.primaryColor,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () => Navigator.of(context).pop(),
                                icon: const Icon(
                                  Icons.close,
                                  color: LightTheme.primaryColor,
                                ),
                              ),
                            ],
                          ),
                         const Divider(),
                       ],
                      ),
                     
                      Text(
                        'Link your social media accounts to post it',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(
                              color: LightTheme.primaryColor,
                            ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: LightTheme.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45),
                            )),
                        child:   Text(
                          "Link",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                color: LightTheme.backgroundColor,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
  }
}
